-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:11:19
-- Luau version 6, Types version 3
-- Time taken: 0.001646 seconds

local Parent_4 = script.Parent
local Parent_3 = Parent_4.Parent.Parent
local Parent_2 = Parent_3.Parent
local Parent = Parent_2.Parent
local Roact_upvr = require(Parent.Roact)
local Cryo_upvr = require(Parent.Cryo)
local BaseKnob_upvr = require(Parent_4.BaseKnob)
local ControlState = require(Parent_2.Core.Control.Enum.ControlState)
local Colors = require(Parent_3.Style.Colors)
local tbl_upvr = {
	contextual = {
		[ControlState.Default] = {
			Color = Colors.White;
			Transparency = 0;
		};
		[ControlState.Hover] = {
			Color = Colors.White;
			Transparency = 0;
		};
		[ControlState.Pressed] = {
			Color = Colors.Green;
			Transparency = 0;
		};
		[ControlState.Disabled] = {
			Color = Colors.Pumice;
			Transparency = 0;
		};
		[ControlState.Selected] = {
			Color = Colors.White;
			Transparency = 0;
		};
		[ControlState.SelectedPressed] = {
			Color = Colors.White;
			Transparency = 0;
		};
	};
	system = {
		[ControlState.Default] = {
			Color = Colors.White;
			Transparency = 0;
		};
		[ControlState.Hover] = {
			Color = Colors.White;
			Transparency = 0;
		};
		[ControlState.Pressed] = {
			Color = Colors.Pumice;
			Transparency = 0;
		};
		[ControlState.Disabled] = {
			Color = Colors.Pumice;
			Transparency = 0;
		};
		[ControlState.Selected] = {
			Color = Colors.White;
			Transparency = 0;
		};
		[ControlState.SelectedPressed] = {
			Color = Colors.White;
			Transparency = 0;
		};
	};
}
local function _(arg1) -- Line 69, Named "buildKnob"
	--[[ Upvalues[4]:
		[1]: Roact_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: Cryo_upvr (readonly)
		[4]: BaseKnob_upvr (readonly)
	]]
	return Roact_upvr.forwardRef(function(arg1_2, arg2) -- Line 70
		--[[ Upvalues[5]:
			[1]: tbl_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: Cryo_upvr (copied, readonly)
			[4]: Roact_upvr (copied, readonly)
			[5]: BaseKnob_upvr (copied, readonly)
		]]
		local module_3 = {
			colorMap = tbl_upvr[arg1];
		}
		module_3.forwardedRef = arg2
		return Roact_upvr.createElement(BaseKnob_upvr, Cryo_upvr.Dictionary.join({}, arg1_2, module_3))
	end)
end
local module = {}
local var29_upvr = "contextual"
module.ContextualKnob = Roact_upvr.forwardRef(function(arg1, arg2) -- Line 70
	--[[ Upvalues[5]:
		[1]: tbl_upvr (readonly)
		[2]: var29_upvr (readonly)
		[3]: Cryo_upvr (readonly)
		[4]: Roact_upvr (readonly)
		[5]: BaseKnob_upvr (readonly)
	]]
	local module_2 = {
		colorMap = tbl_upvr[var29_upvr];
	}
	module_2.forwardedRef = arg2
	return Roact_upvr.createElement(BaseKnob_upvr, Cryo_upvr.Dictionary.join({}, arg1, module_2))
end)
var29_upvr = "system"
module.SystemKnob = Roact_upvr.forwardRef(function(arg1, arg2) -- Line 70
	--[[ Upvalues[5]:
		[1]: tbl_upvr (readonly)
		[2]: var29_upvr (readonly)
		[3]: Cryo_upvr (readonly)
		[4]: Roact_upvr (readonly)
		[5]: BaseKnob_upvr (readonly)
	]]
	local module_4 = {
		colorMap = tbl_upvr[var29_upvr];
	}
	module_4.forwardedRef = arg2
	return Roact_upvr.createElement(BaseKnob_upvr, Cryo_upvr.Dictionary.join({}, arg1, module_4))
end)
return module