import Foundation
import Plot
import Publish

extension Theme where Site == UniversalSwift {
	static var universalSwift: Self {
		Theme(htmlFactory: UniversalSwift.HTMLFactory(), resourcePaths: ["Resources/UniversalSwiftTheme/styles.css"])
	}
}

extension UniversalSwift {
	fileprivate struct HTMLFactory: Publish.HTMLFactory {
		private let dateFormatter: DateFormatter = {
			let formatter = DateFormatter()
			formatter.locale = Locale(identifier: "en")
			formatter.dateStyle = .medium
			formatter.timeStyle = .none
			return formatter
		}()

		func makeIndexHTML(for index: Index, context: PublishingContext<UniversalSwift>) throws -> HTML {
			HTML(
				.head(for: index, on: context.site),
				.body(
					.div(
						.class("container"),
						.header(
							.class("lp-header"),
							.div(
								.class("lp-header-content readable-content"),
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
						),
						.main(
							.class("readable-content"),
							.header(
								.attribute(named: "role", value: "heading"),
								.class("section-header"),
								.h2("Latest articles")
							),
							.ul(
								.class("latest-articles"),
								.forEach(context.sections[.articles].items.sorted(by: { $0.date > $1.date })) { article in
									.li(
										.a(.href(article.path), .article(
											.h3("\(article.title)"),
											.p("\(article.description)")
										)),
										.div(
											.class("date"),
											.raw("""
											<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 48 48"><path fill="#CFD8DC" d="M5 38V14h38v24c0 2.2-1.8 4-4 4H9c-2.2 0-4-1.8-4-4z"></path><path fill="#F44336" d="M43 10v6H5v-6c0-2.2 1.8-4 4-4h30c2.2 0 4 1.8 4 4z"></path><path fill="#B71C1C" d="M33 7a3 3 0 100 6 3 3 0 100-6zM15 7a3 3 0 100 6 3 3 0 100-6z"></path><path fill="#B0BEC5" d="M33 3c-1.1 0-2 .9-2 2v5c0 1.1.9 2 2 2s2-.9 2-2V5c0-1.1-.9-2-2-2zM15 3c-1.1 0-2 .9-2 2v5c0 1.1.9 2 2 2s2-.9 2-2V5c0-1.1-.9-2-2-2z"></path><path fill="#90A4AE" d="M13 20h4v4h-4zm6 0h4v4h-4zm6 0h4v4h-4zm6 0h4v4h-4zm-18 6h4v4h-4zm6 0h4v4h-4zm6 0h4v4h-4zm6 0h4v4h-4zm-18 6h4v4h-4zm6 0h4v4h-4zm6 0h4v4h-4zm6 0h4v4h-4z"></path></svg>
											"""),
											"\(self.dateFormatter.string(from: article.date))"
										),
										.ul(
											.class("tags"),
											.forEach(article.tags) { tag in
												.li(.a(.href(context.site.path(for: tag)), "\(tag)"))
											}
										)
									)
								}
							)
						),
						.pageFooter()
					)
				)
			)
		}

		func makeSectionHTML(for section: Section<UniversalSwift>, context: PublishingContext<UniversalSwift>) throws -> HTML {
			HTML(.empty)
		}

		func makeItemHTML(for item: Item<UniversalSwift>, context: PublishingContext<UniversalSwift>) throws -> HTML {
			HTML(
				.head(for: item, on: context.site),
				.body(
					.div(
						.class("container"),
						.header(
							.class("page-header"),
							.a(
								.href("/"),
								.raw("""
								<svg class="logo-illustration" width="283" height="489" viewBox="0 0 283 489"><g fill="none" fill-rule="evenodd"><path class="plant" stroke="#535461" stroke-width="2" d="M173 478.9s19.9-33 49.8-42.5a61 61 0 0 0 31-21.7c3.6-5 6.7-10 9.2-15.5"></path><path class="plant" fill="#FFAE00" fill-rule="nonzero" d="M280.5 394c-3.3 3-18.5 6.2-18.5 6.2s3.7-14.5 7-17.5 8.5-3 11.7.2a7.6 7.6 0 0 1-.2 11.1zM272 420.7c-4.7.9-20-4.5-20-4.5s12-10.3 16.6-11.2c4.7-.8 9.3 2 10.2 6.3 1 4.3-2 8.5-6.8 9.4zM239.5 449.3c-4.4-1.4-14.5-13.1-14.5-13.1s15.7-3.4 20.1-2c3 1 5.1 3.3 5.7 6.1.6 2.8-.4 5.8-2.8 7.6a9 9 0 0 1-8.5 1.4zM209.9 465.7c-4.7-.8-16.9-10.7-16.9-10.7s15-5.8 19.7-5c3 .3 5.6 2.3 6.7 5 1.1 2.6.6 5.7-1.4 7.9a9 9 0 0 1-8.1 2.8zM239 404.4c0 4.5 8.5 17.3 8.5 17.3s8.5-12.8 8.5-17.3c0-4.4-3.8-8-8.5-8a8.3 8.3 0 0 0-8.5 8zM204.4 423.7c1.4 4.2 13.6 14 13.6 14s4.1-14.6 2.7-18.8c-1.4-4.2-6.2-6.6-10.7-5.2-4.5 1.3-7 5.8-5.6 10zM173 447.7c.7 4.5 11 16.2 11 16.2s6.6-13.9 6-18.3c-.7-4.4-5-7.5-9.6-7-4.7.7-8 4.7-7.3 9.1z"></path><path class="plant" fill="#FFAE00" fill-rule="nonzero" d="M280.5 394c-3.3 3-18.5 6.2-18.5 6.2s3.7-14.5 7-17.5 8.5-3 11.7.2a7.6 7.6 0 0 1-.2 11.1zM272 420.7c-4.7.9-20-4.5-20-4.5s12-10.3 16.6-11.2c4.7-.8 9.3 2 10.2 6.3 1 4.3-2 8.5-6.8 9.4zM239.5 449.3c-4.4-1.4-14.5-13.1-14.5-13.1s15.7-3.4 20.1-2c3 1 5.1 3.3 5.7 6.1.6 2.8-.4 5.8-2.8 7.6a9 9 0 0 1-8.5 1.4zM209.9 465.7c-4.7-.8-16.9-10.7-16.9-10.7s15-5.8 19.7-5c3 .3 5.6 2.3 6.7 5 1.1 2.6.6 5.7-1.4 7.9a9 9 0 0 1-8.1 2.8zM239 404.4c0 4.5 8.5 17.3 8.5 17.3s8.5-12.8 8.5-17.3c0-4.4-3.8-8-8.5-8a8.3 8.3 0 0 0-8.5 8zM204.4 423.7c1.4 4.2 13.6 14 13.6 14s4.1-14.6 2.7-18.8c-1.4-4.2-6.2-6.6-10.7-5.2-4.5 1.3-7 5.8-5.6 10zM173 447.7c.7 4.5 11 16.2 11 16.2s6.6-13.9 6-18.3c-.7-4.4-5-7.5-9.6-7-4.7.7-8 4.7-7.3 9.1z" opacity=".3"></path><path class="plant" stroke="#535461" stroke-width="2" d="M174 478s3.8-37.7 26.7-57.7a56.7 56.7 0 0 0 18.6-31.6A91.3 91.3 0 0 0 221 371"></path><path class="plant" fill="#FFAE00" fill-rule="nonzero" d="M235.3 359c-1.7 4-14.7 13-14.7 13s-2.8-15-1-19c1-2.8 3.6-4.8 6.7-5.2 3-.5 6 .7 8 3a7.7 7.7 0 0 1 1 8.2zM239.5 386.5C235.7 389 220 390 220 390s6.1-13.9 9.9-16.4c2.4-1.6 5.6-1.9 8.3-.7a8 8 0 0 1 4.8 6.5c.2 2.8-1.1 5.6-3.5 7.2zM221.2 425.5c-4.8.3-19.2-6.5-19.2-6.5s13-9 17.7-9.4c4.7-.4 8.9 2.9 9.3 7.2.4 4.4-3.1 8.3-7.9 8.7zM201.3 452.5c-4.6 1-20.3-3.4-20.3-3.4s11.3-11 16-12c3-.9 6.2 0 8.5 2 2.2 2 3 5 2.2 7.8-.9 2.8-3.3 4.9-6.4 5.6zM202.7 384c1.9 4 15.2 12.4 15.2 12.4s2.2-14.8.3-18.8c-2-4-6.9-5.7-11.1-4-4.3 1.8-6.2 6.4-4.4 10.4zM178.2 416c3.2 3.3 18.8 7.6 18.8 7.6s-2.6-14.6-5.8-17.9a9.1 9.1 0 0 0-8.2-2.6c-3 .6-5.6 2.6-6.6 5.3-1 2.6-.3 5.6 1.8 7.7zM160.3 449.7c2.4 3.8 16.7 10.5 16.7 10.5s.1-15-2.3-18.8a8.6 8.6 0 0 0-7.5-3.7c-3 0-5.7 1.6-7.2 4.1a7.5 7.5 0 0 0 .3 8z"></path><g fill-rule="nonzero" transform="translate(0 -1)"><ellipse class="floor" cx="112" cy="474.7" rx="94" ry="14.5"></ellipse><path fill="#B77B7F" d="M117 278.8v3l-5.3 177.5H103l4.3-177.6v-3.3z"></path><path fill="#DDA2A6" d="M170 429.3h-6.7l-100-.2H58l2.8-8.2h108.5z"></path><path fill="#000" d="M117 278.9v3.3h-10v-3.8z" opacity=".1"></path><path fill="#B77B7F" d="M105 275.6h17v5.6h-17z"></path><path fill="#DDA2A6" d="M78 274.7l-.3 2.5L56 482.7l-10-.4 23-205 .2-2.4zM180 482.3l-10 .4-21.7-205.5-.3-2.5 8.8.2.3 2.3z"></path><path fill="#000" d="M54.2 269h119.6c2.9 0 5.2 2.1 5.2 4.6v1H49v-1c0-2.5 2.3-4.6 5.2-4.6zM69.3 274.9l8.7-.2-.3 2.8H69zM105 274.6h17v2.8h-17zM157 277.5h-8.7l-.3-2.8 8.7.2z" opacity=".1"></path><g><path fill="#DDA2A6" d="M54.2 270.9h119.6c2.9 0 5.2 2 5.2 4.6v1H49v-1c0-1.2.5-2.4 1.5-3.3 1-.8 2.3-1.3 3.7-1.3zM116 5.2v48.3h-9V5.2a4 4 0 0 1 2.2-3.7 5 5 0 0 1 4.6 0 4 4 0 0 1 2.2 3.7z"></path><path fill="#DDA2A6" d="M119 52.7v16.7h-15V52.7c0-.5.2-1 .6-1.5a2 2 0 0 1 1.5-.6H117c1 0 2 1 2 2.1z"></path><ellipse cx="111" cy="60" fill="#B77B7F" rx="3" ry="2.8"></ellipse><path fill="#DDA2A6" d="M97 68.4h29v3.7H97z"></path><path class="canvas" fill="#F05137" d="M0 72.2h224v201.5H0z"></path></g><g fill="#FFF"><path class="ellipse" d="M141.8 136.6c1.4 0 4 .1 5.2 1.4 1.8 1.8 2.3 7.4-.8 16a95.9 95.9 0 0 1-22.3 32.9c-17 17-34.2 24.5-43.7 24.5-1.4 0-4-.1-5.2-1.4-1.8-1.8-2.3-7.4.8-16A95.9 95.9 0 0 1 98 161.2c17-17 34.2-24.5 43.7-24.5zm0-11c-14 0-33.9 10.3-51.4 27.8-24.1 24.2-34.5 53-23.1 64.3 3.1 3.2 7.5 4.6 12.9 4.6 14 0 33.9-10.2 51.4-27.7 24.1-24.2 34.5-53 23.1-64.3a17.6 17.6 0 0 0-12.9-4.6z"></path><path class="ellipse" d="M80.2 136.6c9.5 0 26.7 7.6 43.7 24.5a95.9 95.9 0 0 1 22.3 33c3 8.5 2.6 14.1.8 16-1.2 1.2-3.8 1.3-5.2 1.3-9.5 0-26.7-7.6-43.7-24.5a95.9 95.9 0 0 1-22.3-33c-3-8.5-2.6-14.1-.8-16 1.2-1.2 3.8-1.3 5.2-1.3zm-13-6.3c-11.3 11.3-1 40.1 23.2 64.3 17.5 17.5 37.5 27.7 51.4 27.7 5.3 0 9.8-1.4 13-4.6 11.3-11.3 1-40.1-23.2-64.3C114 136 94 125.7 80.2 125.7c-5.3 0-9.8 1.4-13 4.6z"></path><path class="swift" d="M120.6 177l.1-.4c1.5-5.8-2-12.6-8-16.1 2.6 3.5 3.8 7.8 2.7 11.5 0 .4-.2.7-.3 1a8 8 0 0 0-.5-.3s-6-3.7-12.4-10.1a77 77 0 0 0 7.5 9.4c-1.9-1-7.3-5-10.7-8l1.5 2c2.8 3.5 6.5 8 11 11.4-3.1 1.9-7.5 2-12 0a18 18 0 0 1-3-1.8c1.9 3 4.7 5.5 8.2 7 4.2 1.8 8.3 1.6 11.4 0l.4-.2c1.4-.8 4.4-1.6 6 1.5.3.7 1.1-3.2-1.9-7z"></path></g><path fill="#000" d="M63 420.9l-.9 8.4H57l2.7-8.4zM170 429.3h-7l-1-8.4h7.3z" opacity=".1"></path><g fill="#000" opacity=".1" transform="translate(97 1)"><path d="M10 48.7h9v3.7h-9z"></path><ellipse cx="14" cy="60" rx="3" ry="2.8"></ellipse><path d="M7 66.5h15v1.9H7zM0 69.4h29v3.7H0z"></path></g></g></g></svg>
								""")
							),
							.div(.class("readable-content"), .h1("\(item.title)"))
						),
						.main(
							.article(
								.class("article-detail readable-content"),
								item.content.body.node
							)
						),
						.pageFooter()
					)
				)
			)
		}

		func makePageHTML(for page: Page, context: PublishingContext<UniversalSwift>) throws -> HTML {
			HTML(.empty)
		}

		func makeTagListHTML(for page: TagListPage, context: PublishingContext<UniversalSwift>) throws -> HTML? { nil }

		func makeTagDetailsHTML(for page: TagDetailsPage, context: PublishingContext<UniversalSwift>) throws -> HTML? {
			var tagPage = page
			tagPage.title = "\(page.tag)".capitalized(with: Locale(identifier: "en"))
			return HTML(
				.head(for: tagPage, on: context.site),
				.body(
					.div(
						.class("container"),
						.header(
							.class("page-header"),
							.a(
								.href("/"),
								.raw("""
								<svg class="logo-illustration" width="283" height="489" viewBox="0 0 283 489"><g fill="none" fill-rule="evenodd"><path class="plant" stroke="#535461" stroke-width="2" d="M173 478.9s19.9-33 49.8-42.5a61 61 0 0 0 31-21.7c3.6-5 6.7-10 9.2-15.5"></path><path class="plant" fill="#FFAE00" fill-rule="nonzero" d="M280.5 394c-3.3 3-18.5 6.2-18.5 6.2s3.7-14.5 7-17.5 8.5-3 11.7.2a7.6 7.6 0 0 1-.2 11.1zM272 420.7c-4.7.9-20-4.5-20-4.5s12-10.3 16.6-11.2c4.7-.8 9.3 2 10.2 6.3 1 4.3-2 8.5-6.8 9.4zM239.5 449.3c-4.4-1.4-14.5-13.1-14.5-13.1s15.7-3.4 20.1-2c3 1 5.1 3.3 5.7 6.1.6 2.8-.4 5.8-2.8 7.6a9 9 0 0 1-8.5 1.4zM209.9 465.7c-4.7-.8-16.9-10.7-16.9-10.7s15-5.8 19.7-5c3 .3 5.6 2.3 6.7 5 1.1 2.6.6 5.7-1.4 7.9a9 9 0 0 1-8.1 2.8zM239 404.4c0 4.5 8.5 17.3 8.5 17.3s8.5-12.8 8.5-17.3c0-4.4-3.8-8-8.5-8a8.3 8.3 0 0 0-8.5 8zM204.4 423.7c1.4 4.2 13.6 14 13.6 14s4.1-14.6 2.7-18.8c-1.4-4.2-6.2-6.6-10.7-5.2-4.5 1.3-7 5.8-5.6 10zM173 447.7c.7 4.5 11 16.2 11 16.2s6.6-13.9 6-18.3c-.7-4.4-5-7.5-9.6-7-4.7.7-8 4.7-7.3 9.1z"></path><path class="plant" fill="#FFAE00" fill-rule="nonzero" d="M280.5 394c-3.3 3-18.5 6.2-18.5 6.2s3.7-14.5 7-17.5 8.5-3 11.7.2a7.6 7.6 0 0 1-.2 11.1zM272 420.7c-4.7.9-20-4.5-20-4.5s12-10.3 16.6-11.2c4.7-.8 9.3 2 10.2 6.3 1 4.3-2 8.5-6.8 9.4zM239.5 449.3c-4.4-1.4-14.5-13.1-14.5-13.1s15.7-3.4 20.1-2c3 1 5.1 3.3 5.7 6.1.6 2.8-.4 5.8-2.8 7.6a9 9 0 0 1-8.5 1.4zM209.9 465.7c-4.7-.8-16.9-10.7-16.9-10.7s15-5.8 19.7-5c3 .3 5.6 2.3 6.7 5 1.1 2.6.6 5.7-1.4 7.9a9 9 0 0 1-8.1 2.8zM239 404.4c0 4.5 8.5 17.3 8.5 17.3s8.5-12.8 8.5-17.3c0-4.4-3.8-8-8.5-8a8.3 8.3 0 0 0-8.5 8zM204.4 423.7c1.4 4.2 13.6 14 13.6 14s4.1-14.6 2.7-18.8c-1.4-4.2-6.2-6.6-10.7-5.2-4.5 1.3-7 5.8-5.6 10zM173 447.7c.7 4.5 11 16.2 11 16.2s6.6-13.9 6-18.3c-.7-4.4-5-7.5-9.6-7-4.7.7-8 4.7-7.3 9.1z" opacity=".3"></path><path class="plant" stroke="#535461" stroke-width="2" d="M174 478s3.8-37.7 26.7-57.7a56.7 56.7 0 0 0 18.6-31.6A91.3 91.3 0 0 0 221 371"></path><path class="plant" fill="#FFAE00" fill-rule="nonzero" d="M235.3 359c-1.7 4-14.7 13-14.7 13s-2.8-15-1-19c1-2.8 3.6-4.8 6.7-5.2 3-.5 6 .7 8 3a7.7 7.7 0 0 1 1 8.2zM239.5 386.5C235.7 389 220 390 220 390s6.1-13.9 9.9-16.4c2.4-1.6 5.6-1.9 8.3-.7a8 8 0 0 1 4.8 6.5c.2 2.8-1.1 5.6-3.5 7.2zM221.2 425.5c-4.8.3-19.2-6.5-19.2-6.5s13-9 17.7-9.4c4.7-.4 8.9 2.9 9.3 7.2.4 4.4-3.1 8.3-7.9 8.7zM201.3 452.5c-4.6 1-20.3-3.4-20.3-3.4s11.3-11 16-12c3-.9 6.2 0 8.5 2 2.2 2 3 5 2.2 7.8-.9 2.8-3.3 4.9-6.4 5.6zM202.7 384c1.9 4 15.2 12.4 15.2 12.4s2.2-14.8.3-18.8c-2-4-6.9-5.7-11.1-4-4.3 1.8-6.2 6.4-4.4 10.4zM178.2 416c3.2 3.3 18.8 7.6 18.8 7.6s-2.6-14.6-5.8-17.9a9.1 9.1 0 0 0-8.2-2.6c-3 .6-5.6 2.6-6.6 5.3-1 2.6-.3 5.6 1.8 7.7zM160.3 449.7c2.4 3.8 16.7 10.5 16.7 10.5s.1-15-2.3-18.8a8.6 8.6 0 0 0-7.5-3.7c-3 0-5.7 1.6-7.2 4.1a7.5 7.5 0 0 0 .3 8z"></path><g fill-rule="nonzero" transform="translate(0 -1)"><ellipse class="floor" cx="112" cy="474.7" rx="94" ry="14.5"></ellipse><path fill="#B77B7F" d="M117 278.8v3l-5.3 177.5H103l4.3-177.6v-3.3z"></path><path fill="#DDA2A6" d="M170 429.3h-6.7l-100-.2H58l2.8-8.2h108.5z"></path><path fill="#000" d="M117 278.9v3.3h-10v-3.8z" opacity=".1"></path><path fill="#B77B7F" d="M105 275.6h17v5.6h-17z"></path><path fill="#DDA2A6" d="M78 274.7l-.3 2.5L56 482.7l-10-.4 23-205 .2-2.4zM180 482.3l-10 .4-21.7-205.5-.3-2.5 8.8.2.3 2.3z"></path><path fill="#000" d="M54.2 269h119.6c2.9 0 5.2 2.1 5.2 4.6v1H49v-1c0-2.5 2.3-4.6 5.2-4.6zM69.3 274.9l8.7-.2-.3 2.8H69zM105 274.6h17v2.8h-17zM157 277.5h-8.7l-.3-2.8 8.7.2z" opacity=".1"></path><g><path fill="#DDA2A6" d="M54.2 270.9h119.6c2.9 0 5.2 2 5.2 4.6v1H49v-1c0-1.2.5-2.4 1.5-3.3 1-.8 2.3-1.3 3.7-1.3zM116 5.2v48.3h-9V5.2a4 4 0 0 1 2.2-3.7 5 5 0 0 1 4.6 0 4 4 0 0 1 2.2 3.7z"></path><path fill="#DDA2A6" d="M119 52.7v16.7h-15V52.7c0-.5.2-1 .6-1.5a2 2 0 0 1 1.5-.6H117c1 0 2 1 2 2.1z"></path><ellipse cx="111" cy="60" fill="#B77B7F" rx="3" ry="2.8"></ellipse><path fill="#DDA2A6" d="M97 68.4h29v3.7H97z"></path><path class="canvas" fill="#F05137" d="M0 72.2h224v201.5H0z"></path></g><g fill="#FFF"><path class="ellipse" d="M141.8 136.6c1.4 0 4 .1 5.2 1.4 1.8 1.8 2.3 7.4-.8 16a95.9 95.9 0 0 1-22.3 32.9c-17 17-34.2 24.5-43.7 24.5-1.4 0-4-.1-5.2-1.4-1.8-1.8-2.3-7.4.8-16A95.9 95.9 0 0 1 98 161.2c17-17 34.2-24.5 43.7-24.5zm0-11c-14 0-33.9 10.3-51.4 27.8-24.1 24.2-34.5 53-23.1 64.3 3.1 3.2 7.5 4.6 12.9 4.6 14 0 33.9-10.2 51.4-27.7 24.1-24.2 34.5-53 23.1-64.3a17.6 17.6 0 0 0-12.9-4.6z"></path><path class="ellipse" d="M80.2 136.6c9.5 0 26.7 7.6 43.7 24.5a95.9 95.9 0 0 1 22.3 33c3 8.5 2.6 14.1.8 16-1.2 1.2-3.8 1.3-5.2 1.3-9.5 0-26.7-7.6-43.7-24.5a95.9 95.9 0 0 1-22.3-33c-3-8.5-2.6-14.1-.8-16 1.2-1.2 3.8-1.3 5.2-1.3zm-13-6.3c-11.3 11.3-1 40.1 23.2 64.3 17.5 17.5 37.5 27.7 51.4 27.7 5.3 0 9.8-1.4 13-4.6 11.3-11.3 1-40.1-23.2-64.3C114 136 94 125.7 80.2 125.7c-5.3 0-9.8 1.4-13 4.6z"></path><path class="swift" d="M120.6 177l.1-.4c1.5-5.8-2-12.6-8-16.1 2.6 3.5 3.8 7.8 2.7 11.5 0 .4-.2.7-.3 1a8 8 0 0 0-.5-.3s-6-3.7-12.4-10.1a77 77 0 0 0 7.5 9.4c-1.9-1-7.3-5-10.7-8l1.5 2c2.8 3.5 6.5 8 11 11.4-3.1 1.9-7.5 2-12 0a18 18 0 0 1-3-1.8c1.9 3 4.7 5.5 8.2 7 4.2 1.8 8.3 1.6 11.4 0l.4-.2c1.4-.8 4.4-1.6 6 1.5.3.7 1.1-3.2-1.9-7z"></path></g><path fill="#000" d="M63 420.9l-.9 8.4H57l2.7-8.4zM170 429.3h-7l-1-8.4h7.3z" opacity=".1"></path><g fill="#000" opacity=".1" transform="translate(97 1)"><path d="M10 48.7h9v3.7h-9z"></path><ellipse cx="14" cy="60" rx="3" ry="2.8"></ellipse><path d="M7 66.5h15v1.9H7zM0 69.4h29v3.7H0z"></path></g></g></g></svg>
								""")
							),
							.div(.class("readable-content"), .h1("Articles tagged with ", .span(.class("tag"), "\(page.tag)")))
						),
						.main(
							.ul(
								.class("latest-articles readable-content"),
								.forEach(context.sections[.articles].items(taggedWith: page.tag).sorted(by: { $0.date > $1.date })) { article in
									.li(
										.a(.href(article.path), .article(
											.h3("\(article.title)"),
											.p("\(article.description)")
										)),
										.div(
											.class("date"),
											.raw("""
											<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 48 48"><path fill="#CFD8DC" d="M5 38V14h38v24c0 2.2-1.8 4-4 4H9c-2.2 0-4-1.8-4-4z"></path><path fill="#F44336" d="M43 10v6H5v-6c0-2.2 1.8-4 4-4h30c2.2 0 4 1.8 4 4z"></path><path fill="#B71C1C" d="M33 7a3 3 0 100 6 3 3 0 100-6zM15 7a3 3 0 100 6 3 3 0 100-6z"></path><path fill="#B0BEC5" d="M33 3c-1.1 0-2 .9-2 2v5c0 1.1.9 2 2 2s2-.9 2-2V5c0-1.1-.9-2-2-2zM15 3c-1.1 0-2 .9-2 2v5c0 1.1.9 2 2 2s2-.9 2-2V5c0-1.1-.9-2-2-2z"></path><path fill="#90A4AE" d="M13 20h4v4h-4zm6 0h4v4h-4zm6 0h4v4h-4zm6 0h4v4h-4zm-18 6h4v4h-4zm6 0h4v4h-4zm6 0h4v4h-4zm6 0h4v4h-4zm-18 6h4v4h-4zm6 0h4v4h-4zm6 0h4v4h-4zm6 0h4v4h-4z"></path></svg>
											"""),
											"\(self.dateFormatter.string(from: article.date))"
										)
									)
								}
							)
						),
						.pageFooter()
					)
				)
			)
		}
	}
}
