app "first"
    packages { cli: "https://github.com/roc-lang/basic-cli/releases/download/0.8.1/x8URkvfyi9I0QhmVG98roKBUs_AZRkLFwFJVJ3942YA.tar.br" }
    imports [cli.Stdout]
    provides [main] to cli

order = \left, right ->
    if left < right then
        -1
    else if left == right then
        0
    else
        -1

# [keep]
tryOrder = \a ->
    left = Num.toStr (order a 5)
    both = Num.toStr (order a a)
    right = Num.toStr (order 5 a)
    "left $(left) both $(both) right $(right)"

main =
    Stdout.line (tryOrder 3)
# [/keep]
