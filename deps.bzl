load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def io_bazel_rules_go():
    http_archive(
        name = "io_bazel_rules_go",
        sha256 = "08369b54a7cbe9348eea474e36c9bbb19d47101e8860cec75cbf1ccd4f749281",
        urls = [
            "https://mirror.bazel.build/github.com/bazelbuild/rules_go/releases/download/v0.24.0/rules_go-v0.24.0.tar.gz",
            "https://github.com/bazelbuild/rules_go/releases/download/v0.24.0/rules_go-v0.24.0.tar.gz",
        ],
    )

def bazel_gazelle():
    http_archive(
        name = "bazel_gazelle",
        sha256 = "d4113967ab451dd4d2d767c3ca5f927fec4b30f3b2c6f8135a2033b9c05a5687",
        urls = [
            "https://mirror.bazel.build/github.com/bazelbuild/bazel-gazelle/releases/download/v0.22.0/bazel-gazelle-v0.22.0.tar.gz",
            "https://github.com/bazelbuild/bazel-gazelle/releases/download/v0.22.0/bazel-gazelle-v0.22.0.tar.gz",
        ],
    )

def com_google_protobuf():
    http_archive(
        name = "com_google_protobuf",
        sha256 = "1c744a6a1f2c901e68c5521bc275e22bdc66256eeb605c2781923365b7087e5f",
        strip_prefix = "protobuf-3.13.0",
        urls = ["https://github.com/protocolbuffers/protobuf/archive/v3.13.0.zip"],
    )

def arduino_cli_dependencies():
    """Import dependencies for arduino-cli."""
    if "io_bazel_rules_go" not in native.existing_rules(): 
        io_bazel_rules_go()
    if "bazel_gazelle" not in native.existing_rules():
        bazel_gazelle()
    if "com_google_protobuf" not in native.existing_rules():
        com_google_protobuf()