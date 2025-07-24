-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:47:54
-- Luau version 6, Types version 3
-- Time taken: 0.002036 seconds

local Motion_upvr = require(script:FindFirstAncestor("Foundation").Parent.Motion)
local TransitionPreset_upvr = Motion_upvr.TransitionPreset
return function(arg1, arg2) -- Line 31, Named "useInputMotionStates"
	--[[ Upvalues[2]:
		[1]: Motion_upvr (readonly)
		[2]: TransitionPreset_upvr (readonly)
	]]
	local Default = arg1.Color.Content.Default
	local Emphasis = arg1.Color.Content.Emphasis
	local var7 = arg2
	if not var7 then
		var7 = arg1.Color.ActionSubEmphasis.Background
	end
	return {
		Default = Motion_upvr.createState({
			backgroundStyle = {
				Color3 = Default.Color3;
				Transparency = 1;
			};
			strokeStyle = Default;
			labelStyle = Default;
		}, {
			default = Motion_upvr.transition(TransitionPreset_upvr.Default, {
				duration = 0.2;
			});
			transparency = Motion_upvr.transition({
				easingStyle = Enum.EasingStyle.Linear;
				duration = 0.2;
			});
		});
		Hover = Motion_upvr.createState({
			backgroundStyle = {
				Color3 = Emphasis.Color3;
				Transparency = 1;
			};
			strokeStyle = Emphasis;
			labelStyle = Emphasis;
		}, {
			default = Motion_upvr.transition(TransitionPreset_upvr.Default, {
				duration = 0;
			});
			transparency = Motion_upvr.transition({
				easingStyle = Enum.EasingStyle.Linear;
				duration = 0;
			});
		});
		Checked = Motion_upvr.createState({
			backgroundStyle = var7;
			strokeStyle = var7;
			labelStyle = Emphasis;
		}, {
			default = Motion_upvr.transition(TransitionPreset_upvr.Default, {
				duration = 0.2;
			});
			transparency = Motion_upvr.transition({
				easingStyle = Enum.EasingStyle.Linear;
				duration = 0.2;
			});
		});
	}
end