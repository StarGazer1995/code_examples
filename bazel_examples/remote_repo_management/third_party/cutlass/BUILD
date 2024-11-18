load("@rules_foreign_cc//foreign_cc:defs.bzl", "cmake_external")

cmake_external(
    name = "cutlass",
    lib_source = "@cutlass//:source",
    cmake_options = [
        "-DCUTLASS_NVCC_ARCHS=89", // 89 for 4080s
        "-DCUTLASS_ENABLE_TEST=OFF",
        "-DCUTLASS_ENABLE_EXAMPLES=OFF"

    ],
    build_time_env_vars = {
        "MAKEFLAGS": "-j$(expr $(nproc) / 2)",
    },
)