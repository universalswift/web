import Files
import Foundation
import Ink
import Publish

try UniversalSwift().publish(using: [
	.addMarkdownFiles(),
	.copyResources(),
	.generateHTML(withTheme: .universalSwift),
	.generateRSSFeed(including: [.articles]),
	.generateSiteMap()
])
