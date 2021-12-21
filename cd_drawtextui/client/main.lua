RegisterNetEvent('cd_drawtextui:ShowUI')
AddEventHandler('cd_drawtextui:ShowUI', function(action, text)
	SendNUIMessage({
		action = action,
		text = text,
	})
end)

RegisterNetEvent('cd_drawtextui:HideUI')
AddEventHandler('cd_drawtextui:HideUI', function()
	SendNUIMessage({
		action = 'hide'
	})
end)

RegisterCommand("test", function(source, args, rawCommand)
	TriggerEvent('cd_drawtextui:ShowUI', 'show', "O Meu pai")
end)