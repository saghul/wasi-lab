
import os
import sys

with open(sys.argv[1], 'rb') as f:
    data = ['0x%02x' % ord(c) for c in f.read()]

data_len = len(data)
module = os.path.splitext(os.path.basename(sys.argv[1]))[0]

print('#include <inttypes.h>')
print('const uint32_t qjsc_%s_size = %d;' % (module, data_len))
print('const uint8_t qjsc_%s[%d] = {' % (module, data_len))
for x in range(0, len(data), 16):
    print('    %s,' % ', '.join(data[x:x+16]))
print('};')

