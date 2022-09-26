--[[-----------------------------------------------------------------------------------------

main.lua -- Main Game

-- -> Pory, The snowball...

--------------------------------------------------------------------------------------------]]
 
-- Main -- >>
do -->
    local Vpes = require('content\\scripts\\constants')

    local I = { -- Imports...
        r_pos = require(Vpes.path('relayout')),
        game = require(Vpes.path('init'))
    }

    -- Making it easy to pick up screen positions >>
    local LEYOUT_POS = {
        W = I.r_pos._W,   -- > Get position Width!
        H = I.r_pos._H,   -- > Get position Height!
        CX = I.r_pos._CX, -- > Get position Center.x!
        CY = I.r_pos._CY  -- > Get position Center.y!
    }
    -- <<

    -- Game startup... >>
    I.game.init(LEYOUT_POS, Vpes)
    -- <<

end --<
