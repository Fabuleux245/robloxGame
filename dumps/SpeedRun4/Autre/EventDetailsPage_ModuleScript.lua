-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:35:38
-- Luau version 6, Types version 3
-- Time taken: 0.003926 seconds

local VirtualEvents = script:FindFirstAncestor("VirtualEvents")
local AppBlox = require(VirtualEvents.Parent.AppBlox)
local function var3() -- Line 36
end
local tbl_2_upvr = {
	onClose = var3;
	onJoinEvent = var3;
	onShare = var3;
}
local Cryo_upvr = require(VirtualEvents.Parent.Cryo)
local React_upvr = require(VirtualEvents.Parent.React)
local useDeviceType_upvr = require(VirtualEvents.Parent.RobloxAppHooks).useDeviceType
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("UseNewEventImageFetch2", false)
local useRoactService_upvr = require(VirtualEvents.Parent.RobloxAppHooks).useRoactService
local RoactNetworking_upvr = require(VirtualEvents.Parent.RoactServiceTags).RoactNetworking
local fetchEventThumbnailList_upvr = require(VirtualEvents.Common.fetchEventThumbnailList)
local getGalleryItems_upvr = require(VirtualEvents.Common.getGalleryItems)
local findFirstImageInMedia_upvr = require(VirtualEvents.Common.findFirstImageInMedia)
local useMutation_upvr = require(VirtualEvents.Parent.ApolloClient).useMutation
local requests_upvr = require(VirtualEvents.requests)
local getEventTimerStatus_upvr = require(VirtualEvents.Common.getEventTimerStatus)
local calcMediaGallerySizesFromWidth_upvr = AppBlox.calcMediaGallerySizesFromWidth
local FFlagLuaAppFixRsvpLoggingEvent_upvr = require(VirtualEvents.Flags.FFlagLuaAppFixRsvpLoggingEvent)
local useActionBarProps_upvr = require(VirtualEvents.Hooks.useActionBarProps)
local ContentPosition_upvr = AppBlox.ContentPosition
local Attendance_upvr = require(VirtualEvents.Components.Attendance)
local MediaGalleryPreview_upvr = AppBlox.MediaGalleryPreview
local EventDescription_upvr = require(VirtualEvents.Components.EventDescription)
local ListTable_upvr = require(VirtualEvents.Parent.UIBlox).App.Table.ListTable
local EventHostedBy_upvr = require(VirtualEvents.Components.EventHostedBy)
local DetailsPageTemplate_upvr = AppBlox.DetailsPageTemplate
local EventTimer_upvr = require(VirtualEvents.Components.EventTimer)
return function(arg1) -- Line 69, Named "EventDetailsPage"
	--[[ Upvalues[24]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_2_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: useDeviceType_upvr (readonly)
		[5]: game_DefineFastFlag_result1_upvr (readonly)
		[6]: useRoactService_upvr (readonly)
		[7]: RoactNetworking_upvr (readonly)
		[8]: fetchEventThumbnailList_upvr (readonly)
		[9]: getGalleryItems_upvr (readonly)
		[10]: findFirstImageInMedia_upvr (readonly)
		[11]: useMutation_upvr (readonly)
		[12]: requests_upvr (readonly)
		[13]: getEventTimerStatus_upvr (readonly)
		[14]: calcMediaGallerySizesFromWidth_upvr (readonly)
		[15]: FFlagLuaAppFixRsvpLoggingEvent_upvr (readonly)
		[16]: useActionBarProps_upvr (readonly)
		[17]: ContentPosition_upvr (readonly)
		[18]: Attendance_upvr (readonly)
		[19]: MediaGalleryPreview_upvr (readonly)
		[20]: EventDescription_upvr (readonly)
		[21]: ListTable_upvr (readonly)
		[22]: EventHostedBy_upvr (readonly)
		[23]: DetailsPageTemplate_upvr (readonly)
		[24]: EventTimer_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 53 start (CF ANALYSIS FAILED)
	local media_upvr = arg1.virtualEvent.media
	local _, any_useState_result2 = React_upvr.useState(0)
	if game_DefineFastFlag_result1_upvr then
		local any_useState_result1, any_useState_result2_2_upvw = React_upvr.useState({})
		if any_useState_result1[1] then
		else
		end
		local var9_result1_upvr = useRoactService_upvr(RoactNetworking_upvr)
		React_upvr.useEffect(function() -- Line 86
			--[[ Upvalues[6]:
				[1]: fetchEventThumbnailList_upvr (copied, readonly)
				[2]: var9_result1_upvr (readonly)
				[3]: arg1 (readonly)
				[4]: any_useState_result2_2_upvw (read and write)
				[5]: getGalleryItems_upvr (copied, readonly)
				[6]: media_upvr (readonly)
			]]
			fetchEventThumbnailList_upvr(var9_result1_upvr, arg1.virtualEvent.id):andThen(function(arg1_2) -- Line 87
				--[[ Upvalues[3]:
					[1]: any_useState_result2_2_upvw (copied, read and write)
					[2]: getGalleryItems_upvr (copied, readonly)
					[3]: media_upvr (copied, readonly)
				]]
				local tbl = {}
				if arg1_2 then
					for _, v in arg1_2 do
						if v.mediaId then
							table.insert(tbl, {
								imageId = "rbxassetid://"..v.mediaId;
								isYouTubeVideo = false;
							})
						end
					end
				end
				if 0 < #tbl then
					any_useState_result2_2_upvw(tbl)
				else
					any_useState_result2_2_upvw(getGalleryItems_upvr(media_upvr))
				end
			end, function() -- Line 108
				--[[ Upvalues[3]:
					[1]: any_useState_result2_2_upvw (copied, read and write)
					[2]: getGalleryItems_upvr (copied, readonly)
					[3]: media_upvr (copied, readonly)
				]]
				any_useState_result2_2_upvw(getGalleryItems_upvr(media_upvr))
			end)
		end, {arg1.virtualEvent.id, media_upvr})
		-- KONSTANTWARNING: GOTO [87] #70
	end
	-- KONSTANTERROR: [0] 1. Error Block 53 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [67] 53. Error Block 42 start (CF ANALYSIS FAILED)
	var9_result1_upvr = React_upvr.useMemo
	var9_result1_upvr = var9_result1_upvr(function() -- Line 113
		--[[ Upvalues[2]:
			[1]: getGalleryItems_upvr (copied, readonly)
			[2]: media_upvr (readonly)
		]]
		return getGalleryItems_upvr(media_upvr)
	end, {media_upvr})
	if media_upvr then
		var9_result1_upvr = findFirstImageInMedia_upvr(media_upvr)
		-- KONSTANTWARNING: GOTO [87] #70
	end
	-- KONSTANTERROR: [67] 53. Error Block 42 end (CF ANALYSIS FAILED)
end