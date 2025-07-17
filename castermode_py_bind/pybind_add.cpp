#include <pybind11/pybind11.h>
#include "add.h"

namespace py = pybind11;

PYBIND11_MODULE(add_module, m) {
    m.def("add", &an::add, "A function which adds two numbers");
}