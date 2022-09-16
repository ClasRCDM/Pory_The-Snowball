do --: Class_ Main game >>
    --
    local Main = {} Main.__index = Main

    function Main.init(pos, vpes)  --:Class_table
        local self = setmetatable({}, Main)
        -- ->> ------------------- <<- --
        self._pos = pos
        self._vpes = vpes

        self.path_sp = function(nameSprite)
            return self._vpes.path(nameSprite, 'Sp')
        end
        -- Startup
        self:MENU()
        self:backGround()

        return self
    end

    function Main:backGround()  --:Background
        local _background = display.newImage(self.path_sp('background'))
        _background.x, _background.y = self._pos.CX, self._pos.CY
    end

    function Main:MENU()  --:Menu
        -- pass
    end

    return Main
end -- <<
