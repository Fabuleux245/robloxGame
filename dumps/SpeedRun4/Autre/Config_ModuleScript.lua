-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:03:23
-- Luau version 6, Types version 3
-- Time taken: 0.002567 seconds

local GuiService = game:GetService("GuiService")
local Parent = script:FindFirstAncestor("ExpChat").Parent
local module = {
	ChatInputBarFont = Enum.Font.BuilderSansMedium;
	ChatInputBarFontFace = Font.new("rbxasset://fonts/families/BuilderSans.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal);
	ChatInputBarTextColor3 = Color3.fromRGB(255, 255, 255);
	ChatInputBarTextSize = 14;
	ChatInputBarSpatialPanelTextSize = 18;
	ChatInputBarTextStrokeColor = Color3.fromRGB(0, 0, 0);
	ChatInputBarTextStrokeTransparency = 0.5;
	ChatInputBarPlaceholderColor = Color3.fromRGB(178, 178, 178);
	ChatInputBarBackgroundColor = Color3.fromRGB(25, 27, 29);
	ChatInputBarBackgroundTransparency = 0.2;
	ChatInputBarBorderColor3 = Color3.fromRGB(255, 255, 255);
	ChatInputBarBorderTransparency = 0.8;
	ChatInputBarDefaultFocusKeyCode = Enum.KeyCode.Slash;
	ChatLayoutPosition = UDim2.new(0, 8, 0, 4);
	ChatLayoutAnchorPoint = Vector2.new(0, 0);
	ChatWindowSize = UDim2.fromScale(0.4, 0.25);
	ChatWindowFont = Font.new("rbxasset://fonts/families/BuilderSans.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal);
	ChatWindowTextColor3 = Color3.fromRGB(255, 255, 255);
	ChatWindowTextSize = 18;
	ChatWindowTextStrokeColor = Color3.fromRGB(0, 0, 0);
	ChatWindowSpatialPanelTextSize = 18;
	ChatWindowTextStrokeTransparency = 0.5;
	ChatWindowBackgroundColor3 = Color3.fromRGB(25, 27, 29);
	ChatWindowBackgroundTransparency = 0.3;
	ChatWindowBackgroundFadeOutTime = 3.5;
	ChatWindowTextFadeOutTime = 30;
	ChatWindowMaxWidth = 475;
	ChatWindowMaxHeight = 275;
	ChannelTabsSettings = {
		HorizontalBarHeight = 40;
		BackgroundTransparency = 0;
		BackgroundColor3 = Color3.fromRGB(25, 27, 29);
		HoverBackgroundColor3 = Color3.fromRGB(125, 125, 125);
		FontFace = Font.new("rbxasset://fonts/families/BuilderSans.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal);
		TextSize = 14;
		TextColor3 = Color3.fromRGB(175, 175, 175);
		SelectedTabTextColor3 = Color3.fromRGB(255, 255, 255);
		TextStrokeColor3 = Color3.fromRGB(0, 0, 0);
		TextStrokeTransparency = 1;
		UnreadDotColor3 = Color3.fromRGB(255, 255, 255);
		DividerSize = 1;
		DividerColor3 = Color3.fromRGB(255, 255, 255);
		DividerTransparency = 0.7;
		BorderColor3 = Color3.fromRGB(100, 100, 100);
		BorderTransparency = 0;
		MinTabWidth = 100;
		DropdownIconContainerWidth = 55;
		DropdownIconPadding = 15;
	};
	DefaultChannelNames = require(Parent.ExpChatShared).Config.DefaultChannelNames;
	MessageCharacterLimit = 200;
	VERIFIED_EMOJI = utf8.char(57344);
	TopBarVerticalOffset = GuiService:GetGuiInset().Y;
	DefaultBubbleChatChildrenCustomizationProperties = {
		ImageLabel = {
			Image = "";
			ImageColor3 = Color3.new(1, 1, 1);
			ImageRectOffset = Vector2.new();
			ImageRectSize = Vector2.new();
			ScaleType = Enum.ScaleType.Stretch;
			SliceCenter = Rect.new(Vector2.new(), Vector2.new());
			SliceScale = 1;
			TileSize = UDim2.fromScale(1, 1);
		};
		UIGradient = {
			Enabled = false;
			Color = ColorSequence.new(Color3.fromRGB(150, 150, 150), Color3.fromRGB(250, 250, 250));
			Offset = Vector2.new();
			Rotation = 0;
			Transparency = NumberSequence.new(0);
		};
		UICorner = {
			CornerRadius = UDim.new(0, 12);
		};
		UIPadding = {
			PaddingTop = UDim.new(0, 8);
			PaddingRight = UDim.new(0, 8);
			PaddingBottom = UDim.new(0, 8);
			PaddingLeft = UDim.new(0, 8);
		};
	};
	DefaultBubbleChatMessagePropertiesInstanceSettings = {
		BackgroundColor3 = Color3.fromRGB(250, 250, 250);
		BackgroundTransparency = 0.1;
		FontFace = Font.new("rbxasset://fonts/families/BuilderSans.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal);
		TextColor3 = Color3.fromRGB(57, 59, 61);
		TextSize = 16;
	};
	DefaultChatWindowMessagePropertiesInstanceSettings = {
		FontFace = Font.new("rbxasset://fonts/families/BuilderSans.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal);
		TextSize = 18;
		TextColor3 = Color3.fromRGB(255, 255, 255);
		TextStrokeColor3 = Color3.fromRGB(0, 0, 0);
		TextStrokeTransparency = 0.5;
	};
	DefaultChatWindowChildrenCustomizationProperties = {
		UIGradient = {
			Enabled = false;
			Color = ColorSequence.new(Color3.fromRGB(150, 150, 150), Color3.fromRGB(250, 250, 250));
			Offset = Vector2.new();
			Rotation = 0;
			Transparency = NumberSequence.new(0);
		};
	};
	AutocompleteEntryDefaultSizeY = 30;
	AutocompleteFrameDefaultSizeY = 105;
	AutocompleteSelectedColor = Color3.fromRGB(255, 255, 255);
	AutocompleteSelectedTransparency = 0.85;
	ChatInputBarDefaultAutocompleteEnabled = false;
	AvatarChatUISettings = {
		FrameHeight = 30;
		IconSize = UDim2.fromOffset(24, 24);
		IconTransparency = 0.1;
		DoubleIconButtonSize = UDim2.fromOffset(38, 30);
		SingleIconButtonSize = UDim2.fromOffset(30, 30);
		SingleIconCornerRadiusOffset = 8;
		DoubleIconCornerRadiusOffset = 10;
		DividerSize = UDim2.fromOffset(2, 18);
		DividerColor = Color3.fromHex("#BDBEBE");
	};
	Permissions = {
		CAMERA_ACCESS = "camera";
		MICROPHONE_ACCESS = "microphone";
	};
}
if require(Parent.SocialExperiments).TenFootInterfaceExpChatExperimentation.getIsEnabled() and GuiService:IsTenFootInterface() then
	module.ChatWindowSize = UDim2.fromScale(0.4, 0.4)
	module.ChatWindowMaxWidth = 768
	module.ChatWindowMaxHeight = 432
end
return module