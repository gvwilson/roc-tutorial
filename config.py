# Tutorial data.
title = "Roc in 100 Programs"
subtitle = "A Gentle Introduction to Functional Programming"
repo = "https://github.com/gvwilson/roc-tutorial"
release = "https://github.com/gvwilson/roc-tutorial/raw/main/roc-tutorial.zip"
plausible = "gvwilson.github.io/roc-tutorial"
author = {
    "name": "Greg Wilson",
    "email": "gvwilson@third-bit.com",
}

# Theme information.
theme = "tut"
src_dir = "pages"
out_dir = "docs"
rouge_style = "github.css"
lang = "en"
extension = "/"

# Enable various Markdown extensions.
markdown_settings = {
    "extensions": [
        "markdown.extensions.extra",
        "markdown.extensions.smarty",
        "pymdownx.superfences",
    ]
}


if __name__ == "__main__":
    import sys
    USAGE = "usage: config.py [lang]"
    status = 0
    if len(sys.argv) == 1:
        print(USAGE, file=sys.stderr)
    elif len(sys.argv) != 2:
        print(USAGE, file=sys.stderr)
        status = 1
    elif sys.argv[1] == "lang":
        print(lang)
    else:
        print(USAGE, file=sys.stderr)
        status = 1
    sys.exit(status)
