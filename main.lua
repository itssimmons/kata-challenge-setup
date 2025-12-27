local kata = {
  hex = {
    '0', '1', '2', '3', '4', '5', '6', '7',
    '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'
  }
}

function kata.rgb(r, g, b)
  r = math.max(0, math.min(255, r))
  g = math.max(0, math.min(255, g))
  b = math.max(0, math.min(255, b))

  local function toHex(n)
    local high = math.floor(n / 16) + 1
    local low = (n % 16) + 1
    return kata.hex[high] .. kata.hex[low]
  end

  return toHex(r) .. toHex(g) .. toHex(b)
end

return kata
