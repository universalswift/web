import Files
import Foundation
import Ink
import Publish
import SplashPublishPlugin

try UniversalSwift().publish(using: [
	.step(named: "Use custom DateFormatter") { context in
		let formatter = DateFormatter()
		formatter.dateFormat = "yyyy-MM-dd"
		context.dateFormatter = formatter
	},
	.step(named: "Remove headings from posts") { context in
		context.markdownParser.addModifier(Modifier(target: .headings) { html, heading in
			guard heading.starts(with: "# ") else {
				return html
			}
			return ""
		})
	},
	.installPlugin(.splash(withClassPrefix: "")),
	.addMarkdownFiles(),
	.step(named: "Set image path") { context in
		let imagePath = context.site.imagePath
		context.mutateAllSections { section in
			section.mutateItems { item in
				item.imagePath = imagePath
			}
		}
	},
	.copyResources(),
	.generateHTML(withTheme: .universalSwift),
	.generateRSSFeed(including: [.articles]),
	.generateSiteMap()
])
