--Bu script sKyTurK tarafından yapılmıştır--
--Kod ile istedğiniz gibi oynayıp düzenleyebilirsiniz
-------------------------------------------

--Ped Oluşturma--

local pedMarket = createPed (20, -724.81372070313,970.06854248047,12.3168592453)
local pedAch = createPed (21, -728.81372070313,970.06854248047,12.3168592453)
local pedSet = createPed (23, -732.81372070313,970.06854248047,12.3168592453)

--Ped Dondurma--

setPedFrozen(pedMarket, true)
setPedFrozen(pedAch, true)
setPedFrozen(pedSet, true)

--Ped Ölümsüzlük--


function pedDemecEngelle ( saldirgan )
    if source == pedMarket then
        cancelEvent()
	  elseif source == pedAch then
		    cancelEvent()
	  elseif source == pedSet then
		    cancelEvent()
    end
end
addEventHandler ( "onClientPedDamage", getRootElement(), pedDemecEngelle )



addEventHandler("onClientRender", root,
function() 

        -- Market Ped --
        local x, y, z = getElementPosition( pedMarket )
        local x2, y2, z2 = getElementPosition(localPlayer)
        local yakinlas = getDistanceBetweenPoints3D(x,y,z, x2, y2, z2)
        if yakinlas < 2 then
           local x2, y2, z2 = getElementPosition(localPlayer) 
           local sx, sy = getScreenFromWorldPosition(x, y, z+0.9, 0.06)  
           local yakinlas = getDistanceBetweenPoints3D(x,y,z, x2, y2, z2)
           local yaziboyut = 0.9
           dxDrawText ( "Market", sx, sy - 30, sx, sy - 30, tocolor(255,255,255), math.min ( 0.3*(150/yakinlas)*1.4,1.3 - (0.5 + math.sin(math.rad(getTickCount())) / 3) / 12) * yaziboyut, "default-bold", "center", "bottom", false, false, false, true )
        end

	      -- Görev Ped --
	      local x, y, z = getElementPosition( pedAch )
        local x2, y2, z2 = getElementPosition(localPlayer)
        local yakinlas = getDistanceBetweenPoints3D(x,y,z, x2, y2, z2)
        if yakinlas < 2 then
           local x2, y2, z2 = getElementPosition(localPlayer) 
           local sx, sy = getScreenFromWorldPosition(x, y, z+0.9, 0.06)  
           local yakinlas = getDistanceBetweenPoints3D(x,y,z, x2, y2, z2)
           local yaziboyut = 0.9
           dxDrawText ( "Görev", sx, sy - 30, sx, sy - 30, tocolor(255,255,255), math.min ( 0.3*(150/yakinlas)*1.4,1.3 - (0.5 + math.sin(math.rad(getTickCount())) / 3) / 12) * yaziboyut, "default-bold", "center", "bottom", false, false, false, true )
        end

      	-- Işınlanma Ped --
	      local x, y, z = getElementPosition( pedSet )
        local x2, y2, z2 = getElementPosition(localPlayer)
        local yakinlas = getDistanceBetweenPoints3D(x,y,z, x2, y2, z2)
        if yakinlas < 2 then
           local x2, y2, z2 = getElementPosition(localPlayer) 
           local sx, sy = getScreenFromWorldPosition(x, y, z+0.9, 0.06)  
           local yakinlas = getDistanceBetweenPoints3D(x,y,z, x2, y2, z2)
           local yaziboyut = 0.9
           dxDrawText ( "Işınlayıcı", sx, sy - 30, sx, sy - 30, tocolor(255,255,255), math.min ( 0.3*(150/yakinlas)*1.4,1.3 - (0.5 + math.sin(math.rad(getTickCount())) / 3) / 12) * yaziboyut, "default-bold", "center", "bottom", false, false, false, true )
        end
end 
)


bindKey("F", "down",
function()

    -- Market Ped --
    local x, y, z = getElementPosition( pedMarket )
    local x2, y2, z2 = getElementPosition(localPlayer)
    local yakinlas = getDistanceBetweenPoints3D(x,y,z, x2, y2, z2)
    if ( yakinlas < 2 ) then
		    --Bu kısıma market pedine girince yapılacak işlemler
        outputChatBox("Market pede girdin",255,255,255,true)
    end

    -- Görev Ped --
    local x, y, z = getElementPosition( pedAch )
    local x2, y2, z2 = getElementPosition(localPlayer)
    local yakinlas = getDistanceBetweenPoints3D(x,y,z, x2, y2, z2)
    if ( yakinlas < 2 ) then
		    --Bu kısıma görev pedine girince yapılacak işlemler
        outputChatBox("Görev Pedine girdin",255,255,255,true)
    end

    -- Işınlanma Ped --
    local x, y, z = getElementPosition( pedSet )
    local x2, y2, z2 = getElementPosition(localPlayer)
    local yakinlas = getDistanceBetweenPoints3D(x,y,z, x2, y2, z2)
    if ( yakinlas < 2 ) then
		    --Bu kısıma ışınlanma pedine girince yapılacak işlemler
        outputChatBox("Işınlanma Pedine girdin",255,255,255,true)
    end

end
)
