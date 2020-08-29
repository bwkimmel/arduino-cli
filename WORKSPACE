load("//:deps.bzl", "arduino_cli_dependencies")

arduino_cli_dependencies()

load("//:transitive_deps.bzl", "arduino_cli_transitive_dependencies")

# gazelle:repository_macro transitive_deps.bzl%go_dependencies
arduino_cli_transitive_dependencies()
