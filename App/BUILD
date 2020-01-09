load("//config:custom_rules.bzl", "application")

licenses(["notice"])

application(
    name = "Pomotimer",
    infoplist = "Supporting Files/Info.plist",
    app_icons = [
        "//App/Resources:AppIcon",
    ],
    resources = [
        "//App/Resources:Assets",
    ],
    deps = [
        "//Modules/Timer:Timer",
    ],
)
