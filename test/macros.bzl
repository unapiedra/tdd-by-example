# Given target name from //src package, expects .test.cpp file with same name.
# Creates a cc_test for that target.
def src_target_test(target_name):
    native.cc_test(
        name = target_name,
        srcs = [target_name + ".test.cpp"],
        copts = ["-Isrc/"],
        deps = [
            "//test/vendor/catch2",
            "catch-main",
            "//src:" + target_name
        ]
    )
