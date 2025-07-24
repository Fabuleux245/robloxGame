-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:02:56
-- Luau version 6, Types version 3
-- Time taken: 0.000919 seconds

local Otter_upvr = require(script:FindFirstAncestor("ExpChat").Parent.Otter)
return function(arg1, arg2) -- Line 7, Named "getSpringFromSettings"
	--[[ Upvalues[1]:
		[1]: Otter_upvr (readonly)
	]]
	local var2
	if arg2 == "size" then
		var2 = arg1.SizeAnimation
	else
		var2 = arg1.TransparencyAnimation
	end
	if var2.Enabled == false then
		return Otter_upvr.instant
	end
	local module_upvr = {
		dampingRatio = var2.SpringDampingRatio;
		frequency = var2.SpringFrequency;
	}
	return function(arg1_2) -- Line 25
		--[[ Upvalues[2]:
			[1]: Otter_upvr (copied, readonly)
			[2]: module_upvr (readonly)
		]]
		return Otter_upvr.spring(arg1_2, module_upvr)
	end
end