ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

AddEventHandler('playerConnecting', function(playerName, setKickReason)
    local src = source

    local identifier = GetPlayerIdentifiers(src)[1]


    for k, v in pairs(Config.Blacklisteds) do
        if v == identifier then
            print(GetPlayerName(src) .." bağlanıyor!")
            setKickReason("whit3: "..Config.Reason)
            CancelEvent()
        end
        
    end
end)

