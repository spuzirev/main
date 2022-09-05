load(
    "@bazel_gazelle//:def.bzl",
    _gazelle_binary="gazelle_binary",
    _gazelle="gazelle",
    _DEFAULT_LANGUAGES="DEFAULT_LANGUAGES",
)


gazelle = _gazelle
gazelle_binary = _gazelle_binary
DEFAULT_LANGUAGES = _DEFAULT_LANGUAGES
