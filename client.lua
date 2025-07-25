RegisterNetEvent('AnZo-notify:sendNotification', function(message)
    SendNUIMessage({
        type = "notify",
        text = message
    })
end)

-- Test Command
RegisterCommand("anzonotify", function()
    TriggerEvent('AnZo-notify:sendNotification', "Asset payment is overdue, you must pay the fees")
end)