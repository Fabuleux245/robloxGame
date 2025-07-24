-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:35:42
-- Luau version 6, Types version 3
-- Time taken: 0.004145 seconds

local VirtualEvents = script:FindFirstAncestor("VirtualEvents")
local UIBlox = require(VirtualEvents.Parent.UIBlox)
local Images = UIBlox.App.ImageSet.Images
local tbl_upvr = {
	shouldTruncateText = true;
	maxDescriptionLines = 2;
}
local Cryo_upvr = require(VirtualEvents.Parent.Cryo)
local React_upvr = require(VirtualEvents.Parent.React)
local getEventTimerStatus_upvr = require(VirtualEvents.Common.getEventTimerStatus)
local useStyle_upvr = UIBlox.Core.Style.useStyle
local useRefImpression_upvr = require(VirtualEvents.Hooks.useRefImpression)
local useLocalization_upvr = require(VirtualEvents.Parent.Localization).Hooks.useLocalization
local getVirtualEventDates_upvr = require(VirtualEvents.Common.getVirtualEventDates)
local dependencyArray_upvr = require(VirtualEvents.Parent.RoactUtils).Hooks.dependencyArray
local Button_upvr = UIBlox.App.Button.Button
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
local udim_upvr_2 = UDim.new(0, 12)
local udim_upvr = UDim.new(0, 4)
local StyledTextLabel_upvr = UIBlox.App.Text.StyledTextLabel
local formatDate_upvr = require(VirtualEvents.Common.formatDate)
local utf8_char_result1_upvr = utf8.char(8226)
local EventRowCounter_upvr = require(script.Parent.EventRowCounter)
local icons_actions_favoriteOn_upvr = Images["icons/actions/favoriteOn"]
local icons_status_games_people_playing_small_upvr = Images["icons/status/games/people-playing_small"]
return function(arg1) -- Line 51, Named "EventRow"
	--[[ Upvalues[19]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: getEventTimerStatus_upvr (readonly)
		[5]: useStyle_upvr (readonly)
		[6]: useRefImpression_upvr (readonly)
		[7]: useLocalization_upvr (readonly)
		[8]: getVirtualEventDates_upvr (readonly)
		[9]: dependencyArray_upvr (readonly)
		[10]: Button_upvr (readonly)
		[11]: ButtonType_upvr (readonly)
		[12]: udim_upvr_2 (readonly)
		[13]: udim_upvr (readonly)
		[14]: StyledTextLabel_upvr (readonly)
		[15]: formatDate_upvr (readonly)
		[16]: utf8_char_result1_upvr (readonly)
		[17]: EventRowCounter_upvr (readonly)
		[18]: icons_actions_favoriteOn_upvr (readonly)
		[19]: icons_status_games_people_playing_small_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 81 start (CF ANALYSIS FAILED)
	local any_join_result1_upvr = Cryo_upvr.Dictionary.join(tbl_upvr, arg1)
	local any_createRef_result1 = React_upvr.createRef()
	local var7_result1_upvr = getEventTimerStatus_upvr(any_join_result1_upvr.virtualEvent, DateTime.now())
	local var8_result1_upvr = useStyle_upvr()
	useRefImpression_upvr(any_createRef_result1, function() -- Line 59
		--[[ Upvalues[1]:
			[1]: any_join_result1_upvr (readonly)
		]]
		if any_join_result1_upvr.onImpression then
			any_join_result1_upvr.onImpression()
		end
	end)
	local function _() -- Line 71
		--[[ Upvalues[2]:
			[1]: getVirtualEventDates_upvr (copied, readonly)
			[2]: any_join_result1_upvr (readonly)
		]]
		return getVirtualEventDates_upvr(any_join_result1_upvr.virtualEvent)
	end
	local any_useCallback_result1_upvr_2 = React_upvr.useCallback(function() -- Line 75
		--[[ Upvalues[1]:
			[1]: any_join_result1_upvr (readonly)
		]]
		local var31
		if any_join_result1_upvr.virtualEvent.userRsvpStatus ~= "going" then
			var31 = "going"
		else
			var31 = "notGoing"
		end
		if any_join_result1_upvr.onRsvpChanged then
			any_join_result1_upvr.onRsvpChanged(var31)
		end
	end, dependencyArray_upvr(any_join_result1_upvr.onRsvpChanged))
	local any_useCallback_result1_upvr = React_upvr.useCallback(function() -- Line 88
		--[[ Upvalues[1]:
			[1]: any_join_result1_upvr (readonly)
		]]
		if any_join_result1_upvr.onJoinEvent then
			any_join_result1_upvr.onJoinEvent()
		end
	end, dependencyArray_upvr(any_join_result1_upvr.onJoinEvent))
	local useLocalization_upvr_result1_upvr = useLocalization_upvr({
		notifyMe = "Feature.VirtualEvents.NotifyMe";
		unfollowEvent = "Feature.VirtualEvents.UnfollowEvent";
		joinEvent = "Feature.VirtualEvents.JoinEvent";
	})
	local function _() -- Line 94
		--[[ Upvalues[9]:
			[1]: var7_result1_upvr (readonly)
			[2]: React_upvr (copied, readonly)
			[3]: Button_upvr (copied, readonly)
			[4]: ButtonType_upvr (copied, readonly)
			[5]: useLocalization_upvr_result1_upvr (readonly)
			[6]: var8_result1_upvr (readonly)
			[7]: any_useCallback_result1_upvr (readonly)
			[8]: any_join_result1_upvr (readonly)
			[9]: any_useCallback_result1_upvr_2 (readonly)
		]]
		if var7_result1_upvr == "Ongoing" or var7_result1_upvr == "ElapsedImminent" then
			return React_upvr.createElement(Button_upvr, {
				buttonType = ButtonType_upvr.PrimaryContextual;
				layoutOrder = 3;
				text = useLocalization_upvr_result1_upvr.joinEvent;
				fontStyle = var8_result1_upvr.Font.CaptionHeader;
				size = UDim2.new(1, 0, 0, 28);
				onActivated = any_useCallback_result1_upvr;
			})
		end
		if any_join_result1_upvr.virtualEvent.userRsvpStatus ~= "going" then
			return React_upvr.createElement(Button_upvr, {
				buttonType = ButtonType_upvr.PrimarySystem;
				layoutOrder = 3;
				text = useLocalization_upvr_result1_upvr.notifyMe;
				fontStyle = var8_result1_upvr.Font.CaptionHeader;
				size = UDim2.new(1, 0, 0, 28);
				onActivated = any_useCallback_result1_upvr_2;
			})
		end
		return React_upvr.createElement(Button_upvr, {
			buttonType = ButtonType_upvr.Secondary;
			layoutOrder = 3;
			text = useLocalization_upvr_result1_upvr.unfollowEvent;
			fontStyle = var8_result1_upvr.Font.CaptionHeader;
			size = UDim2.new(1, 0, 0, 28);
			onActivated = any_useCallback_result1_upvr_2;
		})
	end
	if any_join_result1_upvr.shouldTruncateText then
	else
	end
	local experienceDetails = any_join_result1_upvr.virtualEvent.experienceDetails
	local rsvpCounters = any_join_result1_upvr.virtualEvent.rsvpCounters
	if rsvpCounters and rsvpCounters.going then
	else
	end
	if experienceDetails and experienceDetails.playing then
	else
	end
	if var7_result1_upvr ~= "Ongoing" then
		if var7_result1_upvr ~= "ElapsedImminent" then
		else
		end
	end
	local _ = {
		Size = UDim2.fromScale(1, 0);
		AutoButtonColor = false;
		AutomaticSize = Enum.AutomaticSize.Y;
		BorderSizePixel = 0;
		BackgroundColor3 = var8_result1_upvr.Theme.BackgroundUIDefault.Color;
		BackgroundTransparency = var8_result1_upvr.Theme.BackgroundUIDefault.Transparency;
		ref = any_createRef_result1;
		[React_upvr.Event.Activated] = any_join_result1_upvr.onTileActivated;
	}
	local tbl = {
		Layout = React_upvr.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder;
			Padding = udim_upvr_2;
		});
		Padding = React_upvr.createElement("UIPadding", {
			PaddingTop = udim_upvr_2;
			PaddingRight = udim_upvr_2;
			PaddingBottom = udim_upvr_2;
			PaddingLeft = udim_upvr_2;
		});
		BorderRadius = React_upvr.createElement("UICorner", {
			CornerRadius = udim_upvr_2;
		});
		BorderColor = React_upvr.createElement("UIStroke", {
			Color = var8_result1_upvr.Theme.Divider.Color;
			Transparency = var8_result1_upvr.Theme.Divider.Transparency;
			Thickness = 1;
		});
	}
	local _ = {
		LayoutOrder = 1;
		AutomaticSize = Enum.AutomaticSize.XY;
		BackgroundTransparency = 1;
	}
	;({}).Layout = React_upvr.createElement("UIListLayout", {
		SortOrder = Enum.SortOrder.LayoutOrder;
		Padding = udim_upvr;
	})
	if any_join_result1_upvr.shouldTruncateText then
		-- KONSTANTWARNING: GOTO [340] #234
	end
	-- KONSTANTERROR: [0] 1. Error Block 81 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [338] 233. Error Block 79 start (CF ANALYSIS FAILED)
	;({
		layoutOrder = 1;
		text = any_join_result1_upvr.virtualEvent.title;
		fontStyle = var8_result1_upvr.Font.Header2;
		colorStyle = var8_result1_upvr.Theme.TextEmphasis;
	}).automaticSize = Enum.AutomaticSize.XY
	if any_join_result1_upvr.shouldTruncateText then
		-- KONSTANTWARNING: GOTO [352] #243
	end
	-- KONSTANTERROR: [338] 233. Error Block 79 end (CF ANALYSIS FAILED)
end