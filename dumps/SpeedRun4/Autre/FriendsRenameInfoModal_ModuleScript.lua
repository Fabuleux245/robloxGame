-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:45:14
-- Luau version 6, Types version 3
-- Time taken: 0.005095 seconds

local Parent = script:FindFirstAncestor("TrustedContacts").Parent
local PeekView = require(Parent.PeekView)
local RoactUtils = require(Parent.RoactUtils)
local UIBlox = require(Parent.UIBlox)
local Foundation = require(Parent.Foundation)
local Responsive_upvr = require(Parent.Responsive)
local Analytics = require(script.Parent.Parent.Parent.Analytics)
local usePreferredInput_upvr = Responsive_upvr.usePreferredInput
local useDispatch_upvr = RoactUtils.Hooks.RoactRodux.useDispatch
local useScreenSize_upvr = require(Parent.RobloxAppHooks).useScreenSize
local useNavigation_upvr = require(Parent.Navigation).useNavigation
local FFlagTCAnalytics_upvr = require(Parent.SharedFlags).FFlagTCAnalytics
local useTCAnalytics_upvr = Analytics.useTCAnalytics
local React_upvr = require(Parent.React)
local EventNames_upvr = Analytics.EventNames
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local PeekViewState_upvr = PeekView.PeekViewState
local dependencyArray_upvr = RoactUtils.Hooks.dependencyArray
local useAppPolicy_upvr = require(Parent.UniversalAppPolicy).useAppPolicy
local NavigateDown_upvr = require(Parent.NavigationRodux).Thunks.NavigateDown
local AppPage_upvr = require(Parent.RobloxAppEnums).AppPage
local Text_upvr = Foundation.Text
local View_upvr = Foundation.View
local InputLabel_upvr = Foundation.InputLabel
local InputLabelSize_upvr = Foundation.Enums.InputLabelSize
local InteractiveAlert_upvr = UIBlox.App.Dialog.Alert.InteractiveAlert
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
local PeekView_upvr = PeekView.PeekView
return function() -- Line 45, Named "FriendsRenameInfoModal"
	--[[ Upvalues[22]:
		[1]: usePreferredInput_upvr (readonly)
		[2]: useDispatch_upvr (readonly)
		[3]: useScreenSize_upvr (readonly)
		[4]: useNavigation_upvr (readonly)
		[5]: FFlagTCAnalytics_upvr (readonly)
		[6]: useTCAnalytics_upvr (readonly)
		[7]: React_upvr (readonly)
		[8]: EventNames_upvr (readonly)
		[9]: Responsive_upvr (readonly)
		[10]: useLocalization_upvr (readonly)
		[11]: PeekViewState_upvr (readonly)
		[12]: dependencyArray_upvr (readonly)
		[13]: useAppPolicy_upvr (readonly)
		[14]: NavigateDown_upvr (readonly)
		[15]: AppPage_upvr (readonly)
		[16]: Text_upvr (readonly)
		[17]: View_upvr (readonly)
		[18]: InputLabel_upvr (readonly)
		[19]: InputLabelSize_upvr (readonly)
		[20]: InteractiveAlert_upvr (readonly)
		[21]: ButtonType_upvr (readonly)
		[22]: PeekView_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var9_result1_upvr = useDispatch_upvr()
	local useNavigation_upvr_result1_upvr = useNavigation_upvr()
	local var31_upvr
	if FFlagTCAnalytics_upvr then
		var31_upvr = useTCAnalytics_upvr().fireAnalyticsEvent
	else
		var31_upvr = nil
	end
	if FFlagTCAnalytics_upvr then
		React_upvr.useEffect(function() -- Line 54
			--[[ Upvalues[2]:
				[1]: var31_upvr (readonly)
				[2]: EventNames_upvr (copied, readonly)
			]]
			var31_upvr(EventNames_upvr.FriendsRenameInfoModalSeen)
		end, {})
	end
	if usePreferredInput_upvr() == Responsive_upvr.Input.Touch then
		local _ = false
		-- KONSTANTWARNING: Skipped task `defvar` above
	else
	end
	local var16_result1_upvr = useLocalization_upvr({
		gotIt = "Feature.Avatar.Action.GotIt";
		learnMore = "Feature.Chat.Action.LearnMore";
		introducingConnections = "Feature.Friends.Label.IntroducingConnections";
		renameInfoText = "Feature.Friends.Label.RenameInfoText";
	})
	local any_useCallback_result1_2_upvr = React_upvr.useCallback(function() -- Line 83
		--[[ Upvalues[6]:
			[1]: FFlagTCAnalytics_upvr (copied, readonly)
			[2]: var31_upvr (readonly)
			[3]: EventNames_upvr (copied, readonly)
			[4]: var9_result1_upvr (readonly)
			[5]: NavigateDown_upvr (copied, readonly)
			[6]: AppPage_upvr (copied, readonly)
		]]
		if FFlagTCAnalytics_upvr then
			var31_upvr(EventNames_upvr.FriendsRenameLearnMoreClicked)
		end
		var9_result1_upvr(NavigateDown_upvr({
			name = AppPage_upvr.GenericWebPage;
			detail = "https://en.help.roblox.com/hc/en-us/articles/37725513985812";
			extraProps = {
				title = "";
			};
		}, nil))
	end, {var9_result1_upvr})
	local introducingConnections_upvr = var16_result1_upvr.introducingConnections
	local var50_upvr = true
	local var19_result1_upvr = useAppPolicy_upvr(function(arg1) -- Line 79
		return arg1.getWebViewSupport()
	end)
	local any_useCallback_result1 = React_upvr.useCallback(function() -- Line 105
		--[[ Upvalues[8]:
			[1]: React_upvr (copied, readonly)
			[2]: View_upvr (copied, readonly)
			[3]: var50_upvr (readonly)
			[4]: InputLabel_upvr (copied, readonly)
			[5]: InputLabelSize_upvr (copied, readonly)
			[6]: var16_result1_upvr (readonly)
			[7]: var19_result1_upvr (readonly)
			[8]: any_useCallback_result1_2_upvr (readonly)
		]]
		local module = {
			BodyText = React_upvr.createElement(InputLabel_upvr, {
				LayoutOrder = 1;
				tag = "auto-y size-full-0 text-wrap grow";
				RichText = true;
				size = InputLabelSize_upvr.Large;
				Text = var16_result1_upvr.renameInfoText;
			});
		}
		local var55 = var19_result1_upvr
		if var55 then
			var55 = React_upvr.createElement
			var55 = var55(InputLabel_upvr, {
				LayoutOrder = 2;
				tag = "auto-y size-full-0";
				RichText = true;
				Text = `<u>{var16_result1_upvr.learnMore}</u>`;
				size = InputLabelSize_upvr.Large;
				onActivated = any_useCallback_result1_2_upvr;
			})
		end
		module.LearnMoreWebLink = var55
		return React_upvr.createElement(View_upvr, {
			tag = "col size-full-0 auto-y gap-small padding-0";
			["align-x-left"] = not var50_upvr;
			["align-x-center"] = var50_upvr;
			LayoutOrder = 2;
		}, module)
	end, dependencyArray_upvr(any_useCallback_result1_2_upvr, var16_result1_upvr, var50_upvr))
	if var50_upvr then
		return React_upvr.createElement(InteractiveAlert_upvr, {
			richText = true;
			screenSize = useScreenSize_upvr();
			title = introducingConnections_upvr;
			middleContent = any_useCallback_result1;
			buttonStackInfo = {
				buttons = {{
					buttonType = ButtonType_upvr.Secondary;
					props = {
						onActivated = React_upvr.useCallback(function() -- Line 69
							--[[ Upvalues[1]:
								[1]: useNavigation_upvr_result1_upvr (readonly)
							]]
							useNavigation_upvr_result1_upvr.pop()
						end, {useNavigation_upvr_result1_upvr});
						text = var16_result1_upvr.gotIt;
					};
				}};
			};
		})
	end
	return React_upvr.createElement(PeekView_upvr, {
		briefViewContentHeight = UDim.new(0, 0);
		hasScrim = true;
		mountAsFullView = true;
		returnToFullView = true;
		showDraggerInClosedState = false;
		thumbstickScrollEnabled = true;
		viewStateChanged = React_upvr.useCallback(function(arg1, arg2) -- Line 73
			--[[ Upvalues[2]:
				[1]: PeekViewState_upvr (copied, readonly)
				[2]: useNavigation_upvr_result1_upvr (readonly)
			]]
			if arg1 == PeekViewState_upvr.Closed or arg1 == PeekViewState_upvr.Hidden then
				useNavigation_upvr_result1_upvr.goBack()
			end
		end, dependencyArray_upvr(useNavigation_upvr_result1_upvr));
	}, {
		Contents = React_upvr.createElement(View_upvr, {
			tag = "col size-full-0 auto-y gap-small padding-xxlarge align-x-left";
		}, {
			Title = React_upvr.useMemo(function() -- Line 97
				--[[ Upvalues[3]:
					[1]: React_upvr (copied, readonly)
					[2]: Text_upvr (copied, readonly)
					[3]: introducingConnections_upvr (readonly)
				]]
				return React_upvr.createElement(Text_upvr, {
					LayoutOrder = 1;
					tag = "auto-y size-full-0 text-align-x-left text-wrap text-heading-small";
					Text = introducingConnections_upvr;
				})
			end, {introducingConnections_upvr});
			TextContent = any_useCallback_result1();
		});
	})
end