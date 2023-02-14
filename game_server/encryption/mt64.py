class mt64:
    def __init__(self):
        self.mt = [0]*312
        self.mti = 313

    def seed(self, seed):
        self.mt[0] = seed & 0xffffffffffffffff
        for i in range(1,312):
            self.mt[i] = (6364136223846793005 * (self.mt[i-1] ^ (self.mt[i-1] >> 62)) + i) & 0xffffffffffffffff
        self.mti = 312

    def init_by_array(self, key):
        self.seed(19650218)
        i = 1
        j = 0
        k = max(312, len(key))
        for ki in range(k):
            self.mt[i] = ((self.mt[i] ^ ((self.mt[i-1] ^ (self.mt[i-1] >> 62)) * 3935559000370003845)) + key[j] + j) & 0xffffffffffffffff
            i += 1
            j += 1
            if i >= 312:
                self.mt[0] = self.mt[311]
                i = 1
            if j >= len(key):
                j = 0
        for ki in range(312):
            self.mt[i] = ((self.mt[i] ^ ((self.mt[i-1] ^ (self.mt[i-1] >> 62)) * 2862933555777941757)) - i) & 0xffffffffffffffff
            i += 1
            if i >= 312:
                self.mt[0] = self.mt[311]
                i = 1
        self.mt[0] = 1 << 63

    def int64(self):
        if self.mti >= 312:
            if self.mti == 313:
                self.seed(5489)

            for k in range(311):
                y = (self.mt[k] & 0xFFFFFFFF80000000) | (self.mt[k+1] & 0x7fffffff)
                if k < 312 - 156:
                    self.mt[k] = self.mt[k+156] ^ (y >> 1) ^ (0xB5026F5AA96619E9 if y & 1 else 0)
                else:
                    self.mt[k] = self.mt[k+156-624] ^ (y >> 1) ^ (0xB5026F5AA96619E9 if y & 1 else 0)

            y = (self.mt[311] & 0xFFFFFFFF80000000) | (self.mt[0] & 0x7fffffff)
            self.mt[311] = self.mt[155] ^ (y >> 1) ^ (0xB5026F5AA96619E9 if y & 1 else 0)
            self.mti = 0

        y = self.mt[self.mti]
        self.mti += 1

        y ^= (y >> 29) & 0x5555555555555555
        y ^= (y << 17) & 0x71D67FFFEDA60000
        y ^= (y << 37) & 0xFFF7EEE000000000
        y ^= (y >> 43)

        return y

    def int64b(self):
        if self.mti == 313:
            self.seed(5489)

        k = self.mti

        if k == 312:
            k = 0
            self.mti = 0

        if k == 311:
            y = (self.mt[311] & 0xFFFFFFFF80000000) | (self.mt[0] & 0x7fffffff)
            self.mt[311] = self.mt[155] ^ (y >> 1) ^ (0xB5026F5AA96619E9 if y & 1 else 0)
        else:
            y = (self.mt[k] & 0xFFFFFFFF80000000) | (self.mt[k+1] & 0x7fffffff)
            if k < 312 - 156:
                self.mt[k] = self.mt[k+156] ^ (y >> 1) ^ (0xB5026F5AA96619E9 if y & 1 else 0)
            else:
                self.mt[k] = self.mt[k+156-624] ^ (y >> 1) ^ (0xB5026F5AA96619E9 if y & 1 else 0)

        y = self.mt[self.mti]
        self.mti += 1

        y ^= (y >> 29) & 0x5555555555555555
        y ^= (y << 17) & 0x71D67FFFEDA60000
        y ^= (y << 37) & 0xFFF7EEE000000000
        y ^= (y >> 43)

        return y