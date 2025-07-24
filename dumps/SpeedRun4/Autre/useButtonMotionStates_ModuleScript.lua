-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:47:16
-- Luau version 6, Types version 3
-- Time taken: 0.000958 seconds

local Motion_upvr = require(script:FindFirstAncestor("Foundation").Parent.Motion)
local TransitionPreset_upvr = Motion_upvr.TransitionPreset
return function(arg1, arg2) -- Line 27, Named "useButtonMotionStates"
	--[[ Upvalues[2]:
		[1]: Motion_upvr (readonly)
		[2]: TransitionPreset_upvr (readonly)
	]]
	local module = {
		Default = Motion_upvr.createState({
			transparency = arg1 or 0;
			textTransparency = arg1 or 0;
			iconScale = 1;
		}, {
			iconTransparency = Motion_upvr.transition(TransitionPreset_upvr.Default, {
				easingStyle = Enum.EasingStyle.Linear;
				duration = 0.5;
			});
			transparency = Motion_upvr.transition({
				easingStyle = Enum.EasingStyle.Linear;
				duration = 0.2;
			});
			default = Motion_upvr.transition(TransitionPreset_upvr.Default, {
				duration = 0.2;
			});
		});
		Loading = Motion_upvr.createState({
			transparency = 0;
			textTransparency = 1;
			iconTransparency = 1;
			iconScale = 0;
		}, {
			iconTransparency = Motion_upvr.transition(TransitionPreset_upvr.Default, {
				easingStyle = Enum.EasingStyle.Linear;
				duration = 0.2;
			});
			default = Motion_upvr.transition(TransitionPreset_upvr.Default, {
				duration = 0.2;
			});
		});
	}
	local tbl = {}
	tbl.transparency = arg2
	tbl.textTransparency = arg2
	module.Disabled = Motion_upvr.createState(tbl, {
		default = Motion_upvr.transition({
			easingStyle = Enum.EasingStyle.Linear;
			duration = 0.1;
		});
	})
	return module
end