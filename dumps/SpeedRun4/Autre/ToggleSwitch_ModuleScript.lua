-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:54:04
-- Luau version 6, Types version 3
-- Time taken: 0.004069 seconds

local InGameMenuDependencies = require(game:GetService("CorePackages").Packages.InGameMenuDependencies)
local Roact_upvr = InGameMenuDependencies.Roact
local UIBlox = InGameMenuDependencies.UIBlox
local Otter_upvr = InGameMenuDependencies.Otter
local t = InGameMenuDependencies.t
local divideTransparency_upvr = require(script.Parent.Parent.Utility.divideTransparency)
local tbl_2_upvr = {
	frequency = 4;
}
local any_extend_result1 = Roact_upvr.PureComponent:extend("ToggleSwitch")
any_extend_result1.validateProps = t.strictInterface({
	checked = t.boolean;
	onToggled = t.callback;
	disabled = t.optional(t.boolean);
	buttonRef = t.optional(t.union(t.callback, t.table));
	AnchorPoint = t.optional(t.Vector2);
	LayoutOrder = t.optional(t.integer);
	Position = t.optional(t.UDim2);
	NextSelectionUp = t.optional(t.union(t.Instance, t.table));
	onSelectionLost = t.optional(t.callback);
	onSelectionGained = t.optional(t.callback);
})
local udim2_upvr_2 = UDim2.new(0, -3, 0.5, 0)
local udim2_upvr = UDim2.new(1, -39, 0.5, 0)
function any_extend_result1.init(arg1) -- Line 42
	--[[ Upvalues[5]:
		[1]: Roact_upvr (readonly)
		[2]: divideTransparency_upvr (readonly)
		[3]: udim2_upvr_2 (readonly)
		[4]: udim2_upvr (readonly)
		[5]: Otter_upvr (readonly)
	]]
	local var12
	if arg1.props.checked then
		var12 = 1
	else
		var12 = 0
	end
	local any_createBinding_result1, any_createBinding_result2 = Roact_upvr.createBinding(var12)
	arg1.progress = any_createBinding_result1
	arg1.setProgress = any_createBinding_result2
	arg1.fillTransparency = arg1.progress:map(function(arg1_2) -- Line 46
		--[[ Upvalues[2]:
			[1]: divideTransparency_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		local var16
		if arg1.props.disabled then
			var16 = 4
		else
			var16 = 1
		end
		return divideTransparency_upvr(1 - arg1_2, var16)
	end)
	arg1.knobPosition = arg1.progress:map(function(arg1_3) -- Line 50
		--[[ Upvalues[2]:
			[1]: udim2_upvr_2 (copied, readonly)
			[2]: udim2_upvr (copied, readonly)
		]]
		return udim2_upvr_2:lerp(udim2_upvr, arg1_3)
	end)
	arg1.motor = Otter_upvr.createSingleMotor(var12)
	arg1.motor:onStep(arg1.setProgress)
end
local withStyle_upvr = UIBlox.Core.Style.withStyle
local AssetImage_upvr = require(script.Parent.AssetImage)
local CursorKind_upvr = UIBlox.App.SelectionImage.CursorKind
function any_extend_result1.renderWithSelectionCursor(arg1, arg2) -- Line 58
	--[[ Upvalues[5]:
		[1]: withStyle_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: AssetImage_upvr (readonly)
		[4]: divideTransparency_upvr (readonly)
		[5]: CursorKind_upvr (readonly)
	]]
	return withStyle_upvr(function(arg1_4) -- Line 59
		--[[ Upvalues[6]:
			[1]: Roact_upvr (copied, readonly)
			[2]: AssetImage_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: divideTransparency_upvr (copied, readonly)
			[5]: arg2 (readonly)
			[6]: CursorKind_upvr (copied, readonly)
		]]
		local module = {
			Size = UDim2.new(0, 60, 0, 36);
			BackgroundTransparency = 1;
			Position = arg1.props.Position;
			LayoutOrder = arg1.props.LayoutOrder;
			imageKey = "ToggleOutline";
			AnchorPoint = arg1.props.AnchorPoint;
			ImageColor3 = arg1_4.Theme.SecondaryDefault.Color;
		}
		local SecondaryDefault = arg1_4.Theme.SecondaryDefault
		local var24
		if arg1.props.disabled then
			SecondaryDefault = 4
		else
			SecondaryDefault = 1
		end
		module.ImageTransparency = divideTransparency_upvr(SecondaryDefault.Transparency, SecondaryDefault)
		module.NextSelectionUp = arg1.props.NextSelectionUp
		module[Roact_upvr.Event.Activated] = arg1.props.onToggled
		module[Roact_upvr.Ref] = arg1.props.buttonRef
		module[Roact_upvr.Event.SelectionLost] = arg1.props.onSelectionLost
		module[Roact_upvr.Event.SelectionGained] = arg1.props.onSelectionGained
		module.SelectionImageObject = arg2(CursorKind_upvr.Toggle)
		local module_2 = {}
		local tbl_3 = {
			BackgroundTransparency = 1;
		}
		var24 = 0
		tbl_3.Size = UDim2.new(1, var24, 1, 0)
		tbl_3.imageKey = "ToggleFill"
		var24 = arg1_4.Theme
		tbl_3.ImageColor3 = var24.Success.Color
		tbl_3.ImageTransparency = arg1.fillTransparency
		module_2.Fill = Roact_upvr.createElement(AssetImage_upvr.Label, tbl_3)
		local tbl = {
			BackgroundTransparency = 1;
		}
		var24 = 42
		tbl.Size = UDim2.new(0, var24, 0, 42)
		var24 = 0.5
		tbl.AnchorPoint = Vector2.new(0, var24)
		tbl.Position = arg1.knobPosition
		tbl.imageKey = "ToggleKnob"
		if arg1.props.disabled then
			var24 = 4
		else
			var24 = 1
		end
		tbl.ImageTransparency = divideTransparency_upvr(0, var24)
		tbl.ZIndex = 2
		module_2.Knob = Roact_upvr.createElement(AssetImage_upvr.Label, tbl)
		return Roact_upvr.createElement(AssetImage_upvr.Button, module, module_2)
	end)
end
local withSelectionCursorProvider_upvr = UIBlox.App.SelectionImage.withSelectionCursorProvider
function any_extend_result1.render(arg1) -- Line 99
	--[[ Upvalues[1]:
		[1]: withSelectionCursorProvider_upvr (readonly)
	]]
	return withSelectionCursorProvider_upvr(function(arg1_5) -- Line 100
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1:renderWithSelectionCursor(arg1_5)
	end)
end
function any_extend_result1.didUpdate(arg1) -- Line 105
	--[[ Upvalues[2]:
		[1]: Otter_upvr (readonly)
		[2]: tbl_2_upvr (readonly)
	]]
	local var30
	if arg1.props.checked then
		var30 = 1
	else
		var30 = 0
	end
	arg1.motor:setGoal(Otter_upvr.spring(var30, tbl_2_upvr))
end
function any_extend_result1.willUnmount(arg1) -- Line 110
	arg1.motor:destroy()
end
return any_extend_result1