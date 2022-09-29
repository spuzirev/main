load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")

def bazel_gazelle_deps():
    rules_go()

def bazel_gazelle():
    bazel_gazelle_deps()
    maybe(
        git_repository,
        "bazel_gazelle",
        remote = "https://github.com/bazelbuild/bazel-gazelle.git",
        # tag = "v0.26.0",
        commit = "530a2c7ae6077778fcf4d8df0695b94cd93951d0",
        shallow_since = "1656272381 -0700",
    )

def google_jsonnet_go_deps():
    rules_go()
    bazel_gazelle()

def google_jsonnet_go():
    google_jsonnet_go_deps()
    maybe(
        git_repository,
        "google_jsonnet_go",
        remote = "https://github.com/google/go-jsonnet.git",
        # branch = master, # Sep 29th 2022
        commit = "32b292c9cbb3411414ea7f6f11875c1a8927283c",
        shallow_since = "1653475423 +0100"
    )

    # temporary because of https://github.com/google/go-jsonnet/issues/619
    # maybe(
    #     native.local_repository,
    #     name = "google_jsonnet_go",
    #     path = "/Users/spuzirev/src/github.com/spuzirev/go-jsonnet",
    # )

def cpp_jsonnet_deps():
    pass

def cpp_jsonnet():
    cpp_jsonnet_deps()
    maybe(
        git_repository,
        "cpp_jsonnet",
        remote = "https://github.com/google/jsonnet.git",
        # tag = "v0.18.0",
        commit = "34419d2483927ceb17cd506cad77c3c2a96e7b8c",
        shallow_since = "1640109349 +0000",
    )

def rules_go_deps():
    pass

def rules_go():
    rules_go_deps()
    maybe(
        git_repository,
        "io_bazel_rules_go",
        remote = "https://github.com/bazelbuild/rules_go.git",
        # tag = "v0.34.0",
        commit = "efc3212592320c1ab7f986c9a7882770ee06ad3b",
        shallow_since = "1658248217 -0700",
    )

def rules_jsonnet_deps():
    cpp_jsonnet()
    google_jsonnet_go()


def rules_jsonnet():
    rules_jsonnet_deps()
    maybe(
        git_repository,
        "io_bazel_rules_jsonnet",
        remote = "https://github.com/bazelbuild/rules_jsonnet.git",
        # tag = "0.4.0",
        commit = "d51e0a75a38762d0441ff1fdea3b4816ec537546",
        shallow_since = "1637348486 +0000",
    )

def rules_python_deps():
    bazel_gazelle()

def rules_python():
    rules_python_deps()
    maybe(
        git_repository,
        "rules_python",
        remote = "https://github.com/bazelbuild/rules_python.git",
        # tag = "0.12.0",
        commit = "cf6542d4f668544eb7f75978a170400ea1950317",
        shallow_since = "1661741730 +1000",
    )
