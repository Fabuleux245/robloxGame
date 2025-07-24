-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:09:56
-- Luau version 6, Types version 3
-- Time taken: 0.001352 seconds

local Http = script:FindFirstAncestor("Http")
local Cryo_upvr = require(Http.Parent.Cryo)
local function mapStatusToValue_upvr(arg1) -- Line 8, Named "mapStatusToValue"
	--[[ Upvalues[1]:
		[1]: Cryo_upvr (readonly)
	]]
	local module = {}
	for _, v in pairs(arg1) do
		local status = v.status
		local var12
		if status ~= nil then
			var12 = status
		else
			var12 = Cryo_upvr.None
		end
		module[v.key] = var12
	end
	return module
end
local UpdateFetchingStatus_upvr = require(Http.Actions).UpdateFetchingStatus
local BatchUpdateFetchingStatus_upvr = require(Http.Actions).BatchUpdateFetchingStatus
return function(arg1, arg2) -- Line 27
	--[[ Upvalues[4]:
		[1]: UpdateFetchingStatus_upvr (readonly)
		[2]: Cryo_upvr (readonly)
		[3]: BatchUpdateFetchingStatus_upvr (readonly)
		[4]: mapStatusToValue_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var16 = arg1
	if not var16 then
		var16 = {}
	end
	if arg2.type == UpdateFetchingStatus_upvr.name then
		local status_2 = arg2.status
		local var18
		if status_2 ~= nil then
			var18 = status_2
		else
			var18 = Cryo_upvr.None
		end
	end
	if arg2.type == BatchUpdateFetchingStatus_upvr.name then
	end
	return Cryo_upvr.Dictionary.join(Cryo_upvr.Dictionary.join(var16, {
		[arg2.key] = var18;
	}), mapStatusToValue_upvr(arg2.fetchingStatuses))
end