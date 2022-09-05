load(
    "//bzl:bazel_gazelle.bzl",
    "gazelle",
    "gazelle_binary",
)
load(
    "//bzl:python.bzl",
    "GAZELLE_PYTHON_RUNTIME_DEPS",
)

gazelle_binary(
    name = "gazelle_binary",
    languages = [
        "@rules_python//gazelle",       # Use gazelle from rules_python.
        "@bazel_gazelle//language/go",  # Built-in rule from gazelle for Golang.
    ],
    visibility = ["//visibility:public"],
)

### gazelle:prefix github.com/spuzirev/main
gazelle(
    name = "gazelle",
    data = GAZELLE_PYTHON_RUNTIME_DEPS,
    gazelle = ":gazelle_binary",
    command = "fix",
    extra_args = [
        "-build_file_name=BUILD,BUILD.bazel",
    ],
)
