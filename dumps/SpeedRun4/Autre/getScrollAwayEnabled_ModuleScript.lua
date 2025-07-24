-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:18:52
-- Luau version 6, Types version 3
-- Time taken: 0.001029 seconds

local Parent = script.Parent.Parent
local UniversalAppPolicy_upvr = require(Parent.UniversalAppPolicy)
local AppIaScrollAwayIXP_upvr = require(Parent.SharedExperimentDefinition).AppIaScrollAwayIXP
local SharedFlags = require(Parent.SharedFlags)
local FFlagAppIaScrollAway_upvr = SharedFlags.FFlagAppIaScrollAway
local isAppNavEnabled_upvr = SharedFlags.isAppNavEnabled
local FFlagAppIaScrollAwayGuac_upvr = SharedFlags.FFlagAppIaScrollAwayGuac
local function _() -- Line 12, Named "getScrollAwayEnabled"
	--[[ Upvalues[5]:
		[1]: FFlagAppIaScrollAway_upvr (readonly)
		[2]: isAppNavEnabled_upvr (readonly)
		[3]: FFlagAppIaScrollAwayGuac_upvr (readonly)
		[4]: UniversalAppPolicy_upvr (readonly)
		[5]: AppIaScrollAwayIXP_upvr (readonly)
	]]
	if not FFlagAppIaScrollAway_upvr then
		return false
	end
	if not isAppNavEnabled_upvr() then
		return false
	end
	if FFlagAppIaScrollAwayGuac_upvr and not UniversalAppPolicy_upvr.getAppFeaturePolicies().getAppIaScrollAwayEnabled() then
		return false
	end
	return AppIaScrollAwayIXP_upvr.getEnabled()
end
local var9_upvw
return function() -- Line 30
	--[[ Upvalues[6]:
		[1]: var9_upvw (read and write)
		[2]: FFlagAppIaScrollAway_upvr (readonly)
		[3]: isAppNavEnabled_upvr (readonly)
		[4]: FFlagAppIaScrollAwayGuac_upvr (readonly)
		[5]: UniversalAppPolicy_upvr (readonly)
		[6]: AppIaScrollAwayIXP_upvr (readonly)
	]]
	local var10 = var9_upvw
	if var10 == nil then
		if not FFlagAppIaScrollAway_upvr then
			var10 = false
		elseif not isAppNavEnabled_upvr() then
			var10 = false
		elseif FFlagAppIaScrollAwayGuac_upvr and not UniversalAppPolicy_upvr.getAppFeaturePolicies().getAppIaScrollAwayEnabled() then
			var10 = false
		else
			var10 = AppIaScrollAwayIXP_upvr.getEnabled()
		end
		var9_upvw = var10
	end
	return var9_upvw
end