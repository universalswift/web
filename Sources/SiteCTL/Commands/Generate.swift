import ArgumentParser
import Foundation
import Ink
import Publish
import Site
import SplashPublishPlugin

struct Generate: AsyncParsableCommand {
    static let configuration = CommandConfiguration(
        commandName: "generate",
        abstract: #"Generates a static site at "./Output" based on the articles defined in "./Content"."#
    )

    func run() async throws {
        try UniversalSwift().publish(using: [
            .step(named: "Use custom DateFormatter") { context in
                let formatter = DateFormatter()
                formatter.dateFormat = "yyyy-MM-dd"
                context.dateFormatter = formatter
            },
            .step(named: "Remove title from posts") { context in
                context.markdownParser.addModifier(Modifier(target: .headings) { html, heading in
                    guard heading.starts(with: "# ") else { return html }
                    return ""
                })
            },
            .installPlugin(.splash(withClassPrefix: "")),
            .addMarkdownFiles(),
            .step(named: "Set image path") { context in
                let imagePath = context.site.imagePath
                context.mutateAllSections { item in
                    item.imagePath = imagePath
                }
            },
            .copyResources(),
            .generateHTML(withTheme: .universalSwift),
            .generateRSSFeed(including: [.articles]),
            .generateSiteMap()
        ])
    }
}
