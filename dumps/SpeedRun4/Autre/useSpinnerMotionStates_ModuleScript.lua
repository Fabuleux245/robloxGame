-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:47:17
-- Luau version 6, Types version 3
-- Time taken: 0.001155 seconds

local Motion_upvr = require(script:FindFirstAncestor("Foundation").Parent.Motion)
local TransitionPreset_upvr = Motion_upvr.TransitionPreset
return function() -- Line 24, Named "useSpinnerMotionStates"
	--[[ Upvalues[2]:
		[1]: Motion_upvr (readonly)
		[2]: TransitionPreset_upvr (readonly)
	]]
	return {
		Default = Motion_upvr.createState({
			scale = 0;
			transparency = 1;
		}, {
			default = Motion_upvr.transition(TransitionPreset_upvr.Default, {
				duration = 0.2;
			});
			transparency = Motion_upvr.transition({
				easingStyle = Enum.EasingStyle.Linear;
				duration = 0.2;
			});
		});
		Loading = Motion_upvr.createState({
			scale = 1;
			transparency = 0;
		}, {
			default = Motion_upvr.transition(TransitionPreset_upvr.Default, {
				duration = 0.2;
				delay = 0.1;
			});
			transparency = Motion_upvr.transition({
				easingStyle = Enum.EasingStyle.Linear;
				duration = 0.2;
			});
		});
	}
end