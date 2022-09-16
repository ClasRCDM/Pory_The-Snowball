-- Variables, paths and essential settings...
do -- VPES >>
    local VPES = {} VPES.__index = VPES

    -- Utils >>
    local f f = function (...) return string.format(...) end
    -- <<

    -- ->> VPES functions <<- --
    function VPES.path(pathName, road)
        local _road = road or 'Ct'
        -- ->> Move Path <<- --
        if _road == 'Sp' then
            return f('content\\sprits\\%s.png', pathName)
        elseif _road == 'Ct' then
            return f('content\\scripts\\%s', pathName)
        end
    end --:Path_str

    return VPES
end -- <<
