-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:45:15
-- Luau version 6, Types version 3
-- Time taken: 0.009167 seconds

local Parent = script:FindFirstAncestor("TrustedContacts").Parent
local React_upvr = require(Parent.React)
local UIBlox = require(Parent.UIBlox)
local Foundation = require(Parent.Foundation)
local Text_upvr = Foundation.Text
local Analytics = require(script.Parent.Parent.Parent.Analytics)
local Icon_upvr = Foundation.Icon
local IconSize_upvr = Foundation.Enums.IconSize
local function TextWithIcon_upvr(arg1) -- Line 42, Named "TextWithIcon"
	--[[ Upvalues[4]:
		[1]: React_upvr (readonly)
		[2]: Icon_upvr (readonly)
		[3]: IconSize_upvr (readonly)
		[4]: Text_upvr (readonly)
	]]
	return React_upvr.createElement("Frame", {
		AutomaticSize = Enum.AutomaticSize.Y;
		Size = UDim2.fromScale(1, 0);
		BackgroundTransparency = 1;
		LayoutOrder = arg1.layoutOrder;
	}, {
		UIListLayout = React_upvr.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal;
			SortOrder = Enum.SortOrder.LayoutOrder;
			Padding = UDim.new(0, arg1.iconPadding);
			HorizontalAlignment = Enum.HorizontalAlignment.Left;
			VerticalAlignment = Enum.VerticalAlignment.Center;
		});
		Icon = React_upvr.createElement(Icon_upvr, {
			name = arg1.icon;
			size = IconSize_upvr.Small;
			LayoutOrder = 1;
		});
		Text = React_upvr.createElement(Text_upvr, {
			tag = "auto-y grow size-full-0 text-align-x-left text-wrap";
			Text = arg1.text;
			LayoutOrder = 2;
		});
	})
end
local useScreenSize_upvr = require(Parent.RobloxAppHooks).useScreenSize
local useNavigation_upvr = require(Parent.Navigation).useNavigation
local useTokens_upvr = Foundation.Hooks.useTokens
local FFlagTCEducation18PlusText_upvr = require(Parent.SharedFlags).FFlagTCEducation18PlusText
local AccessResponseEnum_upvr = require(Parent.AmpUpsell).AmpEnums.AccessResponseEnum
local AmpApiProvider_upvr = require(Parent.AmpUpsell).AmpApiProvider
local game_DefineFastString_result1_upvr = game:DefineFastString("IsVerified18PlusAmpFeature", "IsVerified18Plus")
local FStringCanAccessTrustedContactsAmpNameSpace_upvr = require(Parent.SharedFlags).FStringCanAccessTrustedContactsAmpNameSpace
local FFlagTCAnalytics_upvr = require(Parent.SharedFlags).FFlagTCAnalytics
local useTCAnalytics_upvr = Analytics.useTCAnalytics
local EventNames_upvr = Analytics.EventNames
local AppPage_upvr = require(Parent.RobloxAppEnums).AppPage
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local PartialPageModal_upvr = UIBlox.App.Dialog.Modal.PartialPageModal
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("TCRemoveEducationModalImage", false)
local Image_upvr = Foundation.Image
local ShimmerPanel_upvr = UIBlox.App.Loading.ShimmerPanel
return function(arg1) -- Line 69, Named "TrustedContactsEducationModal"
	--[[ Upvalues[21]:
		[1]: useScreenSize_upvr (readonly)
		[2]: useNavigation_upvr (readonly)
		[3]: useTokens_upvr (readonly)
		[4]: FFlagTCEducation18PlusText_upvr (readonly)
		[5]: React_upvr (readonly)
		[6]: AccessResponseEnum_upvr (readonly)
		[7]: AmpApiProvider_upvr (readonly)
		[8]: game_DefineFastString_result1_upvr (readonly)
		[9]: FStringCanAccessTrustedContactsAmpNameSpace_upvr (readonly)
		[10]: FFlagTCAnalytics_upvr (readonly)
		[11]: useTCAnalytics_upvr (readonly)
		[12]: EventNames_upvr (readonly)
		[13]: AppPage_upvr (readonly)
		[14]: useLocalization_upvr (readonly)
		[15]: PartialPageModal_upvr (readonly)
		[16]: ButtonType_upvr (readonly)
		[17]: game_DefineFastFlag_result1_upvr (readonly)
		[18]: Image_upvr (readonly)
		[19]: ShimmerPanel_upvr (readonly)
		[20]: Text_upvr (readonly)
		[21]: TextWithIcon_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 79 start (CF ANALYSIS FAILED)
	local useNavigation_upvr_result1_upvr = useNavigation_upvr()
	local var16_result1 = useTokens_upvr()
	local var34_upvw
	if var34_upvw then
		var34_upvw = nil
		local any_useState_result1, any_useState_result2 = React_upvr.useState(AccessResponseEnum_upvr.Pending)
		local var37 = any_useState_result1
		var34_upvw = any_useState_result2
		React_upvr.useEffect(function() -- Line 78
			--[[ Upvalues[4]:
				[1]: AmpApiProvider_upvr (copied, readonly)
				[2]: game_DefineFastString_result1_upvr (copied, readonly)
				[3]: FStringCanAccessTrustedContactsAmpNameSpace_upvr (copied, readonly)
				[4]: var34_upvw (read and write)
			]]
			var34_upvw(AmpApiProvider_upvr.upsellFeatureAccess(game_DefineFastString_result1_upvr, {}, FStringCanAccessTrustedContactsAmpNameSpace_upvr).access)
		end, {})
	end
	if FFlagTCAnalytics_upvr then
	else
	end
	if FFlagTCAnalytics_upvr then
		local var40_upvr
		React_upvr.useEffect(function() -- Line 87
			--[[ Upvalues[2]:
				[1]: var40_upvr (readonly)
				[2]: EventNames_upvr (copied, readonly)
			]]
			var40_upvr(EventNames_upvr.TCEducationModalSeen)
		end, {})
	end
	local any_useCallback_result1 = React_upvr.useCallback(function() -- Line 92
		--[[ Upvalues[4]:
			[1]: FFlagTCAnalytics_upvr (copied, readonly)
			[2]: var40_upvr (readonly)
			[3]: EventNames_upvr (copied, readonly)
			[4]: useNavigation_upvr_result1_upvr (readonly)
		]]
		if FFlagTCAnalytics_upvr then
			var40_upvr(EventNames_upvr.TCEducationCloseClicked)
		end
		useNavigation_upvr_result1_upvr.pop()
	end, {useNavigation_upvr_result1_upvr})
	if FFlagTCAnalytics_upvr then
		local function _() -- Line 100
			--[[ Upvalues[3]:
				[1]: var40_upvr (readonly)
				[2]: EventNames_upvr (copied, readonly)
				[3]: useNavigation_upvr_result1_upvr (readonly)
			]]
			var40_upvr(EventNames_upvr.TCEducationGotItClicked)
			useNavigation_upvr_result1_upvr.pop()
		end
		local _ = {useNavigation_upvr_result1_upvr}
	else
	end
	local tbl_5 = {
		title = "Feature.Friends.TCEducation.Title";
		textIntro = "Feature.Friends.TCEducation.Modal.TextIntro";
	}
	if FFlagTCEducation18PlusText_upvr then
		-- KONSTANTWARNING: GOTO [109] #92
	end
	tbl_5.textIntro18Plus = nil
	tbl_5.textChatWithoutFilters = "Feature.Friends.TCFeature.ChatWithoutFilters"
	tbl_5.textPartyVoice = "Feature.Friends.TCFeature.PartyVoice"
	tbl_5.textAndMore = "Feature.Friends.TCFeature.AndMore"
	tbl_5.textOutro = "Feature.Friends.TCEducation.Modal.TextOutro"
	if FFlagTCEducation18PlusText_upvr then
		-- KONSTANTWARNING: GOTO [128] #106
	end
	tbl_5.textOutro18Plus = nil
	tbl_5.buttonManageConnections = "Feature.Friends.Button.ManageConnections"
	tbl_5.buttonGotIt = "Feature.Friends.Button.GotIt"
	local var26_result1 = useLocalization_upvr(tbl_5)
	local module = {
		title = var26_result1.title;
		screenSize = useScreenSize_upvr();
		onCloseClicked = any_useCallback_result1;
	}
	local tbl_2 = {}
	local tbl_8 = {}
	local tbl_13 = {
		buttonType = ButtonType_upvr.PrimaryContextual;
	}
	local tbl_12 = {}
	if FFlagTCAnalytics_upvr then
		-- KONSTANTWARNING: GOTO [180] #141
	end
	tbl_12.onActivated = any_useCallback_result1
	tbl_12.text = var26_result1.buttonGotIt
	tbl_13.props = tbl_12
	tbl_8[1] = {
		buttonType = ButtonType_upvr.Secondary;
		props = {
			onActivated = React_upvr.useCallback(function() -- Line 106
				--[[ Upvalues[5]:
					[1]: FFlagTCAnalytics_upvr (copied, readonly)
					[2]: var40_upvr (readonly)
					[3]: EventNames_upvr (copied, readonly)
					[4]: useNavigation_upvr_result1_upvr (readonly)
					[5]: AppPage_upvr (copied, readonly)
				]]
				if FFlagTCAnalytics_upvr then
					var40_upvr(EventNames_upvr.TCEducationManageConnectionsClicked)
				end
				useNavigation_upvr_result1_upvr.replace(AppPage_upvr.ViewFriends)
			end, {useNavigation_upvr_result1_upvr});
			text = var26_result1.buttonManageConnections;
		};
	}
	tbl_8[2] = tbl_13
	tbl_2.buttons = tbl_8
	tbl_2.forcedFillDirection = Enum.FillDirection.Vertical
	module.buttonStackProps = tbl_2
	local module_2 = {}
	local tbl_3 = {
		UIListLayout = React_upvr.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical;
			SortOrder = Enum.SortOrder.LayoutOrder;
			HorizontalAlignment = Enum.HorizontalAlignment.Center;
		});
	}
	if game_DefineFastFlag_result1_upvr then
		-- KONSTANTWARNING: GOTO [280] #208
	end
	tbl_3.Image = React_upvr.createElement(Image_upvr, {
		LayoutOrder = 1;
		Position = UDim2.new(0, 0, 0, 0);
		Size = UDim2.new(1, 0, 0, 220);
		ScaleType = Enum.ScaleType.Fit;
		Image = "rbxasset://textures/ui/LuaApp/graphic/add_friends_graphics_x3.png";
		ZIndex = 0;
	})
	local tbl = {
		UIListLayout = React_upvr.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical;
			SortOrder = Enum.SortOrder.LayoutOrder;
			Padding = UDim.new(0, var16_result1.Padding.Large);
			HorizontalAlignment = Enum.HorizontalAlignment.Center;
		});
		OuterPadding = React_upvr.createElement("UIPadding", {
			PaddingTop = UDim.new(0, var16_result1.Padding.Medium);
			PaddingBottom = UDim.new(0, var16_result1.Padding.Large);
		});
	}
	if FFlagTCEducation18PlusText_upvr and var37 == AccessResponseEnum_upvr.Pending then
		local tbl_14 = {
			Size = UDim2.new(1, 0, 0, 30);
			LayoutOrder = 1;
		}
		-- KONSTANTWARNING: GOTO [415] #299
	end
	local var67
	local tbl_11 = {}
	var67 = 1
	tbl_11.LayoutOrder = var67
	var67 = "auto-y grow size-full-0 text-align-x-left text-wrap"
	tbl_11.tag = var67
	if FFlagTCEducation18PlusText_upvr and var37 == AccessResponseEnum_upvr.Granted then
		var67 = var26_result1.textIntro18Plus
	else
		var67 = var26_result1.textIntro
	end
	tbl_11.Text = var67
	tbl.ConnectTextIntro = React_upvr.createElement(Text_upvr, tbl_11)
	local tbl_9 = {}
	var67 = 2
	tbl_9.layoutOrder = var67
	var67 = "icons/menu/platformChatOff_small"
	tbl_9.icon = var67
	var67 = var26_result1.textChatWithoutFilters
	tbl_9.text = var67
	var67 = var16_result1.Padding.Medium
	tbl_9.iconPadding = var67
	tbl.ConnectOptionText1 = React_upvr.createElement(TextWithIcon_upvr, tbl_9)
	local tbl_6 = {}
	var67 = 3
	tbl_6.layoutOrder = var67
	var67 = "icons/controls/microphone_small"
	tbl_6.icon = var67
	var67 = var26_result1.textPartyVoice
	tbl_6.text = var67
	var67 = var16_result1.Padding.Medium
	tbl_6.iconPadding = var67
	tbl.ConnectOptionText2 = React_upvr.createElement(TextWithIcon_upvr, tbl_6)
	local tbl_10 = {}
	var67 = 4
	tbl_10.layoutOrder = var67
	var67 = "icons/actions/edit/add_small"
	tbl_10.icon = var67
	var67 = var26_result1.textAndMore
	tbl_10.text = var67
	var67 = var16_result1.Padding.Medium
	tbl_10.iconPadding = var67
	tbl.ConnectOptionText3 = React_upvr.createElement(TextWithIcon_upvr, tbl_10)
	if FFlagTCEducation18PlusText_upvr and var37 == AccessResponseEnum_upvr.Pending then
		local tbl_7 = {}
		var67 = UDim2.new(1, 0, 0, 60)
		tbl_7.Size = var67
		var67 = 5
		tbl_7.LayoutOrder = var67
		-- KONSTANTWARNING: GOTO [541] #383
	end
	local tbl_4 = {}
	var67 = 5
	tbl_4.LayoutOrder = var67
	var67 = "auto-y grow size-full-0 text-align-x-left text-wrap"
	tbl_4.tag = var67
	if FFlagTCEducation18PlusText_upvr and var37 == AccessResponseEnum_upvr.Granted then
		var67 = var26_result1.textOutro18Plus
	else
		var67 = var26_result1.textOutro
	end
	tbl_4.Text = var67
	-- KONSTANTERROR: [0] 1. Error Block 79 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [541] 383. Error Block 49 start (CF ANALYSIS FAILED)
	tbl.ConnectTextOutro = React_upvr.createElement(Text_upvr, tbl_4)
	tbl_3.TextContainer = React_upvr.createElement("Frame", {
		LayoutOrder = 2;
		AutomaticSize = Enum.AutomaticSize.Y;
		Size = UDim2.fromScale(1, 0);
		BackgroundTransparency = 1;
	}, tbl)
	module_2.ViewContainer = React_upvr.createElement("Frame", {
		AutomaticSize = Enum.AutomaticSize.Y;
		Size = UDim2.fromScale(1, 0);
		BackgroundTransparency = 1;
	}, tbl_3)
	do
		return React_upvr.createElement(PartialPageModal_upvr, module, module_2)
	end
	-- KONSTANTERROR: [541] 383. Error Block 49 end (CF ANALYSIS FAILED)
end