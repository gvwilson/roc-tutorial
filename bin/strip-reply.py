import re
import sys

MARKER = ":q to quit."
ESCAPE = re.compile(r'\x1b\[.+?m')

text = sys.stdin.read()
if (loc := text.find(MARKER)) >= 0:
    text = text[loc + len(MARKER):].strip()
text = ESCAPE.sub("", text)
print(text)
