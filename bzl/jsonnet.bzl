load(
    "@io_bazel_rules_jsonnet//jsonnet:jsonnet.bzl",
    _jsonnet_library = "jsonnet_library",
    _jsonnet_to_json = "jsonnet_to_json",
)

jsonnet_library = _jsonnet_library
jsonnet_to_json = _jsonnet_to_json
