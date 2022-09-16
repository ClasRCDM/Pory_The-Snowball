-----------------------
-- general settings  --
-----------------------

do -- Configs --
	-- resolution vars
	local aspectRatio = display.pixelHeight / display.pixelWidth
	local _WIDHT = 720
	local _HEIGHT = _WIDHT * aspectRatio

	application = { -- Set screen resolution ->>
		content =
		{
			width = _WIDHT,
			height = _HEIGHT,
			scale = "letterbox",
			fps = 60,
		},
	} -- <<-
end
