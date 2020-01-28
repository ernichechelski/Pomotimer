load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

# http_archive(
#     name = "rules_pods",
#     urls = ["https://github.com/pinterest/PodToBUILD/releases/download/0.25.2-fc71a0b/PodToBUILD.zip"],
# )

# Load the new_pod_repository macro - needed for `WORKSPACE` usage
# load("@rules_pods//BazelExtensions:workspace.bzl", "new_pod_repository")


http_archive(
    name = "build_bazel_rules_apple",
    sha256 = "7a7afdd4869bb201c9352eed2daf37294d42b093579b70423490c1b4d4f6ce42",
    url = "https://github.com/bazelbuild/rules_apple/releases/download/0.19.0/rules_apple.0.19.0.tar.gz",
)

load(
    "@build_bazel_rules_apple//apple:repositories.bzl",
    "apple_rules_dependencies",
)

apple_rules_dependencies()

load(
    "@build_bazel_rules_swift//swift:repositories.bzl",
    "swift_rules_dependencies",
)

swift_rules_dependencies()

load(
    "@build_bazel_apple_support//lib:repositories.bzl",
    "apple_support_dependencies",
)

apple_support_dependencies()

load(
    "@com_google_protobuf//:protobuf_deps.bzl",
    "protobuf_deps",
)

# PODS Dependecies
# new_pod_repository(
#   name = "Nimble",
#   url = "https://github.com/Quick/Nimble/archive/v8.0.5.zip",
# )


protobuf_deps()