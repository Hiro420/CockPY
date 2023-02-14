from itertools import cycle

from .mt64 import mt64

def new_key(seed: int) -> bytes:
    mt = mt64()
    mt.seed(seed)
    return bytes(byte for _ in range(512) for byte in mt.int64().to_bytes(8, "big"))

def xor(data: bytes, key: bytes) -> bytes:
    return bytes(v ^ k for (v, k) in zip(data, cycle(key)))