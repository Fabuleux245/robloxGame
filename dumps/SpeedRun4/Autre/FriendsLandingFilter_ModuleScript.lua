-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:29:59
-- Luau version 6, Types version 3
-- Time taken: 0.005458 seconds

local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)
local UIBlox = dependencies.UIBlox
local Roact_upvr = dependencies.Roact
local FocusNavigationUtils = dependencies.FocusNavigationUtils
local any_extend_result1 = Roact_upvr.PureComponent:extend("FriendsLandingFilter")
any_extend_result1.defaultProps = {
	analytics = nil;
	navigation = nil;
}
local FocusNavigationEventNameEnum_upvr = FocusNavigationUtils.FocusNavigationEventNameEnum
local InputHandlers_upvr = dependencies.InputHandlers
local memoize_upvr = dependencies.memoize
local ButtonClickEvents_upvr = require(FriendsLanding.FriendsLandingAnalytics.ButtonClickEvents)
local filterStates_upvr = require(FriendsLanding.Friends.filterStates)
local TextService_upvr = dependencies.TextService
local navigationParamKeys_upvr = require(script.navigationParamKeys)
function any_extend_result1.init(arg1) -- Line 46
	--[[ Upvalues[7]:
		[1]: FocusNavigationEventNameEnum_upvr (readonly)
		[2]: InputHandlers_upvr (readonly)
		[3]: memoize_upvr (readonly)
		[4]: ButtonClickEvents_upvr (readonly)
		[5]: filterStates_upvr (readonly)
		[6]: TextService_upvr (readonly)
		[7]: navigationParamKeys_upvr (readonly)
	]]
	arg1.state = {
		selectedValue = arg1.props.filter;
	}
	function arg1.onClose() -- Line 52
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.props.navigation.goBack()
	end
	arg1.focusEventHandlers = {
		[FocusNavigationEventNameEnum_upvr.NavigateBack] = {
			handler = InputHandlers_upvr.onRelease(function(arg1_2) -- Line 58
				--[[ Upvalues[1]:
					[1]: arg1 (readonly)
				]]
				arg1.onClose()
				arg1_2:cancel()
			end);
		};
	}
	arg1.onApply = memoize_upvr(function(arg1_3) -- Line 65
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: ButtonClickEvents_upvr (copied, readonly)
			[3]: filterStates_upvr (copied, readonly)
		]]
		return function() -- Line 66
			--[[ Upvalues[4]:
				[1]: arg1 (copied, readonly)
				[2]: ButtonClickEvents_upvr (copied, readonly)
				[3]: arg1_3 (readonly)
				[4]: filterStates_upvr (copied, readonly)
			]]
			arg1.props.analytics:buttonClick(ButtonClickEvents_upvr.FriendFilterApply, {
				filter = arg1.state.selectedValue;
			})
			arg1_3(arg1.state.selectedValue)
			arg1.onClose()
			if arg1.state.selectedValue == filterStates_upvr.Inactive then
				arg1.onFewestInteractionsSelection()()
			end
		end
	end)
	function arg1.setSelectedValue(arg1_4) -- Line 78
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local tbl = {}
		tbl.selectedValue = arg1_4
		arg1:setState(tbl)
	end
	function arg1.onCurrentSelected(arg1_5) -- Line 84
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local var26
		if arg1_5 ~= arg1.state.selectedValue then
			var26 = false
		else
			var26 = true
		end
		return var26
	end
	function arg1.getAlertPlacement(arg1_6, arg2, arg3, arg4) -- Line 88
		--[[ Upvalues[1]:
			[1]: TextService_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		local ipairs_result1, ipairs_result2, ipairs_result3 = ipairs(arg2)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [15] 12. Error Block 4 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [15] 12. Error Block 4 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [7] 7. Error Block 13 start (CF ANALYSIS FAILED)
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [15.11]
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [15.2147483650]
		if nil == arg1_6 then
			if 0 == 0 then
				-- KONSTANTWARNING: GOTO [21] #16
			end
			-- KONSTANTWARNING: GOTO [20] #15
		end
		-- KONSTANTERROR: [7] 7. Error Block 13 end (CF ANALYSIS FAILED)
	end
	function arg1.showInactiveFilterOption() -- Line 119
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: navigationParamKeys_upvr (copied, readonly)
		]]
		if arg1.props.navigation.getParam then
			return arg1.props.navigation.getParam(navigationParamKeys_upvr.ShowInactiveFilterOption)
		end
		return nil
	end
	function arg1.onFewestInteractionsSelection() -- Line 125
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: navigationParamKeys_upvr (copied, readonly)
		]]
		if arg1.props.navigation.getParam then
			return arg1.props.navigation.getParam(navigationParamKeys_upvr.OnFewestInteractionsSelection)
		end
		return nil
	end
end
local withStyle_upvr = UIBlox.Style.withStyle
local withLocalization_upvr = dependencies.withLocalization
local makeFilterButtons_upvr = require(FriendsLanding.Friends.makeFilterButtons)
local PartialPageModal_upvr = UIBlox.App.Dialog.Modal.PartialPageModal
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
local SmallRadioButtonGroup_upvr = UIBlox.App.Cell.Small.SelectionGroup.SmallRadioButtonGroup
local FocusNavigableSurfaceWrapper_upvr = FocusNavigationUtils.FocusNavigableSurfaceWrapper
local FocusNavigableSurfaceIdentifierEnum_upvr = FocusNavigationUtils.FocusNavigableSurfaceIdentifierEnum
function any_extend_result1.render(arg1) -- Line 132
	--[[ Upvalues[9]:
		[1]: withStyle_upvr (readonly)
		[2]: withLocalization_upvr (readonly)
		[3]: makeFilterButtons_upvr (readonly)
		[4]: Roact_upvr (readonly)
		[5]: PartialPageModal_upvr (readonly)
		[6]: ButtonType_upvr (readonly)
		[7]: SmallRadioButtonGroup_upvr (readonly)
		[8]: FocusNavigableSurfaceWrapper_upvr (readonly)
		[9]: FocusNavigableSurfaceIdentifierEnum_upvr (readonly)
	]]
	return withStyle_upvr(function(arg1_7) -- Line 133
		--[[ Upvalues[9]:
			[1]: withLocalization_upvr (copied, readonly)
			[2]: makeFilterButtons_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: Roact_upvr (copied, readonly)
			[5]: PartialPageModal_upvr (copied, readonly)
			[6]: ButtonType_upvr (copied, readonly)
			[7]: SmallRadioButtonGroup_upvr (copied, readonly)
			[8]: FocusNavigableSurfaceWrapper_upvr (copied, readonly)
			[9]: FocusNavigableSurfaceIdentifierEnum_upvr (copied, readonly)
		]]
		return withLocalization_upvr({
			apply = "CommonUI.Messages.Action.Apply";
			all = "Feature.Friends.Label.All";
			inactive = "Feature.Friends.Label.FewestInteractions";
			inExperience = "Feature.Friends.Label.InGame";
			online = "Common.Presence.Label.Online";
			offline = "Common.Presence.Label.Offline";
			filterBy = "Feature.Friends.Heading.FilterBy";
			upsellNew = "Feature.Catalog.Label.New";
		})(function(arg1_8) -- Line 143
			--[[ Upvalues[8]:
				[1]: makeFilterButtons_upvr (copied, readonly)
				[2]: arg1 (copied, readonly)
				[3]: Roact_upvr (copied, readonly)
				[4]: PartialPageModal_upvr (copied, readonly)
				[5]: ButtonType_upvr (copied, readonly)
				[6]: SmallRadioButtonGroup_upvr (copied, readonly)
				[7]: FocusNavigableSurfaceWrapper_upvr (copied, readonly)
				[8]: FocusNavigableSurfaceIdentifierEnum_upvr (copied, readonly)
			]]
			local makeFilterButtons_upvr_result1 = makeFilterButtons_upvr(arg1_8, arg1.showInactiveFilterOption())
			return Roact_upvr.createElement(FocusNavigableSurfaceWrapper_upvr, {
				surfaceIdentifier = FocusNavigableSurfaceIdentifierEnum_upvr.PopUp;
				isIsolated = true;
				customEventHandlers = arg1.focusEventHandlers;
			}, {
				Modal = Roact_upvr.createElement(PartialPageModal_upvr, {
					title = arg1_8.filterBy;
					screenSize = arg1.props.screenSize;
					onCloseClicked = arg1.onClose;
					marginSize = 0;
					buttonStackProps = {
						buttons = {{
							buttonType = ButtonType_upvr.PrimarySystem;
							props = {
								isDisabled = arg1.onCurrentSelected(arg1.props.filter);
								onActivated = arg1.onApply(arg1.props.setFilterKeys);
								text = arg1_8.apply;
							};
						}};
					};
				}, {
					ButtonContainer = Roact_upvr.createElement("Frame", {
						Size = UDim2.new(1, 0, 0, #makeFilterButtons_upvr_result1 * 58 + 20);
						BackgroundTransparency = 1;
					}, {
						RadioButtons = Roact_upvr.createElement(SmallRadioButtonGroup_upvr, {
							onActivated = arg1.setSelectedValue;
							selectedValue = arg1.state.selectedValue;
							items = makeFilterButtons_upvr_result1;
						});
					});
				});
			})
		end)
	end)
end
return dependencies.SocialLibraries.RoduxTools.compose(require(FriendsLanding.FriendsLandingAnalytics).connect(function(arg1) -- Line 187
	local module = {}
	module.analytics = arg1
	return module
end), require(FriendsLanding.FriendsLandingContext).connect(function(arg1, arg2) -- Line 192
	return {
		filter = arg1.filter;
		screenSize = arg1.screenSize;
		setFilterKeys = arg1.setFilterKeys;
	}
end))(any_extend_result1)