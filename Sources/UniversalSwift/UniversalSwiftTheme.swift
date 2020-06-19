import Plot
import Publish

extension Theme where Site == UniversalSwift {
	static var universalSwift: Self {
		Theme(htmlFactory: UniversalSwift.HTMLFactory(), resourcePaths: ["Resources/UniversalSwiftTheme/styles.css"])
	}
}

extension UniversalSwift {
	fileprivate struct HTMLFactory: Publish.HTMLFactory {
		func makeIndexHTML(for index: Index, context: PublishingContext<UniversalSwift>) throws -> HTML {
			HTML(
				.head(for: index, on: context.site),
				.body(
					.div(
						.class("container"),
						.header(
							.class("lp-header readable-content"),
							.div(
								.class("illustration"),
								.landingPageIllustration()
							),
							.div(
								.class("text"),
								.h1("\(context.site.name)"),
								.h2("\(context.site.description)")
							)
						)
					)
				)
			)
		}

		func makeSectionHTML(for section: Section<UniversalSwift>, context: PublishingContext<UniversalSwift>) throws -> HTML {
			HTML(.empty)
		}

		func makeItemHTML(for item: Item<UniversalSwift>, context: PublishingContext<UniversalSwift>) throws -> HTML {
			HTML(.empty)
		}

		func makePageHTML(for page: Page, context: PublishingContext<UniversalSwift>) throws -> HTML {
			HTML(.empty)
		}

		func makeTagListHTML(for page: TagListPage, context: PublishingContext<UniversalSwift>) throws -> HTML? {
			HTML(.empty)
		}

		func makeTagDetailsHTML(for page: TagDetailsPage, context: PublishingContext<UniversalSwift>) throws -> HTML? {
			HTML(.empty)
		}
	}
}
