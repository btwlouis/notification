# Notification Script

It's a simple notification script


## Usage

```lua
 /**
   * Generates a 5 second notification at the top left
   * @param color | ie. #f1f1f1 (border color at the left side)
   * @param title | title of notification 
   * @param message | message of notification 
   */

TriggerEvent('notifications', "#f1f1f1", "Awesome title", "Awesome message")
```

## Examples

```lua
RegisterCommand("announce", function(source, args)
    local args = table.concat(args, " ")
    
    if args ~= nil then
        TriggerClientEvent('notifications', -1, "#eb4034", "ANNOUNCE", argString)
    end
end, true)

RegisterCommand("id", function(source, args)
    TriggerClientEvent('notifications', source, "#eb4034", "ANNOUNCE", "ID: " .. source)
end, false)
```


