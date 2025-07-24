-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:13:52
-- Luau version 6, Types version 3
-- Time taken: 0.001688 seconds

local Parent = script.Parent
local StateTable_upvr = require(Parent.Parent.Parent.StateTable.StateTable)
local ControlState_upvr = require(Parent.Enum.ControlState)
local ControlStateEvent_upvr = require(Parent.Enum.ControlStateEvent)
return function(arg1) -- Line 17, Named "createGuiControlStateTable"
	--[[ Upvalues[3]:
		[1]: StateTable_upvr (readonly)
		[2]: ControlState_upvr (readonly)
		[3]: ControlStateEvent_upvr (readonly)
	]]
	local any_new_result1 = StateTable_upvr.new("GuiStateTable", ControlState_upvr.Initialize, {}, {
		[ControlState_upvr.Initialize] = {
			[ControlStateEvent_upvr.Idle] = {
				nextState = ControlState_upvr.Default;
			};
			[ControlStateEvent_upvr.Enabled] = {
				nextState = ControlState_upvr.Default;
			};
			[ControlStateEvent_upvr.Disabled] = {
				nextState = ControlState_upvr.Disabled;
			};
		};
		[ControlState_upvr.Default] = {
			[ControlStateEvent_upvr.PrimaryPressed] = {
				nextState = ControlState_upvr.Pressed;
			};
			[ControlStateEvent_upvr.PointerHover] = {
				nextState = ControlState_upvr.Hover;
			};
			[ControlStateEvent_upvr.SelectionGained] = {
				nextState = ControlState_upvr.Selected;
			};
			[ControlStateEvent_upvr.Disabled] = {
				nextState = ControlState_upvr.Disabled;
			};
		};
		[ControlState_upvr.Hover] = {
			[ControlStateEvent_upvr.SelectionGained] = {
				nextState = ControlState_upvr.Selected;
			};
			[ControlStateEvent_upvr.PrimaryPressed] = {
				nextState = ControlState_upvr.Pressed;
			};
			[ControlStateEvent_upvr.PointerHoverEnd] = {
				nextState = ControlState_upvr.Default;
			};
			[ControlStateEvent_upvr.Disabled] = {
				nextState = ControlState_upvr.Disabled;
			};
		};
		[ControlState_upvr.Pressed] = {
			[ControlStateEvent_upvr.SelectionGained] = {
				nextState = ControlState_upvr.SelectedPressed;
			};
			[ControlStateEvent_upvr.PrimaryReleasedHover] = {
				nextState = ControlState_upvr.Hover;
			};
			[ControlStateEvent_upvr.PrimaryReleased] = {
				nextState = ControlState_upvr.Default;
			};
			[ControlStateEvent_upvr.Disabled] = {
				nextState = ControlState_upvr.Disabled;
			};
		};
		[ControlState_upvr.Selected] = {
			[ControlStateEvent_upvr.SelectionLost] = {
				nextState = ControlState_upvr.Default;
			};
			[ControlStateEvent_upvr.PrimaryPressed] = {
				nextState = ControlState_upvr.SelectedPressed;
			};
			[ControlStateEvent_upvr.Disabled] = {
				nextState = ControlState_upvr.Disabled;
			};
		};
		[ControlState_upvr.SelectedPressed] = {
			[ControlStateEvent_upvr.SelectionLost] = {
				nextState = ControlState_upvr.Default;
			};
			[ControlStateEvent_upvr.PrimaryReleasedHover] = {
				nextState = ControlState_upvr.Selected;
			};
			[ControlStateEvent_upvr.PrimaryReleased] = {
				nextState = ControlState_upvr.Selected;
			};
			[ControlStateEvent_upvr.Disabled] = {
				nextState = ControlState_upvr.Disabled;
			};
		};
		[ControlState_upvr.Disabled] = {
			[ControlStateEvent_upvr.Enabled] = {
				nextState = ControlState_upvr.Default;
			};
		};
	})
	any_new_result1:onStateChange(arg1)
	return any_new_result1
end