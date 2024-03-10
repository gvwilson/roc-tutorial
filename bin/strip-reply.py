import sys

MARKER = ":q to quit."

text = sys.stdin.read()
loc = text.find(MARKER)
assert loc >= 0
text = text[loc + len(MARKER):].strip()
text = text.replace("\x1b[1;32m", "").replace("\x1b[0m", "")
sys.stdout.write(text)
