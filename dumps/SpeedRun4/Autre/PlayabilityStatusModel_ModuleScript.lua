-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:17:33
-- Luau version 6, Types version 3
-- Time taken: 0.001223 seconds

local PlayabilityRodux = script:FindFirstAncestor("PlayabilityRodux")
local Parent = PlayabilityRodux.Parent
local module_upvr = {
	new = function() -- Line 27, Named "new"
		return {}
	end;
}
local PlayabilityStatusEnum_upvr = require(PlayabilityRodux.Enums.PlayabilityStatusEnum)
function module_upvr.mock() -- Line 33
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: PlayabilityStatusEnum_upvr (readonly)
	]]
	local any_new_result1_2 = module_upvr.new()
	any_new_result1_2.universeId = "149757"
	any_new_result1_2.isPlayable = true
	any_new_result1_2.playabilityStatus = PlayabilityStatusEnum_upvr.Playable
	return any_new_result1_2
end
local Result_upvr = require(Parent.Result)
local FFlagLuaAppUnplayableDisplayText_upvr = require(Parent.SharedFlags).FFlagLuaAppUnplayableDisplayText
function module_upvr.fromJsonData(arg1) -- Line 42
	--[[ Upvalues[3]:
		[1]: Result_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: FFlagLuaAppUnplayableDisplayText_upvr (readonly)
	]]
	if type(arg1.universeId) ~= "number" and type(arg1.universeId) ~= "string" then
		return Result_upvr.error("PlayabilityStatus.fromJsonData expects universeId to be a number or a string")
	end
	if type(arg1.isPlayable) ~= "boolean" then
		return Result_upvr.error("PlayabilityStatus.fromJsonData expects isPlayable to be a boolean")
	end
	if type(arg1.playabilityStatus) ~= "string" then
		return Result_upvr.error("PlayabilityStatus.fromJsonData expects playabilityStatus to be a string")
	end
	local any_new_result1 = module_upvr.new()
	any_new_result1.universeId = tostring(arg1.universeId)
	any_new_result1.isPlayable = arg1.isPlayable
	local playabilityStatus = arg1.playabilityStatus
	any_new_result1.playabilityStatus = playabilityStatus
	if FFlagLuaAppUnplayableDisplayText_upvr then
		playabilityStatus = arg1.unplayableDisplayText
	else
		playabilityStatus = nil
	end
	any_new_result1.unplayableDisplayText = playabilityStatus
	return Result_upvr.success(any_new_result1)
end
return module_upvr