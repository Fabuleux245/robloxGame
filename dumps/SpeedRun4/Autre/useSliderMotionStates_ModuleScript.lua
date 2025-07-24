-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:48:22
-- Luau version 6, Types version 3
-- Time taken: 0.000788 seconds

local Motion_upvr = require(script:FindFirstAncestor("Foundation").Parent.Motion)
local TransitionPreset_upvr = Motion_upvr.TransitionPreset
return function(arg1, arg2) -- Line 28, Named "useSliderMotionStates"
	--[[ Upvalues[2]:
		[1]: Motion_upvr (readonly)
		[2]: TransitionPreset_upvr (readonly)
	]]
	local module = {
		Hidden = Motion_upvr.createState({
			transparency = 1;
			knobStyle = {
				Color3 = arg1.Color3;
				Transparency = 1;
			};
		}, {
			default = Motion_upvr.transition(TransitionPreset_upvr.Default, {
				duration = 0.15;
			});
		});
	}
	local tbl = {
		transparency = 0;
	}
	tbl.knobStyle = arg1
	module.Idle = Motion_upvr.createState(tbl, {
		default = Motion_upvr.transition(TransitionPreset_upvr.Default, {
			duration = 0.15;
		});
	})
	local tbl_2 = {
		transparency = 0;
	}
	tbl_2.knobStyle = arg2
	module.Dragging = Motion_upvr.createState(tbl_2, {
		default = Motion_upvr.transition(TransitionPreset_upvr.Default, {
			duration = 0.1;
		});
	})
	return module
end