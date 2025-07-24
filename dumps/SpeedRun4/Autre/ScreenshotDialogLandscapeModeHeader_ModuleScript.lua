-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:02:48
-- Luau version 6, Types version 3
-- Time taken: 0.006686 seconds

local CorePackages = game:GetService("CorePackages")
local UIBlox = require(CorePackages.Packages.UIBlox)
local React_upvr = require(CorePackages.Packages.React)
local RobloxTranslator_upvr = require(CorePackages.Workspace.Packages.RobloxTranslator)
local ButtonStack_upvr = UIBlox.App.Button.ButtonStack
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
local IconButton_upvr = UIBlox.App.Button.IconButton
local IconSize_upvr = UIBlox.App.ImageSet.Enum.IconSize
local Images_upvr = UIBlox.App.ImageSet.Images
local withStyle_upvr = UIBlox.Style.withStyle
local function _(arg1) -- Line 30, Named "renderWrappingCenter"
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
			local Theme_2 = arg1_2.Theme
			local module_5 = {}
			module_5.Text = arg1
			module_5.Font = arg1_2.Font.Header2.Font
			module_5.TextColor3 = Theme_2.TextEmphasis.Color
			module_5.TextTransparency = Theme_2.TextEmphasis.Transparency
			module_5.TextSize = 20
			module_5.TextWrapped = true
			module_5.TextXAlignment = Enum.TextXAlignment.Center
			module_5.TextYAlignment = Enum.TextYAlignment.Center
			module_5.Size = UDim2.new(1, 0, 1, 0)
			module_5.BackgroundTransparency = 1
			return React_upvr.createElement("TextLabel", module_5)
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
	local var16_upvr = arg4 or arg5
	return function() -- Line 54
		--[[ Upvalues[10]:
			[1]: React_upvr (copied, readonly)
			[2]: IconButton_upvr (copied, readonly)
			[3]: IconSize_upvr (copied, readonly)
			[4]: Images_upvr (copied, readonly)
			[5]: arg1 (readonly)
			[6]: var16_upvr (readonly)
			[7]: arg5 (readonly)
			[8]: arg2 (readonly)
			[9]: arg4 (readonly)
			[10]: arg3 (readonly)
		]]
		local module_2 = {
			Layout = React_upvr.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Horizontal;
				HorizontalAlignment = Enum.HorizontalAlignment.Left;
				VerticalAlignment = Enum.VerticalAlignment.Center;
				SortOrder = Enum.SortOrder.LayoutOrder;
			});
		}
		local tbl_6 = {
			iconSize = IconSize_upvr.Medium;
			icon = Images_upvr["icons/navigation/pushBack"];
			layoutOrder = 1;
		}
		tbl_6.onActivated = arg1
		module_2.BackButton = React_upvr.createElement(IconButton_upvr, tbl_6)
		local var21 = var16_upvr
		if var21 then
			var21 = React_upvr.createElement
			local tbl_2 = {
				iconSize = IconSize_upvr.Medium;
				icon = Images_upvr["icons/actions/edit/undo"];
				isDisabled = not arg5;
				layoutOrder = 2;
			}
			tbl_2.onActivated = arg2
			var21 = var21(IconButton_upvr, tbl_2)
		end
		module_2.UndoButton = var21
		var21 = var16_upvr
		local var23 = var21
		if var23 then
			var23 = React_upvr.createElement
			local tbl_5 = {
				iconSize = IconSize_upvr.Medium;
				icon = Images_upvr["icons/actions/edit/redo"];
				isDisabled = not arg4;
				layoutOrder = 3;
			}
			tbl_5.onActivated = arg3
			var23 = var23(IconButton_upvr, tbl_5)
		end
		module_2.RedoButton = var23
		return React_upvr.createElement("Frame", {
			BackgroundTransparency = 1;
			Size = UDim2.new(0, 120, 1, 0);
		}, module_2)
	end
end
local function _(arg1, arg2) -- Line 89, Named "renderHeaderBarRight"
	--[[ Upvalues[4]:
		[1]: React_upvr (readonly)
		[2]: ButtonStack_upvr (readonly)
		[3]: ButtonType_upvr (readonly)
		[4]: RobloxTranslator_upvr (readonly)
	]]
	return function() -- Line 90
		--[[ Upvalues[6]:
			[1]: React_upvr (copied, readonly)
			[2]: ButtonStack_upvr (copied, readonly)
			[3]: ButtonType_upvr (copied, readonly)
			[4]: arg1 (readonly)
			[5]: arg2 (readonly)
			[6]: RobloxTranslator_upvr (copied, readonly)
		]]
		local module_4 = {
			Layout = React_upvr.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Horizontal;
				HorizontalAlignment = Enum.HorizontalAlignment.Center;
				VerticalAlignment = Enum.VerticalAlignment.Center;
			});
		}
		local tbl_3 = {}
		local tbl_7 = {}
		local tbl = {
			buttonType = ButtonType_upvr.PrimarySystem;
		}
		local tbl_8 = {}
		local function onActivated() -- Line 105
			--[[ Upvalues[2]:
				[1]: arg1 (copied, readonly)
				[2]: arg2 (copied, readonly)
			]]
			arg1(arg2)
		end
		tbl_8.onActivated = onActivated
		tbl_8.text = RobloxTranslator_upvr:FormatByKey("Feature.ReportAbuse.Action.Next")
		tbl.props = tbl_8
		tbl_7[1] = tbl
		tbl_3.buttons = tbl_7
		module_4.Buttons = React_upvr.createElement(ButtonStack_upvr, tbl_3)
		return React_upvr.createElement("Frame", {
			BackgroundTransparency = 1;
			Size = UDim2.new(0, 144, 1, 0);
		}, module_4)
	end
end
local HeaderBar_upvr = UIBlox.App.Bar.HeaderBar
return function(arg1) -- Line 116, Named "LandscapeModeHeader"
	--[[ Upvalues[9]:
		[1]: React_upvr (readonly)
		[2]: HeaderBar_upvr (readonly)
		[3]: IconButton_upvr (readonly)
		[4]: IconSize_upvr (readonly)
		[5]: Images_upvr (readonly)
		[6]: ButtonStack_upvr (readonly)
		[7]: ButtonType_upvr (readonly)
		[8]: RobloxTranslator_upvr (readonly)
		[9]: withStyle_upvr (readonly)
	]]
	local module = {}
	local tbl_4 = {
		backgroundTransparency = 1;
		barHeight = 48;
	}
	local isRedoEnabled_upvr = arg1.isRedoEnabled
	local isUndoEnabled_upvr = arg1.isUndoEnabled
	local backAction_upvr = arg1.backAction
	local var41_upvr = isRedoEnabled_upvr or isUndoEnabled_upvr
	local undoAnnotationPoints_upvr = arg1.undoAnnotationPoints
	local redoAnnotationPoints_upvr = arg1.redoAnnotationPoints
	function tbl_4.renderLeft() -- Line 54
		--[[ Upvalues[10]:
			[1]: React_upvr (copied, readonly)
			[2]: IconButton_upvr (copied, readonly)
			[3]: IconSize_upvr (copied, readonly)
			[4]: Images_upvr (copied, readonly)
			[5]: backAction_upvr (readonly)
			[6]: var41_upvr (readonly)
			[7]: isUndoEnabled_upvr (readonly)
			[8]: undoAnnotationPoints_upvr (readonly)
			[9]: isRedoEnabled_upvr (readonly)
			[10]: redoAnnotationPoints_upvr (readonly)
		]]
		local module_3 = {
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
		local var48 = var41_upvr
		if var48 then
			var48 = React_upvr.createElement
			var48 = var48(IconButton_upvr, {
				iconSize = IconSize_upvr.Medium;
				icon = Images_upvr["icons/actions/edit/undo"];
				isDisabled = not isUndoEnabled_upvr;
				layoutOrder = 2;
				onActivated = undoAnnotationPoints_upvr;
			})
		end
		module_3.UndoButton = var48
		var48 = var41_upvr
		local var50 = var48
		if var50 then
			var50 = React_upvr.createElement
			var50 = var50(IconButton_upvr, {
				iconSize = IconSize_upvr.Medium;
				icon = Images_upvr["icons/actions/edit/redo"];
				isDisabled = not isRedoEnabled_upvr;
				layoutOrder = 3;
				onActivated = redoAnnotationPoints_upvr;
			})
		end
		module_3.RedoButton = var50
		return React_upvr.createElement("Frame", {
			BackgroundTransparency = 1;
			Size = UDim2.new(0, 120, 1, 0);
		}, module_3)
	end
	backAction_upvr = arg1.finishAnnotationAction
	undoAnnotationPoints_upvr = arg1.annotationPoints
	function tbl_4.renderRight() -- Line 90
		--[[ Upvalues[6]:
			[1]: React_upvr (copied, readonly)
			[2]: ButtonStack_upvr (copied, readonly)
			[3]: ButtonType_upvr (copied, readonly)
			[4]: backAction_upvr (readonly)
			[5]: undoAnnotationPoints_upvr (readonly)
			[6]: RobloxTranslator_upvr (copied, readonly)
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
						onActivated = function() -- Line 105, Named "onActivated"
							--[[ Upvalues[2]:
								[1]: backAction_upvr (copied, readonly)
								[2]: undoAnnotationPoints_upvr (copied, readonly)
							]]
							backAction_upvr(undoAnnotationPoints_upvr)
						end;
						text = RobloxTranslator_upvr:FormatByKey("Feature.ReportAbuse.Action.Next");
					};
				}};
			});
		})
	end
	backAction_upvr = arg1.titleText
	function tbl_4.renderCenter() -- Line 31
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
			local Theme = arg1_3.Theme
			return React_upvr.createElement("TextLabel", {
				Text = backAction_upvr;
				Font = arg1_3.Font.Header2.Font;
				TextColor3 = Theme.TextEmphasis.Color;
				TextTransparency = Theme.TextEmphasis.Transparency;
				TextSize = 20;
				TextWrapped = true;
				TextXAlignment = Enum.TextXAlignment.Center;
				TextYAlignment = Enum.TextYAlignment.Center;
				Size = UDim2.new(1, 0, 1, 0);
				BackgroundTransparency = 1;
			})
		end)
	end
	module.Bar = React_upvr.createElement(HeaderBar_upvr, tbl_4)
	return React_upvr.createElement("Frame", {
		BackgroundTransparency = 0;
		BackgroundColor3 = Color3.fromHex("#4F545F");
		LayoutOrder = 1;
		Size = UDim2.new(1, 0, 0, 47);
		ZIndex = 2;
	}, module)
end