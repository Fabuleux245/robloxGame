-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:35:45
-- Luau version 6, Types version 3
-- Time taken: 0.009566 seconds

local VirtualEvents = script:FindFirstAncestor("VirtualEvents")
local Parent = VirtualEvents.Parent
local React_upvr = require(Parent.React)
local GameTile = require(Parent.GameTile)
local GamePlayButton = require(Parent.GamePlayButton)
local useDesignTokens_upvr = require(Parent.Style).useDesignTokens
local FFlagPreferredTextSizeEventTileFix_upvr = require(Parent.SharedFlags).FFlagPreferredTextSizeEventTileFix
local useTextSizeOffset_upvr = require(Parent.UIBlox).Core.Style.useTextSizeOffset
local getVirtualEventDates_upvr = require(VirtualEvents.Common.getVirtualEventDates)
local useMemo_upvr = React_upvr.useMemo
local FooterCornerButtonStyle_upvr = GameTile.FooterCornerButtonStyle
local useRoactService_upvr = require(Parent.RobloxAppHooks).useRoactService
local RoactNetworking_upvr = require(Parent.RoactServiceTags).RoactNetworking
local usePlayButtonState_upvr = GamePlayButton.usePlayButtonState
local PlayButtonStates_upvr = GamePlayButton.PlayButtonStates
local GetFFlagLuaAppEnableSquadPage_upvr = require(Parent.SharedFlags).GetFFlagLuaAppEnableSquadPage
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local useCallback_upvr = React_upvr.useCallback
local useEffect_upvr = React_upvr.useEffect
local formatDateLocalized_upvr = require(VirtualEvents.Common.formatDateLocalized)
local NotificationModalsManager_upvr = require(Parent.NotificationModalsManager)
local useState_upvr = React_upvr.useState
local fetchEventThumbnail_upvr = require(VirtualEvents.Common.fetchEventThumbnail)
local ImpressionsTagUtility_upvr = require(Parent.Impressions).ImpressionsTagUtility
local GameTileView_upvr = GameTile.GameTileView
local GridTileTextFooter_upvr = GameTile.GridTileTextFooter
local GameTileThumbnailBadges_upvr = GameTile.GameTileThumbnailBadges
local FooterCornerButton_upvr = GameTile.FooterCornerButton
local EventWideFooterButton_upvr = require(VirtualEvents.Components.EventsListCarousel.EventWideFooterButton)
return function(arg1) -- Line 55
	--[[ Upvalues[25]:
		[1]: useDesignTokens_upvr (readonly)
		[2]: FFlagPreferredTextSizeEventTileFix_upvr (readonly)
		[3]: useTextSizeOffset_upvr (readonly)
		[4]: getVirtualEventDates_upvr (readonly)
		[5]: useMemo_upvr (readonly)
		[6]: FooterCornerButtonStyle_upvr (readonly)
		[7]: useRoactService_upvr (readonly)
		[8]: RoactNetworking_upvr (readonly)
		[9]: usePlayButtonState_upvr (readonly)
		[10]: PlayButtonStates_upvr (readonly)
		[11]: GetFFlagLuaAppEnableSquadPage_upvr (readonly)
		[12]: useLocalization_upvr (readonly)
		[13]: useCallback_upvr (readonly)
		[14]: React_upvr (readonly)
		[15]: useEffect_upvr (readonly)
		[16]: formatDateLocalized_upvr (readonly)
		[17]: NotificationModalsManager_upvr (readonly)
		[18]: useState_upvr (readonly)
		[19]: fetchEventThumbnail_upvr (readonly)
		[20]: ImpressionsTagUtility_upvr (readonly)
		[21]: GameTileView_upvr (readonly)
		[22]: GridTileTextFooter_upvr (readonly)
		[23]: GameTileThumbnailBadges_upvr (readonly)
		[24]: FooterCornerButton_upvr (readonly)
		[25]: EventWideFooterButton_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 64 start (CF ANALYSIS FAILED)
	local var66_upvr
	if FFlagPreferredTextSizeEventTileFix_upvr then
	else
	end
	local Event_upvr_2 = arg1.Event
	local getVirtualEventDates_upvr_result1_upvr = getVirtualEventDates_upvr(Event_upvr_2)
	var66_upvr = DateTime.now().UnixTimestamp
	if getVirtualEventDates_upvr_result1_upvr.startDate.UnixTimestamp > var66_upvr then
		-- KONSTANTWARNING: GOTO [26] #21
	end
	-- KONSTANTERROR: [0] 1. Error Block 64 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [25] 20. Error Block 74 start (CF ANALYSIS FAILED)
	local var69_upvr = true
	if Event_upvr_2.userRsvpStatus ~= "going" then
		var66_upvr = false
	else
		var66_upvr = true
	end
	local function _() -- Line 64
		--[[ Upvalues[3]:
			[1]: var69_upvr (readonly)
			[2]: FooterCornerButtonStyle_upvr (copied, readonly)
			[3]: var66_upvr (readonly)
		]]
		if var69_upvr then
			return FooterCornerButtonStyle_upvr.Play
		end
		if var66_upvr then
			return FooterCornerButtonStyle_upvr.Following
		end
		return FooterCornerButtonStyle_upvr.Follow
	end
	local tbl_12 = {var69_upvr, var66_upvr}
	local useRoactService_upvr_result1_upvr = useRoactService_upvr(RoactNetworking_upvr)
	local var15_result1 = usePlayButtonState_upvr(useRoactService_upvr_result1_upvr, arg1.Event.universeId or "")
	if var15_result1.playButtonState ~= PlayButtonStates_upvr.Playable then
		if GetFFlagLuaAppEnableSquadPage_upvr() then
			if var15_result1.playButtonState ~= PlayButtonStates_upvr.PlayableWithParty then
				local _ = false
				-- KONSTANTWARNING: Skipped task `defvar` above
			else
			end
		end
	end
	local useLocalization_upvr_result1_upvr = useLocalization_upvr({
		HappeningNow = "Feature.Home.Label.HappeningNow";
		DateAtTime = "Feature.VirtualEvents.Label.DateAtTime";
		ToastText = "Feature.VirtualEvents.Label.ReminderSetForEventTime";
	})
	local var78_upvr = true
	local function _() -- Line 85
		--[[ Upvalues[4]:
			[1]: var78_upvr (readonly)
			[2]: var69_upvr (readonly)
			[3]: arg1 (readonly)
			[4]: Event_upvr_2 (readonly)
		]]
		local var79
		if not var79 then
		else
			var79 = var69_upvr
			if var79 then
				var79 = arg1.onJoinEvent
				var79(Event_upvr_2)
				return
			end
			var79 = nil
			if Event_upvr_2.userRsvpStatus ~= "going" then
				var79 = "going"
			else
				var79 = "notGoing"
			end
			if arg1.onRsvpChanged then
				arg1.onRsvpChanged(Event_upvr_2, var79)
			end
		end
	end
	local _ = {var69_upvr, arg1.onJoinEvent, arg1.onRsvpChanged, Event_upvr_2.userRsvpStatus, Event_upvr_2, var78_upvr}
	local any_useRef_result1_upvr_3 = React_upvr.useRef(Event_upvr_2.userRsvpStatus)
	useEffect_upvr(function() -- Line 107
		--[[ Upvalues[6]:
			[1]: any_useRef_result1_upvr_3 (readonly)
			[2]: Event_upvr_2 (readonly)
			[3]: formatDateLocalized_upvr (copied, readonly)
			[4]: useLocalization_upvr_result1_upvr (readonly)
			[5]: getVirtualEventDates_upvr_result1_upvr (readonly)
			[6]: NotificationModalsManager_upvr (copied, readonly)
		]]
		if any_useRef_result1_upvr_3.current and any_useRef_result1_upvr_3.current ~= "going" and Event_upvr_2.userRsvpStatus == "going" then
			NotificationModalsManager_upvr.SetUIBloxToast({
				toastTitle = useLocalization_upvr_result1_upvr.ToastText:gsub("{(.-)}", {
					eventName = Event_upvr_2.title;
					eventTime = formatDateLocalized_upvr(useLocalization_upvr_result1_upvr.DateAtTime, getVirtualEventDates_upvr_result1_upvr.startDate);
				});
				sequenceNumber = DateTime.now().UnixTimestamp;
			})
		end
		any_useRef_result1_upvr_3.current = Event_upvr_2.userRsvpStatus
	end, {Event_upvr_2.userRsvpStatus, Event_upvr_2.title, getVirtualEventDates_upvr_result1_upvr.startDate, useLocalization_upvr_result1_upvr.DateAtTime, useLocalization_upvr_result1_upvr.ToastText})
	local var23_result1, useState_upvr_result2_upvr_2 = useState_upvr(nil)
	useEffect_upvr(function() -- Line 134
		--[[ Upvalues[5]:
			[1]: fetchEventThumbnail_upvr (copied, readonly)
			[2]: useRoactService_upvr_result1_upvr (readonly)
			[3]: Event_upvr_2 (readonly)
			[4]: arg1 (readonly)
			[5]: useState_upvr_result2_upvr_2 (readonly)
		]]
		local var89_upvw = true
		fetchEventThumbnail_upvr(useRoactService_upvr_result1_upvr, Event_upvr_2.id, arg1.DefaultThumbnail):andThen(function(arg1_3) -- Line 136
			--[[ Upvalues[2]:
				[1]: var89_upvw (read and write)
				[2]: useState_upvr_result2_upvr_2 (copied, readonly)
			]]
			if var89_upvw then
				useState_upvr_result2_upvr_2(arg1_3)
			end
		end)
		return function() -- Line 141
			--[[ Upvalues[1]:
				[1]: var89_upvw (read and write)
			]]
			var89_upvw = false
		end
	end, {Event_upvr_2.id, arg1.DefaultThumbnail})
	local any_useRef_result1_upvr_2 = React_upvr.useRef(nil)
	React_upvr.useEffect(function() -- Line 147
		--[[ Upvalues[3]:
			[1]: ImpressionsTagUtility_upvr (copied, readonly)
			[2]: any_useRef_result1_upvr_2 (readonly)
			[3]: arg1 (readonly)
		]]
		ImpressionsTagUtility_upvr.AddTag(any_useRef_result1_upvr_2, arg1.impressionsTag, arg1.layoutOrder)
		return function() -- Line 149
			--[[ Upvalues[3]:
				[1]: ImpressionsTagUtility_upvr (copied, readonly)
				[2]: any_useRef_result1_upvr_2 (copied, readonly)
				[3]: arg1 (copied, readonly)
			]]
			ImpressionsTagUtility_upvr.RemoveTag(any_useRef_result1_upvr_2, arg1.impressionsTag, arg1.layoutOrder)
		end
	end, {any_useRef_result1_upvr_2, arg1.impressionsTag, arg1.layoutOrder})
	local _ = {
		BackgroundTransparency = 1;
		LayoutOrder = arg1.layoutOrder;
		Size = arg1.size;
		ref = any_useRef_result1_upvr_2;
	}
	local _ = {
		imageAspectRatio = 1.7777777777777777;
		image = var23_result1;
		isContained = true;
		Size = UDim2.fromScale(1, 1);
		title = Event_upvr_2.title or "";
		onActivated = useCallback_upvr(function() -- Line 154
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1.onTileActivated(arg1.Event)
		end, {arg1.onTileActivated, arg1.Event});
	}
	if Event_upvr_2.description then
		-- KONSTANTWARNING: GOTO [252] #183
	end
	-- KONSTANTERROR: [25] 20. Error Block 74 end (CF ANALYSIS FAILED)
end