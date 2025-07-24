-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:20:17
-- Luau version 6, Types version 3
-- Time taken: 0.007803 seconds

local AuthCommon = script:FindFirstAncestor("AuthCommon")
local Parent = AuthCommon.Parent
local Roact_upvr = require(Parent.Roact)
local UIBlox = require(Parent.UIBlox)
local AuthAnalytics = require(Parent.AuthAnalytics)
local any_extend_result1 = Roact_upvr.PureComponent:extend("DisclaimerLinks")
local OpenExternalBrowser_upvr = require(AuthCommon.Thunks.OpenExternalBrowser)
local AppPage_upvr = require(Parent.RobloxAppEnums).AppPage
local TransitionAnimation_upvr = require(AuthCommon.Enums.TransitionAnimation)
local UrlBuilder_upvr = require(Parent.UrlBuilder).UrlBuilder
local authFormInteraction_upvr = AuthAnalytics.Events.authFormInteraction
local EventStreamConstants_upvr = AuthAnalytics.EventStreamConstants
function any_extend_result1.init(arg1) -- Line 47
	--[[ Upvalues[6]:
		[1]: OpenExternalBrowser_upvr (readonly)
		[2]: AppPage_upvr (readonly)
		[3]: TransitionAnimation_upvr (readonly)
		[4]: UrlBuilder_upvr (readonly)
		[5]: authFormInteraction_upvr (readonly)
		[6]: EventStreamConstants_upvr (readonly)
	]]
	function arg1.openDisclaimerLink(arg1_2) -- Line 48
		--[[ Upvalues[4]:
			[1]: arg1 (readonly)
			[2]: OpenExternalBrowser_upvr (copied, readonly)
			[3]: AppPage_upvr (copied, readonly)
			[4]: TransitionAnimation_upvr (copied, readonly)
		]]
		if arg1.props.useExternalBrowserForDisclaimerLinks then
			OpenExternalBrowser_upvr(arg1.props.linking, arg1_2)
		else
			local tbl_5 = {
				name = AppPage_upvr.GenericWebPage;
			}
			tbl_5.detail = arg1_2
			tbl_5.extraProps = {
				title = "";
				transitionAnimation = TransitionAnimation_upvr.SlideInFromRight;
			}
			arg1.props.navigateDown(tbl_5)
		end
	end
	function arg1.openTermsLink() -- Line 63
		--[[ Upvalues[4]:
			[1]: UrlBuilder_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: authFormInteraction_upvr (copied, readonly)
			[4]: EventStreamConstants_upvr (copied, readonly)
		]]
		if arg1.props.ctx then
			authFormInteraction_upvr(arg1.props.ctx, EventStreamConstants_upvr.Field.TermsOfService, arg1.props.state)
		end
		arg1.openDisclaimerLink(UrlBuilder_upvr.static.about.terms())
	end
	function arg1.openPrivacyLink() -- Line 71
		--[[ Upvalues[4]:
			[1]: UrlBuilder_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: authFormInteraction_upvr (copied, readonly)
			[4]: EventStreamConstants_upvr (copied, readonly)
		]]
		if arg1.props.ctx then
			authFormInteraction_upvr(arg1.props.ctx, EventStreamConstants_upvr.Field.PrivacyPolicy, arg1.props.state)
		end
		arg1.openDisclaimerLink(UrlBuilder_upvr.static.about.privacy())
	end
end
local withLocalization_upvr = require(Parent.Localization).withLocalization
local withStyle_upvr = UIBlox.Style.withStyle
local UiMode_upvr = require(Parent.RobloxAppEnums).UiMode
local Text_upvr = require(Parent.AppCommonLib).Text
local FitChildren_upvr = require(AuthCommon.Components.FitChildren)
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local DisclaimerLinkButtons_upvr = require(script.Parent.DisclaimerLinkButtons)
local ContextualMenu_upvr = UIBlox.App.Menu.ContextualMenu
local MenuDirection_upvr = UIBlox.App.Menu.MenuDirection
local LinkButton_upvr = UIBlox.App.Button.LinkButton
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("HideHyphenInDisclaimerLinks", false)
function any_extend_result1.render(arg1) -- Line 80
	--[[ Upvalues[12]:
		[1]: withLocalization_upvr (readonly)
		[2]: withStyle_upvr (readonly)
		[3]: UiMode_upvr (readonly)
		[4]: Text_upvr (readonly)
		[5]: FitChildren_upvr (readonly)
		[6]: Roact_upvr (readonly)
		[7]: ImageSetLabel_upvr (readonly)
		[8]: DisclaimerLinkButtons_upvr (readonly)
		[9]: ContextualMenu_upvr (readonly)
		[10]: MenuDirection_upvr (readonly)
		[11]: LinkButton_upvr (readonly)
		[12]: game_DefineFastFlag_result1_upvr (readonly)
	]]
	local LuaApps_upvr = arg1.props.tokens.LuaApps
	local LoginView_upvr = LuaApps_upvr.LoginView
	if LoginView_upvr then
		LuaApps_upvr = LoginView_upvr.boxPadding
	else
		LuaApps_upvr = 4
	end
	local isDualLayout_upvr = arg1.props.isDualLayout
	return withLocalization_upvr({
		termsOfUseText = "CommonUI.Features.Label.Terms";
		termsOfUseTextLong = "CommonUI.Features.Label.TermsOfUse";
		privacyPolicyText = "CommonUI.Features.Label.Privacy";
		privacyPolicyTextLong = "CommonUI.Features.Label.PrivacyPolicy";
	})(function(arg1_3) -- Line 91
		--[[ Upvalues[15]:
			[1]: withStyle_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: UiMode_upvr (copied, readonly)
			[4]: isDualLayout_upvr (readonly)
			[5]: Text_upvr (copied, readonly)
			[6]: LuaApps_upvr (readonly)
			[7]: FitChildren_upvr (copied, readonly)
			[8]: Roact_upvr (copied, readonly)
			[9]: ImageSetLabel_upvr (copied, readonly)
			[10]: LoginView_upvr (readonly)
			[11]: DisclaimerLinkButtons_upvr (copied, readonly)
			[12]: ContextualMenu_upvr (copied, readonly)
			[13]: MenuDirection_upvr (copied, readonly)
			[14]: LinkButton_upvr (copied, readonly)
			[15]: game_DefineFastFlag_result1_upvr (copied, readonly)
		]]
		return withStyle_upvr(function(arg1_4) -- Line 92
			--[[ Upvalues[15]:
				[1]: arg1 (copied, readonly)
				[2]: UiMode_upvr (copied, readonly)
				[3]: isDualLayout_upvr (copied, readonly)
				[4]: arg1_3 (readonly)
				[5]: Text_upvr (copied, readonly)
				[6]: LuaApps_upvr (copied, readonly)
				[7]: FitChildren_upvr (copied, readonly)
				[8]: Roact_upvr (copied, readonly)
				[9]: ImageSetLabel_upvr (copied, readonly)
				[10]: LoginView_upvr (copied, readonly)
				[11]: DisclaimerLinkButtons_upvr (copied, readonly)
				[12]: ContextualMenu_upvr (copied, readonly)
				[13]: MenuDirection_upvr (copied, readonly)
				[14]: LinkButton_upvr (copied, readonly)
				[15]: game_DefineFastFlag_result1_upvr (copied, readonly)
			]]
			-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
			-- KONSTANTERROR: [0] 1. Error Block 89 start (CF ANALYSIS FAILED)
			local props = arg1.props
			local var36
			if props.uiModeInfo.uiMode ~= UiMode_upvr.TenFoot then
				props = false
			else
				props = true
			end
			local BaseSize = arg1_4.Font.BaseSize
			var36 = isDualLayout_upvr
			if var36 then
				var36 = arg1_3
				-- KONSTANTWARNING: GOTO [32] #22
			end
			-- KONSTANTERROR: [0] 1. Error Block 89 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [29] 20. Error Block 99 start (CF ANALYSIS FAILED)
			var36 = arg1_3
			local var38
			if isDualLayout_upvr then
				var36 = arg1_3.privacyPolicyTextLong
			else
				var36 = "<b>"..arg1_3.privacyPolicyText.."</b>"
			end
			local Font = arg1_4.Font.Header2.Font
			local var40 = Text_upvr.GetTextHeight(arg1_3.privacyPolicyText, Font, BaseSize) + LuaApps_upvr
			if isDualLayout_upvr then
				var40 = 2 * (Text_upvr.GetTextHeight(arg1_3.privacyPolicyText, Font, BaseSize) + 2 * LuaApps_upvr)
			end
			if isDualLayout_upvr then
			else
			end
			local function var41() -- Line 118
				--[[ Upvalues[4]:
					[1]: Roact_upvr (copied, readonly)
					[2]: ImageSetLabel_upvr (copied, readonly)
					[3]: LoginView_upvr (copied, readonly)
					[4]: arg1_4 (readonly)
				]]
				return {
					Image = Roact_upvr.createElement(ImageSetLabel_upvr, {
						Size = UDim2.new(0, LoginView_upvr.disclaimerIconSize, 0, LoginView_upvr.disclaimerIconSize);
						Position = UDim2.fromOffset(0, 0);
						BackgroundTransparency = 1;
						LayoutOrder = 1;
						ScaleType = Enum.ScaleType.Fit;
						Image = LoginView_upvr.linkIcon;
						ImageColor3 = arg1_4.Theme.UIEmphasis.Color;
						ImageTransparency = 0;
					});
				}
			end
			if props then
				return Roact_upvr.createElement(DisclaimerLinkButtons_upvr, {
					textTos = var36.termsOfUseText;
					activatedTos = arg1.openTermsLink;
					textPrivacy = var36;
					activatedPrivacy = arg1.openPrivacyLink;
					fillDirection = arg1.props.fillDirection;
					layoutOrder = arg1.props.LayoutOrder;
					tokens = LoginView_upvr;
				})
			end
			local tbl_8 = {}
			if not isDualLayout_upvr then
			else
			end
			tbl_8.fitAxis = nil
			tbl_8.Size = UDim2.new(1, 0, 0, var40)
			tbl_8.BackgroundTransparency = 1
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			tbl_8.LayoutOrder = arg1.props.LayoutOrder
			local tbl_3 = {}
			local tbl_7 = {
				Padding = UDim.new(0, Text_upvr.GetTextWidth(' ', Font, BaseSize) / 2);
				SortOrder = Enum.SortOrder.LayoutOrder;
			}
			if isDualLayout_upvr then
				-- KONSTANTWARNING: GOTO [193] #144
			end
			tbl_7.FillDirection = Enum.FillDirection.Horizontal
			if isDualLayout_upvr then
				-- KONSTANTWARNING: GOTO [202] #150
			end
			tbl_7.HorizontalAlignment = Enum.HorizontalAlignment.Center
			tbl_7.VerticalAlignment = Enum.VerticalAlignment.Center
			tbl_3.UIListLayout = Roact_upvr.createElement("UIListLayout", tbl_7)
			if isDualLayout_upvr then
				local tbl_2 = {}
				local tbl = {}
				local tbl_4 = {}
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				tbl_4.text = var36.termsOfUseText
				tbl_4.fontStyle = arg1_4.Font.Header1
				tbl_4.onActivated = arg1.openTermsLink
				tbl_4.rightSideGadgetSize = Vector2.new(LoginView_upvr.disclaimerIconSize + LoginView_upvr.disclaimerPadding, LoginView_upvr.disclaimerIconSize)
				tbl_4.renderRightSideGadget = var41
				tbl[1] = tbl_4
				tbl[2] = {
					text = var36;
					fontStyle = arg1_4.Font.Header1;
					onActivated = arg1.openPrivacyLink;
					rightSideGadgetSize = Vector2.new(LoginView_upvr.disclaimerIconSize + LoginView_upvr.disclaimerPadding, LoginView_upvr.disclaimerIconSize);
					renderRightSideGadget = var41;
				}
				tbl_2.buttonProps = tbl
				tbl_2.open = true
				tbl_2.stayOnActivated = true
				tbl_2.isElementBackgroundVisible = false
				tbl_2.isElementDividerVisible = false
				tbl_2.closeBackgroundVisible = false
				tbl_2.topElementRounded = false
				tbl_2.bottomElementRounded = false
				tbl_2.horizontalAlignment = Enum.HorizontalAlignment.Center
				tbl_2.menuDirection = MenuDirection_upvr.Down
				tbl_2.contextMenuWidthOverride = UDim.new(1, 0)
				tbl_2.elementHeight = LoginView_upvr.disclaimerElementHeight
				tbl_2.openPositionX = UDim.new(0, 0)
				tbl_2.openPositionY = UDim.new(0, 0)
				tbl_2.screenSize = Vector2.new(0, 0)
			else
			end
			tbl_3.ContextualMenu = nil
			if not isDualLayout_upvr then
				local tbl_6 = {}
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				tbl_6.text = var36.termsOfUseText
				if isDualLayout_upvr then
					local udim2 = UDim2.new(1, 0, 0.5, 0)
				else
				end
				tbl_6.size = UDim2.new(0, 0, 1, 0)
				tbl_6.fontStyle = "Header2"
				tbl_6.layoutOrder = 1
				tbl_6.underlineAlwaysEnabled = true
				tbl_6.onActivated = arg1.openTermsLink
				-- KONSTANTWARNING: GOTO [399] #283
			end
			-- KONSTANTERROR: [29] 20. Error Block 99 end (CF ANALYSIS FAILED)
		end)
	end)
end
local NavigateDown_upvr = require(Parent.NavigationRodux).Thunks.NavigateDown
local useDesignTokens_upvr = require(Parent.Style).useDesignTokens
local useUiModeInfo_upvr = require(Parent.RobloxAppHooks).useUiModeInfo
local var64_upvr = require(Parent.RoactServices).RoactServices.connect({
	linking = require(Parent.RoactServiceTags).AppLinking;
})(require(Parent.UniversalAppPolicy).RoactAppPolicy.connect(function(arg1) -- Line 252
	return {
		useExternalBrowserForDisclaimerLinks = arg1.shouldUseExternalBrowserForDisclaimerLinks();
	}
end)(require(Parent.RoactRodux).connect(function(arg1, arg2) -- Line 242
	return {}
end, function(arg1) -- Line 244
	--[[ Upvalues[1]:
		[1]: NavigateDown_upvr (readonly)
	]]
	return {
		navigateDown = function(arg1_5) -- Line 246, Named "navigateDown"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: NavigateDown_upvr (copied, readonly)
			]]
			return arg1(NavigateDown_upvr(arg1_5))
		end;
	}
end)(any_extend_result1)))
local Cryo_upvr = require(Parent.Cryo)
return function(arg1) -- Line 263
	--[[ Upvalues[5]:
		[1]: useDesignTokens_upvr (readonly)
		[2]: useUiModeInfo_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: var64_upvr (readonly)
		[5]: Cryo_upvr (readonly)
	]]
	return Roact_upvr.createElement(var64_upvr, Cryo_upvr.Dictionary.join({
		tokens = useDesignTokens_upvr();
		uiModeInfo = useUiModeInfo_upvr();
	}, arg1))
end