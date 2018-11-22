Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
        local ped = GetPlayerPed(-1)
        local veh = GetVehiclePedIsIn(ped, false)
        if veh ~= nil then
	    local job = exports.esx_policejob:getJob()
            if job ~= nil and job == "police" then
		SetVehicleEnginePowerMultiplier(GetVehiclePedIsIn(ped, false), 40.0)                
            end
        end
	end
end)
