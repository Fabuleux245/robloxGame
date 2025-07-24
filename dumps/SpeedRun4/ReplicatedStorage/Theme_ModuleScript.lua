-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:05:44
-- Luau version 6, Types version 3
-- Time taken: 0.016056 seconds

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local module = require(ReplicatedStorage:WaitForChild("CommonData"))
local module_4_upvr = require(ReplicatedStorage:WaitForChild("Settings"))
local Modules = ReplicatedStorage:WaitForChild("Modules")
local module_5 = require(Modules:WaitForChild("Signal"))
local var6 = 1 / module_4_upvr.UIMaxEmSize
local module_3_upvr = {
	Black = Color3.new(0, 0, 0);
	Gray50 = Color3.new(0.5, 0.5, 0.5);
	Gray70 = Color3.new(0.7, 0.7, 0.7);
	Gray80 = Color3.new(0.8, 0.8, 0.8);
	Gray90 = Color3.new(0.9, 0.9, 0.9);
	White = Color3.new(1, 1, 1);
	AccentColor1 = Color3.fromRGB(255, 255, 255);
	AccentColor2 = Color3.fromRGB(204, 204, 204);
	ArrowColor1 = Color3.fromRGB(255, 0, 0);
	ArrowColor2 = Color3.fromRGB(192, 0, 0);
	BackgroundColor1 = Color3.fromRGB(0, 0, 0);
	BackgroundColor2 = Color3.fromRGB(60, 60, 60);
	ButtonColor1 = Color3.fromRGB(0, 0, 0);
	ButtonColor2 = Color3.fromRGB(255, 255, 255);
	ButtonColor3 = Color3.fromRGB(153, 153, 153);
	ButtonHotColor1 = Color3.fromRGB(45, 45, 45);
	ButtonHotColor2 = Color3.fromRGB(192, 192, 192);
	ButtonHotColor3 = Color3.fromRGB(192, 192, 192);
	ButtonSelectColor1 = Color3.fromRGB(90, 90, 90);
	ButtonSelectColor2 = Color3.fromRGB(128, 128, 128);
	ButtonSelectColor3 = Color3.fromRGB(255, 255, 255);
	ButtonStrokeColor1 = Color3.fromRGB(0, 0, 0);
	ButtonStrokeHotColor1 = Color3.fromRGB(255, 255, 255);
	CharacterHoverColor = Color3.fromRGB(0, 213, 255);
	CharacterHoverGrabColor = Color3.fromRGB(65, 211, 102);
	CharacterProximityColor = Color3.fromRGB(255, 255, 255);
	ChoiceAvailableButtonColor = Color3.fromRGB(0, 131, 196);
	ChoiceActiveButtonColor = Color3.fromRGB(20, 196, 0);
	ChoiceUnavailableButtonColor = Color3.fromRGB(102, 102, 102);
	CheckmarkColor1 = Color3.fromRGB(22, 196, 12);
	CheckmarkColor2 = Color3.fromRGB(127, 207, 142);
	DropShadowColor = Color3.fromRGB(45, 45, 45);
	EnergyColor1 = Color3.fromRGB(55, 185, 255);
	EnergyInnerRingBaseColor = Color3.fromRGB(0, 145, 255);
	EnergyInnerRingIntenseColor = Color3.fromRGB(183, 233, 255);
	EnergyOuterRingBaseColor = Color3.fromRGB(0, 88, 156);
	EnergyOuterRingIntenseColor = Color3.fromRGB(0, 149, 195);
	GateLockChainColor = Color3.fromRGB(160, 160, 160);
	GateLockChainOutlineColor = Color3.fromRGB(96, 96, 96);
	GateLockLockColor = Color3.fromRGB(192, 192, 192);
	GateLockLockOutlineColor = Color3.fromRGB(128, 128, 128);
	HealthEmptyColor = Color3.fromRGB(173, 0, 0);
	HealthFillColor = Color3.fromRGB(0, 200, 0);
	HotbarButtonColor = Color3.fromRGB(17, 17, 17);
	LeaderboardTileColor = Color3.fromRGB(90, 90, 90);
	LoadingScreenColor = Color3.fromRGB(50, 50, 50);
	RadioButtonDisabledColor1 = Color3.fromRGB(72, 72, 72);
	RadioButtonEnabledColor1 = Color3.fromRGB(255, 255, 255);
	RadioButtonSelectColor1 = Color3.fromRGB(0, 178, 255);
	SellerNPCRingColor = Color3.fromRGB(175, 175, 175);
	TextColor1 = Color3.fromRGB(255, 255, 255);
	TextColor2 = Color3.fromRGB(0, 0, 0);
	TextColor3 = Color3.fromRGB(204, 204, 204);
	TextColor4 = Color3.fromRGB(128, 128, 128);
	TextErrorColor1 = Color3.fromRGB(255, 0, 0);
	TextHighlightColor1 = Color3.fromRGB(255, 234, 0);
	TextHighlightColor2 = Color3.fromRGB(0, 255, 85);
	TextLeaderboardColor1 = Color3.fromRGB(218, 239, 27);
	TextPlaceholderColor1 = Color3.fromRGB(200, 200, 200);
	TextSelectColor1 = Color3.fromRGB(127, 212, 255);
	TextStrokeColor1 = Color3.fromRGB(0, 0, 0);
	TextStrokeColor2 = Color3.fromRGB(153, 153, 153);
	TextStrokeColor3 = Color3.fromRGB(64, 64, 64);
	TextSuccessColor1 = Color3.fromRGB(20, 196, 0);
	TextWarningColor1 = Color3.fromRGB(255, 170, 0);
	TopbarBaseColor = Color3.fromRGB(0, 0, 0);
	TopbarHighlightColor = Color3.fromRGB(255, 255, 255);
	TopbarIconColor = Color3.fromRGB(255, 255, 255);
	VIPChatTagColor = Color3.fromRGB(255, 191, 0);
	CornerRadiusBackground = 14 * var6;
	CornerRadiusBackgroundWide = 28 * var6;
	CornerRadiusButton = 0.3;
	DisplayOrder_AlternativeDimensionUI = 8;
	DisplayOrder_BackpackUI = -200000;
	DisplayOrder_CollectionUI = 5;
	DisplayOrder_DonationsUI = 10;
	DisplayOrder_DropUnpairUI = 9;
	DisplayOrder_EventUI = 0;
	DisplayOrder_FadeOutUI = -2147483648;
	DisplayOrder_IconTextPopupUI = 101000;
	DisplayOrder_InventoryUI = 5;
	DisplayOrder_LegacyVIPUI = 10;
	DisplayOrder_LevelMenuUI = 4;
	DisplayOrder_LevelPurchaseUI = -5;
	DisplayOrder_LevelSelectUI = 6;
	DisplayOrder_LevelSkipUI = 7;
	DisplayOrder_LoadingScreenUI = 2147483646;
	DisplayOrder_NotificationsUI_Popup = 100000;
	DisplayOrder_PetHatchUI = 2147483645;
	DisplayOrder_PlayerInteractUI = 6;
	DisplayOrder_PromptUI = 2147483645;
	DisplayOrder_RecipientUI = 0;
	DisplayOrder_SaveVersionUI = 2147483647;
	DisplayOrder_SettingsUI = 1;
	DisplayOrder_ShopUI = 5;
	DisplayOrder_SidebarUI = -1;
	DisplayOrder_SpecialLevelUI = 10000;
	DisplayOrder_TopbarUI = 900;
	DisplayOrder_UIEffects = 2147483645;
	DisplayOrder_WorldUI = 5;
	TopbarCornerRadius = 22;
	TopbarEdgePadX = 16;
	TopbarIconSizeY = 24;
	TopbarOverlaySizeY = 36;
	TopbarPadX = 12;
	TopbarSizeY = 44;
	DeselectThickness = 1;
	SelectThickness = 2;
	ScaledSizeButtonFancyBorder = 0.12222222222222222;
	ScaledSizeButtonFancyTextStroke = 0.1111111111111111;
	ScaledSizeButtonFancyTextStrokeMinimal = 0.06;
	ScaledSizeStrokeMedium = 5.25 * var6;
	ScaledSizeStrokeThin = 3.5 * var6;
	ScaledSizeStrokeVeryThin = 2.625 * var6;
	ScaledSizeStrokeUltraThin = 1.75 * var6;
	SteppedSizeButtonFancyText = 1.2;
	SteppedSizeButtonFancyX = 6;
	SteppedSizeButtonFancyY = 2;
	SteppedSizeCloseButtonX = 2.7;
	SteppedSizeCloseButtonY = 1.8;
	SteppedSizeScrollBar = 0.5;
	SteppedSizeScrollBarThin = 0.25;
	SteppedSizeTimerThin = 0.2;
	BackgroundGradientTransparencyStart = 0.1;
	BackgroundGradientTransparencyEnd = 0.75;
	BackgroundTransparency1 = 0.2;
	BackgroundTransparency2 = 0.4;
	ButtonTransparency1 = 0.4;
	ButtonTransparency2 = 0.7;
	DropShadowTransparency = 0.25;
	GateLockLockTransparency = 0.75;
	GateLockOutlineTransparency = 0;
	HotbarButtonTransparency = 0.51;
	ScrollBarTransparency1 = 0.5;
	TextDeemphasizedTransparency1 = 0.75;
	TextDeemphasizedTransparency2 = 0.25;
	TextStrokeButtonFancyTransparency = 0.1;
	TextStrokeButtonFancyMinimalTransparency = 0.5;
	TopbarBaseTransparency = 0.3;
	TopbarHighlightTransparency = 0.9;
	FontNormal = Enum.Font.FredokaOne;
	Arrow_DownRight_512x256 = "rbxassetid://121189303420216";
	Arrow_UpRight_512x256 = "rbxassetid://76914474955299";
	Blocked_256 = "rbxassetid://17798703562";
	Blocked_Outline_256_16 = "rbxassetid://17798703444";
	Checkbox_Empty = "rbxassetid://17428402472";
	Checkbox_Filled = "rbxassetid://17428391791";
	Checkbox_Filled_Blurred = "rbxassetid://17477978747";
	Checkbox_Filled_Blurred_Glow = "rbxassetid://18524693508";
	Checkmark_Basic = "rbxassetid://17398012534";
	Checkmark_Basic_Outline_4 = "rbxassetid://17398044720";
	ChevronDown_256x128 = "rbxassetid://18167587527";
	CashStack1 = "rbxassetid://17857527527";
	CashStack2 = "rbxassetid://17857527381";
	CashStack3 = "rbxassetid://17857527247";
	CashStack4 = "rbxassetid://17857527053";
	CashStack5 = "rbxassetid://17857526814";
	ChevronRight_Outline_256_16 = "rbxassetid://18120574634";
	CurrencyCashImage_256 = "rbxassetid://17771948327";
	CurrencyCashImage_Outline_256_16 = "rbxassetid://17771948230";
	CurrencyGemsImage = "rbxassetid://1127669287";
	CurrencyGemsImage_Outline_512_12 = "rbxassetid://17267386846";
	CurrencyGemsImage_Outline_512_24 = "rbxassetid://17267404182";
	CurrencyMemePointsImage = "rbxassetid://45536337";
	Effect_Star4pt_1 = "rbxassetid://17860592067";
	Effect_Star4pt_2 = "rbxassetid://17861236440";
	Effect_Star4pt_3 = "rbxassetid://17861236313";
	EggImage_256 = "rbxassetid://18279819345";
	EggImage_Outline_256_16 = "rbxassetid://18279819238";
	EnergyImage_256 = "rbxassetid://17771931789";
	EnergyImage_Outline_256_16 = "rbxassetid://17771915864";
	EnergyRing_513_256 = "rbxassetid://17836787555";
	EnergyRing_Bloom_513_256 = "rbxassetid://17859379274";
	EnergyRing_Wide_513_256 = "rbxassetid://17836947712";
	GlowCircle_512x512 = "rbxassetid://16512882298";
	Gift_256 = "rbxassetid://100073600084895";
	Gift_Outline_256_16 = "rbxassetid://95248361279597";
	Gradient_Fade_Down = "rbxassetid://17887817960";
	Gradient_Fade_Left = "rbxassetid://17887817660";
	Gradient_Fade_Right = "rbxassetid://17887817299";
	Gradient_Fade_Up = "rbxassetid://17887816913";
	Inventory_256 = "rbxassetid://17798743078";
	Inventory_Legacy = "rbxassetid://1961088495";
	Inventory_Outline_256_16 = "rbxassetid://17798742764";
	Leaderboard_256 = "rbxassetid://17798760232";
	Leaderboard_Legacy = "rbxassetid://1947536447";
	Leaderboard_Outline_256_16 = "rbxassetid://17798760081";
	LockImage = "rbxassetid://16736231363";
	LockOutlineImage = "rbxassetid://16736269526";
	Luck_256 = "rbxassetid://18950509830";
	Luck_Outline_256_16 = "rbxassetid://18950509732";
	PassIcon_Cloud = "http://www.roblox.com/asset/?id=107431702";
	PassIcon_FinalDestiny = "rbxassetid://17294800799";
	PassIcon_FireEffect = "http://www.roblox.com/asset/?id=191448324";
	PassIcon_GravityCoil = "http://www.roblox.com/asset/?id=16619617";
	PassIcon_Luck2x = "rbxassetid://99127408520313";
	PassIcon_Luck3x = "rbxassetid://117707707250265";
	PassIcon_Luck4x = "rbxassetid://136985971813320";
	PassIcon_RetroLevelPack = "rbxassetid://17277154923";
	PassIcon_SparklesEffect = "rbxassetid://191448387";
	PassIcon_SpeedCoil = "http://www.roblox.com/asset/?id=99170415";
	PetImage_256 = "rbxassetid://18167549209";
	PetImage_Outline_256_16 = "rbxassetid://18167539225";
	PortalIcon_Forbidden = "rbxassetid://17081945369";
	PortalIcon_Secret = "rbxassetid://17081945180";
	SellerPrompt_900x600 = "rbxassetid://18168036732";
	SellerPrompt_Glow_900x600 = "rbxassetid://18205326385";
	Settings_256 = "rbxassetid://17798787655";
	Settings_Legacy = "rbxassetid://16266702447";
	Settings_Outline_256_16 = "rbxassetid://17798787557";
	Shop_256 = "rbxassetid://17798750198";
	Shop_Legacy = "rbxassetid://1947565072";
	Shop_Outline_256_16 = "rbxassetid://17798750086";
	ShopBubble_512 = "rbxassetid://18237018025";
	ShopBubble_Soft_512 = "rbxassetid://18248933885";
	StarsIconImage = "rbxassetid://113239990";
	StarsIconImage_Outline_12 = "rbxassetid://17002119747";
	StarsIconImage_Outline_24 = "rbxassetid://17002170549";
	TapIcon = "rbxassetid://17601915943";
	ToolsDanceToolActiveIcon = "http://www.roblox.com/asset/?id=2671908270";
	ToolsSoundToolActiveIcon = "http://www.roblox.com/asset/?id=2671908112";
	UnownedDanceImage = "rbxassetid://2671907926";
	UnownedSoundImage = "rbxassetid://2671907745";
	UpgradeImage_256 = "rbxassetid://18167552025";
	UpgradeImage_Outline_256_16 = "rbxassetid://18167551886";
	World_256 = "rbxassetid://17798771366";
	World_Legacy = "rbxassetid://1961112831";
	World_Outline_256_16 = "rbxassetid://17798771178";
	VIPChatTag = "[VIP]";
	ChainLinkTexture = "rbxassetid://16736324055";
	ChainLinkTexture_90Deg = "rbxassetid://16737289821";
	ChainLinkOutlineTexture = "rbxassetid://16736323979";
	ChainLinkOutlineTexture_90Deg = "rbxassetid://16737289692";
	Stripes_Slope2 = "rbxassetid://17206985776";
	FALLBACK_EGG_IMAGE = "rbxassetid://18279819345";
	FALLBACK_GROUP_NAME = "Blox Universe";
	FALLBACK_LEVEL_IMAGE = "rbxassetid://1853795716";
	FALLBACK_PET_IMAGE = "rbxassetid://18167549209";
	FALLBACK_PRICE_STRING = "---";
	FALLBACK_SHOP_IMAGE = "rbxassetid://1961112831";
	FALLBACK_WORLD_IMAGE = "rbxassetid://1853795716";
	RobuxUnicode = utf8.char(57346);
	FontFaceNormal = Font.fromEnum(module_3_upvr.FontNormal);
	FontFaceSemiBold = Font.fromEnum(module_3_upvr.FontNormal);
}
module_3_upvr.FontFaceSemiBold.Weight = Enum.FontWeight.SemiBold
module_3_upvr.FontFaceBold = Font.fromEnum(module_3_upvr.FontNormal)
module_3_upvr.FontFaceBold.Weight = Enum.FontWeight.Bold
module_3_upvr.FontFaceItalic = Font.fromEnum(module_3_upvr.FontNormal)
module_3_upvr.FontFaceItalic.Style = Enum.FontStyle.Italic
module_3_upvr.FontFaceBoldItalic = Font.fromEnum(module_3_upvr.FontNormal)
module_3_upvr.FontFaceBoldItalic.Weight = Enum.FontWeight.Bold
module_3_upvr.FontFaceBoldItalic.Style = Enum.FontStyle.Italic
module_3_upvr.FontFaceBlack = Font.fromEnum(module_3_upvr.FontNormal)
module_3_upvr.FontFaceBlack.Weight = Enum.FontWeight.Heavy
module_3_upvr.FontFaceBlack.Style = Enum.FontStyle.Normal
module_3_upvr.FontFaceBlackItalic = Font.fromEnum(module_3_upvr.FontNormal)
module_3_upvr.FontFaceBlackItalic.Weight = Enum.FontWeight.Heavy
module_3_upvr.FontFaceBlackItalic.Style = Enum.FontStyle.Italic
module_3_upvr.FontFaceFancy = Font.fromEnum(Enum.Font.FredokaOne)
module_3_upvr.FontFaceFancy.Weight = Enum.FontWeight.Bold
local var8 = Vector2.one * 64
module_3_upvr.Cursors = {
	Mouse_Cursor = {
		_BuiltIn = true;
		Icon = "rbxasset://textures/".."Cursors/KeyboardMouse/ArrowFarCursor.png";
		Size = var8;
	};
	Mouse_Pointer = {
		_BuiltIn = true;
		Icon = "rbxasset://textures/".."Cursors/KeyboardMouse/ArrowCursor.png";
		Size = var8;
	};
	Mouse_IBeam = {
		_BuiltIn = true;
		Icon = "rbxasset://textures/".."Cursors/KeyboardMouse/IBeamCursos.png";
		Size = var8;
	};
	Mouse_ShiftLock = {
		_BuiltIn = true;
		Icon = "rbxasset://textures/".."MouseLockedCursor.png";
		Size = Vector2.one * 32;
	};
	Gamepad_Circle = {
		_BuiltIn = true;
		Icon = "rbxasset://textures/".."Cursors/Gamepad/PointerOver.png";
		Size = Vector2.one * 24;
	};
	Gamepad_Circle2x = {
		_BuiltIn = true;
		Icon = "rbxasset://textures/".."Cursors/Gamepad/PointerOver@2x.png";
		Size = Vector2.one * 48;
	};
	Gamepad_Dot = {
		_BuiltIn = true;
		Icon = "rbxasset://textures/".."Cursors/Gamepad/Pointer.png";
		Size = Vector2.one * 14;
	};
	Gamepad_Dot2x = {
		_BuiltIn = true;
		Icon = "rbxasset://textures/".."Cursors/Gamepad/Pointer@2x.png";
		Size = Vector2.one * 28;
	};
	Gun_Ready = {
		_BuiltIn = true;
		Icon = "rbxasset://textures/".."GunCursor.png";
		Size = var8;
	};
	Gun_Reload = {
		_BuiltIn = true;
		Icon = "rbxasset://textures/".."GunWaitCursor.png";
		Size = var8;
	};
}
local module_2_upvr = require(Modules:WaitForChild("Utility"))
function module_3_upvr.ApplyCursorProfile(arg1, arg2) -- Line 401
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	local Size = arg2.Size
	module_2_upvr.PropsApply(arg1, {
		AnchorPoint = Vector2.one * 0.5;
		BackgroundTransparency = 1;
		BorderSizePixel = 0;
		Image = arg2.Icon;
		Size = UDim2.fromOffset(Size.X, Size.Y);
		ScaleType = Enum.ScaleType.Crop;
	})
end
function module_3_upvr.GenerateFancyButtonColors(arg1) -- Line 432
	local any_ToHSV_result1, any_ToHSV_result2, any_ToHSV_result3 = arg1:ToHSV()
	local clamped = math.clamp(any_ToHSV_result1, 0, 1)
	local clamped_3 = math.clamp(any_ToHSV_result2, 0, 1)
	local clamped_2 = math.clamp(any_ToHSV_result3, 0, 1)
	local var29 = 1 - clamped_3
	local var30 = 1 - clamped_2
	return {
		Color = Color3.fromHSV(clamped, clamped_3, math.clamp(math.min(clamped_2 * 0.375, clamped_2 - var30 * 0.625), 0, 1));
		Gradient = Color3.fromHSV(clamped, math.clamp(math.min(clamped_3 * 0.75, clamped_3 - var29 * 0.25), 0, 1), math.clamp(clamped_2 + var30 * 0.3333333333333333, 0, 1));
		Highlight = Color3.fromHSV(clamped, math.clamp(math.max(clamped_3 * 0.6666666666666666, clamped_3 - var29 * 0.3333333333333333), 0, 1), math.clamp(clamped_2 + var30 * 0.75, 0, 1));
		Midtone = Color3.fromHSV(clamped, clamped_3, math.clamp(math.min(clamped_2 * 0.75, clamped_2 - var30 * 0.25), 0, 1));
	}
end
module_3_upvr.FancyButtonColors = {
	Accept = {
		Color = Color3.fromRGB(11, 62, 11);
		Gradient = Color3.fromRGB(82, 254, 111);
		Highlight = Color3.fromRGB(50, 204, 73);
		Midtone = Color3.fromRGB(35, 175, 48);
	};
	Action = {
		Color = Color3.fromRGB(71, 41, 11);
		Gradient = Color3.fromRGB(254, 181, 78);
		Highlight = Color3.fromRGB(204, 115, 63);
		Midtone = Color3.fromRGB(175, 77, 28);
	};
	Attention = {
		Color = Color3.fromRGB(81, 85, 13);
		Gradient = Color3.fromRGB(255, 241, 83);
		Highlight = Color3.fromRGB(246, 255, 0);
		Midtone = Color3.fromRGB(213, 195, 32);
	};
	BuyCash = {
		Color = Color3.fromRGB(11, 62, 11);
		Gradient = Color3.fromRGB(82, 254, 111);
		Highlight = Color3.fromRGB(50, 204, 73);
		Midtone = Color3.fromRGB(35, 175, 48);
	};
	BuyGems = {
		Color = Color3.fromRGB(67, 4, 5);
		Gradient = Color3.fromRGB(238, 56, 89);
		Highlight = Color3.fromRGB(209, 39, 64);
		Midtone = Color3.fromRGB(150, 46, 55);
	};
	BuyGold = {
		Color = Color3.fromRGB(85, 67, 13);
		Gradient = Color3.fromRGB(255, 224, 129);
		Highlight = Color3.fromRGB(253, 194, 17);
		Midtone = Color3.fromRGB(168, 132, 26);
	};
	BuyRobux = {
		Color = Color3.fromRGB(85, 67, 13);
		Gradient = Color3.fromRGB(255, 224, 129);
		Highlight = Color3.fromRGB(253, 194, 17);
		Midtone = Color3.fromRGB(168, 132, 26);
	};
	BuyStars = {
		Color = Color3.fromRGB(51, 44, 21);
		Gradient = Color3.fromRGB(200, 172, 90);
		Highlight = Color3.fromRGB(178, 154, 78);
		Midtone = Color3.fromRGB(125, 107, 55);
	};
	Cancel = {
		Color = Color3.fromRGB(67, 4, 4);
		Gradient = Color3.fromRGB(238, 56, 56);
		Highlight = Color3.fromRGB(209, 42, 39);
		Midtone = Color3.fromRGB(150, 51, 46);
	};
	Close = {
		Color = Color3.fromRGB(88, 0, 0);
		Gradient = Color3.fromRGB(255, 67, 67);
		Highlight = Color3.fromRGB(177, 0, 0);
		Midtone = Color3.fromRGB(141, 0, 0);
	};
	Deactivated = {
		Color = Color3.fromRGB(40, 40, 40);
		Gradient = Color3.fromRGB(80, 80, 80);
		Highlight = Color3.fromRGB(70, 70, 70);
		Midtone = Color3.fromRGB(60, 60, 60);
	};
	Dull = {
		Color = Color3.fromRGB(58, 58, 58);
		Gradient = Color3.fromRGB(200, 200, 200);
		Highlight = Color3.fromRGB(144, 144, 144);
		Midtone = Color3.fromRGB(118, 118, 118);
	};
	Light = {
		Color = Color3.fromRGB(122, 122, 122);
		Gradient = Color3.fromRGB(255, 255, 255);
		Highlight = Color3.fromRGB(220, 220, 220);
		Midtone = Color3.fromRGB(172, 172, 172);
	};
	Manage = {
		Color = Color3.fromRGB(57, 0, 97);
		Gradient = Color3.fromRGB(204, 0, 255);
		Highlight = Color3.fromRGB(147, 0, 196);
		Midtone = Color3.fromRGB(105, 0, 157);
	};
	Success = {
		Color = Color3.fromRGB(11, 62, 11);
		Gradient = Color3.fromRGB(82, 254, 111);
		Highlight = Color3.fromRGB(50, 204, 73);
		Midtone = Color3.fromRGB(35, 175, 48);
	};
	Upgrade = {
		Color = Color3.fromRGB(11, 62, 11);
		Gradient = Color3.fromRGB(82, 254, 82);
		Highlight = Color3.fromRGB(62, 204, 50);
		Midtone = Color3.fromRGB(58, 175, 35);
	};
	Use = {
		Color = Color3.fromRGB(0, 65, 97);
		Gradient = Color3.fromRGB(1, 221, 255);
		Highlight = Color3.fromRGB(0, 131, 196);
		Midtone = Color3.fromRGB(0, 94, 157);
	};
}
module_3_upvr.GroupNamePending = module_5.new(module_5.Mode.Spawned)
local var50_upvw
task.spawn(function() -- Line 596
	--[[ Upvalues[3]:
		[1]: module_4_upvr (readonly)
		[2]: var50_upvw (read and write)
		[3]: module_3_upvr (readonly)
	]]
	local GroupService = game:GetService("GroupService")
	repeat
		local pcall_result1, pcall_result2 = pcall(GroupService.GetGroupInfoAsync, GroupService, module_4_upvr.GroupGroupId)
		if pcall_result1 then
			var50_upvw = pcall_result2.Name
		else
			task.wait(module_4_upvr.GroupQueryRetryPeriod)
		end
	until var50_upvw
	local tbl = {utf8.codepoint(var50_upvw, 1, -1)}
	for i, v in tbl do
		local var59 = ({-- : First try: K:0: attempt to index nil with 't'
)[v]
		if var59 then
			tbl[i] = var59
		end
	end
	var50_upvw = utf8.char(table.unpack(tbl))
	local assert_result1 = assert(module_3_upvr.GroupNamePending)
	module_3_upvr.GroupNamePending = nil
	assert_result1:Fire()
	assert_result1:DisconnectAll()
end)
function module_3_upvr.GroupNameGet() -- Line 639
	--[[ Upvalues[2]:
		[1]: var50_upvw (read and write)
		[2]: module_3_upvr (readonly)
	]]
	local var61 = var50_upvw
	if not var61 then
		var61 = module_3_upvr.FALLBACK_GROUP_NAME
	end
	return var61
end
function module_3_upvr.ScrapeImageId(arg1) -- Line 649
	return tonumber(string.match(arg1, "%d+$"))
end
module_3_upvr.ImageMapType = table.freeze({
	Currency_ByCurrencyType = 1;
	Unowned_ByItemType = 2;
	Arrow_ByDirection = 3;
})
module_3_upvr.ImageMapStyle = table.freeze({
	Standard = 1;
	OutlineThin = 2;
	OutlineHeavy = 3;
})
module_3_upvr.Direction = table.freeze({
	Down = 1;
	Left = 2;
	Right = 3;
	Up = 4;
})
local tbl_upvr = {
	[module_3_upvr.ImageMapType.Currency_ByCurrencyType] = {
		[module_3_upvr.ImageMapStyle.Standard] = {
			[module.CurrencyType.Cash] = module_3_upvr.CurrencyCashImage_256;
			[module.CurrencyType.Gems] = module_3_upvr.CurrencyGemsImage;
			[module.CurrencyType.MemePoints] = module_3_upvr.CurrencyMemePointsImage;
		};
		[module_3_upvr.ImageMapStyle.OutlineThin] = {
			[module.CurrencyType.Cash] = module_3_upvr.ImageMapStyle.OutlineHeavy;
			[module.CurrencyType.Gems] = module_3_upvr.CurrencyGemsImage_Outline_512_12;
			[module.CurrencyType.MemePoints] = module_3_upvr.ImageMapStyle.Standard;
		};
		[module_3_upvr.ImageMapStyle.OutlineHeavy] = {
			[module.CurrencyType.Cash] = module_3_upvr.CurrencyCashImage_Outline_256_16;
			[module.CurrencyType.Gems] = module_3_upvr.CurrencyGemsImage_Outline_512_24;
			[module.CurrencyType.MemePoints] = module_3_upvr.ImageMapStyle.Standard;
		};
	};
	[module_3_upvr.ImageMapType.Unowned_ByItemType] = {
		[module_3_upvr.ImageMapStyle.Standard] = {
			[module.ItemType.Dance] = module_3_upvr.UnownedDanceImage;
			[module.ItemType.Sound] = module_3_upvr.UnownedSoundImage;
		};
		[module_3_upvr.ImageMapStyle.OutlineThin] = {
			[module.ItemType.Dance] = module_3_upvr.ImageMapStyle.Standard;
			[module.ItemType.Sound] = module_3_upvr.ImageMapStyle.Standard;
		};
		[module_3_upvr.ImageMapStyle.OutlineHeavy] = {
			[module.ItemType.Dance] = module_3_upvr.ImageMapStyle.Standard;
			[module.ItemType.Sound] = module_3_upvr.ImageMapStyle.Standard;
		};
	};
	[module_3_upvr.ImageMapType.Arrow_ByDirection] = {
		[module_3_upvr.ImageMapStyle.Standard] = {
			[module_3_upvr.Direction.Down] = "rbxassetid://17798689112";
			[module_3_upvr.Direction.Left] = "rbxassetid://17798678625";
			[module_3_upvr.Direction.Right] = "rbxassetid://17798680445";
			[module_3_upvr.Direction.Up] = "rbxassetid://17798685269";
		};
		[module_3_upvr.ImageMapStyle.OutlineThin] = {
			[module_3_upvr.Direction.Down] = module_3_upvr.ImageMapStyle.OutlineHeavy;
			[module_3_upvr.Direction.Left] = module_3_upvr.ImageMapStyle.OutlineHeavy;
			[module_3_upvr.Direction.Right] = module_3_upvr.ImageMapStyle.OutlineHeavy;
			[module_3_upvr.Direction.Up] = module_3_upvr.ImageMapStyle.OutlineHeavy;
		};
		[module_3_upvr.ImageMapStyle.OutlineHeavy] = {
			[module_3_upvr.Direction.Down] = "rbxassetid://17798688995";
			[module_3_upvr.Direction.Left] = "rbxassetid://17798631612";
			[module_3_upvr.Direction.Right] = "rbxassetid://17798629042";
			[module_3_upvr.Direction.Up] = "rbxassetid://17798685120";
		};
	};
}
function module_3_upvr.GetImageFromMap(arg1, arg2, arg3) -- Line 731
	--[[ Upvalues[2]:
		[1]: tbl_upvr (readonly)
		[2]: module_3_upvr (readonly)
	]]
	local var78 = tbl_upvr[arg1]
	local var79
	if not var78 then
		var79 = string.format("Invalid ImageMapType '%*'", arg1)
		error(var79, 2)
	end
	var79 = arg3
	if not var79 then
		var79 = module_3_upvr.ImageMapStyle.Standard
	end
	local var80 = var78[var79]
	if not var80 then
		error(string.format("Invalid ImageMapStyle '%*' for map", arg3), 2)
	end
	if not var80[arg2] then
		error(string.format("Invalid key '%*' for map", arg2), 2)
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		return var80[arg2]
	end
	while true do
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if type(var80[arg2]) ~= "number" then break end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	end
	return var78[var80[arg2]][arg2]
end
module_3_upvr.FrontEndNames = {
	Counter_ByCounterType = {
		[module.CounterType.ForbiddenLevels] = {
			Singular = {
				Lower = "forbidden level";
				Proper = "Forbidden Level";
				Upper = "FORBIDDEN LEVEL";
			};
			Plural = {
				Lower = "forbidden levels";
				Proper = "Forbidden Levels";
				Upper = "FORBIDDEN LEVELS";
			};
		};
		[module.CounterType.SecretLevels] = {
			Singular = {
				Lower = "secret level";
				Proper = "Secret Level";
				Upper = "SECRET LEVEL";
			};
			Plural = {
				Lower = "secret levels";
				Proper = "Secret Levels";
				Upper = "SECRET LEVELS";
			};
		};
	};
	Currency_ByCurrencyType = {
		[module.CurrencyType.Cash] = {
			Singular = {
				Lower = "cash";
				Proper = "Cash";
				Upper = "CASH";
			};
			Plural = {
				Lower = "cash";
				Proper = "Cash";
				Upper = "CASH";
			};
		};
		[module.CurrencyType.Gems] = {
			Singular = {
				Lower = "gem";
				Proper = "Gem";
				Upper = "GEM";
			};
			Plural = {
				Lower = "gems";
				Proper = "Gems";
				Upper = "GEMS";
			};
		};
		[module.CurrencyType.MemePoints] = {
			Singular = {
				Lower = "meme point";
				Proper = "Meme Point";
				Upper = "MEME POINT";
			};
			Plural = {
				Lower = "meme points";
				Proper = "Meme Points";
				Upper = "MEME POINTS";
			};
		};
	};
	Items_ByItemType = {
		[module.ItemType.Dance] = {
			Singular = {
				Lower = "dance";
				Proper = "Dance";
				Upper = "DANCE";
			};
			Plural = {
				Lower = "dances";
				Proper = "Dances";
				Upper = "DANCES";
			};
		};
		[module.ItemType.Dimension] = {
			Singular = {
				Lower = "dimension";
				Proper = "Dimension";
				Upper = "DIMENSION";
			};
			Plural = {
				Lower = "dimensions";
				Proper = "Dimensions";
				Upper = "DIMENSIONS";
			};
		};
		[module.ItemType.Egg] = {
			Singular = {
				Lower = "egg";
				Proper = "Egg";
				Upper = "EGG";
			};
			Plural = {
				Lower = "eggs";
				Proper = "Eggs";
				Upper = "EGGS";
			};
		};
		[module.ItemType.Level] = {
			Singular = {
				Lower = "level";
				Proper = "Level";
				Upper = "LEVEL";
			};
			Plural = {
				Lower = "levels";
				Proper = "Levels";
				Upper = "LEVELS";
			};
		};
		[module.ItemType.Pet] = {
			Singular = {
				Lower = "pet";
				Proper = "Pet";
				Upper = "PET";
			};
			Plural = {
				Lower = "pets";
				Proper = "Pets";
				Upper = "PETS";
			};
		};
		[module.ItemType.Sound] = {
			Singular = {
				Lower = "sound";
				Proper = "Sound";
				Upper = "SOUND";
			};
			Plural = {
				Lower = "sounds";
				Proper = "Sounds";
				Upper = "SOUNDS";
			};
		};
		[module.ItemType.Trail] = {
			Singular = {
				Lower = "trail";
				Proper = "Trail";
				Upper = "TRAIL";
			};
			Plural = {
				Lower = "trails";
				Proper = "Trails";
				Upper = "TRAILS";
			};
		};
		[module.ItemType.World] = {
			Singular = {
				Lower = "world";
				Proper = "World";
				Upper = "WORLD";
			};
			Plural = {
				Lower = "worlds";
				Proper = "Worlds";
				Upper = "WORLDS";
			};
		};
	};
}
local tbl_upvr_2 = {
	[module.CurrencyType.Cash] = {
		Symbol = '$';
		Prepends = true;
	};
}
function module_3_upvr.CurrencySymbolApply(arg1, arg2) -- Line 950
	--[[ Upvalues[1]:
		[1]: tbl_upvr_2 (readonly)
	]]
	local var126 = tbl_upvr_2[arg2]
	local var127
	if var126 then
		if var126.Prepends then
			var127 = var126.Symbol..var127
			return var127
		end
		var127 = var127..var126.Symbol
	end
	return var127
end
tbl_upvr_2 = {}
local var128 = tbl_upvr_2
var128.Round = {
	BottomImage = "rbxassetid://16430730523";
	MidImage = "rbxassetid://16430730224";
	TopImage = "rbxassetid://16430729864";
	ScrollBarImageTransparency = module_3_upvr.ScrollBarTransparency1;
}
var128.RoundHalf = {
	BottomImage = "rbxassetid://16430730698";
	MidImage = "rbxassetid://16430730224";
	TopImage = "rbxassetid://16430730039";
	ScrollBarImageTransparency = module_3_upvr.ScrollBarTransparency1;
}
var128.RoundThreeQuarter = {
	BottomImage = "rbxassetid://16431024351";
	MidImage = "rbxassetid://16430730224";
	TopImage = "rbxassetid://16431024226";
	ScrollBarImageTransparency = module_3_upvr.ScrollBarTransparency1;
}
var128.RoundThreeQuarterFull = {
	BottomImage = "rbxassetid://17276122233";
	MidImage = "rbxassetid://16430730224";
	TopImage = "rbxassetid://17276122090";
	ScrollBarImageTransparency = module_3_upvr.ScrollBarTransparency1;
}
var128.Sharp = {
	BottomImage = "rbxassetid://16430730380";
	MidImage = "rbxassetid://16430730224";
	TopImage = "rbxassetid://16430729713";
	ScrollBarImageTransparency = module_3_upvr.ScrollBarTransparency1;
}
module_3_upvr.ScrollBarStyles = var128
var128 = nil
module_3_upvr.TopbarStylePending = var128
return module_3_upvr