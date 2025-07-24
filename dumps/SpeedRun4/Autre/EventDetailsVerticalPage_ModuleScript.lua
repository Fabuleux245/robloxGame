-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:35:39
-- Luau version 6, Types version 3
-- Time taken: 0.007461 seconds

local VirtualEvents = script:FindFirstAncestor("VirtualEvents")
local UIBlox = require(VirtualEvents.Parent.UIBlox)
local FocusNavigationUtils = require(VirtualEvents.Parent.FocusNavigationUtils)
local function var4() -- Line 51
end
local tbl_2_upvr = {
	onClose = var4;
	onJoinEvent = var4;
	onShare = var4;
}
local Cryo_upvr = require(VirtualEvents.Parent.Cryo)
local useRoactService_upvr = require(VirtualEvents.Parent.RobloxAppHooks).useRoactService
local RoactNetworking_upvr = require(VirtualEvents.Parent.RoactServiceTags).RoactNetworking
local useSelector_upvr = require(VirtualEvents.Parent.RoactUtils).Hooks.RoactRodux.useSelector
local FormFactor_upvr = require(VirtualEvents.Parent.FormFactor).Enums.FormFactor
local React_upvr = require(VirtualEvents.Parent.React)
local findFirstImageInMedia_upvr = require(VirtualEvents.Common.findFirstImageInMedia)
local fetchEventThumbnail_upvr = require(VirtualEvents.Common.fetchEventThumbnail)
local FFlagLuaAppFixEventDetailsVerticalPageMediaHeight_upvr = require(VirtualEvents.Flags.FFlagLuaAppFixEventDetailsVerticalPageMediaHeight)
local constants_upvr = require(VirtualEvents.constants)
local useMutation_upvr = require(VirtualEvents.Parent.ApolloClient).useMutation
local requests_upvr = require(VirtualEvents.requests)
local getEventTimerStatus_upvr = require(VirtualEvents.Common.getEventTimerStatus)
local FFlagLuaAppFixRsvpLoggingEvent_upvr = require(VirtualEvents.Flags.FFlagLuaAppFixRsvpLoggingEvent)
local useCTAProps_upvr = require(VirtualEvents.Hooks.useCTAProps)
local useAnimation_upvr = require(VirtualEvents.Hooks.useAnimation)
local withStyle_upvr = UIBlox.Core.Style.withStyle
local UtilityActionIcon_upvr = UIBlox.App.Button.UtilityActionIcon
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local icons_navigation_close_small_upvr = UIBlox.App.ImageSet.Images["icons/navigation/close_small"]
local LoadableImage_upvr = UIBlox.App.Loading.LoadableImage
local EventDetailsContainer_upvr = require(VirtualEvents.Components.EventDetailsContainer)
local FFlagEnableEventDetailsNewModalImprovements_upvr = require(VirtualEvents.Flags.FFlagEnableEventDetailsNewModalImprovements)
local FocusNavigableSurfaceWrapper_upvr = FocusNavigationUtils.FocusNavigableSurfaceWrapper
local FocusNavigableSurfaceIdentifierEnum_upvr = FocusNavigationUtils.FocusNavigableSurfaceIdentifierEnum
return function(arg1) -- Line 77, Named "EventDetailsVerticalPage"
	--[[ Upvalues[26]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_2_upvr (readonly)
		[3]: useRoactService_upvr (readonly)
		[4]: RoactNetworking_upvr (readonly)
		[5]: useSelector_upvr (readonly)
		[6]: FormFactor_upvr (readonly)
		[7]: React_upvr (readonly)
		[8]: findFirstImageInMedia_upvr (readonly)
		[9]: fetchEventThumbnail_upvr (readonly)
		[10]: FFlagLuaAppFixEventDetailsVerticalPageMediaHeight_upvr (readonly)
		[11]: constants_upvr (readonly)
		[12]: useMutation_upvr (readonly)
		[13]: requests_upvr (readonly)
		[14]: getEventTimerStatus_upvr (readonly)
		[15]: FFlagLuaAppFixRsvpLoggingEvent_upvr (readonly)
		[16]: useCTAProps_upvr (readonly)
		[17]: useAnimation_upvr (readonly)
		[18]: withStyle_upvr (readonly)
		[19]: UtilityActionIcon_upvr (readonly)
		[20]: ImageSetLabel_upvr (readonly)
		[21]: icons_navigation_close_small_upvr (readonly)
		[22]: LoadableImage_upvr (readonly)
		[23]: EventDetailsContainer_upvr (readonly)
		[24]: FFlagEnableEventDetailsNewModalImprovements_upvr (readonly)
		[25]: FocusNavigableSurfaceWrapper_upvr (readonly)
		[26]: FocusNavigableSurfaceIdentifierEnum_upvr (readonly)
	]]
	local any_join_result1_upvr = Cryo_upvr.Dictionary.join(tbl_2_upvr, arg1)
	local function var32_upvr(arg1_2) -- Line 82
		return arg1_2.FormFactor
	end
	local var33_upvr
	if useSelector_upvr(var32_upvr) ~= FormFactor_upvr.WIDE then
		var32_upvr = false
	else
		var32_upvr = true
	end
	local media = arg1.virtualEvent.media
	local any_useState_result1_upvr, any_useState_result2_upvr_3 = React_upvr.useState(0)
	local any_useState_result1_upvr_3, any_useState_result2_upvr = React_upvr.useState(0)
	local any_useState_result1_upvr_4, any_useState_result2_upvr_2 = React_upvr.useState(nil)
	if media then
		var33_upvr = findFirstImageInMedia_upvr(media)
	else
		var33_upvr = nil
	end
	local var7_result1_upvr = useRoactService_upvr(RoactNetworking_upvr)
	React_upvr.useEffect(function() -- Line 94
		--[[ Upvalues[5]:
			[1]: fetchEventThumbnail_upvr (copied, readonly)
			[2]: var7_result1_upvr (readonly)
			[3]: arg1 (readonly)
			[4]: var33_upvr (readonly)
			[5]: any_useState_result2_upvr_2 (readonly)
		]]
		local var43_upvw = true
		fetchEventThumbnail_upvr(var7_result1_upvr, arg1.virtualEvent.id, var33_upvr):andThen(function(arg1_3) -- Line 96
			--[[ Upvalues[2]:
				[1]: var43_upvw (read and write)
				[2]: any_useState_result2_upvr_2 (copied, readonly)
			]]
			if var43_upvw then
				any_useState_result2_upvr_2(arg1_3)
			end
		end)
		return function() -- Line 101
			--[[ Upvalues[1]:
				[1]: var43_upvw (read and write)
			]]
			var43_upvw = false
		end
	end, {arg1.virtualEvent.id, var33_upvr})
	local any_useMemo_result1_upvr = React_upvr.useMemo(function() -- Line 140
		--[[ Upvalues[2]:
			[1]: getEventTimerStatus_upvr (copied, readonly)
			[2]: any_join_result1_upvr (readonly)
		]]
		return getEventTimerStatus_upvr(any_join_result1_upvr.virtualEvent, any_join_result1_upvr.currentTime)
	end, {any_join_result1_upvr.virtualEvent, any_join_result1_upvr.currentTime})
	local var16_result1_upvr = useMutation_upvr(requests_upvr.UPDATE_RSVP_STATUS, {
		variables = {
			virtualEventId = arg1.virtualEvent.id;
		};
		update = function(arg1_5, arg2, arg3) -- Line 123, Named "update"
			--[[ Upvalues[1]:
				[1]: Cryo_upvr (copied, readonly)
			]]
			local virtualEvent_upvr = arg3.data.virtualEventRsvp.virtualEvent
			arg2:modify({
				id = arg2:identify(virtualEvent_upvr);
				fields = {
					rsvpCounters = function(arg1_6, arg2_2) -- Line 129, Named "rsvpCounters"
						--[[ Upvalues[2]:
							[1]: virtualEvent_upvr (readonly)
							[2]: Cryo_upvr (copied, readonly)
						]]
						local var56
						if virtualEvent_upvr.userRsvpStatus == "going" then
							var56 = 1
						else
							var56 = -1
						end
						return Cryo_upvr.Dictionary.join(arg2_2, {
							going = arg2_2.going + var56;
						})
					end;
				};
			})
		end;
	})
	local any_useState_result1_upvr_2, any_useState_result2 = React_upvr.useState(constants_upvr.CONTAINER_WIDTH)
	useAnimation_upvr({
		startOffset = any_useState_result1_upvr_2;
		endOffset = 0;
		duration = 0.1;
		easingStyle = "linear";
		setAnimationOffset = any_useState_result2;
	})
	local any_useCallback_result1_upvr = React_upvr.useCallback(function(arg1_4) -- Line 106
		--[[ Upvalues[6]:
			[1]: FFlagLuaAppFixEventDetailsVerticalPageMediaHeight_upvr (copied, readonly)
			[2]: constants_upvr (copied, readonly)
			[3]: any_useState_result1_upvr (readonly)
			[4]: any_useState_result2_upvr_3 (readonly)
			[5]: any_useState_result1_upvr_3 (readonly)
			[6]: any_useState_result2_upvr (readonly)
		]]
		local var48
		if FFlagLuaAppFixEventDetailsVerticalPageMediaHeight_upvr then
			var48 = math.min(constants_upvr.HORIZONTAL_ASPECT_RATIO * arg1_4.AbsoluteSize.X, arg1_4.AbsoluteSize.Y)
		else
			var48 = constants_upvr.HORIZONTAL_ASPECT_RATIO * arg1_4.AbsoluteSize.X
		end
		if var48 ~= any_useState_result1_upvr then
			any_useState_result2_upvr_3(var48)
		end
		local var49 = arg1_4.AbsoluteSize.Y - var48 + 40
		if var49 ~= any_useState_result1_upvr_3 then
			any_useState_result2_upvr(var49)
		end
	end, {any_useState_result1_upvr, any_useState_result1_upvr_3})
	local useCTAProps_upvr_result1_upvr = useCTAProps_upvr(any_join_result1_upvr.virtualEvent, any_useMemo_result1_upvr, arg1.notifyMeUseEmphasisVariant, {
		onClose = any_join_result1_upvr.onClose;
		onJoinEvent = any_join_result1_upvr.onJoinEvent;
		onRsvpChanged = React_upvr.useCallback(function() -- Line 144
			--[[ Upvalues[3]:
				[1]: any_join_result1_upvr (readonly)
				[2]: var16_result1_upvr (readonly)
				[3]: FFlagLuaAppFixRsvpLoggingEvent_upvr (copied, readonly)
			]]
			local var63
			if any_join_result1_upvr.virtualEvent.userRsvpStatus ~= "going" then
				var63 = "going"
			else
				var63 = "notGoing"
			end
			var16_result1_upvr[1]({
				variables = {
					rsvpStatus = var63;
				};
			}):andThen(function(arg1_7) -- Line 158
				--[[ Upvalues[2]:
					[1]: any_join_result1_upvr (copied, readonly)
					[2]: FFlagLuaAppFixRsvpLoggingEvent_upvr (copied, readonly)
				]]
				if any_join_result1_upvr.onRsvpChanged then
					local var67 = any_join_result1_upvr
					if FFlagLuaAppFixRsvpLoggingEvent_upvr then
						var67 = arg1_7.data.virtualEventRsvp.virtualEvent.userRsvpStatus
					else
						var67 = arg1_7.data.virtualEventRsvp.rsvpStatus
					end
					var67.onRsvpChanged(var67, arg1_7.data.virtualEventRsvp.shouldSeeNotificationsUpsellModal)
				end
			end)
		end, {any_join_result1_upvr.virtualEvent});
		onShare = any_join_result1_upvr.onShare;
	})
	return withStyle_upvr(function(arg1_8) -- Line 187
		--[[ Upvalues[19]:
			[1]: React_upvr (copied, readonly)
			[2]: var32_upvr (readonly)
			[3]: UtilityActionIcon_upvr (copied, readonly)
			[4]: arg1 (readonly)
			[5]: ImageSetLabel_upvr (copied, readonly)
			[6]: icons_navigation_close_small_upvr (copied, readonly)
			[7]: any_useCallback_result1_upvr (readonly)
			[8]: LoadableImage_upvr (copied, readonly)
			[9]: any_useState_result1_upvr (readonly)
			[10]: any_useState_result1_upvr_4 (readonly)
			[11]: EventDetailsContainer_upvr (copied, readonly)
			[12]: any_useMemo_result1_upvr (readonly)
			[13]: useCTAProps_upvr_result1_upvr (readonly)
			[14]: FFlagEnableEventDetailsNewModalImprovements_upvr (copied, readonly)
			[15]: any_useState_result1_upvr_3 (readonly)
			[16]: FocusNavigableSurfaceWrapper_upvr (copied, readonly)
			[17]: FocusNavigableSurfaceIdentifierEnum_upvr (copied, readonly)
			[18]: any_useState_result1_upvr_2 (readonly)
			[19]: constants_upvr (copied, readonly)
		]]
		local tbl = {}
		local tbl_12 = {
			ZIndex = 3;
			BackgroundTransparency = 1;
		}
		local udim2 = UDim2.fromOffset(48, 48)
		tbl_12.Size = udim2
		local var80
		if var32_upvr then
			udim2 = UDim2.new
			var80 = -64
			udim2 = udim2(1, var80, 0, 16)
		else
			udim2 = UDim2.fromOffset
			var80 = 16
			udim2 = udim2(16, var80)
		end
		tbl_12.Position = udim2
		local tbl_10 = {}
		var80 = React_upvr
		var80 = UtilityActionIcon_upvr
		tbl_10.CloseButton = var80.createElement(var80, {
			ZIndex = 1;
			onActivated = arg1.onClose;
			onMedia = true;
		})
		var80 = React_upvr
		var80 = ImageSetLabel_upvr
		tbl_10.CloseIcon = var80.createElement(var80, {
			ZIndex = 2;
			Size = UDim2.fromOffset(24, 24);
			Image = icons_navigation_close_small_upvr;
			ImageColor3 = arg1_8.Theme.IconEmphasis.Color;
			BackgroundTransparency = 1;
			Position = UDim2.fromOffset(12, 12);
		})
		tbl.CloseButtonContainer = React_upvr.createElement("Frame", tbl_12, tbl_10)
		local tbl_9 = {
			BackgroundTransparency = 1;
		}
		var80 = 1
		tbl_9.Size = UDim2.fromScale(1, var80)
		var80 = React_upvr
		tbl_9[var80.Change.AbsoluteSize] = any_useCallback_result1_upvr
		tbl_9.ZIndex = 1
		local tbl_8 = {}
		var80 = React_upvr
		var80 = LoadableImage_upvr
		tbl_8.Thumbnail = var80.createElement(var80, {
			Position = UDim2.fromScale(0, 0);
			Size = UDim2.new(1, 0, 0, any_useState_result1_upvr);
			BackgroundTransparency = 1;
			ScaleType = Enum.ScaleType.Crop;
			Image = any_useState_result1_upvr_4;
			useShimmerAnimationWhileLoading = true;
			showFailedStateWhenLoadingFailed = true;
		})
		tbl.MediaContainer = React_upvr.createElement("Frame", tbl_9, tbl_8)
		local tbl_11 = {}
		var80 = 1
		tbl_11.Size = UDim2.fromScale(1, var80)
		tbl_11.BackgroundTransparency = 1
		tbl_11.ZIndex = 2
		local tbl_7 = {}
		var80 = React_upvr
		var80 = EventDetailsContainer_upvr
		local tbl_3 = {
			virtualEvent = arg1.virtualEvent;
			eventStatus = any_useMemo_result1_upvr;
			isWideMode = var32_upvr;
		}
		local var90 = useCTAProps_upvr_result1_upvr
		tbl_3.ctaProps = var90
		if FFlagEnableEventDetailsNewModalImprovements_upvr then
			var90 = any_useState_result1_upvr_3
		else
			var90 = nil
		end
		tbl_3.bottomHeight = var90
		tbl_3.onExperienceTileActivated = arg1.onExperienceTileActivated
		tbl_7.EventDetailsContainer = var80.createElement(var80, tbl_3)
		tbl.EventContainer = React_upvr.createElement("Frame", tbl_11, tbl_7)
		local module = {}
		local tbl_4 = {}
		var80 = FocusNavigableSurfaceIdentifierEnum_upvr
		tbl_4.surfaceIdentifier = var80.PopUp
		tbl_4.isIsolated = true
		local tbl_5 = {}
		var80 = Vector2.new(1, 0)
		tbl_5.AnchorPoint = var80
		var80 = UDim2.new(1, any_useState_result1_upvr_2, 0, 0)
		tbl_5.Position = var80
		if var32_upvr then
			var80 = UDim2.new(0, constants_upvr.CONTAINER_WIDTH, 1, 0)
		else
			var80 = UDim2.fromScale(1, 1)
		end
		tbl_5.Size = var80
		var80 = arg1_8.Theme.BackgroundDefault.Transparency
		tbl_5.BackgroundTransparency = var80
		var80 = arg1_8.Theme.BackgroundDefault.Color
		tbl_5.BackgroundColor3 = var80
		var80 = 0
		tbl_5.BorderSizePixel = var80
		tbl_4.frameProps = tbl_5
		local tbl_6 = {}
		var80 = React_upvr.createElement
		var80 = var80("ScrollingFrame", {
			ScrollingDirection = Enum.ScrollingDirection.Y;
			BackgroundTransparency = 1;
			Size = UDim2.fromScale(1, 1);
			Position = UDim2.fromScale(0, 0);
			ScrollBarThickness = 0;
			CanvasSize = UDim2.new(1, 0, 0, 0);
			AutomaticCanvasSize = Enum.AutomaticSize.Y;
			Selectable = false;
		}, {
			EventDetailsVerticalPage = React_upvr.createElement("Frame", {
				Size = UDim2.fromScale(1, 1);
				BackgroundTransparency = 1;
			}, tbl);
		})
		tbl_6.EventDetailsWrapper = var80
		module.EventDetailsWindow = React_upvr.createElement(FocusNavigableSurfaceWrapper_upvr, tbl_4, tbl_6)
		return React_upvr.createElement("ImageButton", {
			ZIndex = 4;
			Size = UDim2.new(1, 0, 1, 0);
			BackgroundTransparency = 1;
			BackgroundColor3 = Color3.fromRGB(0, 0, 0);
			Active = true;
			AutoButtonColor = false;
			[React_upvr.Event.Activated] = arg1.onClose;
		}, module)
	end)
end