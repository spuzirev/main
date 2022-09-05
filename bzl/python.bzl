load("@rules_python//python:defs.bzl", _py_binary="py_binary", _py_library="py_library", _py_test="py_test")
load("@rules_python//python:pip.bzl", _compile_pip_requirements="compile_pip_requirements", _pip_install="pip_install", _pip_parse="pip_parse")
load("@rules_python//python:repositories.bzl",_python_register_toolchains="python_register_toolchains")
load("@rules_python//gazelle/manifest:defs.bzl", _gazelle_python_manifest="gazelle_python_manifest")
load("@rules_python//gazelle/modules_mapping:def.bzl", _modules_mapping="modules_mapping")
load("@rules_python//gazelle:def.bzl", _GAZELLE_PYTHON_RUNTIME_DEPS="GAZELLE_PYTHON_RUNTIME_DEPS")


compile_pip_requirements = _compile_pip_requirements
gazelle_python_manifest = _gazelle_python_manifest
modules_mapping = _modules_mapping
pip_install = _pip_install
pip_parse = _pip_parse
py_binary = _py_binary
py_library = _py_library
py_test = _py_test
python_register_toolchains = _python_register_toolchains
GAZELLE_PYTHON_RUNTIME_DEPS = _GAZELLE_PYTHON_RUNTIME_DEPS
