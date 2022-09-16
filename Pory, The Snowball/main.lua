--[[-----------------------------------------------------------------------------------------

main.lua -- Main Game

-- -> Pory, The snowball...

--------------------------------------------------------------------------------------------]]

-- Main -- >>
do -->
    local Vpes = require('content\\scripts\\constants')

    -- Making it easy to pick up screen positions >>
    local r_pos = require(Vpes.path('relayout'))

    local _W, _H, _CX, _CY = r_pos._W, r_pos._H, r_pos._CX, r_pos._CY
    local LEYOUT_POS = {W = _W, H = _H, CX = _CX, CY =_CY}
    -- <<

    -- Game startup... >>
    local game = require(Vpes.path('init'))
    game.init(LEYOUT_POS, Vpes)
    -- <<

end --<
