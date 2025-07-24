-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:39:27
-- Luau version 6, Types version 3
-- Time taken: 0.006736 seconds

local ProfileQRCode = script:FindFirstAncestor("ProfileQRCode")
local Parent = ProfileQRCode.Parent
local QRCodeDisplay_upvr = require(Parent.QRCodeDisplay)
local UIBlox = require(Parent.UIBlox)
local useLocalUserId_upvr = require(Parent.RobloxAppHooks).useLocalUserId
local useLocalUserInfo_upvr = require(ProfileQRCode.Utils.useLocalUserInfo)
local useStyle_upvr = UIBlox.Core.Style.useStyle
local getStandardSizeAvatarHeadShotRbxthumb_upvr = require(Parent.UserLib).Utils.getStandardSizeAvatarHeadShotRbxthumb
local React_upvr = require(Parent.React)
local LightTheme_upvr = UIBlox.App.Style.Themes.LightTheme
local DisplayQRCode_upvr = QRCodeDisplay_upvr.DisplayQRCode
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local component_assets_dropshadow_56_8_upvr = UIBlox.App.ImageSet.Images["component_assets/dropshadow_56_8"]
local StyledTextLabel_upvr = UIBlox.App.Text.StyledTextLabel
local GetFFlagLuaAppEnableOpenTypeSupport_upvr = require(Parent.SharedFlags).GetFFlagLuaAppEnableOpenTypeSupport
local OpenTypeSupport_upvr = UIBlox.Utility.OpenTypeSupport
return function(arg1) -- Line 38
	--[[ Upvalues[13]:
		[1]: useLocalUserId_upvr (readonly)
		[2]: useLocalUserInfo_upvr (readonly)
		[3]: useStyle_upvr (readonly)
		[4]: getStandardSizeAvatarHeadShotRbxthumb_upvr (readonly)
		[5]: React_upvr (readonly)
		[6]: LightTheme_upvr (readonly)
		[7]: DisplayQRCode_upvr (readonly)
		[8]: QRCodeDisplay_upvr (readonly)
		[9]: ImageSetLabel_upvr (readonly)
		[10]: component_assets_dropshadow_56_8_upvr (readonly)
		[11]: StyledTextLabel_upvr (readonly)
		[12]: GetFFlagLuaAppEnableOpenTypeSupport_upvr (readonly)
		[13]: OpenTypeSupport_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 23 start (CF ANALYSIS FAILED)
	local useLocalUserId_upvr_result1 = useLocalUserId_upvr()
	local var7_result1 = useLocalUserInfo_upvr(useLocalUserId_upvr_result1)
	local useStyle_upvr_result1 = useStyle_upvr()
	local var21
	if useLocalUserId_upvr_result1 then
	end
	local module = {
		Layout = React_upvr.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical;
			HorizontalAlignment = Enum.HorizontalAlignment.Center;
			VerticalAlignment = Enum.VerticalAlignment.Center;
			SortOrder = Enum.SortOrder.LayoutOrder;
		});
	}
	local tbl_7 = {}
	if arg1.isSmallScreen then
		var21 = arg1.padding / 2
	else
		var21 = arg1.padding
	end
	tbl_7.PaddingTop = UDim.new(0, var21)
	var21 = arg1.padding
	tbl_7.PaddingRight = UDim.new(0, var21)
	if arg1.isSmallScreen then
		var21 = arg1.padding / 2
		-- KONSTANTWARNING: GOTO [109] #77
	end
	-- KONSTANTERROR: [0] 1. Error Block 23 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [107] 76. Error Block 25 start (CF ANALYSIS FAILED)
	var21 = arg1.padding
	tbl_7.PaddingBottom = UDim.new(0, var21)
	var21 = arg1.padding
	tbl_7.PaddingLeft = UDim.new(0, var21)
	module.Padding = React_upvr.createElement("UIPadding", tbl_7)
	local tbl = {
		BackgroundTransparency = 1;
	}
	var21 = arg1.qrCodeLength
	tbl.Size = UDim2.new(0, var21, 0, arg1.qrCodeLength)
	tbl.LayoutOrder = 1
	local tbl_2 = {}
	var21 = React_upvr
	var21 = DisplayQRCode_upvr
	tbl_2.QRCode = var21.createElement(var21, {
		toEncode = arg1.url;
		ecLevel = QRCodeDisplay_upvr.ECLevels.EC_LEVEL_4;
		sideLength = arg1.qrCodeLength;
		pixelColor = LightTheme_upvr.UIEmphasis.Color;
		qrCodeRotation = 15;
	})
	var21 = React_upvr
	var21 = "Frame"
	tbl_2.PlayerAvatar = var21.createElement(var21, {
		AnchorPoint = Vector2.new(0.5, 0.5);
		BackgroundColor3 = LightTheme_upvr.BackgroundUIDefault.Color;
		BackgroundTransparency = LightTheme_upvr.BackgroundUIDefault.Transparency;
		Position = UDim2.fromScale(0.5, 0.5);
		Rotation = 15;
		Size = UDim2.fromOffset(44, 44);
		ZIndex = 3;
	}, {
		Canvas = React_upvr.createElement("CanvasGroup", {
			BackgroundColor3 = LightTheme_upvr.BackgroundUIDefault.Color;
			BackgroundTransparency = LightTheme_upvr.BackgroundUIDefault.Transparency;
			BorderSizePixel = 0;
			ClipsDescendants = true;
			Size = UDim2.fromScale(1, 1);
		}, {
			Avatar = React_upvr.createElement("ImageLabel", {
				AnchorPoint = Vector2.new(0.5, 0.5);
				BackgroundColor3 = LightTheme_upvr.BackgroundUIDefault.Color;
				BackgroundTransparency = LightTheme_upvr.BackgroundUIDefault.Transparency;
				BorderSizePixel = 0;
				Image = getStandardSizeAvatarHeadShotRbxthumb_upvr(useLocalUserId_upvr_result1);
				Position = UDim2.fromScale(0.5, 0.5);
				Rotation = -15;
				Size = UDim2.fromOffset(60, 60);
				ZIndex = 2;
			});
		});
		UIStroke = React_upvr.createElement("UIStroke", {
			Color = LightTheme_upvr.BackgroundUIDefault.Color;
			Thickness = 2;
		});
	})
	var21 = React_upvr
	var21 = ImageSetLabel_upvr
	tbl_2.BigShadow = var21.createElement(var21, {
		AnchorPoint = Vector2.new(0.5, 0.5);
		Position = UDim2.new(0.5, 0, 0.5, 0);
		Size = UDim2.new(0, 70, 0, 70);
		BackgroundTransparency = 1;
		BorderSizePixel = 0;
		ZIndex = 2;
		Image = component_assets_dropshadow_56_8_upvr;
		ScaleType = Enum.ScaleType.Slice;
		SliceCenter = Rect.new(28, 28, 29, 29);
		ImageColor3 = useStyle_upvr_result1.Theme.DropShadow.Color;
		ImageTransparency = useStyle_upvr_result1.Theme.DropShadow.Transparency;
	})
	module.QRCodeWrapper = React_upvr.createElement("Frame", tbl, tbl_2)
	local tbl_4 = {
		BorderSizePixel = 0;
		BackgroundTransparency = 1;
	}
	var21 = 0
	tbl_4.Size = UDim2.new(0, var21, 0, 10)
	tbl_4.LayoutOrder = 2
	module.Spacer1 = React_upvr.createElement("Frame", tbl_4)
	local tbl_3 = {
		layoutOrder = 3;
		text = var7_result1.displayName;
		fontStyle = useStyle_upvr_result1.Font.SubHeader1;
		lineHeight = 1;
		colorStyle = LightTheme_upvr.TextEmphasis;
		automaticSize = Enum.AutomaticSize.Y;
		textTruncate = Enum.TextTruncate.AtEnd;
		textXAlignment = Enum.TextXAlignment.Center;
		textYAlignment = Enum.TextYAlignment.Center;
		fluidSizing = false;
		richText = false;
	}
	var21 = 0
	tbl_3.size = UDim2.new(1, var21, 0, 0)
	module.DisplayName = React_upvr.createElement(StyledTextLabel_upvr, tbl_3)
	local tbl_6 = {}
	var21 = 0
	tbl_6.size = UDim2.new(1, var21, 0, 0)
	tbl_6.layoutOrder = 4
	var21 = var7_result1.username
	tbl_6.text = '@'..var21
	tbl_6.fontStyle = useStyle_upvr_result1.Font.CaptionBody
	tbl_6.lineHeight = 1
	tbl_6.automaticSize = Enum.AutomaticSize.Y
	tbl_6.colorStyle = LightTheme_upvr.TextEmphasis
	tbl_6.textTruncate = Enum.TextTruncate.AtEnd
	tbl_6.textXAlignment = Enum.TextXAlignment.Center
	tbl_6.textYAlignment = Enum.TextYAlignment.Center
	tbl_6.fluidSizing = false
	tbl_6.richText = false
	if GetFFlagLuaAppEnableOpenTypeSupport_upvr() then
	else
	end
	tbl_6.openTypeFeatures = nil
	module.Username = React_upvr.createElement(StyledTextLabel_upvr, tbl_6)
	local tbl_5 = {}
	var21 = 0
	tbl_5.CornerRadius = UDim.new(0.05, var21)
	module.UICorner = React_upvr.createElement("UICorner", tbl_5)
	do
		return React_upvr.createElement("Frame", {
			BorderSizePixel = 0;
			BackgroundTransparency = LightTheme_upvr.BackgroundUIDefault.Transparency;
			BackgroundColor3 = LightTheme_upvr.BackgroundUIDefault.Color;
			Size = UDim2.new(1, 0, 1, 0);
		}, module)
	end
	-- KONSTANTERROR: [107] 76. Error Block 25 end (CF ANALYSIS FAILED)
end