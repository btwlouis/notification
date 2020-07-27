ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterCommand("announce", function(source, args)
    local argString = table.concat(args, " ")
    if argString ~= nil then
        TriggerClientEvent('notificationsn', -1, "#eb4034", "ANKÜNDIGUNG", argString)
    end
end, true)

RegisterCommand("id", function(source, args)
    TriggerClientEvent('notifications', source, "#eb4034", "ANKÜNDIGUNG", "Deine ID ist: " .. source)
end, false)