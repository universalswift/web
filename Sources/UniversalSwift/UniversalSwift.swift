import Foundation
import Plot
import Publish

struct UniversalSwift: Website {
	enum SectionID: String, WebsiteSectionID {
		case articles
	}

	struct ItemMetadata: WebsiteItemMetadata {
		let path: String
		let description: String
		let date: Date
	}

	let url = URL(string: "https://www.universalswift.blog")!
	let name = "Universal Swift"
	let description = "Platform-agnostic articles about the Swift programming language"
	let language = Language.english
	let imagePath: Path? = "images/logo.png"
}
