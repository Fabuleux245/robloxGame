-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:49:30
-- Luau version 6, Types version 3
-- Time taken: 0.001147 seconds

local Foundation_upvr = script:FindFirstAncestor("Foundation")
local Theme_upvr = require(Foundation_upvr.Enums.Theme)
local Device_upvr = require(Foundation_upvr.Enums.Device)
return function(arg1, arg2) -- Line 8, Named "getGeneratedRules"
	--[[ Upvalues[3]:
		[1]: Foundation_upvr (readonly)
		[2]: Theme_upvr (readonly)
		[3]: Device_upvr (readonly)
	]]
	local var12
	local Common = require(Foundation_upvr.Generated.StyleRules.Common)
	local var14
	if arg1 == Theme_upvr.Dark then
		var12 = require(Foundation_upvr.Generated.StyleRules.Dark)
	elseif arg1 == Theme_upvr.Light then
		var12 = require(Foundation_upvr.Generated.StyleRules.Light)
	end
	if arg2 == Device_upvr.Console then
		var14 = require(Foundation_upvr.Generated.StyleRules.Console)
	else
		var14 = require(Foundation_upvr.Generated.StyleRules.Desktop)
	end
	if not var12 or not var14 or not Common then
		return {}
	end
	for i, v in Common do
		table.clone(var14)[i] = v
		local var16
	end
	for i_2, v_2 in var12 do
		var16[i_2] = v_2
	end
	return var16
end