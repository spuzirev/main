load(
    "//bzl:bazel_gazelle.bzl",
    "gazelle",
    "gazelle_binary",
)
load(
    "//bzl:python.bzl",
    "GAZELLE_PYTHON_RUNTIME_DEPS",
    "compile_pip_requirements",
    "gazelle_python_manifest",
    "modules_mapping",
)
load("@pip//:requirements.bzl", "all_whl_requirements")

compile_pip_requirements(
    name = "requirements",
    extra_args = [
        "--allow-unsafe",
    ],
    requirements_in = "requirements.in",
    requirements_txt = "requirements_lock.txt",
)

modules_mapping(
    name = "modules_mapping",
    wheels = all_whl_requirements,
)

gazelle_python_manifest(
    name = "gazelle_python_manifest",
    modules_mapping = ":modules_mapping",
    pip_repository_incremental = True,
    pip_repository_name = "pip",
    requirements = "//:requirements_lock.txt",
)

gazelle_binary(
    name = "gazelle_binary",
    languages = [
        "@rules_python//gazelle",  # Use gazelle from rules_python.
        "@bazel_gazelle//language/go",  # Built-in rule from gazelle for Golang.
    ],
    visibility = ["//visibility:public"],
)

# gazelle:prefix github.com/spuzirev/main
# gazelle:build_file_name BUILD,BUILD.bazel
# gazelle:go_naming_convention_external go_default_library
gazelle(
    name = "gazelle-fix",
    command = "fix",
    data = GAZELLE_PYTHON_RUNTIME_DEPS,
    extra_args = [
        "-build_file_name=BUILD,BUILD.bazel",
    ],
    gazelle = ":gazelle_binary",
)

# gazelle:prefix github.com/spuzirev/main

gazelle(
    name = "gazelle-update-repos",
    args = [
        "-from_file=go.mod",
        "-to_macro=bzl/go_repositories.bzl%go_repositories",
        "-prune",
    ],
    command = "update-repos",
    data = GAZELLE_PYTHON_RUNTIME_DEPS,
    gazelle = ":gazelle_binary",
)
