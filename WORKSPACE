workspace(name = "spuzirev_main")

load(
    "//bzl:repositories.bzl",
    "bazel_gazelle",
    "rules_go",
    "rules_python",
)

rules_go()

load("//bzl/setup:rules_go.bzl", "rules_go_setup")

rules_go_setup()

load("//bzl:go.bzl", "go_register_toolchains")

go_register_toolchains(version = "1.19")

bazel_gazelle()

load("//bzl/setup:bazel_gazelle.bzl", "bazel_gazelle_setup")

bazel_gazelle_setup()

rules_python()

load("//bzl/setup:rules_python.bzl", "rules_python_setup")

rules_python_setup()

load("//bzl:python.bzl", "python_register_toolchains")

python_register_toolchains(
    name = "python",
    python_version = "3.10",
)
