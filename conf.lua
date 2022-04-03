--set global Love config
--https://love2d.org/wiki/Config_Files

function love.conf(t)
    t.window.width=800
    t.window.height=600
    t.window.title="My Game!"
    t.window.icon = nil                 -- Filepath to an image to use as the window's icon (string)
    t.window.borderless = false         -- Remove all border visuals from the window (boolean)
    t.window.resizable = false          -- Let the window be user-resizable (boolean)
    --t.window.minwidth = 1               -- Minimum window width if the window is resizable (number)
    --t.window.minheight = 1              -- Minimum window height if the window is resizable (number)
    --t.window.fullscreen = false         -- Enable fullscreen (boolean)
    --t.window.fullscreentype = "desktop" -- Choose between "desktop" fullscreen or "exclusive" fullscreen mode (string)
    t.window.vsync = 1                  -- Vertical sync mode (number)
    --t.window.x = nil                    -- The x-coordinate of the window's position in the specified display (number)
    --t.window.y = nil                    -- The y-coordinate of the window's position in the specified display (number)

    --don't load joystick modules if not required
    t.modules.joystick = false
    t.modules.physics = false
end