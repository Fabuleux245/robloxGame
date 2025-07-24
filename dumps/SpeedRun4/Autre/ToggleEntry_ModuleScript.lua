-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:53:29
-- Luau version 6, Types version 3
-- Time taken: 0.002982 seconds

local InGameMenuDependencies = require(game:GetService("CorePackages").Packages.InGameMenuDependencies)
local Roact_upvr = InGameMenuDependencies.Roact
local t = InGameMenuDependencies.t
local Parent = script.Parent.Parent.Parent
local any_extend_result1 = Roact_upvr.PureComponent:extend("ToggleEntry")
any_extend_result1.validateProps = t.strictInterface({
	LayoutOrder = t.integer;
	labelKey = t.string;
	lockedToOff = t.optional(t.boolean);
	isDisabled = t.optional(t.boolean);
	subtextEnabled = t.optional(t.boolean);
	subtextKey = t.optional(t.string);
	checked = t.boolean;
	onToggled = t.callback;
	buttonRef = t.optional(t.table);
	NextSelectionUp = t.optional(t.union(t.Instance, t.table));
})
function any_extend_result1.init(arg1) -- Line 31
	arg1.state = {
		isSelectable = true;
	}
end
local GuiService_upvr = game:GetService("GuiService")
local InputLabel_upvr = require(script.Parent.InputLabel)
local DeveloperLockLabel_upvr = require(script.Parent.DeveloperLockLabel)
local withLocalization_upvr = require(Parent.Localization.withLocalization)
local ThemedTextLabel_upvr = require(Parent.Components.ThemedTextLabel)
local ToggleSwitch_upvr = require(Parent.Components.ToggleSwitch)
function any_extend_result1.render(arg1) -- Line 37
	--[[ Upvalues[7]:
		[1]: Roact_upvr (readonly)
		[2]: GuiService_upvr (readonly)
		[3]: InputLabel_upvr (readonly)
		[4]: DeveloperLockLabel_upvr (readonly)
		[5]: withLocalization_upvr (readonly)
		[6]: ThemedTextLabel_upvr (readonly)
		[7]: ToggleSwitch_upvr (readonly)
	]]
	local buttonRef_upvr = arg1.props.buttonRef
	if not buttonRef_upvr then
		buttonRef_upvr = Roact_upvr.createRef()
	end
	local module = {
		Padding = Roact_upvr.createElement("UIPadding", {
			PaddingRight = UDim.new(0, 30);
			PaddingLeft = UDim.new(0, 24);
		});
		ControlLabel = Roact_upvr.createElement(InputLabel_upvr, {
			localizationKey = arg1.props.labelKey;
		});
	}
	local lockedToOff_2 = arg1.props.lockedToOff
	if lockedToOff_2 then
		lockedToOff_2 = Roact_upvr.createElement
		lockedToOff_2 = lockedToOff_2(DeveloperLockLabel_upvr, {
			Size = UDim2.new(1, -72, 0.25, 0);
			Position = UDim2.new(0, 0, 1, 0);
			AnchorPoint = Vector2.new(0, 1);
		})
	end
	module.LockedLabel = lockedToOff_2
	lockedToOff_2 = arg1.props.subtextEnabled
	local var23 = lockedToOff_2
	if var23 then
		var23 = withLocalization_upvr
		var23 = var23({
			text = arg1.props.subtextKey;
		})
		var23 = var23(function(arg1_2) -- Line 66
			--[[ Upvalues[2]:
				[1]: Roact_upvr (copied, readonly)
				[2]: ThemedTextLabel_upvr (copied, readonly)
			]]
			return Roact_upvr.createElement(ThemedTextLabel_upvr, {
				Text = arg1_2.text;
				themeKey = "TextDefault";
				fontKey = "CaptionBody";
				TextTransparency = 0.5;
				Size = UDim2.new(1, -72, 0.25, 0);
				Position = UDim2.new(0, 0, 1, 0);
				AnchorPoint = Vector2.new(0, 1);
				TextXAlignment = Enum.TextXAlignment.Left;
				TextYAlignment = Enum.TextYAlignment.Bottom;
			})
		end)
	end
	module.SubtextLabel = var23
	local tbl = {
		Position = UDim2.new(1, 0, 0.5, 0);
		AnchorPoint = Vector2.new(1, 0.5);
	}
	local checked = arg1.props.checked
	if checked then
		checked = not arg1.props.lockedToOff
	end
	tbl.checked = checked
	tbl.onToggled = arg1.props.onToggled
	local lockedToOff = arg1.props.lockedToOff
	if not lockedToOff then
		lockedToOff = arg1.props.isDisabled
	end
	tbl.disabled = lockedToOff
	tbl.buttonRef = buttonRef_upvr
	function tbl.onSelectionLost() -- Line 86
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:setState({
			isSelectable = true;
		})
	end
	function tbl.onSelectionGained() -- Line 91
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:setState({
			isSelectable = false;
		})
	end
	tbl.NextSelectionUp = arg1.props.NextSelectionUp
	module.Toggle = Roact_upvr.createElement(ToggleSwitch_upvr, tbl)
	return Roact_upvr.createElement("Frame", {
		BackgroundTransparency = 1;
		LayoutOrder = arg1.props.LayoutOrder;
		Size = UDim2.new(1, 0, 0, 56);
		Selectable = arg1.state.isSelectable;
		[Roact_upvr.Event.SelectionGained] = function() -- Line 45
			--[[ Upvalues[3]:
				[1]: GuiService_upvr (copied, readonly)
				[2]: buttonRef_upvr (readonly)
				[3]: arg1 (readonly)
			]]
			GuiService_upvr.SelectedCoreObject = buttonRef_upvr:getValue()
			arg1:setState({
				isSelectable = false;
			})
		end;
	}, module)
end
return any_extend_result1