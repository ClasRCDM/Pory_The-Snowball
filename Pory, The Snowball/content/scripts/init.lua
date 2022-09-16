do --: Class_ Main game >>
    --
    local Main = {} Main.__index = Main

    function Main.init(posScreen, vpes)  --:Class_table
        local self = setmetatable({}, Main)
        -- ->> ------------------- <<- --
        self._posScr = posScreen

        self.path_sp = function(nameSprite)
            return vpes.path(nameSprite, 'Sp')
        end

        self.backGround = nil
        -- Startup
        self:MENU()
        self:backGround()

        return self
    end

    function Main:backGround()  --:Background
        -- Fill background
        local _backGround_fill = display.newImage(self.path_sp('background_fill'))

        -- Create/Set Background image
        self.backGround = display.newImage(self.path_sp('background_clouds'))

        -- Centralize
        self.backGround.x, self.backGround.y = self._posScr.CX, self._posScr.CY
        _backGround_fill.x, _backGround_fill.y = self._posScr.CX, self._posScr.CY

        -- ->> Options - Background Image <<- --
        self.backGround:translate(0, -335)
        self.backGround:scale(2, 2)

        _backGround_fill:translate(0, 335)
        _backGround_fill:scale(2, 2)
    end

    function Main:MENU()  --:Menu
        -- pass
    end

    return Main
end -- <<
