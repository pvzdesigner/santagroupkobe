
local gLocalPlayerWorldGridCellX = -1
local gLocalPlayerWorldGridCellY = -1

---@param fc number
function TickWorldGrid(fc)

	--[[ Só queremos executar cada 10 frames! ]]
	if fc % 10 ~= 0 then
		return
	end

    local cellX, cellY = GetWorldGridCellXYFromPosition( sx.client.player.getFocusPosition() )

    local playerChangedCells = false

    if gLocalPlayerWorldGridCellX ~= cellX or gLocalPlayerWorldGridCellY ~= cellY then
        playerChangedCells = true

        gLocalPlayerWorldGridCellX = cellX
        gLocalPlayerWorldGridCellY = cellY
    end

    if playerChangedCells then
        --[[ SEND TO SERVER! ]]

if WORLDGRID_DEBUG then
        print('sending enteredWorldGridCell to server', cellX, cellY)
end

		TriggerServerEvent('enteredWorldGridCell')
    end
end