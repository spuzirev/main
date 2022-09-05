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

def rules_python_deps():
    bazel_gazelle()

def rules_python():
    rules_python_deps()
    maybe(
        git_repository,
        "rules_python",
        remote = "https://github.com/bazelbuild/rules_python.git",
        # tag = "0.11.0",
        commit = "a2b7f4288fc7ad4ed387aa20cb2d09bf497a1b10",
        shallow_since = "1660470723 +1000",
    )
