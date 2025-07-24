-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:33:33
-- Luau version 6, Types version 3
-- Time taken: 0.001375 seconds

local Parent = script:FindFirstAncestor("UserLib").Parent
local DateTime_upvr = require(Parent.Time).DateTime
return require(Parent.Rodux).makeActionCreator(script.Name, function(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9) -- Line 10
	--[[ Upvalues[1]:
		[1]: DateTime_upvr (readonly)
	]]
	local var7 = 0
	if arg7 ~= nil then
		local any_fromIsoDate_result1_2 = DateTime_upvr.fromIsoDate(arg7)
		if any_fromIsoDate_result1_2 ~= nil then
			var7 = any_fromIsoDate_result1_2:GetUnixTimestamp()
		end
	end
	local module_2 = {}
	module_2.userId = arg1
	module_2.presence = arg2
	module_2.lastLocation = arg3
	module_2.placeId = arg4
	module_2.rootPlaceId = arg5
	module_2.gameInstanceId = arg6
	module_2.lastOnline = var7
	module_2.universeId = arg8
	module_2.previousUniverseId = arg9
	return module_2
end)