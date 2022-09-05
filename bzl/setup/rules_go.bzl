load("@io_bazel_rules_go//go:deps.bzl", "go_register_toolchains", "go_rules_dependencies")

def rules_go_setup():
    go_rules_dependencies()
