local awful = require("awful")
local wibox = require("wibox")
local gears = require("gears")

local disk_widget = wibox.widget({
	widget = wibox.widget.textbox,
	align = "center",
	valign = "center",
})

local function update_disk_usage(widget)
	awful.spawn.easy_async_with_shell("df -h / | awk 'NR==2 {print $3, $4}'", function(stdout)
		local used, available = stdout:match("([^%s]+)%s([^%s]+)")
		widget:set_text("Free space: " .. available .. "  Used: " .. used .. "  ")
	end)
end

gears.timer({
	timeout = 60, -- Actualiza cada 15 segundos
	autostart = true,
	callback = function()
		update_disk_usage(disk_widget)
	end,
})

update_disk_usage(disk_widget)

return disk_widget
