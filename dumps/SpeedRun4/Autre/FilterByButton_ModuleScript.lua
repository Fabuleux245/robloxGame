-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:29:54
-- Luau version 6, Types version 3
-- Time taken: 0.005461 seconds

local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)
local Roact_upvr = dependencies.Roact
local UIBlox = dependencies.UIBlox
local filterStates_upvr = require(FriendsLanding.Friends.filterStates)
local any_extend_result1 = Roact_upvr.PureComponent:extend("FilterByButton")
any_extend_result1.defaultProps = {
	analytics = nil;
	layoutOrder = 1;
	onActivated = function() -- Line 32, Named "onActivated"
	end;
	filter = filterStates_upvr.All;
	friendCount = 0;
	inactiveFriendCount = 0;
	isDisabled = false;
	showFriendPruningAlert = false;
	initialShowFriendPruningTooltip = false;
	onTooltipDismissal = function() -- Line 39, Named "onTooltipDismissal"
	end;
}
function any_extend_result1.init(arg1) -- Line 42
	--[[ Upvalues[1]:
		[1]: filterStates_upvr (readonly)
	]]
	arg1.state = {
		showFriendPruningTooltip = arg1.props.initialShowFriendPruningTooltip;
		hasDismissedFriendPruningTooltip = false;
	}
	function arg1.convertFilterToTranslation(arg1_2, arg2) -- Line 48
		--[[ Upvalues[1]:
			[1]: filterStates_upvr (copied, readonly)
		]]
		if arg1_2 == filterStates_upvr.All then
			return arg2.all
		end
		if arg1_2 == filterStates_upvr.Online then
			return arg2.online
		end
		if arg1_2 == filterStates_upvr.InExperience then
			return arg2.inExperience
		end
		if arg1_2 == filterStates_upvr.Offline then
			return arg2.offline
		end
		if arg1_2 == filterStates_upvr.Inactive then
			return arg2.inactive
		end
		return nil
	end
	function arg1.buildFilterText(arg1_3, arg2, arg3) -- Line 64
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local any_convertFilterToTranslation_result1 = arg1.convertFilterToTranslation(arg1_3, arg2)
		if arg3 == 0 then
			return any_convertFilterToTranslation_result1
		end
		return any_convertFilterToTranslation_result1.." ("..arg3..')'
	end
	function arg1.isSelected(arg1_4) -- Line 73
		--[[ Upvalues[1]:
			[1]: filterStates_upvr (copied, readonly)
		]]
		if arg1_4 == filterStates_upvr.All then
			return false
		end
		return true
	end
	function arg1.dismissFriendPruningTooltip() -- Line 81
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:setState({
			showFriendPruningTooltip = false;
			hasDismissedFriendPruningTooltip = true;
		})
		arg1.props.onTooltipDismissal()
	end
end
local ImpressionEvents_upvr = require(FriendsLanding.FriendsLandingAnalytics.ImpressionEvents)
function any_extend_result1.didMount(arg1) -- Line 90
	--[[ Upvalues[1]:
		[1]: ImpressionEvents_upvr (readonly)
	]]
	if arg1.props.initialShowFriendPruningTooltip and arg1.props.analytics then
		arg1.props.analytics:impressionEvent(ImpressionEvents_upvr.FriendPruningTooltipSeen, {
			friendCount = tostring(arg1.props.friendCount);
			inactiveFriendCount = tostring(arg1.props.inactiveFriendCount);
		})
	end
end
function any_extend_result1.didUpdate(arg1) -- Line 101
	local tbl = {}
	local initialShowFriendPruningTooltip = arg1.props.initialShowFriendPruningTooltip
	if initialShowFriendPruningTooltip then
		initialShowFriendPruningTooltip = not arg1.state.hasDismissedFriendPruningTooltip
	end
	tbl.showFriendPruningTooltip = initialShowFriendPruningTooltip
	arg1:setState(tbl)
end
local withStyle_upvr = UIBlox.Style.withStyle
local Images_upvr = UIBlox.App.ImageSet.Images
local withLocalization_upvr = dependencies.withLocalization
local TooltipOrientation_upvr = UIBlox.App.Dialog.Enum.TooltipOrientation
local CoreGui_upvr = dependencies.CoreGui
local withTooltip_upvr = UIBlox.App.Dialog.TooltipV2.withTooltip
local getIconSize_upvr = UIBlox.App.ImageSet.getIconSize
local IconSize_upvr = UIBlox.App.ImageSet.Enum.IconSize
local TextService_upvr = dependencies.TextService
local PillWithAlert_upvr = require(FriendsLanding.Components.PillWithAlert)
local Pill_upvr = UIBlox.App.Control.Pill
function any_extend_result1.render(arg1) -- Line 109
	--[[ Upvalues[12]:
		[1]: withStyle_upvr (readonly)
		[2]: Images_upvr (readonly)
		[3]: withLocalization_upvr (readonly)
		[4]: TooltipOrientation_upvr (readonly)
		[5]: CoreGui_upvr (readonly)
		[6]: Roact_upvr (readonly)
		[7]: withTooltip_upvr (readonly)
		[8]: getIconSize_upvr (readonly)
		[9]: IconSize_upvr (readonly)
		[10]: TextService_upvr (readonly)
		[11]: PillWithAlert_upvr (readonly)
		[12]: Pill_upvr (readonly)
	]]
	return withStyle_upvr(function(arg1_5) -- Line 110
		--[[ Upvalues[13]:
			[1]: Images_upvr (copied, readonly)
			[2]: withLocalization_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: TooltipOrientation_upvr (copied, readonly)
			[5]: CoreGui_upvr (copied, readonly)
			[6]: Roact_upvr (copied, readonly)
			[7]: withStyle_upvr (copied, readonly)
			[8]: withTooltip_upvr (copied, readonly)
			[9]: getIconSize_upvr (copied, readonly)
			[10]: IconSize_upvr (copied, readonly)
			[11]: TextService_upvr (copied, readonly)
			[12]: PillWithAlert_upvr (copied, readonly)
			[13]: Pill_upvr (copied, readonly)
		]]
		local icons_actions_filter_upvr = Images_upvr["icons/actions/filter"]
		return withLocalization_upvr({
			all = "Feature.Friends.Label.All";
			inactive = "Feature.Friends.Label.FewestInteractions";
			inExperience = "Feature.Friends.Label.InGame";
			tooltipHeader = "Feature.Friends.Label.ManageFriendsList";
			tooltipBody = "Feature.Friends.Label.ManageFriendsListCaption";
			online = "Common.Presence.Label.Online";
			offline = "Common.Presence.Label.Offline";
		})(function(arg1_6) -- Line 120
			--[[ Upvalues[12]:
				[1]: arg1 (copied, readonly)
				[2]: TooltipOrientation_upvr (copied, readonly)
				[3]: CoreGui_upvr (copied, readonly)
				[4]: Roact_upvr (copied, readonly)
				[5]: withStyle_upvr (copied, readonly)
				[6]: withTooltip_upvr (copied, readonly)
				[7]: getIconSize_upvr (copied, readonly)
				[8]: IconSize_upvr (copied, readonly)
				[9]: TextService_upvr (copied, readonly)
				[10]: PillWithAlert_upvr (copied, readonly)
				[11]: icons_actions_filter_upvr (readonly)
				[12]: Pill_upvr (copied, readonly)
			]]
			local filter_upvr = arg1.props.filter
			local module_2_upvr = {
				headerText = arg1_6.tooltipHeader;
				bodyText = arg1_6.tooltipBody;
			}
			local module_5_upvr = {
				preferredOrientation = TooltipOrientation_upvr.Bottom;
				guiTarget = CoreGui_upvr;
				active = true;
				DisplayOrder = 2;
			}
			local module_4 = {
				AutomaticSize = Enum.AutomaticSize.Y;
				Size = UDim2.new(1, 0, 0, 36);
			}
			local props = arg1.props
			module_4.LayoutOrder = props.layoutOrder
			module_4.BackgroundTransparency = 1
			local module_6 = {}
			if arg1.state.showFriendPruningTooltip then
				props = withStyle_upvr
				local any_buildFilterText_result1_upvr = arg1.buildFilterText(filter_upvr, arg1_6, arg1.props.friendCount)
				local isDisabled_upvr = arg1.props.isDisabled
				local onActivated_upvr = arg1.props.onActivated
				props = props(function(arg1_7) -- Line 145
					--[[ Upvalues[16]:
						[1]: withTooltip_upvr (copied, readonly)
						[2]: module_2_upvr (readonly)
						[3]: module_5_upvr (readonly)
						[4]: getIconSize_upvr (copied, readonly)
						[5]: IconSize_upvr (copied, readonly)
						[6]: TextService_upvr (copied, readonly)
						[7]: any_buildFilterText_result1_upvr (readonly)
						[8]: Roact_upvr (copied, readonly)
						[9]: arg1 (copied, readonly)
						[10]: CoreGui_upvr (copied, readonly)
						[11]: PillWithAlert_upvr (copied, readonly)
						[12]: icons_actions_filter_upvr (copied, readonly)
						[13]: isDisabled_upvr (readonly)
						[14]: filter_upvr (readonly)
						[15]: onActivated_upvr (readonly)
						[16]: Pill_upvr (copied, readonly)
					]]
					return withTooltip_upvr(module_2_upvr, module_5_upvr, function(arg1_8) -- Line 146
						--[[ Upvalues[14]:
							[1]: arg1_7 (readonly)
							[2]: getIconSize_upvr (copied, readonly)
							[3]: IconSize_upvr (copied, readonly)
							[4]: TextService_upvr (copied, readonly)
							[5]: any_buildFilterText_result1_upvr (copied, readonly)
							[6]: Roact_upvr (copied, readonly)
							[7]: arg1 (copied, readonly)
							[8]: CoreGui_upvr (copied, readonly)
							[9]: PillWithAlert_upvr (copied, readonly)
							[10]: icons_actions_filter_upvr (copied, readonly)
							[11]: isDisabled_upvr (copied, readonly)
							[12]: filter_upvr (copied, readonly)
							[13]: onActivated_upvr (copied, readonly)
							[14]: Pill_upvr (copied, readonly)
						]]
						local Font = arg1_7.Font
						local module_3 = {
							Size = UDim2.fromOffset(TextService_upvr:GetTextSize(any_buildFilterText_result1_upvr, Font.CaptionHeader.RelativeSize * Font.BaseSize, Font.CaptionHeader.Font, Vector2.new(10000, 10000)).X + 24 + 4 + getIconSize_upvr(IconSize_upvr.Small), 28);
							LayoutOrder = arg1.props.layoutOrder;
							BackgroundTransparency = 1;
						}
						module_3[Roact_upvr.Change.AbsoluteSize] = arg1_8
						module_3[Roact_upvr.Change.AbsolutePosition] = arg1_8
						local module = {}
						local any_createElement_result1 = Roact_upvr.createElement(Roact_upvr.Portal, {
							target = CoreGui_upvr;
						}, {
							ScreenGui = Roact_upvr.createElement("ScreenGui", {
								ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
								DisplayOrder = 1;
							}, {
								DismissFriendPruningTooltipButton = Roact_upvr.createElement("TextButton", {
									ZIndex = 0;
									BackgroundTransparency = 1;
									Size = UDim2.fromScale(1, 1);
									Text = "";
									[Roact_upvr.Event.Activated] = arg1.dismissFriendPruningTooltip;
									[Roact_upvr.Event.TouchSwipe] = arg1.dismissFriendPruningTooltip;
									[Roact_upvr.Event.MouseWheelForward] = arg1.dismissFriendPruningTooltip;
									[Roact_upvr.Event.MouseWheelBackward] = arg1.dismissFriendPruningTooltip;
								});
							});
						})
						module.PortalToCoreGui = any_createElement_result1
						if arg1.props.showFriendPruningAlert then
							any_createElement_result1 = Roact_upvr.createElement
							any_createElement_result1 = any_createElement_result1(PillWithAlert_upvr, {
								icon = icons_actions_filter_upvr;
								text = any_buildFilterText_result1_upvr;
								isDisabled = isDisabled_upvr;
								isSelected = arg1.isSelected(filter_upvr);
								onActivated = onActivated_upvr;
							})
						else
							any_createElement_result1 = Roact_upvr.createElement
							any_createElement_result1 = any_createElement_result1(Pill_upvr, {
								icon = icons_actions_filter_upvr;
								text = any_buildFilterText_result1_upvr;
								isDisabled = isDisabled_upvr;
								isSelected = arg1.isSelected(filter_upvr);
								onActivated = onActivated_upvr;
							})
						end
						module.FilterByButtonPillPossiblyWithAlert = any_createElement_result1
						return Roact_upvr.createElement("Frame", module_3, module)
					end)
				end)
			elseif arg1.props.showFriendPruningAlert then
				props = Roact_upvr.createElement
				props = props(PillWithAlert_upvr, {
					icon = icons_actions_filter_upvr;
					text = any_buildFilterText_result1_upvr;
					isDisabled = isDisabled_upvr;
					isSelected = arg1.isSelected(filter_upvr);
					onActivated = onActivated_upvr;
				})
			else
				props = Roact_upvr.createElement
				props = props(Pill_upvr, {
					icon = icons_actions_filter_upvr;
					text = any_buildFilterText_result1_upvr;
					isDisabled = isDisabled_upvr;
					isSelected = arg1.isSelected(filter_upvr);
					onActivated = onActivated_upvr;
				})
			end
			module_6.Button = props
			return Roact_upvr.createElement("Frame", module_4, module_6)
		end)
	end)
end
return any_extend_result1