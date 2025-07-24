-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:59:35
-- Luau version 6, Types version 3
-- Time taken: 0.008300 seconds

local CorePackages = game:GetService("CorePackages")
local ContextActionService_upvr = game:GetService("ContextActionService")
local Roact_upvr = require(CorePackages.Packages.Roact)
local UIBlox = require(CorePackages.Packages.UIBlox)
local t = require(CorePackages.Packages.t)
local Parent = script.Parent.Parent
local HeaderBar_upvr = UIBlox.App.Bar.HeaderBar
local UIBlox_2_upvr = require(CorePackages.Workspace.Packages.SharedFlags).UIBlox
if require(game:GetService("CoreGui"):WaitForChild("RobloxGui").Modules.Flags.GetFFlagEnableFeedbackReportDialogAdjustments)() then
	UIBlox_2_upvr = 60
else
	UIBlox_2_upvr = 48
end
local any_extend_result1 = Roact_upvr.Component:extend("ModalDialog")
any_extend_result1.validateProps = t.strictInterface({
	visible = t.boolean;
	screenSize = t.Vector2;
	titleText = t.optional(t.string);
	showCloseButton = t.optional(t.boolean);
	headerBar = t.optional(t.table);
	contents = t.optional(t.table);
	actionButtons = t.optional(t.table);
	onDismiss = t.optional(t.callback);
	onBackButtonActivated = t.optional(t.callback);
	maxHeight = t.optional(t.number);
	maxWidth = t.optional(t.number);
})
function any_extend_result1.init(arg1) -- Line 52
	function arg1.onOverlayActivated() -- Line 53
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.props.onDismiss()
	end
end
local IconButton_upvr = UIBlox.App.Button.IconButton
local IconSize_upvr = UIBlox.App.ImageSet.Enum.IconSize
local Images_upvr = UIBlox.App.ImageSet.Images
local GetFFlagUIBloxUseNewHeaderBar_upvr = UIBlox_2_upvr.GetFFlagUIBloxUseNewHeaderBar
local makeBackButton_upvr = require(CorePackages.Workspace.Packages.AppHeaderBar).makeBackButton
function any_extend_result1.renderHeaderBarLeft(arg1) -- Line 58
	--[[ Upvalues[7]:
		[1]: Roact_upvr (readonly)
		[2]: IconButton_upvr (readonly)
		[3]: IconSize_upvr (readonly)
		[4]: Images_upvr (readonly)
		[5]: GetFFlagUIBloxUseNewHeaderBar_upvr (readonly)
		[6]: makeBackButton_upvr (readonly)
		[7]: HeaderBar_upvr (readonly)
	]]
	local props_upvr_2 = arg1.props
	if props_upvr_2.showCloseButton then
		return function() -- Line 62
			--[[ Upvalues[5]:
				[1]: Roact_upvr (copied, readonly)
				[2]: IconButton_upvr (copied, readonly)
				[3]: IconSize_upvr (copied, readonly)
				[4]: Images_upvr (copied, readonly)
				[5]: props_upvr_2 (readonly)
			]]
			return Roact_upvr.createElement(IconButton_upvr, {
				iconSize = IconSize_upvr.Medium;
				icon = Images_upvr["icons/navigation/close"];
				onActivated = props_upvr_2.onDismiss;
			})
		end
	end
	if props_upvr_2.onBackButtonActivated ~= nil then
		if GetFFlagUIBloxUseNewHeaderBar_upvr() then
			return makeBackButton_upvr(props_upvr_2.onBackButtonActivated)
		end
		return HeaderBar_upvr.renderLeft.backButton(props_upvr_2.onBackButtonActivated)
	end
	return function() -- Line 76
		return nil
	end
end
function any_extend_result1.renderHeaderBarRight(arg1) -- Line 82
	return function() -- Line 84
		return nil
	end
end
local withStyle_upvr = UIBlox.Core.Style.withStyle
local ImageSetButton_upvr = UIBlox.Core.ImageSet.ImageSetButton
local Assets_upvr = require(Parent.Resources.Assets)
local Divider_upvr = require(Parent.Components.PortedComponents.Divider)
function any_extend_result1.render(arg1) -- Line 89
	--[[ Upvalues[7]:
		[1]: UIBlox_2_upvr (readonly)
		[2]: withStyle_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: ImageSetButton_upvr (readonly)
		[5]: Assets_upvr (readonly)
		[6]: HeaderBar_upvr (readonly)
		[7]: Divider_upvr (readonly)
	]]
	local props_upvr = arg1.props
	local minimum_2 = math.min(props_upvr.screenSize.Y, 645)
	if props_upvr.maxHeight then
		minimum_2 = math.min(minimum_2, props_upvr.maxHeight)
	end
	local minimum = math.min(props_upvr.screenSize.X, 540)
	if props_upvr.maxWidth then
		minimum = math.min(minimum, props_upvr.maxWidth)
	end
	local vector2_upvr = Vector2.new(minimum, minimum_2)
	local var30_upvw
	local var31_upvw
	if props_upvr.screenSize.X < 540 then
		var30_upvw = Vector2.new(0.5, 1)
		var31_upvw = UDim2.fromScale(0.5, 1)
	else
		var30_upvw = Vector2.new(0.5, 0.5)
		var31_upvw = UDim2.fromScale(0.5, 0.5)
	end
	local minimum_3_upvw = math.min(600, vector2_upvr.Y - 49 - UIBlox_2_upvr)
	if not props_upvr.actionButtons then
		minimum_3_upvw += UIBlox_2_upvr
	end
	return withStyle_upvr(function(arg1_2) -- Line 125
		--[[ Upvalues[12]:
			[1]: Roact_upvr (copied, readonly)
			[2]: props_upvr (readonly)
			[3]: arg1 (readonly)
			[4]: ImageSetButton_upvr (copied, readonly)
			[5]: var30_upvw (read and write)
			[6]: Assets_upvr (copied, readonly)
			[7]: var31_upvw (read and write)
			[8]: vector2_upvr (readonly)
			[9]: HeaderBar_upvr (copied, readonly)
			[10]: Divider_upvr (copied, readonly)
			[11]: minimum_3_upvw (read and write)
			[12]: UIBlox_2_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local module_3 = {
			Overlay = Roact_upvr.createElement("TextButton", {
				AutoButtonColor = false;
				BackgroundColor3 = arg1_2.Theme.Overlay.Color;
				BackgroundTransparency = arg1_2.Theme.Overlay.Transparency;
				BorderSizePixel = 0;
				Size = UDim2.fromScale(1, 1);
				Text = "";
				[Roact_upvr.Event.Activated] = arg1.onOverlayActivated;
			});
		}
		local tbl_18 = {
			Layout = Roact_upvr.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical;
				HorizontalAlignment = Enum.HorizontalAlignment.Center;
				SortOrder = Enum.SortOrder.LayoutOrder;
			});
		}
		local tbl = {}
		local headerBar = props_upvr.headerBar
		if not headerBar then
			headerBar = Roact_upvr.createElement
			headerBar = headerBar(HeaderBar_upvr, {
				backgroundTransparency = 1;
				barHeight = 48;
				renderLeft = arg1:renderHeaderBarLeft();
				renderRight = arg1:renderHeaderBarRight();
				title = props_upvr.titleText;
			})
			if not headerBar then
				headerBar = nil
			end
		end
		tbl.Bar = headerBar
		tbl_18.HeaderBar = Roact_upvr.createElement("Frame", {
			BackgroundTransparency = 1;
			LayoutOrder = 1;
			Size = UDim2.new(1, 0, 0, 48);
		}, tbl)
		tbl_18.Divider = Roact_upvr.createElement(Divider_upvr, {
			LayoutOrder = 2;
		})
		tbl_18.Content = Roact_upvr.createElement("Frame", {
			BackgroundTransparency = 1;
			LayoutOrder = 3;
			Size = UDim2.new(1, 0, 0, minimum_3_upvw);
			ZIndex = 10;
		}, {
			Contents = props_upvr.contents;
		})
		local function INLINED_2() -- Internal function, doesn't exist in bytecode
			tbl_3.ActionButtons = props_upvr.actionButtons
			tbl_3.Padding = Roact_upvr.createElement("UIPadding", tbl_7)
			tbl_7.PaddingRight = UDim.new(0, 24)
			tbl_7.PaddingLeft = UDim.new(0, 24)
			tbl_7.PaddingBottom = UDim.new(0, 2)
			tbl_7.PaddingTop = UDim.new(0, 8)
			local tbl_7 = {}
			local tbl_3 = {}
			tbl_15.Size = UDim2.new(1, 0, 0, UIBlox_2_upvr)
			tbl_15.LayoutOrder = 4
			tbl_15.BackgroundTransparency = 1
			local tbl_15 = {}
			return Roact_upvr.createElement("Frame", tbl_15, tbl_3)
		end
		if not props_upvr.actionButtons or not INLINED_2() then
		end
		tbl_18.ActionBar = nil
		module_3.Dialog = Roact_upvr.createElement(ImageSetButton_upvr, {
			Active = true;
			AnchorPoint = var30_upvw;
			BackgroundTransparency = 1;
			Image = Assets_upvr.Images.RoundedRect.Image;
			ImageColor3 = arg1_2.Theme.BackgroundUIDefault.Color;
			ImageTransparency = arg1_2.Theme.BackgroundUIDefault.Transparency;
			Position = var31_upvw;
			ScaleType = Assets_upvr.Images.RoundedRect.ScaleType;
			Size = UDim2.fromOffset(vector2_upvr.X, vector2_upvr.Y);
			SliceCenter = Assets_upvr.Images.RoundedRect.SliceCenter;
		}, tbl_18)
		return Roact_upvr.createElement("Frame", {
			BackgroundTransparency = 1;
			Size = UDim2.fromScale(1, 1);
			Visible = props_upvr.visible;
		}, module_3)
	end)
end
function any_extend_result1.bindActions(arg1) -- Line 199
	--[[ Upvalues[1]:
		[1]: ContextActionService_upvr (readonly)
	]]
	ContextActionService_upvr:BindCoreAction("ModalDialogDismiss", function(arg1_3) -- Line 200, Named "dismissFunc"
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1_3 == Enum.UserInputState.Begin then
			arg1.props.onDismiss()
		end
	end, false, Enum.KeyCode.Escape)
end
function any_extend_result1.unbindActions(arg1) -- Line 208
	--[[ Upvalues[1]:
		[1]: ContextActionService_upvr (readonly)
	]]
	ContextActionService_upvr:UnbindCoreAction("ModalDialogDismiss")
end
function any_extend_result1.didMount(arg1) -- Line 212
	if arg1.props.visible then
		arg1:bindActions()
	end
end
function any_extend_result1.didUpdate(arg1) -- Line 218
	if arg1.props.visible then
		arg1:bindActions()
	else
		arg1:unbindActions()
	end
end
function any_extend_result1.willUnmount(arg1) -- Line 226
	arg1:unbindActions()
end
return any_extend_result1