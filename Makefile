PYTHON_INCLUDE := $(shell python3 -m pybind11 --includes)
CXX := g++
CXXFLAGS := -O3 -Wall -shared -std=c++11 -fPIC

all: add_module$(shell python3-config --extension-suffix)

add_module$(shell python3-config --extension-suffix): pybind_add.cpp add.cc
	$(CXX) $(CXXFLAGS) $(PYTHON_INCLUDE) pybind_add.cpp add.cc -o $@

clean:
	rm -f add_module*.so