.PHONY: build
build:
	mkdir -p build && cd build && cmake .. && make $(shell ncpus)

.PHONY: run
run: build
	build/glslls

.PHONY: clean
clean:
	rm -rf build
