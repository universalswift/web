import Foundation
import Plot
import Publish

public struct UniversalSwift: Website {
	public enum SectionID: String, WebsiteSectionID {
		case articles
	}

	public struct ItemMetadata: WebsiteItemMetadata {
		let path: String
		let description: String
		let date: Date
	}

	public let url = URL(string: "https://www.universalswift.blog")!
	public let name = "Universal Swift"
	public let description = "Platform-agnostic articles about the Swift programming language"
	public let language = Language.english
	public let imagePath: Path? = "images/meta.png"

	public init() {}
}
