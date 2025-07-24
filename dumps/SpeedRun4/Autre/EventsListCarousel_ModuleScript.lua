-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:35:44
-- Luau version 6, Types version 3
-- Time taken: 0.004965 seconds

local VirtualEvents = script:FindFirstAncestor("VirtualEvents")
local React_upvr = require(VirtualEvents.Parent.React)
local CollectionViews = require(VirtualEvents.Parent.CollectionViews)
local FFlagPreferredTextSizeEventTileFix_upvr = require(VirtualEvents.Parent.SharedFlags).FFlagPreferredTextSizeEventTileFix
local useTextSizeOffset_upvr = require(VirtualEvents.Parent.UIBlox).Core.Style.useTextSizeOffset
local useDesignTokens_upvr = require(VirtualEvents.Parent.Style).useDesignTokens
local FFlagEnableEventsRedesignExperiment_upvr = require(VirtualEvents.Parent.SharedFlags).FFlagEnableEventsRedesignExperiment
local useUserExperiment_upvr = require(VirtualEvents.Parent.RoactAppExperiment).useUserExperiment
local AppUserLayers_upvr = require(VirtualEvents.Parent.ExperimentLayers).AppUserLayers
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("EventUseBottomButtonByDefault", false)
local FFlagLuaAppEventsListCarouselUniqueImpressionsTag_upvr = require(VirtualEvents.Parent.SharedFlags).FFlagLuaAppEventsListCarouselUniqueImpressionsTag
local HttpService_upvr = game:GetService("HttpService")
local useCallback_upvr = React_upvr.useCallback
local EventTile_upvr = require(script.Parent.EventTile)
local useGetGameTileHeight_upvr = require(VirtualEvents.Parent.GameCollections).useGetGameTileHeight
local useLocalization_upvr = require(VirtualEvents.Parent.Localization).Hooks.useLocalization
local sortEventsByStartDate_upvr = require(VirtualEvents.Common.sortEventsByStartDate)
local game_DefineFastFlag_result1_upvr_2 = game:DefineFastFlag("LuaAppNilEventImpressionMutedError", false)
local flaggedMutedError_upvr = require(VirtualEvents.Parent.Loggers).flaggedMutedError
local useCollectionImpressionsSignal_upvr = CollectionViews.useCollectionImpressionsSignal
local useEffect_upvr = React_upvr.useEffect
local CollectionCarousel_upvr = CollectionViews.CollectionCarousel
local FrameBoundsImpressionsTracker_upvr = require(VirtualEvents.Parent.Impressions).FrameBoundsImpressionsTracker
return function(arg1) -- Line 56
	--[[ Upvalues[21]:
		[1]: FFlagPreferredTextSizeEventTileFix_upvr (readonly)
		[2]: useTextSizeOffset_upvr (readonly)
		[3]: useDesignTokens_upvr (readonly)
		[4]: FFlagEnableEventsRedesignExperiment_upvr (readonly)
		[5]: useUserExperiment_upvr (readonly)
		[6]: AppUserLayers_upvr (readonly)
		[7]: game_DefineFastFlag_result1_upvr (readonly)
		[8]: FFlagLuaAppEventsListCarouselUniqueImpressionsTag_upvr (readonly)
		[9]: React_upvr (readonly)
		[10]: HttpService_upvr (readonly)
		[11]: useCallback_upvr (readonly)
		[12]: EventTile_upvr (readonly)
		[13]: useGetGameTileHeight_upvr (readonly)
		[14]: useLocalization_upvr (readonly)
		[15]: sortEventsByStartDate_upvr (readonly)
		[16]: game_DefineFastFlag_result1_upvr_2 (readonly)
		[17]: flaggedMutedError_upvr (readonly)
		[18]: useCollectionImpressionsSignal_upvr (readonly)
		[19]: useEffect_upvr (readonly)
		[20]: CollectionCarousel_upvr (readonly)
		[21]: FrameBoundsImpressionsTracker_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var25
	if FFlagPreferredTextSizeEventTileFix_upvr then
	else
	end
	if FFlagEnableEventsRedesignExperiment_upvr then
		var25 = useUserExperiment_upvr
		var25 = var25({AppUserLayers_upvr.ExperienceDetailsPageExposureLayer}, function(arg1_2) -- Line 61
			--[[ Upvalues[1]:
				[1]: AppUserLayers_upvr (copied, readonly)
			]]
			local var29 = arg1_2[AppUserLayers_upvr.ExperienceDetailsPageExposureLayer]
			if not var29 then
				var29 = {}
			end
			return var29.eventComponentUseBottomButton
		end, false)
	else
		var25 = nil
	end
	local var30_upvr = game_DefineFastFlag_result1_upvr or var25
	if FFlagLuaAppEventsListCarouselUniqueImpressionsTag_upvr then
		local any_useMemo_result1_upvw = React_upvr.useMemo(function() -- Line 70
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: HttpService_upvr (copied, readonly)
			]]
			return `EventsListCarousel_{arg1.universeId}{HttpService_upvr:GenerateGUID()}`
		end, {arg1.universeId})
	end
	local tbl_3 = {}
	if FFlagLuaAppEventsListCarouselUniqueImpressionsTag_upvr then
	else
	end
	tbl_3[1] = arg1.defaultThumbnail
	tbl_3[2] = arg1.onJoinEvent
	tbl_3[3] = arg1.onRsvpChanged
	tbl_3[4] = arg1.onTileActivated
	tbl_3[5] = nil
	if FFlagPreferredTextSizeEventTileFix_upvr then
		-- KONSTANTWARNING: GOTO [80] #68
	end
	if var30_upvr then
	else
	end
	local sortEventsByStartDate_upvr_result1_upvr = sortEventsByStartDate_upvr(arg1.virtualEvents)
	local any_useRef_result1_2_upvr = React_upvr.useRef({})
	local tbl = {}
	if game_DefineFastFlag_result1_upvr_2 then
	else
	end
	tbl[1] = arg1.onEventImpression
	tbl[2] = sortEventsByStartDate_upvr_result1_upvr
	tbl[3] = nil
	local any_useRef_result1 = React_upvr.useRef(nil)
	local var21_result1, var21_result2 = useCollectionImpressionsSignal_upvr()
	local any_useState_result1, any_useState_result2_upvr = React_upvr.useState(os.clock())
	useEffect_upvr(function() -- Line 152
		--[[ Upvalues[1]:
			[1]: any_useState_result2_upvr (readonly)
		]]
		any_useState_result2_upvr(os.clock())
	end, {arg1.virtualEvents})
	if #arg1.virtualEvents == 0 then
		return nil
	end
	local module_2 = {}
	local tbl_4 = {
		scrollingFrameRef = any_useRef_result1;
		title = useLocalization_upvr({
			title = "Feature.VirtualEvents.EventsListTitle";
		}).title;
	}
	local var53 = true
	tbl_4.hideHeaderButton = var53
	tbl_4.items = sortEventsByStartDate_upvr_result1_upvr
	tbl_4.renderItem = useCallback_upvr(function(arg1_3, arg2, arg3, arg4) -- Line 76
		--[[ Upvalues[6]:
			[1]: React_upvr (copied, readonly)
			[2]: EventTile_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: FFlagLuaAppEventsListCarouselUniqueImpressionsTag_upvr (copied, readonly)
			[5]: any_useMemo_result1_upvw (read and write)
			[6]: var30_upvr (readonly)
		]]
		local module = {}
		module.Event = arg1_3
		module.DefaultThumbnail = arg1.defaultThumbnail
		module.onJoinEvent = arg1.onJoinEvent
		module.onRsvpChanged = arg1.onRsvpChanged
		local onTileActivated = arg1.onTileActivated
		module.onTileActivated = onTileActivated
		if FFlagLuaAppEventsListCarouselUniqueImpressionsTag_upvr then
			onTileActivated = any_useMemo_result1_upvw
		else
			onTileActivated = "EventsListCarousel"
		end
		module.impressionsTag = onTileActivated
		module.layoutOrder = arg2
		module.size = arg3
		module.footerButtonEnabled = var30_upvr
		return React_upvr.createElement(EventTile_upvr, module), arg1_3.id
	end, tbl_3)
	tbl_4.getItemHeight = useGetGameTileHeight_upvr(false, "Event", true, false, false, nil, 0)
	tbl_4.onViewableItemsChanged = var21_result2
	tbl_4.onChangeCanvasPosition = var21_result2
	if arg1.peekViewFormat then
		var53 = 1
	else
		var53 = 2
	end
	tbl_4.numColumns = var53
	tbl_4.columnGap = useDesignTokens_upvr().Global.Space_150
	tbl_4.fractionalItemAmount = 0.33
	tbl_4.sideMargin = 0
	module_2.EventsCarousel = React_upvr.createElement(CollectionCarousel_upvr, tbl_4)
	local tbl_2 = {
		pageContext = arg1.referralSource;
		parentRef = any_useRef_result1;
	}
	if FFlagLuaAppEventsListCarouselUniqueImpressionsTag_upvr then
	else
	end
	tbl_2.impressionsTag = "EventsListCarousel"
	tbl_2.scrollViewPositionChangedSignal = var21_result1
	tbl_2.sendImpressions = useCallback_upvr(function(arg1_4) -- Line 118
		--[[ Upvalues[5]:
			[1]: sortEventsByStartDate_upvr_result1_upvr (readonly)
			[2]: game_DefineFastFlag_result1_upvr_2 (copied, readonly)
			[3]: any_useRef_result1_2_upvr (readonly)
			[4]: arg1 (readonly)
			[5]: flaggedMutedError_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [62] 50. Error Block 11 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [62] 50. Error Block 11 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [4] 5. Error Block 18 start (CF ANALYSIS FAILED)
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [62.7]
		if nil then
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [62.6]
			if nil ~= nil then
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				if not nil then
					-- KONSTANTWARNING: GOTO [62] #50
				end
			else
			end
		else
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			if not nil then
			end
		end
		-- KONSTANTERROR: [4] 5. Error Block 18 end (CF ANALYSIS FAILED)
	end, tbl)
	tbl_2.dataUpdatedTimestamp = any_useState_result1
	module_2.FrameBoundsImpressionsTracker = React_upvr.createElement(FrameBoundsImpressionsTracker_upvr, tbl_2)
	return React_upvr.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, 0);
		AutomaticSize = Enum.AutomaticSize.Y;
		BackgroundTransparency = 1;
		ClipsDescendants = not arg1.peekViewFormat;
		LayoutOrder = arg1.layoutOrder;
	}, module_2)
end