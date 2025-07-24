-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:17:33
-- Luau version 6, Types version 3
-- Time taken: 0.000797 seconds

local PlayabilityRodux = script:FindFirstAncestor("PlayabilityRodux")
local SetPlayabilityStatus_upvr = require(PlayabilityRodux.PlayabilityStatus.SetPlayabilityStatus)
local Immutable_upvr = require(PlayabilityRodux.Parent.AppCommonLib).Immutable
return function(arg1, arg2) -- Line 7
	--[[ Upvalues[2]:
		[1]: SetPlayabilityStatus_upvr (readonly)
		[2]: Immutable_upvr (readonly)
	]]
	local var5 = arg1
	if not var5 then
		var5 = {}
	end
	arg1 = var5
	local var6 = arg1
	if arg2.type == SetPlayabilityStatus_upvr.name then
		var6 = Immutable_upvr.JoinDictionaries(var6, arg2.playabilityStatus)
	end
	return var6
end