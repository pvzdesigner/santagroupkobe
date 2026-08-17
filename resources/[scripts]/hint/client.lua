local hintUISettings = require 'config'
local currentDescription = ""
local isOpenNui = false
local forceClose = false

--- @param action string
--- @param data any
local function nuiMessage(action, data)
    SendNUIMessage({
        action = action,
        data = data
    })
end

--- @param desc string
--- @param title? string
--- @param force? boolean
function Show(desc, title, force)
    if forceClose then
        if force then
            forceClose = false
        else
            return
        end
    end
	nuiMessage('show', {desc = desc, title = title or hintUISettings.title})
    currentDescription = desc
	isOpenNui = true
end

exports('Show', Show)

--- @param desc string
--- @param title? string
function UpdateText(desc, title)
    nuiMessage('updateText', {desc = desc, title = title or hintUISettings.title})
    currentDescription = desc
end
exports('UpdateText', UpdateText)

function Hide(force)
	nuiMessage('hide')
    currentDescription = ""
    isOpenNui = false
    forceClose = force or false
end

exports('Hide', Hide)

function isOpen()
    return isOpenNui
end

exports('isOpen', isOpen)

function currentText()
    return currentDescription
end

exports('currentText', currentText)

local keybind = lib.addKeybind({
    name = hintUISettings.hide.name,
    description = hintUISettings.hide.description,
    defaultKey = hintUISettings.hide.defaultKey,
    onPressed = function()
    if not isOpenNui then return end
        Hide(true)
    end
})

if hintUISettings.testCommand.status then
    RegisterCommand(hintUISettings.testCommand.name, function()
        Show(hintUISettings.testCommand.description, 'Test title')
    end)
end

-- CreateThread(function()
--     Wait(500)
--     exports['hint']:Show("Teste", "Dicas")
-- end)