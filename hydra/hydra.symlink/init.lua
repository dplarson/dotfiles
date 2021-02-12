-- reload config if changes detected
pathwatcher.new(os.getenv("HOME") .. "/.hydra/", hydra.reload):start()

-- load on login
hydra.autolaunch.set(true)

hydra.menu.show(function()
    return {
        {title = "Reload Config", fn = hydra.reload},
        {title = "Open REPL", fn = repl.open},
        {title = "-"},
        {title = "About Hydra", fn = hydra.showabout},
        {title = "Quit", fn = os.exit},
    }
end)


-- move the window to the right half of the screen
function movewindow_righthalf()
    local win = window.focusedwindow()
    local newframe = win:screen():frame_without_dock_or_menu()
    newframe.w = newframe.w / 2
    newframe.x = newframe.w -- comment this line to push it to left half of screen
    win:setframe(newframe)
end

-- move the window to the left half of the screen
function movewindow_lefthalf()
    local win = window.focusedwindow()
    local newframe = win:screen():frame_without_dock_or_menu()
    newframe.w = newframe.w / 2
    win:setframe(newframe)
end

-- move the window to the center at 3/4 width of the screen
function movewindow_center()
    local win = window.focusedwindow()
    local newframe = win:screen():frame_without_dock_or_menu()
    newframe.x = newframe.w / 8
    newframe.w = newframe.w * 3 / 4
    win:setframe(newframe)
end

-- move the window to take up the full width of the screen
function movewindow_wide()
    local win = window.focusedwindow()
    local newframe = win:screen():frame_without_dock_or_menu()
    newframe.w = newframe.w
    newframe.x = 0
    win:setframe(newframe)
end

-- move the window to the top half of the screen
function movewindow_tophalf()
    local win = window.focusedwindow()
    local newframe = win:screen():frame_without_dock_or_menu()
    newframe.h = newframe.h / 2
    win:setframe(newframe)
end


-- move the window to the top half of the screen
function movewindow_bottomhalf()
    local win = window.focusedwindow()
    local newframe = win:screen():frame_without_dock_or_menu()
    newframe.h = newframe.h / 2
    newframe.y = newframe.h
    win:setframe(newframe)
end



-- shortcuts
hotkey.new({"alt"}, "1", movewindow_lefthalf):enable()
hotkey.new({"alt"}, "2", movewindow_righthalf):enable()
hotkey.new({"alt"}, "3", movewindow_center):enable()
hotkey.new({"alt"}, "4", movewindow_wide):enable()
hotkey.new({"alt"}, "=", movewindow_tophalf):enable()
hotkey.new({"alt"}, "-", movewindow_bottomhalf):enable()
