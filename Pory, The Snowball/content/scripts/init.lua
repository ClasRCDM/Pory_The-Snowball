do --: Class_ Main game >>
    --
    local Main = {} Main.__index = Main

    function Main.init(posScreen, vpes)  --:Class_table
        local self = setmetatable({}, Main)
        -- ->> ------------------- <<- --
        self.v = -- Variables to Main...
        {
            _posScr = posScreen,
            bcGnd = {}  -- Background Scenes!
        }

        self.path_sp = function(nameSprite)
            return vpes.path(nameSprite, 'Sp')
        end

        -- Startup
        self:MENU() 
        self:backGround()

        return self
    end

    function Main:backGround()  --:Background
        -- Fill background
        local _backGround_fill = display.newImage(self.path_sp('background_fill'))

        -- Create/Set Background image
        self.v.bcGnd.scene = display.newImage(self.path_sp('background_clouds'))

        -- Centralize
        self.v.bcGnd.scene.x, self.v.bcGnd.scene.y = self.v._posScr.CX, self.v._posScr.CY
        _backGround_fill.x, _backGround_fill.y = self.v._posScr.CX, self.v._posScr.CY

        -- ->> Options - Background Image <<- --
        self.v.bcGnd.scene:translate(0, -335)
        self.v.bcGnd.scene:scale(2, 2)

        _backGround_fill:translate(0, 335)
        _backGround_fill:scale(2, 2)
    end

    function Main:MENU()  --:Menu
        -- pass
    end

    return Main
end -- <<
