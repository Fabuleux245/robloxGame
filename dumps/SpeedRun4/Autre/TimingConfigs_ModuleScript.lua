-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:55:58
-- Luau version 6, Types version 3
-- Time taken: 0.001398 seconds

local TransitionPreset_upvr = require(script.Parent.Parent.Enums.TransitionPreset)
local module_upvr = {
	presets = {
		[TransitionPreset_upvr.Default] = {
			duration = 0.3;
			easingStyle = {0.2, 0, 0, 1};
			delay = 0;
		};
		[TransitionPreset_upvr.Quick] = {
			duration = 0.05;
			easingStyle = {0.2, 0, 0, 1};
			delay = 0;
		};
		[TransitionPreset_upvr.Slow] = {
			duration = 1;
			easingStyle = {0.2, 0, 0, 1};
			delay = 0;
		};
	};
}
function module_upvr.getDefaultTransition() -- Line 28
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: TransitionPreset_upvr (readonly)
	]]
	local var11 = module_upvr.presets[TransitionPreset_upvr.Default]
	return {
		duration = var11.duration;
		easingStyle = var11.easingStyle;
		delay = var11.delay;
	}
end
function module_upvr.createDefaultTransitionState() -- Line 39
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	return {
		default = module_upvr.getDefaultTransition();
	}
end
return module_upvr