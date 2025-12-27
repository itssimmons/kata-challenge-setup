local solution = {}

-- 256 = 2^8
-- 0+8+16+24 = 32 bits
function solution.int32_to_ip(int32)
  return ("%d.%d.%d.%d"):format(
    math.floor(int32 / 2 ^ 24) % 256, -- 24 = 8+8+8
    math.floor(int32 / 2 ^ 16) % 256, -- 16 = 8+8
    math.floor(int32 / 2 ^ 8) % 256,  -- 8  = 8
    int32 % 256                       -- 0
  )
end

return solution
