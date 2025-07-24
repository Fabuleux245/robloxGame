-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:17:14
-- Luau version 6, Types version 3
-- Time taken: 0.004796 seconds

local AmpUpsell = script:FindFirstAncestor("AmpUpsell")
local Parent = AmpUpsell.Parent
local UIBlox = require(Parent.UIBlox)
local QRCodeDisplay = require(Parent.QRCodeDisplay)
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local idvWithQRCodeUpsellStrings_upvr = require(AmpUpsell.Common.LocalizationStrings).idvWithQRCodeUpsellStrings
local useStyle_upvr = UIBlox.Core.Style.useStyle
local AnalyticsService_upvr = require(AmpUpsell.Analytics.AnalyticsService)
local useSelector_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useSelector
local React_upvr = require(Parent.React)
local PartialPageModal_upvr = UIBlox.App.Dialog.Modal.PartialPageModal
local sendButtonClickEvent_upvr = require(AmpUpsell.Analytics.sendButtonClickEvent)
local AppScreens_upvr = require(AmpUpsell.Common.AppScreens)
local StyledTextLabel_upvr = UIBlox.App.Text.StyledTextLabel
local DirectionsTile_upvr = require(script.Parent.DirectionsTile)
local ProgressChecklist_upvr = require(script.Parent.ProgressChecklist)
local DisplayQRCode_upvr = QRCodeDisplay.DisplayQRCode
local ECLevels_upvr = QRCodeDisplay.ECLevels
local LoadingSpinner_upvr = UIBlox.App.Loading.LoadingSpinner
local LinkButton_upvr = UIBlox.App.Button.LinkButton
return function(arg1) -- Line 39, Named "IDVWithQRCodeUpsell"
	--[[ Upvalues[16]:
		[1]: useLocalization_upvr (readonly)
		[2]: idvWithQRCodeUpsellStrings_upvr (readonly)
		[3]: useStyle_upvr (readonly)
		[4]: AnalyticsService_upvr (readonly)
		[5]: useSelector_upvr (readonly)
		[6]: React_upvr (readonly)
		[7]: PartialPageModal_upvr (readonly)
		[8]: sendButtonClickEvent_upvr (readonly)
		[9]: AppScreens_upvr (readonly)
		[10]: StyledTextLabel_upvr (readonly)
		[11]: DirectionsTile_upvr (readonly)
		[12]: ProgressChecklist_upvr (readonly)
		[13]: DisplayQRCode_upvr (readonly)
		[14]: ECLevels_upvr (readonly)
		[15]: LoadingSpinner_upvr (readonly)
		[16]: LinkButton_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 68 start (CF ANALYSIS FAILED)
	local useLocalization_upvr_result1 = useLocalization_upvr(idvWithQRCodeUpsellStrings_upvr)
	local var7_result1 = useStyle_upvr()
	local RelativeSize_upvr = var7_result1.Font.CaptionBody.RelativeSize
	if arg1.analyticsService then
		RelativeSize_upvr = arg1.analyticsService
	else
		RelativeSize_upvr = AnalyticsService_upvr.EventStream
	end
	local var24 = 153
	if 0 >= arg1.latestStepCompleted then
		var24 = false
	else
		var24 = true
	end
	local tbl_2 = {
		title = useLocalization_upvr_result1.title;
		screenSize = useSelector_upvr(function(arg1_2) -- Line 54
			return arg1_2.ScreenSize
		end);
	}
	local featureName_upvr = arg1.featureName
	local onClose_upvr = arg1.onClose
	function tbl_2.onCloseClicked() -- Line 61
		--[[ Upvalues[5]:
			[1]: sendButtonClickEvent_upvr (copied, readonly)
			[2]: RelativeSize_upvr (readonly)
			[3]: AppScreens_upvr (copied, readonly)
			[4]: featureName_upvr (readonly)
			[5]: onClose_upvr (readonly)
		]]
		sendButtonClickEvent_upvr(RelativeSize_upvr, AppScreens_upvr.IDVWithQRCodeUpsell, featureName_upvr, "CloseModal")
		onClose_upvr()
	end
	tbl_2.bottomPadding = 0
	local _ = {
		AutomaticSize = Enum.AutomaticSize.XY;
		BackgroundTransparency = 1;
	}
	local tbl = {}
	if var24 then
		-- KONSTANTWARNING: GOTO [160] #109
	end
	-- KONSTANTERROR: [0] 1. Error Block 68 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [158] 108. Error Block 76 start (CF ANALYSIS FAILED)
	tbl.text = useLocalization_upvr_result1.ageVerifyPrompt
	tbl.fontStyle = var7_result1.Font.Header2
	tbl.colorStyle = var7_result1.Theme.TextEmphasis
	tbl.size = UDim2.new(1, 0, 0, 0)
	tbl.lineHeight = 1
	tbl.textTruncate = Enum.TextTruncate.AtEnd
	tbl.textXAlignment = Enum.TextXAlignment.Center
	tbl.textYAlignment = Enum.TextYAlignment.Center
	tbl.automaticSize = Enum.AutomaticSize.XY
	tbl.layoutOrder = 0
	;({
		UIPadding = React_upvr.createElement("UIPadding", {
			PaddingTop = UDim.new(0, 24);
			PaddingBottom = UDim.new(0, 24);
		});
		UIListLayout = React_upvr.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder;
			FillDirection = Enum.FillDirection.Vertical;
			HorizontalAlignment = Enum.HorizontalAlignment.Center;
			VerticalAlignment = Enum.VerticalAlignment.Center;
			Padding = UDim.new(0, 24);
		});
	}).HeaderText = React_upvr.createElement(StyledTextLabel_upvr, tbl)
	if not var24 then
		local _ = {
			Size = UDim2.new(1, 0, 0, 144);
			BackgroundColor3 = var7_result1.Theme.BackgroundContrast.Color;
			BackgroundTransparency = 0;
			LayoutOrder = 1;
		}
		local tbl_3 = {
			UICorner = React_upvr.createElement("UICorner", {
				CornerRadius = UDim.new(0, 8);
			});
			UIPadding = React_upvr.createElement("UIPadding", {
				PaddingTop = UDim.new(0, 12);
				PaddingBottom = UDim.new(0, 12);
				PaddingLeft = UDim.new(0, 12);
				PaddingRight = UDim.new(0, 12);
			});
			UIListLayout = React_upvr.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder;
				FillDirection = Enum.FillDirection.Vertical;
				HorizontalAlignment = Enum.HorizontalAlignment.Center;
				VerticalAlignment = Enum.VerticalAlignment.Center;
				Padding = UDim.new(0, 24);
			});
			IDDirection = React_upvr.createElement(DirectionsTile_upvr, {
				imagePath = "icons/menu/document";
				headerText = useLocalization_upvr_result1.idDirectionsHeader;
				descriptionText = useLocalization_upvr_result1.idDirectionsBody;
				frameHeight = 48;
				layoutOrder = 1;
			});
			PhoneDirection = React_upvr.createElement(DirectionsTile_upvr, {
				imagePath = "icons/menu/mobile";
				headerText = useLocalization_upvr_result1.phoneDirectionsHeader;
				descriptionText = useLocalization_upvr_result1.phoneDirectionsBody;
				frameHeight = 48;
				layoutOrder = 2;
			});
		}
		-- KONSTANTWARNING: GOTO [373] #249
	end
	-- KONSTANTERROR: [158] 108. Error Block 76 end (CF ANALYSIS FAILED)
end