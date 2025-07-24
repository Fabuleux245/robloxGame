-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:02:49
-- Luau version 6, Types version 3
-- Time taken: 0.004377 seconds

local CorePackages = game:GetService("CorePackages")
local UIBlox = require(CorePackages.Packages.UIBlox)
local React_upvr = require(CorePackages.Packages.React)
local IconButton_upvr = UIBlox.App.Button.IconButton
local IconSize_upvr = UIBlox.App.ImageSet.Enum.IconSize
local Images_upvr = UIBlox.App.ImageSet.Images
local withStyle_upvr = UIBlox.Style.withStyle
local function _(arg1, arg2, arg3) -- Line 25, Named "renderHeaderBarLeft"
	--[[ Upvalues[4]:
		[1]: React_upvr (readonly)
		[2]: IconButton_upvr (readonly)
		[3]: IconSize_upvr (readonly)
		[4]: Images_upvr (readonly)
	]]
	return function() -- Line 26
		--[[ Upvalues[5]:
			[1]: React_upvr (copied, readonly)
			[2]: IconButton_upvr (copied, readonly)
			[3]: IconSize_upvr (copied, readonly)
			[4]: Images_upvr (copied, readonly)
			[5]: arg1 (readonly)
		]]
		local module_4 = {
			Layout = React_upvr.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Horizontal;
				HorizontalAlignment = Enum.HorizontalAlignment.Left;
				VerticalAlignment = Enum.VerticalAlignment.Center;
				SortOrder = Enum.SortOrder.LayoutOrder;
			});
		}
		local tbl_2 = {
			iconSize = IconSize_upvr.Medium;
			icon = Images_upvr["icons/navigation/pushBack"];
			layoutOrder = 1;
		}
		tbl_2.onActivated = arg1
		module_4.BackButton = React_upvr.createElement(IconButton_upvr, tbl_2)
		return React_upvr.createElement("Frame", {
			BackgroundTransparency = 1;
			Size = UDim2.new(0, 30, 1, 0);
		}, module_4)
	end
end
local function _(arg1) -- Line 47, Named "renderCenter"
	--[[ Upvalues[2]:
		[1]: withStyle_upvr (readonly)
		[2]: React_upvr (readonly)
	]]
	return function() -- Line 48
		--[[ Upvalues[3]:
			[1]: withStyle_upvr (copied, readonly)
			[2]: React_upvr (copied, readonly)
			[3]: arg1 (readonly)
		]]
		return withStyle_upvr(function(arg1_2) -- Line 49
			--[[ Upvalues[2]:
				[1]: React_upvr (copied, readonly)
				[2]: arg1 (copied, readonly)
			]]
			local CurrentCamera_2 = game.Workspace.CurrentCamera
			local var16 = 300
			if CurrentCamera_2 ~= nil then
				var16 = CurrentCamera_2.ViewportSize.X - 150
			end
			local Theme_2 = arg1_2.Theme
			local module = {}
			module.Text = arg1
			module.Font = arg1_2.Font.Header2.Font
			module.TextColor3 = Theme_2.TextEmphasis.Color
			module.TextTransparency = Theme_2.TextEmphasis.Transparency
			module.TextSize = 20
			module.TextWrapped = true
			module.TextXAlignment = Enum.TextXAlignment.Center
			module.TextYAlignment = Enum.TextYAlignment.Center
			module.Size = UDim2.new(0, var16, 1, 0)
			module.BackgroundTransparency = 1
			return React_upvr.createElement("TextLabel", module)
		end)
	end
end
local function _(arg1, arg2, arg3, arg4, arg5) -- Line 76, Named "renderHeaderBarRight"
	--[[ Upvalues[4]:
		[1]: React_upvr (readonly)
		[2]: IconButton_upvr (readonly)
		[3]: IconSize_upvr (readonly)
		[4]: Images_upvr (readonly)
	]]
	return function() -- Line 83
		--[[ Upvalues[8]:
			[1]: React_upvr (copied, readonly)
			[2]: IconButton_upvr (copied, readonly)
			[3]: IconSize_upvr (copied, readonly)
			[4]: Images_upvr (copied, readonly)
			[5]: arg4 (readonly)
			[6]: arg2 (readonly)
			[7]: arg5 (readonly)
			[8]: arg3 (readonly)
		]]
		local module_3 = {
			Layout = React_upvr.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Horizontal;
				HorizontalAlignment = Enum.HorizontalAlignment.Center;
				VerticalAlignment = Enum.VerticalAlignment.Center;
				SortOrder = Enum.SortOrder.LayoutOrder;
			});
		}
		local tbl_3 = {
			iconSize = IconSize_upvr.Medium;
			icon = Images_upvr["icons/actions/edit/undo"];
			isDisabled = not arg4;
			layoutOrder = 1;
		}
		tbl_3.onActivated = arg2
		module_3.UndoButton = React_upvr.createElement(IconButton_upvr, tbl_3)
		local tbl_4 = {
			iconSize = IconSize_upvr.Medium;
			icon = Images_upvr["icons/actions/edit/redo"];
			isDisabled = not arg5;
			layoutOrder = 2;
		}
		tbl_4.onActivated = arg3
		module_3.RedoButton = React_upvr.createElement(IconButton_upvr, tbl_4)
		return React_upvr.createElement("Frame", {
			BackgroundTransparency = 1;
			Size = UDim2.new(0, 60, 1, 0);
		}, module_3)
	end
end
local HeaderBar_upvr = UIBlox.App.Bar.HeaderBar
return function(arg1) -- Line 111, Named "ScreenshotDialogPortraitModeHeader"
	--[[ Upvalues[6]:
		[1]: React_upvr (readonly)
		[2]: HeaderBar_upvr (readonly)
		[3]: IconButton_upvr (readonly)
		[4]: IconSize_upvr (readonly)
		[5]: Images_upvr (readonly)
		[6]: withStyle_upvr (readonly)
	]]
	local isRedoEnabled = arg1.isRedoEnabled
	if not isRedoEnabled then
		isRedoEnabled = arg1.isUndoEnabled
	end
	local module_2 = {}
	local tbl = {
		backgroundTransparency = 1;
		barHeight = 48;
		margin = 12;
	}
	local backAction_upvr = arg1.backAction
	local function var36() -- Line 26
		--[[ Upvalues[5]:
			[1]: React_upvr (copied, readonly)
			[2]: IconButton_upvr (copied, readonly)
			[3]: IconSize_upvr (copied, readonly)
			[4]: Images_upvr (copied, readonly)
			[5]: backAction_upvr (readonly)
		]]
		return React_upvr.createElement("Frame", {
			BackgroundTransparency = 1;
			Size = UDim2.new(0, 30, 1, 0);
		}, {
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
		})
	end
	tbl.renderLeft = var36
	if isRedoEnabled then
		backAction_upvr = arg1.annotationPoints
		local isUndoEnabled_upvr = arg1.isUndoEnabled
		local undoAnnotationPoints_upvr = arg1.undoAnnotationPoints
		local isRedoEnabled_2_upvr = arg1.isRedoEnabled
		local redoAnnotationPoints_upvr = arg1.redoAnnotationPoints
		function var36() -- Line 83
			--[[ Upvalues[8]:
				[1]: React_upvr (copied, readonly)
				[2]: IconButton_upvr (copied, readonly)
				[3]: IconSize_upvr (copied, readonly)
				[4]: Images_upvr (copied, readonly)
				[5]: isUndoEnabled_upvr (readonly)
				[6]: undoAnnotationPoints_upvr (readonly)
				[7]: isRedoEnabled_2_upvr (readonly)
				[8]: redoAnnotationPoints_upvr (readonly)
			]]
			return React_upvr.createElement("Frame", {
				BackgroundTransparency = 1;
				Size = UDim2.new(0, 60, 1, 0);
			}, {
				Layout = React_upvr.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Horizontal;
					HorizontalAlignment = Enum.HorizontalAlignment.Center;
					VerticalAlignment = Enum.VerticalAlignment.Center;
					SortOrder = Enum.SortOrder.LayoutOrder;
				});
				UndoButton = React_upvr.createElement(IconButton_upvr, {
					iconSize = IconSize_upvr.Medium;
					icon = Images_upvr["icons/actions/edit/undo"];
					isDisabled = not isUndoEnabled_upvr;
					layoutOrder = 1;
					onActivated = undoAnnotationPoints_upvr;
				});
				RedoButton = React_upvr.createElement(IconButton_upvr, {
					iconSize = IconSize_upvr.Medium;
					icon = Images_upvr["icons/actions/edit/redo"];
					isDisabled = not isRedoEnabled_2_upvr;
					layoutOrder = 2;
					onActivated = redoAnnotationPoints_upvr;
				});
			})
		end
	else
		var36 = function() -- Line 134
		end
	end
	tbl.renderRight = var36
	backAction_upvr = arg1.titleText
	function tbl.renderCenter() -- Line 48
		--[[ Upvalues[3]:
			[1]: withStyle_upvr (copied, readonly)
			[2]: React_upvr (copied, readonly)
			[3]: backAction_upvr (readonly)
		]]
		return withStyle_upvr(function(arg1_3) -- Line 49
			--[[ Upvalues[2]:
				[1]: React_upvr (copied, readonly)
				[2]: backAction_upvr (copied, readonly)
			]]
			local CurrentCamera = game.Workspace.CurrentCamera
			local var50 = 300
			if CurrentCamera ~= nil then
				var50 = CurrentCamera.ViewportSize.X - 150
			end
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
				Size = UDim2.new(0, var50, 1, 0);
				BackgroundTransparency = 1;
			})
		end)
	end
	tbl.isSecondary = true
	module_2.Bar = React_upvr.createElement(HeaderBar_upvr, tbl)
	return React_upvr.createElement("Frame", {
		BackgroundTransparency = 0;
		BackgroundColor3 = Color3.fromHex("#4F545F");
		LayoutOrder = 1;
		Size = UDim2.new(1, 0, 0, 48);
		ZIndex = 2;
	}, module_2)
end