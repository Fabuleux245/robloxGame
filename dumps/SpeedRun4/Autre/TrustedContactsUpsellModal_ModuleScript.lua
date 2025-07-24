-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:45:17
-- Luau version 6, Types version 3
-- Time taken: 0.005140 seconds

local Parent = script:FindFirstAncestor("TrustedContacts").Parent
local UIBlox = require(Parent.UIBlox)
local Foundation_upvr = require(Parent.Foundation)
local Analytics = require(script.Parent.Parent.Parent.Analytics)
local useLayerCollector_upvr = UIBlox.Core.Layout.LayerCollector.useLayerCollector
local useNavigation_upvr = require(Parent.Navigation).useNavigation
local useTokens_upvr = Foundation_upvr.Hooks.useTokens
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local FFlagTCAnalytics_upvr = require(Parent.SharedFlags).FFlagTCAnalytics
local useTCAnalytics_upvr = Analytics.useTCAnalytics
local React_upvr = require(Parent.React)
local EventNames_upvr = Analytics.EventNames
local FFlagAppChatModalTelemetry_upvr = require(Parent.SharedFlags).FFlagAppChatModalTelemetry
local FullPageModal_upvr = UIBlox.App.Dialog.Modal.FullPageModal
local PartialPageModal_upvr = UIBlox.App.Dialog.Modal.PartialPageModal
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
local ScrollView_upvr = Foundation_upvr.ScrollView
local View_upvr = Foundation_upvr.View
local Text_upvr = Foundation_upvr.Text
local SocialMetadataSection_upvr = require(script.Parent.SocialMetadataSection)
return function(arg1) -- Line 39
	--[[ Upvalues[17]:
		[1]: useLayerCollector_upvr (readonly)
		[2]: useNavigation_upvr (readonly)
		[3]: useTokens_upvr (readonly)
		[4]: useLocalization_upvr (readonly)
		[5]: FFlagTCAnalytics_upvr (readonly)
		[6]: useTCAnalytics_upvr (readonly)
		[7]: React_upvr (readonly)
		[8]: EventNames_upvr (readonly)
		[9]: FFlagAppChatModalTelemetry_upvr (readonly)
		[10]: FullPageModal_upvr (readonly)
		[11]: PartialPageModal_upvr (readonly)
		[12]: ButtonType_upvr (readonly)
		[13]: ScrollView_upvr (readonly)
		[14]: View_upvr (readonly)
		[15]: Foundation_upvr (readonly)
		[16]: Text_upvr (readonly)
		[17]: SocialMetadataSection_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local isVerticallyConstrained = arg1.isVerticallyConstrained
	local useLayerCollector_upvr_result1 = useLayerCollector_upvr()
	local var24_upvr
	if useLayerCollector_upvr_result1 and useLayerCollector_upvr_result1.absoluteSize then
	end
	local useNavigation_upvr_result1_upvr = useNavigation_upvr()
	local var8_result1 = useTokens_upvr()
	var24_upvr = {}
	var24_upvr.gotIt = "Feature.SettingsHub.Prompt.GotIt"
	var24_upvr.newTrustedConnection = "Feature.Friends.TrustedConnection.Info.Modal.Header"
	var24_upvr.removeTrustedConnection = "Feature.Friends.TrustedConnection.Action.RemoveTrustedConnection"
	var24_upvr.chatWithoutFilters = "Feature.Friends.TrustedConnection.Info.Modal.Description"
	local var9_result1 = useLocalization_upvr(var24_upvr)
	if FFlagTCAnalytics_upvr then
		var24_upvr = useTCAnalytics_upvr({
			friendId = arg1.userId;
		}).fireAnalyticsEvent
	else
		var24_upvr = nil
	end
	if FFlagTCAnalytics_upvr then
		React_upvr.useEffect(function() -- Line 61
			--[[ Upvalues[2]:
				[1]: var24_upvr (readonly)
				[2]: EventNames_upvr (copied, readonly)
			]]
			var24_upvr(EventNames_upvr.TCUpsellModalSeen)
		end, {})
	end
	if not isVerticallyConstrained or not FullPageModal_upvr then
	end
	local module = {
		title = var9_result1.newTrustedConnection;
		screenSize = useLayerCollector_upvr_result1.absoluteSize;
		onCloseClicked = React_upvr.useCallback(function() -- Line 66
			--[[ Upvalues[5]:
				[1]: FFlagTCAnalytics_upvr (copied, readonly)
				[2]: var24_upvr (readonly)
				[3]: EventNames_upvr (copied, readonly)
				[4]: arg1 (readonly)
				[5]: useNavigation_upvr_result1_upvr (readonly)
			]]
			if FFlagTCAnalytics_upvr then
				var24_upvr(EventNames_upvr.TCUpsellCloseClicked)
			end
			if not arg1.shouldOverrideNavigation then
				useNavigation_upvr_result1_upvr.pop()
			end
			if arg1.onClosed then
				arg1.onClosed()
			end
		end, {useNavigation_upvr_result1_upvr, arg1.onClosed, arg1.shouldOverrideNavigation});
	}
	local tbl_2 = {
		buttons = {{
			buttonType = ButtonType_upvr.Secondary;
			props = {
				onActivated = React_upvr.useCallback(function() -- Line 93
					--[[ Upvalues[5]:
						[1]: FFlagTCAnalytics_upvr (copied, readonly)
						[2]: var24_upvr (readonly)
						[3]: EventNames_upvr (copied, readonly)
						[4]: arg1 (readonly)
						[5]: useNavigation_upvr_result1_upvr (readonly)
					]]
					if FFlagTCAnalytics_upvr then
						var24_upvr(EventNames_upvr.TCUpsellRemoveTrustedConnectionClicked)
					end
					if not arg1.shouldOverrideNavigation then
						useNavigation_upvr_result1_upvr.pop()
					end
					if arg1.onRemovedTrustedConnection then
						arg1.onRemovedTrustedConnection()
					end
				end, {useNavigation_upvr_result1_upvr, arg1.onRemovedTrustedConnection, arg1.shouldOverrideNavigation});
				text = var9_result1.removeTrustedConnection;
			};
		}, {
			buttonType = ButtonType_upvr.PrimaryContextual;
			props = {
				onActivated = React_upvr.useCallback(function() -- Line 78
					--[[ Upvalues[6]:
						[1]: FFlagTCAnalytics_upvr (copied, readonly)
						[2]: var24_upvr (readonly)
						[3]: EventNames_upvr (copied, readonly)
						[4]: arg1 (readonly)
						[5]: useNavigation_upvr_result1_upvr (readonly)
						[6]: FFlagAppChatModalTelemetry_upvr (copied, readonly)
					]]
					if FFlagTCAnalytics_upvr then
						var24_upvr(EventNames_upvr.TCUpsellGotItClicked)
					end
					if not arg1.shouldOverrideNavigation then
						useNavigation_upvr_result1_upvr.pop()
					end
					if not FFlagAppChatModalTelemetry_upvr and arg1.onClosed then
						arg1.onClosed()
					end
					if FFlagAppChatModalTelemetry_upvr and arg1.onAcknowledged then
						arg1.onAcknowledged()
					end
				end, {useNavigation_upvr_result1_upvr, arg1.onClosed, arg1.shouldOverrideNavigation, arg1.onAcknowledged});
				text = var9_result1.gotIt;
			};
		}};
	}
	if isVerticallyConstrained then
	else
	end
	tbl_2.forcedFillDirection = Enum.FillDirection.Vertical
	module.buttonStackProps = tbl_2
	local module_2 = {}
	if not isVerticallyConstrained or not ScrollView_upvr then
	end
	local tbl_3 = {
		tag = {
			["col size-full-0 auto-y align-x-center"] = true;
			["gap-medium shrink"] = isVerticallyConstrained;
			["gap-large"] = not isVerticallyConstrained;
		};
	}
	if isVerticallyConstrained then
	end
	tbl_3.scroll = {
		scrollBarVisibility = Foundation_upvr.Enums.ScrollBarVisibility.Always;
		ScrollingDirection = Enum.ScrollingDirection.Y;
	}
	local tbl = {}
	local tbl_4 = {}
	if not isVerticallyConstrained or not var8_result1.Padding.XSmall then
	end
	tbl_4.PaddingTop = UDim.new(0, var8_result1.Padding.Large)
	if not isVerticallyConstrained or not var8_result1.Padding.Small then
	end
	tbl_4.PaddingBottom = UDim.new(0, var8_result1.Padding.XXLarge)
	tbl.OuterPadding = React_upvr.createElement("UIPadding", tbl_4)
	tbl.TextIntro = React_upvr.createElement(Text_upvr, {
		LayoutOrder = 1;
		tag = {
			["auto-y size-full-0 text-align-x-left text-wrap"] = true;
			grow = not isVerticallyConstrained;
		};
		Text = var9_result1.chatWithoutFilters;
	})
	tbl.Insights = React_upvr.createElement(SocialMetadataSection_upvr, {
		userId = arg1.userId;
		isVerticallyConstrained = isVerticallyConstrained;
	})
	module_2.Contents = React_upvr.createElement(View_upvr, tbl_3, tbl)
	return React_upvr.createElement(PartialPageModal_upvr, module, module_2)
end