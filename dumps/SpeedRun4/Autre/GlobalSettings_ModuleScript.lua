-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:58:49
-- Luau version 6, Types version 3
-- Time taken: 0.005678 seconds

-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
local module_2 = require(game:GetService("CoreGui"):FindFirstChild("RobloxGui"):FindFirstChild("Modules"):FindFirstChild("Shell"):FindFirstChild("Utility"))
local module = {
	WhiteTextColor = Color3.new(1, 1, 1);
	GreyTextColor = Color3.new(0.5, 0.5, 0.5);
	LightGreyTextColor = Color3.new(0.7215686274509804, 0.7215686274509804, 0.7215686274509804);
	BlueTextColor = Color3.new(0, 0.4549019607843137, 0.7411764705882353);
	BlackTextColor = Color3.new(0, 0, 0);
	GreenTextColor = Color3.new(0.00784313725490196, 0.7176470588235294, 0.3411764705882353);
	RedTextColor = Color3.new(0.8470588235294118, 0.40784313725490196, 0.40784313725490196);
	OrangeTextColor = Color3.new(0.9647058823529412, 0.5333333333333333, 0.00784313725490196);
	TextSelectedColor = Color3.new(0.09803921568627451, 0.09803921568627451, 0.09803921568627451);
	LineBreakColor = Color3.new(0.3058823529411765, 0.3058823529411765, 0.3058823529411765);
	PageDivideColor = Color3.new(0.592156862745098, 0.592156862745098, 0.592156862745098);
	BadgeOwnedColor = Color3.new(0.17647058823529413, 0.3764705882352941, 0.5019607843137255);
	BadgeOverlayColor = Color3.new(0.050980392156862744, 0.10980392156862745, 0.14901960784313725);
	OverlayColor = Color3.new(0.10196078431372549, 0.2235294117647059, 0.2980392156862745);
	BadgeFrameColor = Color3.new(0.41568627450980394, 0.47058823529411764, 0.5058823529411764);
	RobuxOverlayImageColor = Color3.new(0.16470588235294117, 0.2, 0.2235294117647059);
	BlueButtonColor = Color3.fromRGB(0, 162, 255);
	GreySelectionColor = Color3.new(0.32941176470588235, 0.38823529411764707, 0.42745098039215684);
	GreenButtonColor = Color3.new(0.00784313725490196, 0.6392156862745098, 0.30196078431372547);
	GreenSelectedButtonColor = Color3.new(0.24705882352941178, 0.7764705882352941, 0.4745098039215686);
	GreyButtonColor = Color3.new(0.3058823529411765, 0.32941176470588235, 0.3764705882352941);
	GreySelectedButtonColor = Color3.new(0.19607843137254902, 0.7098039215686275, 1);
	CharacterBackgroundColor = Color3.new(0.15294117647058825, 0.27058823529411763, 0.3215686274509804);
	ForegroundGreyColor = Color3.new(0.22745098039215686, 0.23529411764705882, 0.25098039215686274);
	BackgroundGreyColor = Color3.new(0.3058823529411765, 0.32941176470588235, 0.3764705882352941);
	ModalBackgroundColor = Color3.new(0, 0, 0);
	AvatarBoxBackgroundColor = Color3.new(1, 1, 1);
	TabUnderlineColor = Color3.new(0.19607843137254902, 0.7098039215686275, 1);
	PriceLabelColor = Color3.new(0.9450980392156862, 0.4549019607843137, 0.0392156862745098);
	PromoLabelColor = Color3.new(1, 0, 0);
	StatusIconEnabledColor = Color3.new(0.00784313725490196, 0.7176470588235294, 0.3411764705882353);
	StatusIconDisabledColor = Color3.new(1, 0, 0);
	StatusIconUnknownColor = Color3.new(0.5, 0.5, 0.5);
	TextBoxColor = Color3.new(1, 1, 1);
	TextBoxSelectedTransparency = 0.5;
	TextBoxDefaultTransparency = 0.75;
	AvatarBoxBackgroundSelectedTransparency = 0.75;
	AvatarBoxBackgroundDeselectedTransparency = 0.875;
	AvatarBoxTextSelectedTransparency = 0;
	AvatarBoxTextDeselectedTransparency = 0.5;
	ModalBackgroundTransparency = 0.3;
	FriendStatusTextTransparency = 0.5;
	LargeHeadingSize = Enum.FontSize.Size48;
	MediumLargeHeadingSize = Enum.FontSize.Size36;
	MediumHeadingSize = Enum.FontSize.Size24;
	SmallHeadingSize = Enum.FontSize.Size18;
	ParagraphSize = Enum.FontSize.Size14;
	LargeFontSize = Enum.FontSize.Size96;
	HeaderSize = Enum.FontSize.Size60;
	MediumFontSize = Enum.FontSize.Size48;
	TitleSize = Enum.FontSize.Size42;
	ButtonSize = Enum.FontSize.Size36;
	DescriptionSize = Enum.FontSize.Size32;
	SubHeaderSize = Enum.FontSize.Size28;
	SmallTitleSize = Enum.FontSize.Size24;
	HeadingFont = Enum.Font.SourceSans;
	RegularFont = Enum.Font.SourceSans;
	LightFont = Enum.Font.SourceSansLight;
	BoldFont = Enum.Font.SourceSansBold;
	ItalicFont = Enum.Font.SourceSansItalic;
	TabItemSpacing = 30;
	DefaultPriority = 1;
	OverlayPriority = 2;
	ElevatedPriority = 3;
	ImmediatePriority = 4;
	TabDockTweenDuration = 0.35;
}
local var11
local function INLINED() -- Internal function, doesn't exist in bytecode
	var11 = tonumber(module_2.GetFastVariable("XboxAvatarPaneRefreshInterval"))
	return var11
end
if not module_2.GetFastVariable("XboxAvatarPaneRefreshInterval") or not INLINED() then
	var11 = 1800
end
module.AvatarPaneRefreshInterval = var11
local function INLINED_2() -- Internal function, doesn't exist in bytecode
	var11 = tonumber(module_2.GetFastVariable("XboxGameDetailsRefreshInterval"))
	return var11
end
if not module_2.GetFastVariable("XboxGameDetailsRefreshInterval") or not INLINED_2() then
	var11 = 1800
end
module.GameDetailsRefreshInterval = var11
local function INLINED_3() -- Internal function, doesn't exist in bytecode
	var11 = tonumber(module_2.GetFastVariable("XboxGameSortsUpdateInterval"))
	return var11
end
if not module_2.GetFastVariable("XboxGameSortsUpdateInterval") or not INLINED_3() then
	var11 = 1800
end
module.GameSortsUpdateInterval = var11
var11 = 10
module.TextVerticalPadding = var11
var11 = 13
module.TextHorizontalPadding = var11
var11 = "rbxasset://textures/ui/Shell/".."Buttons/Generic9ScaleButton@720.png"
module.RoundCornerButtonImage = var11
var11 = "rbxasset://textures/ui/Shell/".."Buttons/Generic9ScaleButtonOutline@720.png"
module.RoundCornerButtonOutlineImage = var11
var11 = {}
var11.Heading = Enum.Font.SourceSans
var11.Regular = Enum.Font.SourceSans
var11.Light = Enum.Font.SourceSansLight
var11.Bold = Enum.Font.SourceSansBold
var11.Italic = Enum.Font.SourceSansItalic
module.Fonts = var11
var11 = {}
var11.BlueButton = Color3.fromRGB(0, 162, 255)
var11.WhiteButton = Color3.fromRGB(255, 255, 255)
var11.GreySelectedButton = Color3.fromRGB(50, 181, 255)
var11.TextSelected = Color3.fromRGB(25, 25, 25)
var11.WhiteText = Color3.fromRGB(255, 255, 255)
var11.GreenText = Color3.fromRGB(2, 183, 87)
var11.BlueText = Color3.fromRGB(0, 116, 189)
var11.OrangeText = Color3.fromRGB(246, 136, 2)
var11.GreyText = Color3.fromRGB(127, 127, 127)
var11.LightGreyText = Color3.fromRGB(184, 184, 184)
var11.CharacterBackground = Color3.fromRGB(39, 69, 82)
var11.BlackText = Color3.fromRGB(0, 0, 0)
var11.Black = Color3.fromRGB(0, 0, 0)
var11.RedText = Color3.fromRGB(247, 75, 82)
module.Colors = var11
var11 = {}
var11.Large = 96
var11.Header = 60
var11.Medium = 48
var11.Title = 42
var11.Button = 36
var11.Description = 32
var11.SubHeader = 28
var11.SmallTitle = 24
module.TextSizes = var11
var11 = {}
var11.RoundCornerButton = "Buttons/Generic9ScaleButton@720.png"
var11.ButtonDefault = "Buttons/Button_1080.png"
var11.ButtonSelector = "Buttons/gr-item selector-8px corner.png"
var11.RightArrow = "Icons/RightIndicatorIcon@1080.png"
var11.EnabledStatusIcon = "Icons/EnabledStatusIcon.png"
var11.Shadow = "/Buttons/Generic9ScaleShadow.png"
var11.RobloxIcon = "Icons/RobloxIcon24.png"
var11.OnlineStatusIcon = "Icons/OnlineStatusIcon@1080.png"
var11.DefaultProfile = "Icons/DefaultProfileIcon.png"
module.Images = var11
var11 = {}
var11.BackgroundLoop = "RobloxMusic.ogg"
var11.Error = "Error.mp3"
var11.ButtonPress = "ButtonPress.mp3"
var11.MoveSelection = "MoveSelection.mp3"
var11.OverlayOpen = "OverlayOpen.mp3"
var11.PopUp = "PopUp.mp3"
var11.PurchaseSuccess = "PurchaseSuccess.mp3"
var11.ScreenChange = "ScreenChange.mp3"
var11.SideMenuSlideIn = "SideMenuSlideIn.mp3"
module.Sounds = var11
var11 = {}
var11.TextBoxSelected = 0.5
var11.TextBoxDefault = 0.75
var11.AvatarBoxBackgroundSelected = 0.75
var11.AvatarBoxBackgroundDeselected = 0.875
var11.AvatarBoxTextSelected = 0
var11.AvatarBoxTextDeselected = 0.5
var11.ModalBackground = 0.3
var11.FriendStatusText = 0.5
module.Transparency = var11
var11 = pairs(module.Images)
local pairs_result1, pairs_result2, pairs_result3_2 = pairs(module.Images)
for i in pairs_result1, pairs_result2, pairs_result3_2 do
	module.Images[i] = table.concat({"rbxasset://textures/ui/Shell/", module.Images[i]})
end
pairs_result1 = pairs(module.Sounds)
for i_2 in pairs(module.Sounds) do
	module.Sounds[i_2] = table.concat({"rbxasset://sounds/ui/Shell/", module.Sounds[i_2]})
end
return module