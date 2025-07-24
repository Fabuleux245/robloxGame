-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:13:00
-- Luau version 6, Types version 3
-- Time taken: 0.005348 seconds

local Parent = script:FindFirstAncestor("InGameAssetReporting").Parent
local React_upvr = require(Parent.React)
local UIBlox = require(Parent.UIBlox)
local ButtonStack_upvr = UIBlox.App.Button.ButtonStack
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
local IconButton_upvr = UIBlox.App.Button.IconButton
local IconSize_upvr = UIBlox.App.ImageSet.Enum.IconSize
local Images_upvr = UIBlox.App.ImageSet.Images
local withStyle_upvr = UIBlox.Style.withStyle
local function _(arg1) -- Line 30, Named "renderHeaderBarCenter"
	--[[ Upvalues[2]:
		[1]: withStyle_upvr (readonly)
		[2]: React_upvr (readonly)
	]]
	return function() -- Line 31
		--[[ Upvalues[3]:
			[1]: withStyle_upvr (copied, readonly)
			[2]: React_upvr (copied, readonly)
			[3]: arg1 (readonly)
		]]
		return withStyle_upvr(function(arg1_2) -- Line 32
			--[[ Upvalues[2]:
				[1]: React_upvr (copied, readonly)
				[2]: arg1 (copied, readonly)
			]]
			local Theme = arg1_2.Theme
			local module_2 = {}
			module_2.Text = arg1
			module_2.Font = arg1_2.Font.Header2.Font
			module_2.TextColor3 = Theme.TextEmphasis.Color
			module_2.TextTransparency = Theme.TextEmphasis.Transparency
			module_2.TextSize = 20
			module_2.TextWrapped = true
			module_2.TextXAlignment = Enum.TextXAlignment.Center
			module_2.TextYAlignment = Enum.TextYAlignment.Center
			module_2.Size = UDim2.new(1, 0, 1, 0)
			module_2.BackgroundTransparency = 1
			return React_upvr.createElement("TextLabel", module_2)
		end)
	end
end
local function _(arg1, arg2, arg3, arg4, arg5) -- Line 52, Named "renderHeaderBarLeft"
	--[[ Upvalues[4]:
		[1]: React_upvr (readonly)
		[2]: IconButton_upvr (readonly)
		[3]: IconSize_upvr (readonly)
		[4]: Images_upvr (readonly)
	]]
	local var15_upvr = arg4 or arg5
	return function() -- Line 54
		--[[ Upvalues[10]:
			[1]: React_upvr (copied, readonly)
			[2]: IconButton_upvr (copied, readonly)
			[3]: IconSize_upvr (copied, readonly)
			[4]: Images_upvr (copied, readonly)
			[5]: arg1 (readonly)
			[6]: var15_upvr (readonly)
			[7]: arg5 (readonly)
			[8]: arg2 (readonly)
			[9]: arg4 (readonly)
			[10]: arg3 (readonly)
		]]
		local module_4 = {
			Layout = React_upvr.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Horizontal;
				HorizontalAlignment = Enum.HorizontalAlignment.Left;
				VerticalAlignment = Enum.VerticalAlignment.Center;
				SortOrder = Enum.SortOrder.LayoutOrder;
			});
		}
		local tbl_4 = {
			iconSize = IconSize_upvr.Medium;
			icon = Images_upvr["icons/navigation/pushBack"];
			layoutOrder = 1;
		}
		tbl_4.onActivated = arg1
		module_4.BackButton = React_upvr.createElement(IconButton_upvr, tbl_4)
		local var20 = var15_upvr
		if var20 then
			var20 = React_upvr.createElement
			local tbl_5 = {
				iconSize = IconSize_upvr.Medium;
				icon = Images_upvr["icons/actions/edit/undo"];
				isDisabled = not arg5;
				layoutOrder = 2;
			}
			tbl_5.onActivated = arg2
			var20 = var20(IconButton_upvr, tbl_5)
		end
		module_4.UndoButton = var20
		var20 = var15_upvr
		local var22 = var20
		if var22 then
			var22 = React_upvr.createElement
			local tbl_3 = {
				iconSize = IconSize_upvr.Medium;
				icon = Images_upvr["icons/actions/edit/redo"];
				isDisabled = not arg4;
				layoutOrder = 3;
			}
			tbl_3.onActivated = arg3
			var22 = var22(IconButton_upvr, tbl_3)
		end
		module_4.RedoButton = var22
		return React_upvr.createElement("Frame", {
			BackgroundTransparency = 1;
			Size = UDim2.new(0, 120, 1, 0);
		}, module_4)
	end
end
local function _(arg1, arg2, arg3) -- Line 89, Named "renderHeaderBarRight"
	--[[ Upvalues[3]:
		[1]: React_upvr (readonly)
		[2]: ButtonStack_upvr (readonly)
		[3]: ButtonType_upvr (readonly)
	]]
	return function() -- Line 90
		--[[ Upvalues[5]:
			[1]: React_upvr (copied, readonly)
			[2]: ButtonStack_upvr (copied, readonly)
			[3]: ButtonType_upvr (copied, readonly)
			[4]: arg1 (readonly)
			[5]: arg3 (readonly)
		]]
		local module_3 = {
			Layout = React_upvr.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Horizontal;
				HorizontalAlignment = Enum.HorizontalAlignment.Center;
				VerticalAlignment = Enum.VerticalAlignment.Center;
			});
		}
		local tbl_6 = {}
		local tbl_7 = {}
		local tbl_8 = {
			buttonType = ButtonType_upvr.PrimarySystem;
		}
		local tbl_2 = {}
		tbl_2.onActivated = arg1
		tbl_2.text = arg3
		tbl_8.props = tbl_2
		tbl_7[1] = tbl_8
		tbl_6.buttons = tbl_7
		module_3.Buttons = React_upvr.createElement(ButtonStack_upvr, tbl_6)
		return React_upvr.createElement("Frame", {
			BackgroundTransparency = 1;
			Size = UDim2.new(0, 144, 1, 0);
		}, module_3)
	end
end
local HeaderBar_upvr = UIBlox.App.Bar.HeaderBar
return function(arg1) -- Line 115, Named "LandscapeModeHeader"
	--[[ Upvalues[8]:
		[1]: React_upvr (readonly)
		[2]: HeaderBar_upvr (readonly)
		[3]: IconButton_upvr (readonly)
		[4]: IconSize_upvr (readonly)
		[5]: Images_upvr (readonly)
		[6]: ButtonStack_upvr (readonly)
		[7]: ButtonType_upvr (readonly)
		[8]: withStyle_upvr (readonly)
	]]
	local module = {}
	local tbl = {
		backgroundTransparency = 1;
		barHeight = 72;
	}
	local isRedoEnabled_upvr = arg1.isRedoEnabled
	local isUndoEnabled_upvr = arg1.isUndoEnabled
	local backAction_upvr = arg1.backAction
	local var40_upvr = isRedoEnabled_upvr or isUndoEnabled_upvr
	local undoAnnotationPoints_upvr = arg1.undoAnnotationPoints
	local redoAnnotationPoints_upvr = arg1.redoAnnotationPoints
	function tbl.renderLeft() -- Line 54
		--[[ Upvalues[10]:
			[1]: React_upvr (copied, readonly)
			[2]: IconButton_upvr (copied, readonly)
			[3]: IconSize_upvr (copied, readonly)
			[4]: Images_upvr (copied, readonly)
			[5]: backAction_upvr (readonly)
			[6]: var40_upvr (readonly)
			[7]: isUndoEnabled_upvr (readonly)
			[8]: undoAnnotationPoints_upvr (readonly)
			[9]: isRedoEnabled_upvr (readonly)
			[10]: redoAnnotationPoints_upvr (readonly)
		]]
		local module_5 = {
			Layout = React_upvr.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Horizontal;
				HorizontalAlignment = Enum.HorizontalAlignment.Left;
				VerticalAlignment = Enum.VerticalAlignment.Center;
				SortOrder = Enum.SortOrder.LayoutOrder;
			});
			BackButton = React_upvr.createElement(IconButton_upvr, {
				iconSize = IconSize_upvr.Medium;
				icon = Images_upvr["icons/navigation/pushBack"];
				layoutOrder = 1;
				onActivated = backAction_upvr;
			});
		}
		local var47 = var40_upvr
		if var47 then
			var47 = React_upvr.createElement
			var47 = var47(IconButton_upvr, {
				iconSize = IconSize_upvr.Medium;
				icon = Images_upvr["icons/actions/edit/undo"];
				isDisabled = not isUndoEnabled_upvr;
				layoutOrder = 2;
				onActivated = undoAnnotationPoints_upvr;
			})
		end
		module_5.UndoButton = var47
		var47 = var40_upvr
		local var49 = var47
		if var49 then
			var49 = React_upvr.createElement
			var49 = var49(IconButton_upvr, {
				iconSize = IconSize_upvr.Medium;
				icon = Images_upvr["icons/actions/edit/redo"];
				isDisabled = not isRedoEnabled_upvr;
				layoutOrder = 3;
				onActivated = redoAnnotationPoints_upvr;
			})
		end
		module_5.RedoButton = var49
		return React_upvr.createElement("Frame", {
			BackgroundTransparency = 1;
			Size = UDim2.new(0, 120, 1, 0);
		}, module_5)
	end
	backAction_upvr = arg1.nextAction
	undoAnnotationPoints_upvr = arg1.annotationPoints
	redoAnnotationPoints_upvr = arg1.nextText
	function tbl.renderRight() -- Line 90
		--[[ Upvalues[5]:
			[1]: React_upvr (copied, readonly)
			[2]: ButtonStack_upvr (copied, readonly)
			[3]: ButtonType_upvr (copied, readonly)
			[4]: backAction_upvr (readonly)
			[5]: redoAnnotationPoints_upvr (readonly)
		]]
		return React_upvr.createElement("Frame", {
			BackgroundTransparency = 1;
			Size = UDim2.new(0, 144, 1, 0);
		}, {
			Layout = React_upvr.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Horizontal;
				HorizontalAlignment = Enum.HorizontalAlignment.Center;
				VerticalAlignment = Enum.VerticalAlignment.Center;
			});
			Buttons = React_upvr.createElement(ButtonStack_upvr, {
				buttons = {{
					buttonType = ButtonType_upvr.PrimarySystem;
					props = {
						onActivated = backAction_upvr;
						text = redoAnnotationPoints_upvr;
					};
				}};
			});
		})
	end
	backAction_upvr = arg1.titleText
	function tbl.renderCenter() -- Line 31
		--[[ Upvalues[3]:
			[1]: withStyle_upvr (copied, readonly)
			[2]: React_upvr (copied, readonly)
			[3]: backAction_upvr (readonly)
		]]
		return withStyle_upvr(function(arg1_3) -- Line 32
			--[[ Upvalues[2]:
				[1]: React_upvr (copied, readonly)
				[2]: backAction_upvr (copied, readonly)
			]]
			local Theme_2 = arg1_3.Theme
			return React_upvr.createElement("TextLabel", {
				Text = backAction_upvr;
				Font = arg1_3.Font.Header2.Font;
				TextColor3 = Theme_2.TextEmphasis.Color;
				TextTransparency = Theme_2.TextEmphasis.Transparency;
				TextSize = 20;
				TextWrapped = true;
				TextXAlignment = Enum.TextXAlignment.Center;
				TextYAlignment = Enum.TextYAlignment.Center;
				Size = UDim2.new(1, 0, 1, 0);
				BackgroundTransparency = 1;
			})
		end)
	end
	module.Bar = React_upvr.createElement(HeaderBar_upvr, tbl)
	return React_upvr.createElement("Frame", {
		BorderSizePixel = 0;
		BackgroundTransparency = 0.1;
		BackgroundColor3 = Color3.fromHex("#000000");
		LayoutOrder = 1;
		Size = UDim2.new(1, 0, 0, 71);
		ZIndex = 2;
	}, module)
end