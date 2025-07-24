-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:13:02
-- Luau version 6, Types version 3
-- Time taken: 0.006048 seconds

local Parent = script:FindFirstAncestor("InGameAssetReporting").Parent
local React_upvr = require(Parent.React)
local UIBlox = require(Parent.UIBlox)
local IconButton_upvr = UIBlox.App.Button.IconButton
local IconSize_upvr = UIBlox.App.ImageSet.Enum.IconSize
local Images_upvr = UIBlox.App.ImageSet.Images
local withStyle_upvr = UIBlox.Style.withStyle
local function _(arg1, arg2, arg3) -- Line 30, Named "renderHeaderBarLeft"
	--[[ Upvalues[4]:
		[1]: React_upvr (readonly)
		[2]: IconButton_upvr (readonly)
		[3]: IconSize_upvr (readonly)
		[4]: Images_upvr (readonly)
	]]
	return function() -- Line 31
		--[[ Upvalues[5]:
			[1]: React_upvr (copied, readonly)
			[2]: IconButton_upvr (copied, readonly)
			[3]: IconSize_upvr (copied, readonly)
			[4]: Images_upvr (copied, readonly)
			[5]: arg1 (readonly)
		]]
		local module = {
			Layout = React_upvr.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Horizontal;
				HorizontalAlignment = Enum.HorizontalAlignment.Left;
				VerticalAlignment = Enum.VerticalAlignment.Center;
				SortOrder = Enum.SortOrder.LayoutOrder;
			});
		}
		local tbl_3 = {
			iconSize = IconSize_upvr.Medium;
			icon = Images_upvr["icons/navigation/pushBack"];
			layoutOrder = 1;
		}
		tbl_3.onActivated = arg1
		module.BackButton = React_upvr.createElement(IconButton_upvr, tbl_3)
		return React_upvr.createElement("Frame", {
			BackgroundTransparency = 1;
			Size = UDim2.new(0, 30, 1, 0);
		}, module)
	end
end
local function _(arg1) -- Line 52, Named "renderHeaderBarCenter"
	--[[ Upvalues[2]:
		[1]: withStyle_upvr (readonly)
		[2]: React_upvr (readonly)
	]]
	return function() -- Line 53
		--[[ Upvalues[3]:
			[1]: withStyle_upvr (copied, readonly)
			[2]: React_upvr (copied, readonly)
			[3]: arg1 (readonly)
		]]
		return withStyle_upvr(function(arg1_2) -- Line 54
			--[[ Upvalues[2]:
				[1]: React_upvr (copied, readonly)
				[2]: arg1 (copied, readonly)
			]]
			local CurrentCamera = game.Workspace.CurrentCamera
			local var16 = 300
			if CurrentCamera ~= nil then
				var16 = CurrentCamera.ViewportSize.X - 150
			end
			local Theme_2 = arg1_2.Theme
			local module_2 = {}
			module_2.Text = arg1
			module_2.Font = arg1_2.Font.Header2.Font
			module_2.TextColor3 = Theme_2.TextEmphasis.Color
			module_2.TextTransparency = Theme_2.TextEmphasis.Transparency
			module_2.TextSize = 20
			module_2.TextWrapped = true
			module_2.TextXAlignment = Enum.TextXAlignment.Center
			module_2.TextYAlignment = Enum.TextYAlignment.Center
			module_2.Size = UDim2.new(0, var16, 1, 0)
			module_2.BackgroundTransparency = 1
			return React_upvr.createElement("TextLabel", module_2)
		end)
	end
end
local function _(arg1, arg2, arg3, arg4, arg5) -- Line 81, Named "renderHeaderBarRight"
	--[[ Upvalues[4]:
		[1]: React_upvr (readonly)
		[2]: IconButton_upvr (readonly)
		[3]: IconSize_upvr (readonly)
		[4]: Images_upvr (readonly)
	]]
	return function() -- Line 88
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
		local tbl = {
			iconSize = IconSize_upvr.Medium;
			icon = Images_upvr["icons/actions/edit/undo"];
			isDisabled = not arg4;
			layoutOrder = 1;
		}
		tbl.onActivated = arg2
		module_3.UndoButton = React_upvr.createElement(IconButton_upvr, tbl)
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
local ButtonStack_upvr = UIBlox.App.Button.ButtonStack
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
return {
	PortraitModeHeader = function(arg1) -- Line 117, Named "PortraitModeHeader"
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
		local module_4 = {}
		local tbl_2 = {
			backgroundTransparency = 1;
			barHeight = 72;
			margin = 12;
		}
		local backAction_upvr = arg1.backAction
		local function var36() -- Line 31
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
		tbl_2.renderLeft = var36
		if isRedoEnabled then
			backAction_upvr = arg1.annotationPoints
			local isUndoEnabled_upvr = arg1.isUndoEnabled
			local undoAnnotationPoints_upvr = arg1.undoAnnotationPoints
			local isRedoEnabled_2_upvr = arg1.isRedoEnabled
			local redoAnnotationPoints_upvr = arg1.redoAnnotationPoints
			function var36() -- Line 88
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
			var36 = function() -- Line 141
			end
		end
		tbl_2.renderRight = var36
		backAction_upvr = arg1.titleText
		function tbl_2.renderCenter() -- Line 53
			--[[ Upvalues[3]:
				[1]: withStyle_upvr (copied, readonly)
				[2]: React_upvr (copied, readonly)
				[3]: backAction_upvr (readonly)
			]]
			return withStyle_upvr(function(arg1_3) -- Line 54
				--[[ Upvalues[2]:
					[1]: React_upvr (copied, readonly)
					[2]: backAction_upvr (copied, readonly)
				]]
				local CurrentCamera_2 = game.Workspace.CurrentCamera
				local var50 = 300
				if CurrentCamera_2 ~= nil then
					var50 = CurrentCamera_2.ViewportSize.X - 150
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
		tbl_2.isSecondary = true
		module_4.Bar = React_upvr.createElement(HeaderBar_upvr, tbl_2)
		return React_upvr.createElement("Frame", {
			BorderSizePixel = 0;
			BackgroundTransparency = 0.1;
			BackgroundColor3 = Color3.fromHex("#000000");
			LayoutOrder = 1;
			Size = UDim2.new(1, 0, 0, 72);
			ZIndex = 2;
		}, module_4)
	end;
	PortraitModeFooter = function(arg1) -- Line 148, Named "PortraitModeFooter"
		--[[ Upvalues[3]:
			[1]: React_upvr (readonly)
			[2]: ButtonStack_upvr (readonly)
			[3]: ButtonType_upvr (readonly)
		]]
		return React_upvr.createElement("Frame", {
			BorderSizePixel = 0;
			BackgroundTransparency = 0.1;
			Size = UDim2.new(1, 0, 0, 60);
			BackgroundColor3 = Color3.fromHex("#000000");
			AnchorPoint = Vector2.new(0, 1);
			Position = UDim2.fromScale(0, 1);
			LayoutOrder = 4;
		}, {
			Layout = React_upvr.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical;
				HorizontalAlignment = Enum.HorizontalAlignment.Center;
			});
			Container = React_upvr.createElement("Frame", {
				Size = UDim2.new(0, 400, 1, 0);
				BackgroundTransparency = 1;
			}, {
				Padding = React_upvr.createElement("UIPadding", {
					PaddingTop = UDim.new(0, 12);
					PaddingBottom = UDim.new(0, 12);
					PaddingLeft = UDim.new(0, 32);
					PaddingRight = UDim.new(0, 32);
				});
				ActionButtons = React_upvr.createElement(ButtonStack_upvr, {
					marginBetween = 8;
					buttons = {{
						buttonType = ButtonType_upvr.PrimarySystem;
						props = {
							onActivated = arg1.nextAction;
							text = arg1.nextText;
						};
					}};
				});
			});
		})
	end;
}