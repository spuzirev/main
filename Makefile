BAZEL := bazel

.PHONY: default all test clean clean-all

default: build

build: build-all

test: test-all

clean: bazel-clean

reset: bazel-reset

lint: gazelle-fix gazelle-update-repos

build-all:
	$(BAZEL) build //...

test-all:
	$(BAZEL) test //...

bazel-clean:
	$(BAZEL) clean

bazel-reset:
	$(BAZEL) clean --expunge

gazelle-fix:
	$(BAZEL) run //:gazelle-fix

gazelle-update-repos:
	$(BAZEL) run //:gazelle-update-repos
