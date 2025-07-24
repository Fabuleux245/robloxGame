-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:46:31
-- Luau version 6, Types version 3
-- Time taken: 0.005439 seconds

local CorePackages = game:GetService("CorePackages")
local UserInputService_upvr = game:GetService("UserInputService")
local React_upvr = require(CorePackages.Packages.React)
local UIBlox = require(CorePackages.Packages.UIBlox)
local useDesignTokens_upvr = require(CorePackages.Workspace.Packages.Style).useDesignTokens
local useLocalization_upvr = require(CorePackages.Workspace.Packages.Localization).Hooks.useLocalization
local tbl_2_upvr = {
	ButtonSelect = "CoreScripts.InGameMenu.Label.ViewButton";
	ButtonTouchpad = "CoreScripts.InGameMenu.Label.TouchpadButton";
	ButtonShare = "CoreScripts.InGameMenu.Label.ShareButton";
}
local function HeaderArea_upvr() -- Line 42, Named "HeaderArea"
	--[[ Upvalues[3]:
		[1]: useDesignTokens_upvr (readonly)
		[2]: useLocalization_upvr (readonly)
		[3]: React_upvr (readonly)
	]]
	local MenuNavigationPrompt_2 = useDesignTokens_upvr().LuaApps.MenuNavigationPrompt
	local Typography = MenuNavigationPrompt_2.Typography
	local Space_2 = MenuNavigationPrompt_2.Space
	return React_upvr.createElement("Frame", {
		AutomaticSize = Enum.AutomaticSize.XY;
		LayoutOrder = 0;
		BackgroundTransparency = 1;
	}, {
		Header = React_upvr.createElement("TextLabel", {
			Text = useLocalization_upvr({
				HeaderText = "CoreScripts.InGameMenu.EducationalPopup.UINavigation.Title";
			}).HeaderText;
			BackgroundTransparency = 1;
			Font = Typography.header.Font;
			TextSize = Typography.header.FontSize;
			TextColor3 = MenuNavigationPrompt_2.Color.textColor.Color3;
			Size = UDim2.fromOffset(0, 0);
			AutomaticSize = Enum.AutomaticSize.XY;
			TextXAlignment = Enum.TextXAlignment.Center;
			TextYAlignment = Enum.TextYAlignment.Center;
		});
		Padding = React_upvr.createElement("UIPadding", {
			PaddingTop = UDim.new(0, Space_2.titlePadding);
			PaddingBottom = UDim.new(0, Space_2.titlePadding);
			PaddingLeft = UDim.new(0, Space_2.bodyPadding);
			PaddingRight = UDim.new(0, Space_2.bodyPadding);
		});
	})
end
local function GamepadImageArea_upvr() -- Line 78, Named "GamepadImageArea"
	--[[ Upvalues[5]:
		[1]: useDesignTokens_upvr (readonly)
		[2]: UserInputService_upvr (readonly)
		[3]: tbl_2_upvr (readonly)
		[4]: useLocalization_upvr (readonly)
		[5]: React_upvr (readonly)
	]]
	local MenuNavigationPrompt_3 = useDesignTokens_upvr().LuaApps.MenuNavigationPrompt
	local Typography_2 = MenuNavigationPrompt_3.Typography
	local Size = MenuNavigationPrompt_3.Size
	local Space_4 = MenuNavigationPrompt_3.Space
	return React_upvr.createElement("Frame", {
		BackgroundTransparency = 1;
		LayoutOrder = 0;
		AutomaticSize = Enum.AutomaticSize.XY;
	}, {
		Layout = React_upvr.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical;
			SortOrder = Enum.SortOrder.LayoutOrder;
			HorizontalAlignment = Enum.HorizontalAlignment.Center;
			VerticalAlignment = Enum.VerticalAlignment.Center;
			Padding = UDim.new(0, Space_4.iconPadding);
		});
		ButtonLabelGroup = React_upvr.createElement("Frame", {
			BackgroundTransparency = 1;
			AutomaticSize = Enum.AutomaticSize.XY;
			LayoutOrder = 0;
		}, {
			Layout = React_upvr.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Horizontal;
				SortOrder = Enum.SortOrder.LayoutOrder;
				HorizontalAlignment = Enum.HorizontalAlignment.Center;
				VerticalAlignment = Enum.VerticalAlignment.Center;
				Padding = UDim.new(0, Space_4.iconPadding);
			});
			Icon = React_upvr.createElement("ImageLabel", {
				LayoutOrder = 0;
				BackgroundTransparency = 1;
				Image = UserInputService_upvr:GetImageForKeyCode(Enum.KeyCode.ButtonSelect);
				Size = UDim2.fromOffset(Size.iconSize, Size.iconSize);
			});
			ControllerButtonLabel = React_upvr.createElement("TextLabel", {
				Text = useLocalization_upvr({
					ButtonLabelText = tbl_2_upvr[UserInputService_upvr:GetStringForKeyCode(Enum.KeyCode.ButtonSelect)] or "CoreScripts.InGameMenu.Label.ViewButton";
				}).ButtonLabelText;
				LayoutOrder = 100;
				BackgroundTransparency = 1;
				Font = Typography_2.label.Font;
				TextSize = Typography_2.label.FontSize;
				TextColor3 = MenuNavigationPrompt_3.Color.textColor.Color3;
				Size = UDim2.fromOffset(0, 0);
				AutomaticSize = Enum.AutomaticSize.XY;
				TextXAlignment = Enum.TextXAlignment.Center;
				TextYAlignment = Enum.TextYAlignment.Center;
			});
		});
		ControllerImage = React_upvr.createElement("ImageLabel", {
			Image = "rbxasset://textures/ui/Gamepad/ControllerSelect.png";
			Size = UDim2.fromScale(1, 1);
			LayoutOrder = 100;
			BackgroundTransparency = 1;
		}, {
			UIAspectRatioConstraint = React_upvr.createElement("UIAspectRatioConstraint", {
				AspectRatio = Size.imageWidth / Size.imageHeight;
			});
			UISizeConstraint = React_upvr.createElement("UISizeConstraint", {
				MaxSize = Vector2.new(Size.imageWidth, Size.imageHeight);
				MinSize = Vector2.new(Size.imageWidth * 0.5, Size.imageHeight * 0.5);
			});
		});
	})
end
local Button_upvr = UIBlox.App.Button.Button
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
local function Body_upvr(arg1) -- Line 154, Named "Body"
	--[[ Upvalues[8]:
		[1]: useDesignTokens_upvr (readonly)
		[2]: UserInputService_upvr (readonly)
		[3]: tbl_2_upvr (readonly)
		[4]: useLocalization_upvr (readonly)
		[5]: React_upvr (readonly)
		[6]: GamepadImageArea_upvr (readonly)
		[7]: Button_upvr (readonly)
		[8]: ButtonType_upvr (readonly)
	]]
	local MenuNavigationPrompt_4 = useDesignTokens_upvr().LuaApps.MenuNavigationPrompt
	local Typography_3 = MenuNavigationPrompt_4.Typography
	local Space_3 = MenuNavigationPrompt_4.Space
	local var6_result1 = useLocalization_upvr({
		OkText = "CoreScripts.InGameMenu.Ok";
		Description = "CoreScripts.InGameMenu.EducationalPopup.UINavigation.Description";
	})
	local module = {
		Layout = React_upvr.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical;
			SortOrder = Enum.SortOrder.LayoutOrder;
			HorizontalAlignment = Enum.HorizontalAlignment.Center;
			VerticalAlignment = Enum.VerticalAlignment.Center;
			Padding = UDim.new(0, Space_3.bodyPadding);
		});
		Padding = React_upvr.createElement("UIPadding", {
			PaddingLeft = UDim.new(0, Space_3.bodyPadding);
			PaddingRight = UDim.new(0, Space_3.bodyPadding);
			PaddingTop = UDim.new(0, Space_3.bodyPadding);
			PaddingBottom = UDim.new(0, Space_3.bodyPadding);
		});
		GamepadImageArea = React_upvr.createElement(GamepadImageArea_upvr);
		ImageDescription = React_upvr.createElement("TextLabel", {
			Text = var6_result1.Description;
			LayoutOrder = 100;
			BackgroundTransparency = 1;
			Font = Typography_3.caption.Font;
			TextSize = Typography_3.caption.FontSize;
			TextColor3 = MenuNavigationPrompt_4.Color.textColor.Color3;
			TextWrapped = true;
			LineHeight = Typography_3.caption.LineHeight;
			Size = UDim2.new(1, 0, 0, 0);
			AutomaticSize = Enum.AutomaticSize.Y;
			TextXAlignment = Enum.TextXAlignment.Left;
			TextYAlignment = Enum.TextYAlignment.Center;
		});
	}
	local tbl = {
		buttonType = ButtonType_upvr.PrimarySystem;
		layoutOrder = 200;
		size = UDim2.new(1, 0, 0, MenuNavigationPrompt_4.Size.buttonHeight);
		text = var6_result1.OkText;
	}
	local onDismissed = arg1.onDismissed
	tbl.onActivated = onDismissed
	if arg1.selectButtonDismissesGamepadNavigationDialog then
		onDismissed = UserInputService_upvr:GetImageForKeyCode(Enum.KeyCode.ButtonSelect)
	else
		onDismissed = nil
	end
	tbl.icon = onDismissed
	module.ConfirmationButton = React_upvr.createElement(Button_upvr, tbl)
	return React_upvr.createElement("Frame", {
		LayoutOrder = 200;
		AutomaticSize = Enum.AutomaticSize.XY;
		BackgroundTransparency = 1;
	}, module)
end
local default_upvr = require(script:FindFirstAncestor("TopBar").Analytics).default
local ContextActionService_upvr = game:GetService("ContextActionService")
return function(arg1) -- Line 216, Named "GamepadNavigationDialog"
	--[[ Upvalues[6]:
		[1]: useDesignTokens_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: default_upvr (readonly)
		[4]: ContextActionService_upvr (readonly)
		[5]: HeaderArea_upvr (readonly)
		[6]: Body_upvr (readonly)
	]]
	local MenuNavigationPrompt = useDesignTokens_upvr().LuaApps.MenuNavigationPrompt
	local Color = MenuNavigationPrompt.Color
	local Size_2 = MenuNavigationPrompt.Size
	local Space = MenuNavigationPrompt.Space
	React_upvr.useEffect(function() -- Line 224
		--[[ Upvalues[3]:
			[1]: default_upvr (copied, readonly)
			[2]: ContextActionService_upvr (copied, readonly)
			[3]: arg1 (readonly)
		]]
		default_upvr:onShowGamepadNavigationDialog()
		local var56
		if arg1.selectButtonDismissesGamepadNavigationDialog then
			var56 = Enum.KeyCode.ButtonSelect
		else
			var56 = Enum.KeyCode.ButtonA
		end
		ContextActionService_upvr:BindCoreAction("ConfirmBindComponentMapperTokenModule", function(arg1_2, arg2, arg3) -- Line 228
			--[[ Upvalues[1]:
				[1]: arg1 (copied, readonly)
			]]
			if arg2 == Enum.UserInputState.End then
				arg1.onDismissed()
			end
		end, false, var56)
		return function() -- Line 239
			--[[ Upvalues[2]:
				[1]: default_upvr (copied, readonly)
				[2]: ContextActionService_upvr (copied, readonly)
			]]
			default_upvr:onDismissGamepadNavigationDialog()
			ContextActionService_upvr:UnbindCoreAction("ConfirmBindComponentMapperTokenModule")
		end
	end)
	return React_upvr.createElement("Frame", {
		BackgroundColor3 = Color.backgroundUiColor.Color3;
		BackgroundTransparency = Color.backgroundUiColor.Transparency;
		AutomaticSize = Enum.AutomaticSize.Y;
		Size = UDim2.fromScale(Size_2.promptWidth / Size_2.displayWidth, 0);
		Position = UDim2.fromScale(0.5, 0.5);
		AnchorPoint = Vector2.new(0.5, 0.5);
	}, {
		Corner = React_upvr.createElement("UICorner", {
			CornerRadius = UDim.new(0, MenuNavigationPrompt.Radius.cornerRadius);
		});
		Layout = React_upvr.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical;
			SortOrder = Enum.SortOrder.LayoutOrder;
			HorizontalAlignment = Enum.HorizontalAlignment.Center;
			VerticalAlignment = Enum.VerticalAlignment.Center;
		});
		HeaderArea = React_upvr.createElement(HeaderArea_upvr);
		Separator = React_upvr.createElement("Frame", {
			LayoutOrder = 100;
			Size = UDim2.new(1, -2 * Space.bodyPadding, 0, 1);
			BackgroundColor3 = Color.separatorColor.Color3;
			BackgroundTransparency = Color.separatorColor.Transparency;
			BorderSizePixel = 0;
		});
		Body = React_upvr.createElement(Body_upvr, arg1);
		UISizeConstraint = React_upvr.createElement("UISizeConstraint", {
			MaxSize = Vector2.new(math.huge, math.huge);
			MinSize = Vector2.new(Size_2.imageWidth + 2 * Space.bodyPadding, 1);
		});
	})
end