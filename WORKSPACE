workspace(name = "spuzirev_main")

load(
    "//bzl:repositories.bzl",
    "bazel_gazelle",
    "rules_go",
    "rules_jsonnet",
    "rules_python",
)

rules_go()

load("//bzl/setup:rules_go.bzl", "rules_go_setup")

rules_go_setup()

load("//bzl:go.bzl", "go_register_toolchains")

go_register_toolchains(version = "1.19")

# gazelle:repo bazel_gazelle
bazel_gazelle()

load("//bzl/setup:bazel_gazelle.bzl", "bazel_gazelle_setup")

bazel_gazelle_setup()

bazel_gazelle()

load("//bzl/setup:bazel_gazelle.bzl", "bazel_gazelle_setup")

bazel_gazelle_setup()

load("//bzl:go_repositories.bzl", "go_repositories")

# gazelle:repository_macro bzl/go_repositories.bzl%go_repositories
go_repositories()

rules_python()

load("//bzl/setup:rules_python.bzl", "rules_python_setup")

rules_python_setup()

rules_jsonnet()

load("//bzl/setup:rules_jsonnet.bzl", "rules_jsonnet_setup")

rules_jsonnet_setup()

load(
    "//bzl:python.bzl",
    "pip_install",
    "pip_parse",
    "python_register_toolchains",
)

python_register_toolchains(
    name = "python",
    python_version = "3.10.6",
)

load("@python//:defs.bzl", "interpreter")

pip_parse(
    name = "pip",
    # download_only = True,
    python_interpreter_target = interpreter,
    requirements_lock = "//:requirements_lock.txt",
    # requirements = "//:requirements.in",
)

load("@pip//:requirements.bzl", pip_install_deps = "install_deps")

pip_install_deps()
