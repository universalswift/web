import ArgumentParser

@main
struct SiteCTL: AsyncParsableCommand {
	static let configuration = CommandConfiguration(
		commandName: "universalswiftctl",
		subcommands: [Generate.self],
		defaultSubcommand: Generate.self
	)
}
