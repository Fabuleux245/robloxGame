-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:17:20
-- Luau version 6, Types version 3
-- Time taken: 0.000570 seconds

local PlaceInfoModel_upvr = require(script.Parent.PlaceInfoModel)
local module = {}
local GenerateStringId_upvr = require(script:FindFirstAncestor("PlaceInfoRodux").Parent.AppCommonLib).GenerateStringId
function module.mock() -- Line 11
	--[[ Upvalues[2]:
		[1]: PlaceInfoModel_upvr (readonly)
		[2]: GenerateStringId_upvr (readonly)
	]]
	local any_new_result1 = PlaceInfoModel_upvr.new()
	any_new_result1.builder = "builder"
	any_new_result1.builderId = GenerateStringId_upvr()
	any_new_result1.description = "description"
	any_new_result1.imageToken = GenerateStringId_upvr()
	any_new_result1.isPlayable = true
	any_new_result1.name = "name"
	any_new_result1.placeId = GenerateStringId_upvr()
	any_new_result1.price = 0
	any_new_result1.reasonProhibited = nil
	any_new_result1.universeId = GenerateStringId_upvr()
	any_new_result1.universeRootPlaceId = GenerateStringId_upvr()
	any_new_result1.url = "url"
	return any_new_result1
end
setmetatable(module, {
	__index = PlaceInfoModel_upvr;
})
return module