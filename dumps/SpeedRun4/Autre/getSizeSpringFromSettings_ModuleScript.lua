-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:04:54
-- Luau version 6, Types version 3
-- Time taken: 0.000503 seconds

local Otter_upvr = require(game:GetService("CorePackages").Packages.Otter)
return function(arg1) -- Line 5, Named "getSizeSpringFromSettings"
	--[[ Upvalues[1]:
		[1]: Otter_upvr (readonly)
	]]
	local SizeAnimation = arg1.SizeAnimation
	if not SizeAnimation.Enabled then
		return Otter_upvr.instant
	end
	local module_upvr = {
		dampingRatio = SizeAnimation.SpringDampingRatio;
		frequency = SizeAnimation.SpringFrequency;
	}
	return function(arg1_2) -- Line 15
		--[[ Upvalues[2]:
			[1]: Otter_upvr (copied, readonly)
			[2]: module_upvr (readonly)
		]]
		return Otter_upvr.spring(arg1_2, module_upvr)
	end
end