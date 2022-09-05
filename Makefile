BAZEL := bazel

.PHONY: default all test clean clean-all

default: all

all:
	$(BAZEL) build //...

test:
	$(BAZEL) test //...

clean:
	$(BAZEL) clean

clean-all:
	$(BAZEL) clean --expunge
