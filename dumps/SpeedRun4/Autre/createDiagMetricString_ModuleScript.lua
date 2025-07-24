-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:29:19
-- Luau version 6, Types version 3
-- Time taken: 0.001301 seconds

local SocialLuaAnalytics = script:FindFirstAncestor("SocialLuaAnalytics")
local EventTypes_upvr = require(SocialLuaAnalytics.Analytics.Enums).EventTypes
local Cryo_upvr = require(SocialLuaAnalytics.Parent.Cryo)
return function(arg1, arg2) -- Line 16, Named "createDiagMetricString"
	--[[ Upvalues[2]:
		[1]: EventTypes_upvr (readonly)
		[2]: Cryo_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var4 = arg1
	if not var4 then
		var4 = EventTypes_upvr.LoadingTime
	end
	local var5 = arg2
	if not var5 then
		var5 = {}
	end
	local module = {}
	if var5.nextPage then
	else
	end
	module[1] = var4
	module[2] = var5.fetch
	module[3] = nil
	module[4] = var5.status
	return table.concat(Cryo_upvr.Dictionary.values(module), '_')
end