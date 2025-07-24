-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:13:17
-- Luau version 6, Types version 3
-- Time taken: 0.004377 seconds

local Parent = script:FindFirstAncestor("InputUi").Parent
local UIBlox = require(Parent.UIBlox)
local useDesignTokens_upvr = require(Parent.Style).useDesignTokens
local game_GetEngineFeature_result1_upvr = game:GetEngineFeature("GamepadMessageKeyEngineFeature")
local MemStorageService_upvr = game:GetService("MemStorageService")
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local UserInputService_upvr = game:GetService("UserInputService")
local React_upvr = require(Parent.React)
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local Images_upvr = UIBlox.App.ImageSet.Images
return function(arg1) -- Line 23
	--[[ Upvalues[8]:
		[1]: useDesignTokens_upvr (readonly)
		[2]: game_GetEngineFeature_result1_upvr (readonly)
		[3]: MemStorageService_upvr (readonly)
		[4]: useLocalization_upvr (readonly)
		[5]: UserInputService_upvr (readonly)
		[6]: React_upvr (readonly)
		[7]: ImageSetLabel_upvr (readonly)
		[8]: Images_upvr (readonly)
	]]
	local var4_result1 = useDesignTokens_upvr()
	local Color3 = var4_result1.Semantic.Color.Text.Emphasis.Color3
	local Transparency = var4_result1.Semantic.Color.Text.Emphasis.Transparency
	local GamepadDisconnect = var4_result1.LuaApps.GamepadDisconnect
	local designWidth = GamepadDisconnect.designWidth
	local imageWidth = GamepadDisconnect.imageWidth
	local imageHeight = GamepadDisconnect.imageHeight
	local textContainerWidth = GamepadDisconnect.textContainerWidth
	local var20 = ""
	if game_GetEngineFeature_result1_upvr then
		var20 = MemStorageService_upvr:GetItem("GamepadDisconnectMessageKey")
		if var20 == "" then
			var20 = "Feature.GamepadDisconnect.Label.MessageGeneric"
			-- KONSTANTWARNING: GOTO [52] #33
		end
	else
		var20 = "Feature.GamepadDisconnect.Label.Message"
	end
	local var7_result1 = useLocalization_upvr({
		title = "Feature.GamepadDisconnect.Label.Title";
		message = var20;
	})
	return React_upvr.createElement("Frame", {
		AnchorPoint = Vector2.new(0.5, 0.5);
		Position = UDim2.fromScale(0.5, 0.5);
		Size = UDim2.new(1, 0, 1, 0);
		BackgroundTransparency = 1;
		BorderSizePixel = 0;
		Active = true;
	}, {
		Modal = React_upvr.createElement("Frame", {
			AnchorPoint = Vector2.new(0.5, 0.5);
			Position = UDim2.fromScale(0.5, 0.5);
			Size = UDim2.new(1, 0, 1, -GamepadDisconnect.verticalPadding * 2);
			BackgroundTransparency = var4_result1.Semantic.Color.BackgroundUi.Contrast.Transparency;
			BackgroundColor3 = var4_result1.Semantic.Color.BackgroundUi.Contrast.Color3;
			BorderSizePixel = 0;
		}, {
			Content = React_upvr.createElement("Frame", {
				AnchorPoint = Vector2.new(0.5, 0.5);
				Position = UDim2.fromScale(0.5, 0.5);
				Size = UDim2.new(1, 0, 0, imageHeight);
				BackgroundTransparency = 1;
				BorderSizePixel = 0;
			}, {
				UIListLayout = React_upvr.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Horizontal;
					HorizontalAlignment = Enum.HorizontalAlignment.Center;
					SortOrder = Enum.SortOrder.LayoutOrder;
					VerticalAlignment = Enum.VerticalAlignment.Center;
					Padding = UDim.new(GamepadDisconnect.horizontalInnerPadding / designWidth, 0);
				});
				ControllerImage = React_upvr.createElement("ImageLabel", {
					Image = "rbxasset://textures/ui/Gamepad/Controller.png";
					Size = UDim2.new(imageWidth / designWidth, 0, 0, imageHeight);
					BackgroundTransparency = 1;
					LayoutOrder = 1;
				}, {
					UIAspectRatioConstraint = React_upvr.createElement("UIAspectRatioConstraint", {
						AspectRatio = imageWidth / imageHeight;
					});
					UISizeConstraint = React_upvr.createElement("UISizeConstraint", {
						MaxSize = Vector2.new(imageWidth, imageHeight);
						MinSize = Vector2.new(imageWidth * 0.5, imageHeight * 0.5);
					});
				});
				TextContainer = React_upvr.createElement("Frame", {
					AutomaticSize = Enum.AutomaticSize.Y;
					Size = UDim2.new(textContainerWidth / designWidth, 0, 0, imageHeight);
					BackgroundTransparency = 1;
					LayoutOrder = 2;
				}, {
					UIListLayout = React_upvr.createElement("UIListLayout", {
						FillDirection = Enum.FillDirection.Vertical;
						SortOrder = Enum.SortOrder.LayoutOrder;
						HorizontalAlignment = Enum.HorizontalAlignment.Left;
						VerticalAlignment = Enum.VerticalAlignment.Center;
						Padding = UDim.new(0, var4_result1.Global.Space_400);
					});
					TitleRow = React_upvr.createElement("Frame", {
						AutomaticSize = Enum.AutomaticSize.Y;
						Size = UDim2.fromScale(1, 0);
						BackgroundTransparency = 1;
						LayoutOrder = 1;
					}, {
						UIListLayout = React_upvr.createElement("UIListLayout", {
							FillDirection = Enum.FillDirection.Horizontal;
							SortOrder = Enum.SortOrder.LayoutOrder;
							VerticalAlignment = Enum.VerticalAlignment.Center;
							HorizontalAlignment = Enum.HorizontalAlignment.Left;
							Padding = UDim.new(24 / textContainerWidth, 0);
						});
						Icon = React_upvr.createElement(ImageSetLabel_upvr, {
							Image = Images_upvr["icons/menu/about_large"];
							BackgroundTransparency = 1;
							LayoutOrder = 1;
							Size = UDim2.fromOffset(var4_result1.Global.Size_600, var4_result1.Global.Size_600);
						});
						Title = React_upvr.createElement("TextLabel", {
							Text = var7_result1.title;
							BackgroundTransparency = 1;
							TextColor3 = Color3;
							TextTransparency = Transparency;
							TextSize = var4_result1.Semantic.Typography.Title.FontSize;
							Font = var4_result1.Semantic.Typography.Title.Font;
							LayoutOrder = 2;
							TextXAlignment = Enum.TextXAlignment.Left;
						});
					});
					Message = React_upvr.createElement("TextLabel", {
						Text = string.format(var7_result1.message, arg1.username, UserInputService_upvr:GetStringForKeyCode(Enum.KeyCode.A));
						AutomaticSize = Enum.AutomaticSize.XY;
						Size = UDim2.fromOffset(0, 0);
						BackgroundTransparency = 1;
						TextColor3 = Color3;
						TextTransparency = Transparency;
						TextSize = var4_result1.Semantic.Typography.Subheader.FontSize;
						Font = var4_result1.Semantic.Typography.Subheader.Font;
						LayoutOrder = 2;
						TextWrapped = true;
						TextXAlignment = Enum.TextXAlignment.Left;
					});
				});
			});
		});
	})
end