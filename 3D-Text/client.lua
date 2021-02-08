Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1)
        if GetDistanceBetweenCoords( 388.62826538086, -736.53283691406, 29.294555664062, GetEntityCoords(GetPlayerPed(-1))) < 10.0 then
			Draw3DText( 388.62826538086, -736.53283691406, 29.294555664062  -1.400, "Husk at læse reglerne", 4, 0.1, 0.1)
			Draw3DText( 388.62826538086, -736.53283691406, 29.294555664062  -1.750, "Nyd dit ophold", 4, 0.1, 0.1)
            Draw3DText( 388.62826538086, -736.53283691406, 29.294555664062  -1.1150, "Velkommen til Test-Server", 4, 0.1, 0.1)
        end
    end
end)


-------------------------------------------------------------------------------------------------------------------------
function Draw3DText(x,y,z,textInput,fontId,scaleX,scaleY)
         local px,py,pz=table.unpack(GetGameplayCamCoords())
         local dist = GetDistanceBetweenCoords(px,py,pz, x,y,z, 1)    
         local scale = (1/dist)*20
         local fov = (1/GetGameplayCamFov())*100
         local scale = scale*fov   
         SetTextScale(scaleX*scale, scaleY*scale)
         SetTextFont(fontId)
         SetTextProportional(1)
         SetTextColour(255, 255, 255, 255)		-- You can change the text color here
         SetTextDropshadow(1, 1, 1, 1, 255)
         SetTextEdge(2, 0, 0, 0, 150)
         SetTextDropShadow()
         SetTextOutline()
         SetTextEntry("STRING")
         SetTextCentre(1)
         AddTextComponentString(textInput)
         SetDrawOrigin(x,y,z+2, 0)
         DrawText(0.0, 0.0)
         ClearDrawOrigin()
        end
