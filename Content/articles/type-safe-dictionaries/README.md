---
description: Dictionary is one of the key data structures in the Swift standard library. We'll look into how to gain complete type-safety when storing different kinds of values in the same dictionary.
tags: type-system
path: type-safe-dictionaries
date: 2020-06-27
---

# Type-safe dictionaries

`Dictionary` is one of the *key* data structures  in the Swift standard library. It allows for key-value pairs to be stored efficiently, and exposes a subscript-based API:

```swift
var scores = [String: Int]()
scores["slashmo"] = 42
print(scores["slashmo"] ?? "No score for slashmo")
```

## The problem

Unfortunately, not all uses of `Dictionary` are as straight-forward as this. Sometimes, it’s necessary to store different types of values in the same `Dictionary`. In a first attempt to solving this we may be tempted to make our `Dictionary` a `[String: Any]`:

```swift
var storage = [String: Any]()
storage["a"] = 42
storage["b"] = "Hello, World!"
storage["c"] = MyStruct(value: "test")
```

This, however, has the drawback that now every time we want to retrieve a value from `storage` we have to **deal with two `Optional`s**.

```swift
if let value = storage["a"] {
  if let intValue = value as? Int {
    print(intValue)
  } else {
    // How is this even possible?
  }
} else {
  // No value stored
}
```

1. Does a value for the given key exist?
2. Is the retrieved value of type x?

At a first glance this seems reasonable. We asked for a more dynamic storage to put different kinds of things into, so we have to deal with that dynamism.

## The solution (Types to the rescue)

Given our use-case meets the following requirements, there's a much nicer way of going about this problem:

1. We know each key at compile time
2. We can clearly define which type of value belongs to a key

With these requirements out of the way, let's start thinking about how we can leverage Swift's type system to build a safer API around this.

### Typed Keys

Because we can make the assumption that every key is known upfront, we can **define keys using types**. In Swift, each defined type can be uniquely identified via its `ObjectIdentifier`.

```swift
let key = ObjectIdentifier(MyType.self)
```

### Associating Key -> Value

Additionaly to using the key type as a unique identifier, we can take advantage of another powerful Swift feature: `associatedtype`

It's what allows us to associate a type (A) with a type (B) that implements a `protocol`. Let’s see how this would look like with our storage key:

```swift
protocol StorageKey {
  associatedtype Value
}

enum MyKey: StorageKey {
  typealias Value = String
}
```

> In this case, I’m using an empty `enum` for `MyKey` as we’re only interested in its static type information and don’t want to be able to instantiate a value. This concept is also known as phantom types, meaning, it’s a type that can never have an actual instance (it has no cases!)

Let’s take a closer look at the `Dictionary` API. Values are set and retrieved through a subscript. This subscript takes an instance of the defined `Key` and its setter takes an instance of the defined `Value` type. This, however, does not fit our requirements. To understand why, let’s try and create a `Dictionary` keyed by our `StorageKey` protocol:

```swift
var storage = [ObjectIdentifier: Any]()
storage[ObjectIdentifier(MyKey.self)] = 0
```

As you can see, we had to still use the `Any` type as the `Dictionarie`'s value type because it does not allow for associating the key with its value type. That way we still have to deal with the two `Optional`s and cast manually. Also, we can insert whatever type we want as a value for a given key, no matter what its `associatedtype` defines.

### Wrapping things up with a custom Storage type

In order for it to work with our `StorageKey` protocol, we need to change the `subscript` signature:

```swift
subscript<Key: StorageKey>(_ keyType: Key.Type) -> Key.Value?
```

By making it generic over a `StorageKey` we are able to use its static type information as the return type of the `subscript`. 

> A `subscript` will also use this return type as the type of its setter.

As we cannot replace the `subscript` in a `Dictionary`, let’s create our own wrapper around it:

```swift
struct Storage {
  private var _storage = [ObjectIdentifier: Any]()

  subscript<Key: StorageKey>(_ keyType: Key.Type) -> Key.Value? {
    get {
      guard let value = self._storage[ObjectIdentifier(keyType)] else { return nil }
      return value as! Key.Value
    } set {
      self._storage[ObjectIdentifier(keyType)] = newValue
    }
  }
}
```

## The result

Let’s take the `Storage` type for a spin:

```swift
enum FirstKey: StorageKey {
  typealias Value = String
}

enum SecondKey: StorageKey {
  struct Value {
    let id: UUID
    let username: String
  }
}

var storage = Storage()
storage[FirstKey.self] = "a"
// storage[FirstKey.self] = 42 (Does not compile as we don't use `FirstKey.Value` as the type in the setter)

print(storage[FirstKey.self] ?? "default")
// print(storage[FirstKey.self] ?? 42) (Does not compile as 42 is not a String)

storage[SecondKey.self] = SecondKey.Value(id: UUID(), username: "slashmo")
print(storage[SecondKey.self]?.username ?? "No value stored")
```

## Credits

Thanks to [@ktosopl](https://twitter.com/@ktosopl) for introducing me to this pattern. 
You can see it [in my BaggageContext code](https://github.com/slashmo/gsoc-swift-baggage-context/blob/main/Sources/Baggage/BaggageContext.swift) and [in Vapor's codebase](https://github.com/vapor/vapor/blob/master/Sources/Vapor/Utilities/Storage.swift).
