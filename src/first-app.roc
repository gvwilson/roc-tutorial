app "first"
    packages { cli: "https://github.com/roc-lang/basic-cli/releases/download/0.8.1/x8URkvfyi9I0QhmVG98roKBUs_AZRkLFwFJVJ3942YA.tar.br" }
    imports [cli.Stdout]
    provides [main] to cli

main =
    Stdout.line "First application"
