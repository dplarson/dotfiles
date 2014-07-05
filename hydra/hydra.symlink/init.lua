-- save the time when update are checked
function checkforupdates()
    updates.check()
    settings.set('lastcheckedupdates', os.time())
end

-- show a helpful menu
menu.show(function()
    local updatetitles = {[true] = "Install Update", [false] = "Check for Update..."}
    local updatefns = {[true] = updates.install, [false] = checkforupdates}
    local hasupdate = (updates.newversion ~= nil)

    return {
        {title = "Reload Config", fn = hydra.reload},
        {title = "-"},
        {title = "About", fn = hydra.showabout},
        {title = updatetitles[hasupdate], fn = updatefns[hasupdate]},
        {title = "Quit Hydra", fn = os.exit},
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

-- shortcuts
hotkey.new({"alt"}, "1", movewindow_lefthalf):enable()
hotkey.new({"alt"}, "2", movewindow_righthalf):enable()
hotkey.new({"alt"}, "3", movewindow_center):enable()
hotkey.new({"alt"}, "4", movewindow_wide):enable()

-- what to do when an update is checked
function updates.available(available)
    if available then
        notify.show("Hydra update available", "", "Click here to see the changelog and maybe even install it", "showupdate")
    else
        hydra.alert("No update available.")
    end
end

-- launch Hydra at login
autolaunch.set(true)

-- check for updates every week
timer.new(timer.weeks(1), checkforupdates):start()
notify.register("showupdate", showupdate)

-- if this is your first time running Hydra, you're launching it more than a week later, check now
local lastcheckedupdates = settings.get('lastcheckedupdates')
if lastcheckedupdates == nil or lastcheckedupdates <= os.time() - timer.days(7) then
    checkforupdates()
end
