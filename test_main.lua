local luaunit = require 'luaunit'
local kata = require 'main'

function TestSimple()
  luaunit.assertEquals(kata.rgb(255, 255, 255), 'FFFFFF')
  luaunit.assertEquals(kata.rgb(255, 255, 300), 'FFFFFF')
  luaunit.assertEquals(kata.rgb(0, 0, 0), '000000')
end

function TestEdge()
  luaunit.assertEquals(kata.rgb(-20, 275, 125), '00FF7D')
  luaunit.assertEquals(kata.rgb(300, -20, 125), 'FF007D')
  luaunit.assertEquals(kata.rgb(125, 300, -20), '7DFF00')
end

os.exit(luaunit.LuaUnit.run())
