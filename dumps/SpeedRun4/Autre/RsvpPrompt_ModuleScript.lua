-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:35:34
-- Luau version 6, Types version 3
-- Time taken: 0.035180 seconds

local Parent = script.Parent.Parent.Parent
local Parent_2 = Parent.Parent
local Foundation = require(Parent_2.Foundation)
local React_upvr = require(Parent_2.React)
local UIBlox = require(Parent_2.UIBlox)
local useScreenSize_upvr = require(Parent_2.CoreScriptsRoactCommon).useScreenSize
local useRoactService_upvr = require(Parent_2.RobloxAppHooks).useRoactService
local RoactNetworking_upvr = require(Parent_2.RoactServiceTags).RoactNetworking
local NotificationModalsManager_upvr = require(Parent_2.NotificationModalsManager)
local useDesignTokens_upvr = require(Parent_2.Style).useDesignTokens
local constants_upvr = require(Parent.constants)
local postRsvpStatus_upvr = require(Parent.Common.postRsvpStatus)
local formatDateLocalized_upvr = require(Parent.Common.formatDateLocalized)
local ServiceOverrideContext_upvr = require(Parent.Components.CoreUI.ServiceOverrideContext)
local useContext_upvr = React_upvr.useContext
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
local InteractiveAlert_upvr = UIBlox.App.Dialog.Alert.InteractiveAlert
local LoadableImage_upvr = UIBlox.App.Loading.LoadableImage
local useLocalization_upvr = require(Parent_2.Localization).Hooks.useLocalization
local Text_upvr = Foundation.Text
local View_upvr = Foundation.View
local Badge_upvr = Foundation.Badge
local BadgeSize_upvr = Foundation.Enums.BadgeSize
local BadgeVariant_upvr = Foundation.Enums.BadgeVariant
if game:DefineFastFlag("MakeRSVPPromptMoreResponsive2", false) then
	local TextService_upvr = game:GetService("TextService")
	local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("RSVPPromptUseConsistentBadgeComponent", false)
	local GameTileThumbnailBadges_upvr = require(Parent_2.GameTile).GameTileThumbnailBadges
	local ScrollView_upvr = Foundation.ScrollView
	local ScrollBarVisibility_upvr = Foundation.Enums.ScrollBarVisibility
	return function(arg1) -- Line 81
		--[[ Upvalues[25]:
			[1]: useScreenSize_upvr (readonly)
			[2]: useLocalization_upvr (readonly)
			[3]: constants_upvr (readonly)
			[4]: useRoactService_upvr (readonly)
			[5]: RoactNetworking_upvr (readonly)
			[6]: formatDateLocalized_upvr (readonly)
			[7]: useContext_upvr (readonly)
			[8]: ServiceOverrideContext_upvr (readonly)
			[9]: React_upvr (readonly)
			[10]: postRsvpStatus_upvr (readonly)
			[11]: NotificationModalsManager_upvr (readonly)
			[12]: ButtonType_upvr (readonly)
			[13]: TextService_upvr (readonly)
			[14]: useDesignTokens_upvr (readonly)
			[15]: LoadableImage_upvr (readonly)
			[16]: game_DefineFastFlag_result1_upvr (readonly)
			[17]: Badge_upvr (readonly)
			[18]: BadgeSize_upvr (readonly)
			[19]: BadgeVariant_upvr (readonly)
			[20]: GameTileThumbnailBadges_upvr (readonly)
			[21]: ScrollView_upvr (readonly)
			[22]: ScrollBarVisibility_upvr (readonly)
			[23]: Text_upvr (readonly)
			[24]: View_upvr (readonly)
			[25]: InteractiveAlert_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var6_result1_upvr_2 = useScreenSize_upvr()
		local var150_upvr
		if arg1.enableInputDelayed ~= nil then
			var150_upvr = arg1.enableInputDelayed
		else
			var150_upvr = true
		end
		local var151_upvr
		local var19_result1_upvr = useLocalization_upvr({
			joinEvent = "Feature.VirtualEvents.JoinEvent";
			notifyMe = "Feature.VirtualEvents.NotifyMe";
			unfollowEvent = "Feature.VirtualEvents.UnfollowEvent";
			notNowButton = "Feature.VirtualEvents.NotNowButton";
			dateAtTime = "Feature.VirtualEvents.Label.DateAtTime";
			toastText = "Feature.VirtualEvents.Label.ReminderSetForEventTime";
		})
		local eventDetails_2_upvr = arg1.promptData.eventDetails
		local displayTitle_upvr = eventDetails_2_upvr.displayTitle
		local displayDescription_upvr_2 = eventDetails_2_upvr.displayDescription
		local thumbnails_4 = eventDetails_2_upvr.thumbnails
		if thumbnails_4 and thumbnails_4[1] then
			var151_upvr = thumbnails_4[1]
			if var151_upvr.mediaId then
				local mediaId_upvw = thumbnails_4[1].mediaId
			end
		end
		var151_upvr = RoactNetworking_upvr
		if eventDetails_2_upvr.userRsvpStatus ~= "going" then
			var151_upvr = false
		else
			var151_upvr = true
		end
		if var151_upvr then
			local unfollowEvent_upvw_3 = var19_result1_upvr.unfollowEvent
		end
		local var160_upvw
		if eventDetails_2_upvr.eventTime and eventDetails_2_upvr.eventTime.startUtc then
			local DateTime_fromIsoDate_result1_upvw = DateTime.fromIsoDate(eventDetails_2_upvr.eventTime.startUtc)
			if DateTime_fromIsoDate_result1_upvw then
				var160_upvw = formatDateLocalized_upvr(var19_result1_upvr.dateAtTime, DateTime_fromIsoDate_result1_upvw)
			end
		end
		local joinEvent_4 = var19_result1_upvr.joinEvent
		if var151_upvr then
			joinEvent_4 = var19_result1_upvr.unfollowEvent
		end
		local socialService_upvr_4 = useContext_upvr(ServiceOverrideContext_upvr).socialService
		local var7_result1_upvr_3 = useRoactService_upvr(var151_upvr)
		local any_useCallback_result1_upvr_6 = React_upvr.useCallback(function() -- Line 134
			--[[ Upvalues[9]:
				[1]: var151_upvr (readonly)
				[2]: postRsvpStatus_upvr (copied, readonly)
				[3]: var7_result1_upvr_3 (readonly)
				[4]: arg1 (readonly)
				[5]: socialService_upvr_4 (readonly)
				[6]: var19_result1_upvr (readonly)
				[7]: displayTitle_upvr (readonly)
				[8]: var160_upvw (read and write)
				[9]: NotificationModalsManager_upvr (copied, readonly)
			]]
			if var151_upvr then
				postRsvpStatus_upvr(var7_result1_upvr_3, arg1.promptData.eventId, "notGoing"):andThen(function() -- Line 136
					--[[ Upvalues[2]:
						[1]: socialService_upvr_4 (copied, readonly)
						[2]: arg1 (copied, readonly)
					]]
					socialService_upvr_4:PromptRsvpToEventCompleted(arg1.promptData.eventId, true, Enum.RsvpStatus.NotGoing)
				end, function(arg1_5) -- Line 144
					--[[ Upvalues[2]:
						[1]: socialService_upvr_4 (copied, readonly)
						[2]: arg1 (copied, readonly)
					]]
					socialService_upvr_4:PromptRsvpToEventCompleted(arg1.promptData.eventId, false, Enum.RsvpStatus.None)
					warn("Error updating rsvp status: ", arg1_5)
				end)
			else
				postRsvpStatus_upvr(var7_result1_upvr_3, arg1.promptData.eventId, "going"):andThen(function() -- Line 155
					--[[ Upvalues[6]:
						[1]: socialService_upvr_4 (copied, readonly)
						[2]: arg1 (copied, readonly)
						[3]: var19_result1_upvr (copied, readonly)
						[4]: displayTitle_upvr (copied, readonly)
						[5]: var160_upvw (copied, read and write)
						[6]: NotificationModalsManager_upvr (copied, readonly)
					]]
					socialService_upvr_4:PromptRsvpToEventCompleted(arg1.promptData.eventId, true, Enum.RsvpStatus.Going)
					NotificationModalsManager_upvr.SetUIBloxToast({
						toastTitle = var19_result1_upvr.toastText:gsub("{(.-)}", {
							eventName = displayTitle_upvr;
							eventTime = var160_upvw;
						});
						sequenceNumber = DateTime.now().UnixTimestamp;
					})
				end, function(arg1_6) -- Line 173
					--[[ Upvalues[2]:
						[1]: socialService_upvr_4 (copied, readonly)
						[2]: arg1 (copied, readonly)
					]]
					socialService_upvr_4:PromptRsvpToEventCompleted(arg1.promptData.eventId, false, Enum.RsvpStatus.None)
					warn("Error updating rsvp status: ", arg1_6)
				end)
			end
			arg1.closePrompt()
		end, {socialService_upvr_4, arg1.closePrompt, var151_upvr})
		local any_useState_result1_7, any_useState_result2_upvr_9 = React_upvr.useState(Vector2.new(0, 0))
		local any_useCallback_result1_upvr_2 = React_upvr.useCallback(function(arg1_7) -- Line 220
			--[[ Upvalues[1]:
				[1]: any_useState_result2_upvr_9 (readonly)
			]]
			any_useState_result2_upvr_9(arg1_7.AbsoluteSize)
		end, {any_useState_result2_upvr_9})
		local any_useState_result1_upvr, any_useState_result2_upvr_4 = React_upvr.useState(0)
		local any_useRef_result1_upvr_2 = React_upvr.useRef(nil)
		React_upvr.useEffect(function() -- Line 228
			--[[ Upvalues[4]:
				[1]: any_useRef_result1_upvr_2 (readonly)
				[2]: displayDescription_upvr_2 (readonly)
				[3]: TextService_upvr (copied, readonly)
				[4]: any_useState_result2_upvr_4 (readonly)
			]]
			if not any_useRef_result1_upvr_2.current then
			else
				local GetTextBoundsParams_2 = Instance.new("GetTextBoundsParams")
				GetTextBoundsParams_2.Text = displayDescription_upvr_2
				GetTextBoundsParams_2.Font = any_useRef_result1_upvr_2.current.FontFace
				GetTextBoundsParams_2.Size = any_useRef_result1_upvr_2.current.TextSize
				GetTextBoundsParams_2.Width = any_useRef_result1_upvr_2.current.AbsoluteSize.X
				any_useState_result2_upvr_4(TextService_upvr:GetTextBoundsAsync(GetTextBoundsParams_2).Y * any_useRef_result1_upvr_2.current.LineHeight)
			end
		end, {any_useRef_result1_upvr_2, any_useState_result1_7, displayDescription_upvr_2})
		local Space_150_upvr_2 = useDesignTokens_upvr().Global.Space_150
		return React_upvr.createElement(InteractiveAlert_upvr, {
			onCloseClicked = React_upvr.useCallback(function() -- Line 187
				--[[ Upvalues[3]:
					[1]: eventDetails_2_upvr (readonly)
					[2]: socialService_upvr_4 (readonly)
					[3]: arg1 (readonly)
				]]
				local None = Enum.RsvpStatus.None
				if eventDetails_2_upvr.userRsvpStatus == "notGoing" then
					None = Enum.RsvpStatus.NotGoing
				elseif eventDetails_2_upvr.userRsvpStatus == "going" then
					None = Enum.RsvpStatus.Going
				end
				socialService_upvr_4:PromptRsvpToEventCompleted(arg1.promptData.eventId, true, None)
				arg1.closePrompt()
			end, {socialService_upvr_4, arg1.closePrompt, eventDetails_2_upvr.userRsvpStatus});
			buttonStackInfo = React_upvr.useMemo(function() -- Line 201
				--[[ Upvalues[4]:
					[1]: ButtonType_upvr (copied, readonly)
					[2]: var150_upvr (readonly)
					[3]: any_useCallback_result1_upvr_6 (readonly)
					[4]: unfollowEvent_upvw_3 (read and write)
				]]
				return {
					buttons = {{
						buttonType = ButtonType_upvr.PrimaryContextual;
						props = {
							delayInputSeconds = 2;
							enableInputDelayed = var150_upvr;
							isDelayedInput = var150_upvr;
							onActivated = any_useCallback_result1_upvr_6;
							text = unfollowEvent_upvw_3;
						};
					}};
				}
			end, {var19_result1_upvr, any_useCallback_result1_upvr_6, var150_upvr, unfollowEvent_upvw_3});
			isMiddleContentFocusable = false;
			middleContent = React_upvr.useCallback(function() -- Line 247
				--[[ Upvalues[23]:
					[1]: var6_result1_upvr_2 (readonly)
					[2]: arg1 (readonly)
					[3]: any_useState_result1_upvr (readonly)
					[4]: React_upvr (copied, readonly)
					[5]: LoadableImage_upvr (copied, readonly)
					[6]: mediaId_upvw (read and write)
					[7]: constants_upvr (copied, readonly)
					[8]: game_DefineFastFlag_result1_upvr (copied, readonly)
					[9]: DateTime_fromIsoDate_result1_upvw (read and write)
					[10]: Badge_upvr (copied, readonly)
					[11]: Space_150_upvr_2 (readonly)
					[12]: BadgeSize_upvr (copied, readonly)
					[13]: var160_upvw (read and write)
					[14]: BadgeVariant_upvr (copied, readonly)
					[15]: GameTileThumbnailBadges_upvr (copied, readonly)
					[16]: ScrollView_upvr (copied, readonly)
					[17]: ScrollBarVisibility_upvr (copied, readonly)
					[18]: Text_upvr (copied, readonly)
					[19]: displayDescription_upvr_2 (readonly)
					[20]: any_useRef_result1_upvr_2 (readonly)
					[21]: View_upvr (copied, readonly)
					[22]: any_useCallback_result1_upvr_2 (readonly)
					[23]: displayTitle_upvr (readonly)
				]]
				-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
				-- KONSTANTERROR: [0] 1. Error Block 80 start (CF ANALYSIS FAILED)
				local var196 = var6_result1_upvr_2.Y - 80 - 200
				if var196 < 80 then
					var196 = 80
				end
				local overrideUseWideMode_2 = arg1.overrideUseWideMode
				if not overrideUseWideMode_2 then
					overrideUseWideMode_2 = false
					if var6_result1_upvr_2.Y < 600 then
						if var6_result1_upvr_2.Y >= var6_result1_upvr_2.X then
							overrideUseWideMode_2 = false
						else
							overrideUseWideMode_2 = true
						end
					end
				end
				if not overrideUseWideMode_2 then
					local var198 = any_useState_result1_upvr
					if var196 * 0.4 < any_useState_result1_upvr then
						var198 = var196 * 0.4
						local var199 = var198
					end
					local var200 = var196 - var199
				end
				local udim2_6 = UDim2.new(1, 0, 0, var200)
				if overrideUseWideMode_2 then
					udim2_6 = UDim2.new(0.6, 0, 0, var200)
				end
				if var196 >= 120 then
					local _ = false
					-- KONSTANTWARNING: Skipped task `defvar` above
				else
				end
				local tbl_62 = {}
				if overrideUseWideMode_2 then
					-- KONSTANTWARNING: GOTO [72] #58
				end
				tbl_62.AutomaticSize = Enum.AutomaticSize.Y
				tbl_62.Size = udim2_6
				tbl_62.BackgroundTransparency = 1
				tbl_62.LayoutOrder = 1
				local tbl_6 = {
					Thumbnail = React_upvr.createElement(LoadableImage_upvr, {
						Position = UDim2.fromScale(0.5, 0.5);
						AnchorPoint = Vector2.new(0.5, 0.5);
						Size = UDim2.fromScale(1, 1);
						BackgroundTransparency = 1;
						Image = "rbxassetid://"..mediaId_upvw;
						useShimmerAnimationWhileLoading = true;
						showFailedStateWhenLoadingFailed = true;
					});
				}
				if overrideUseWideMode_2 then
					local _ = {
						FlexMode = Enum.UIFlexMode.Fill;
					}
				else
				end
				tbl_6.UIFlexItem = nil
				tbl_6.AspectRatioConstraint = React_upvr.createElement("UIAspectRatioConstraint", {
					AspectRatio = constants_upvr.HORIZONTAL_ASPECT_RATIO;
					DominantAxis = Enum.DominantAxis.Width;
					AspectType = Enum.AspectType.ScaleWithParentSize;
				})
				-- KONSTANTERROR: [0] 1. Error Block 80 end (CF ANALYSIS FAILED)
				-- KONSTANTERROR: [164] 122. Error Block 83 start (CF ANALYSIS FAILED)
				local var208
				if DateTime_fromIsoDate_result1_upvw then
					local tbl_82 = {}
					if true then
						var208 = UDim2.new(0, 0, 0, Space_150_upvr_2)
					else
						var208 = UDim2.new(0, Space_150_upvr_2, 0, Space_150_upvr_2)
					end
					tbl_82.Position = var208
					var208 = Vector2.new(0, 0)
					tbl_82.AnchorPoint = var208
					var208 = 2
					tbl_82.ZIndex = var208
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					if true then
						var208 = BadgeSize_upvr.Small
					else
						var208 = BadgeSize_upvr.Medium
					end
					tbl_82.size = var208
					tbl_82.text = var160_upvw
					tbl_82.variant = BadgeVariant_upvr.Primary
				else
					-- KONSTANTERROR: [219] 164. Error Block 38 start (CF ANALYSIS FAILED)
					-- KONSTANTERROR: [219] 164. Error Block 38 end (CF ANALYSIS FAILED)
				end
				tbl_6.StartTimeBadge = nil
				local var210
				if game_DefineFastFlag_result1_upvr and DateTime_fromIsoDate_result1_upvw then
					var210 = React_upvr.createElement
					;({}).Badge = React_upvr.createElement(GameTileThumbnailBadges_upvr, {
						tileBadgesByPosition = {
							ImageTopLeft = {{
								tileBadgeType = "Text";
								text = var160_upvw;
							}};
						};
					})
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					var210 = var210("Frame", {
						ZIndex = 2;
						BackgroundTransparency = 1;
						Size = UDim2.fromScale(1, 1);
					}, {})
				else
					var210 = nil
				end
				tbl_6.Overlay = var210
				local any_createElement_result1 = React_upvr.createElement("Frame", tbl_62, tbl_6)
				var210 = 0
				local udim2_5 = UDim2.new(1, 0, var210, var199)
				if overrideUseWideMode_2 then
					var210 = 0
					udim2_5 = UDim2.new(0.4, var210, 0, var199)
				end
				var210 = {}
				var210.scroll = {
					AutomaticCanvasSize = Enum.AutomaticSize.Y;
					CanvasSize = UDim2.fromScale(1, 0);
					scrollBarVisibility = ScrollBarVisibility_upvr.Auto;
					ScrollingDirection = Enum.ScrollingDirection.Y;
					VerticalScrollBarInset = Enum.ScrollBarInset.ScrollBar;
				}
				var210.tag = "col align-y-top"
				var210.LayoutOrder = 3
				var210.Size = udim2_5
				local any_createElement_result1_4 = React_upvr.createElement(ScrollView_upvr, var210, {
					Body = React_upvr.createElement(Text_upvr, {
						tag = "size-full-0 text-body-large text-align-y-top text-align-x-left";
						Text = displayDescription_upvr_2;
						TextWrapped = true;
						AutomaticSize = Enum.AutomaticSize.X;
						Size = UDim2.new(0, 0, 0, any_useState_result1_upvr);
						padding = Vector2.new(0, 0);
						ref = any_useRef_result1_upvr_2;
					});
				})
				if overrideUseWideMode_2 then
					var210 = React_upvr
					var210 = View_upvr
					return var210.createElement(var210, {
						Size = UDim2.new(1, 0, 0, 0);
						tag = "col align-x-center size-full-0 auto-y gap-medium";
						onAbsoluteSizeChanged = any_useCallback_result1_upvr_2;
					}, {
						Title = React_upvr.createElement(Text_upvr, {
							tag = "size-full-0 auto-y text-title-large text-align-x-left";
							Text = displayTitle_upvr;
							LayoutOrder = 1;
						});
						Contents = React_upvr.createElement(View_upvr, {
							LayoutOrder = 2;
							tag = "row flex-x-space-between align-y-center auto-y size-full-0 gap-medium";
							Size = UDim2.new(1, 0, 0, var199);
						}, {
							ThumbnailFrame = any_createElement_result1;
							BodyScrollView = any_createElement_result1_4;
						});
					})
				end
				var210 = React_upvr
				var210 = View_upvr
				do
					return var210.createElement(var210, {
						Size = UDim2.new(1, 0, 0, 0);
						tag = "col align-x-center size-full-0 auto-y gap-medium";
						onAbsoluteSizeChanged = any_useCallback_result1_upvr_2;
					}, {
						ThumbnailFrame = any_createElement_result1;
						Title = React_upvr.createElement(Text_upvr, {
							tag = "size-full-0 auto-y text-title-large text-align-x-left";
							Text = displayTitle_upvr;
							LayoutOrder = 2;
						});
						BodyScrollView = any_createElement_result1_4;
					})
				end
				-- KONSTANTERROR: [164] 122. Error Block 83 end (CF ANALYSIS FAILED)
			end, {mediaId_upvw, displayTitle_upvr, displayDescription_upvr_2, var160_upvw, any_useState_result1_7, any_useState_result1_upvr, any_useCallback_result1_upvr_2, var6_result1_upvr_2, Space_150_upvr_2});
			position = UDim2.fromScale(0.5, 0.5);
			screenSize = var6_result1_upvr_2;
			title = joinEvent_4;
		})
	end
end
local Icon_upvr = Foundation.Icon
return function(arg1) -- Line 428
	--[[ Upvalues[21]:
		[1]: useScreenSize_upvr (readonly)
		[2]: useLocalization_upvr (readonly)
		[3]: constants_upvr (readonly)
		[4]: useRoactService_upvr (readonly)
		[5]: RoactNetworking_upvr (readonly)
		[6]: formatDateLocalized_upvr (readonly)
		[7]: useContext_upvr (readonly)
		[8]: ServiceOverrideContext_upvr (readonly)
		[9]: React_upvr (readonly)
		[10]: postRsvpStatus_upvr (readonly)
		[11]: NotificationModalsManager_upvr (readonly)
		[12]: ButtonType_upvr (readonly)
		[13]: useDesignTokens_upvr (readonly)
		[14]: View_upvr (readonly)
		[15]: Text_upvr (readonly)
		[16]: LoadableImage_upvr (readonly)
		[17]: Badge_upvr (readonly)
		[18]: BadgeSize_upvr (readonly)
		[19]: BadgeVariant_upvr (readonly)
		[20]: Icon_upvr (readonly)
		[21]: InteractiveAlert_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var6_result1_upvr_4 = useScreenSize_upvr()
	local var312_upvr
	if arg1.enableInputDelayed ~= nil then
		var312_upvr = arg1.enableInputDelayed
	else
		var312_upvr = true
	end
	local var19_result1_upvr_3 = useLocalization_upvr({
		joinEvent = "Feature.VirtualEvents.JoinEvent";
		notifyMe = "Feature.VirtualEvents.NotifyMe";
		unfollowEvent = "Feature.VirtualEvents.UnfollowEvent";
		notNowButton = "Feature.VirtualEvents.NotNowButton";
		dateAtTime = "Feature.VirtualEvents.Label.DateAtTime";
		toastText = "Feature.VirtualEvents.Label.ReminderSetForEventTime";
	})
	local eventDetails = arg1.promptData.eventDetails
	local displayTitle_upvr_4 = eventDetails.displayTitle
	local displayDescription_upvr_4 = eventDetails.displayDescription
	local thumbnails_2 = eventDetails.thumbnails
	if not thumbnails_2 or not thumbnails_2[1] or not thumbnails_2[1].mediaId then
		local tbl_51_upvw = {}
		local tbl_44 = {
			mediaId = constants_upvr.DEFAULT_EVENT_MEDIA_ID;
		}
		tbl_51_upvw[1] = tbl_44
	end
	tbl_44 = RoactNetworking_upvr
	local var321_upvr = tbl_44
	if eventDetails.userRsvpStatus ~= "going" then
		var321_upvr = false
	else
		var321_upvr = true
	end
	if var321_upvr then
	end
	local var322_upvw
	local var323_upvw
	if eventDetails.eventTime then
		if eventDetails.eventTime.startUtc then
			var322_upvw = DateTime.fromIsoDate(eventDetails.eventTime.startUtc)
			if var322_upvw then
				var323_upvw = formatDateLocalized_upvr(var19_result1_upvr_3.dateAtTime, var322_upvw)
			end
		end
	end
	local joinEvent = var19_result1_upvr_3.joinEvent
	if var321_upvr then
		joinEvent = var19_result1_upvr_3.unfollowEvent
	end
	local socialService_upvr = useContext_upvr(ServiceOverrideContext_upvr).socialService
	local useRoactService_upvr_result1_upvr = useRoactService_upvr(var321_upvr)
	local any_useCallback_result1_upvr_10 = React_upvr.useCallback(function() -- Line 483
		--[[ Upvalues[9]:
			[1]: var321_upvr (readonly)
			[2]: postRsvpStatus_upvr (copied, readonly)
			[3]: useRoactService_upvr_result1_upvr (readonly)
			[4]: arg1 (readonly)
			[5]: socialService_upvr (readonly)
			[6]: var19_result1_upvr_3 (readonly)
			[7]: displayTitle_upvr_4 (readonly)
			[8]: var323_upvw (read and write)
			[9]: NotificationModalsManager_upvr (copied, readonly)
		]]
		if var321_upvr then
			postRsvpStatus_upvr(useRoactService_upvr_result1_upvr, arg1.promptData.eventId, "notGoing"):andThen(function() -- Line 485
				--[[ Upvalues[2]:
					[1]: socialService_upvr (copied, readonly)
					[2]: arg1 (copied, readonly)
				]]
				socialService_upvr:PromptRsvpToEventCompleted(arg1.promptData.eventId, true, Enum.RsvpStatus.NotGoing)
			end, function(arg1_12) -- Line 493
				--[[ Upvalues[2]:
					[1]: socialService_upvr (copied, readonly)
					[2]: arg1 (copied, readonly)
				]]
				socialService_upvr:PromptRsvpToEventCompleted(arg1.promptData.eventId, false, Enum.RsvpStatus.None)
				warn("Error updating rsvp status: ", arg1_12)
			end)
		else
			postRsvpStatus_upvr(useRoactService_upvr_result1_upvr, arg1.promptData.eventId, "going"):andThen(function() -- Line 504
				--[[ Upvalues[6]:
					[1]: socialService_upvr (copied, readonly)
					[2]: arg1 (copied, readonly)
					[3]: var19_result1_upvr_3 (copied, readonly)
					[4]: displayTitle_upvr_4 (copied, readonly)
					[5]: var323_upvw (copied, read and write)
					[6]: NotificationModalsManager_upvr (copied, readonly)
				]]
				socialService_upvr:PromptRsvpToEventCompleted(arg1.promptData.eventId, true, Enum.RsvpStatus.Going)
				NotificationModalsManager_upvr.SetUIBloxToast({
					toastTitle = var19_result1_upvr_3.toastText:gsub("{(.-)}", {
						eventName = displayTitle_upvr_4;
						eventTime = var323_upvw;
					});
					sequenceNumber = DateTime.now().UnixTimestamp;
				})
			end, function(arg1_13) -- Line 522
				--[[ Upvalues[2]:
					[1]: socialService_upvr (copied, readonly)
					[2]: arg1 (copied, readonly)
				]]
				socialService_upvr:PromptRsvpToEventCompleted(arg1.promptData.eventId, false, Enum.RsvpStatus.None)
				warn("Error updating rsvp status: ", arg1_13)
			end)
		end
		arg1.closePrompt()
	end, {socialService_upvr, arg1.closePrompt, var321_upvr})
	local any_useCallback_result1_upvr_9 = React_upvr.useCallback(function() -- Line 536
		--[[ Upvalues[2]:
			[1]: socialService_upvr (readonly)
			[2]: arg1 (readonly)
		]]
		socialService_upvr:PromptRsvpToEventCompleted(arg1.promptData.eventId, true, Enum.RsvpStatus.NotGoing)
		arg1.closePrompt()
	end, {socialService_upvr, arg1.closePrompt})
	local unfollowEvent_upvw = var19_result1_upvr_3.unfollowEvent
	local any_useState_result1_6_upvr, any_useState_result2_upvr = React_upvr.useState(Vector2.new(0, 0))
	local any_useState_result1_2_upvr, any_useState_result2_upvr_6 = React_upvr.useState(Vector2.new(0, 0))
	local any_useState_result1_4_upvr, any_useState_result2_upvr_7 = React_upvr.useState(1)
	local any_useCallback_result1_upvr_4 = React_upvr.useCallback(function(arg1_15) -- Line 576
		--[[ Upvalues[1]:
			[1]: any_useState_result2_upvr_6 (readonly)
		]]
		any_useState_result2_upvr_6(arg1_15.AbsoluteSize)
	end, {any_useState_result2_upvr_6})
	local any_useCallback_result1_upvr_8 = React_upvr.useCallback(function() -- Line 580
		--[[ Upvalues[2]:
			[1]: any_useState_result2_upvr_7 (readonly)
			[2]: any_useState_result1_4_upvr (readonly)
		]]
		any_useState_result2_upvr_7(math.max(1, any_useState_result1_4_upvr - 1))
	end, {any_useState_result1_4_upvr, any_useState_result2_upvr_7})
	local any_useCallback_result1_upvr_7 = React_upvr.useCallback(function() -- Line 584
		--[[ Upvalues[3]:
			[1]: any_useState_result2_upvr_7 (readonly)
			[2]: tbl_51_upvw (read and write)
			[3]: any_useState_result1_4_upvr (readonly)
		]]
		any_useState_result2_upvr_7(math.min(#tbl_51_upvw, any_useState_result1_4_upvr + 1))
	end, {any_useState_result1_4_upvr, tbl_51_upvw, any_useState_result2_upvr_7})
	local Space_150_upvr = useDesignTokens_upvr().Global.Space_150
	local tbl_33 = {any_useState_result1_6_upvr}
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	tbl_33[2] = tbl_51_upvw
	tbl_33[3] = displayTitle_upvr_4
	tbl_33[4] = displayDescription_upvr_4
	tbl_33[5] = var323_upvw
	tbl_33[6] = any_useState_result1_2_upvr
	tbl_33[7] = any_useState_result1_4_upvr
	tbl_33[8] = any_useCallback_result1_upvr_4
	tbl_33[9] = any_useCallback_result1_upvr_7
	tbl_33[10] = any_useCallback_result1_upvr_8
	tbl_33[11] = var6_result1_upvr_4
	tbl_33[12] = Space_150_upvr
	return React_upvr.createElement(InteractiveAlert_upvr, {
		buttonStackInfo = React_upvr.useMemo(function() -- Line 543
			--[[ Upvalues[6]:
				[1]: any_useCallback_result1_upvr_9 (readonly)
				[2]: var19_result1_upvr_3 (readonly)
				[3]: ButtonType_upvr (copied, readonly)
				[4]: var312_upvr (readonly)
				[5]: any_useCallback_result1_upvr_10 (readonly)
				[6]: unfollowEvent_upvw (read and write)
			]]
			return {
				buttons = {{
					props = {
						onActivated = any_useCallback_result1_upvr_9;
						text = var19_result1_upvr_3.notNowButton;
					};
					isDefaultChild = true;
				}, {
					buttonType = ButtonType_upvr.PrimarySystem;
					props = {
						delayInputSeconds = 2;
						enableInputDelayed = var312_upvr;
						isDelayedInput = var312_upvr;
						onActivated = any_useCallback_result1_upvr_10;
						text = unfollowEvent_upvw;
					};
					isDefaultChild = false;
				}};
			}
		end, {var19_result1_upvr_3, any_useCallback_result1_upvr_10, any_useCallback_result1_upvr_9});
		isMiddleContentFocusable = false;
		middleContent = React_upvr.useCallback(function() -- Line 592
			--[[ Upvalues[22]:
				[1]: any_useState_result1_6_upvr (readonly)
				[2]: any_useState_result1_2_upvr (readonly)
				[3]: var6_result1_upvr_4 (readonly)
				[4]: React_upvr (copied, readonly)
				[5]: View_upvr (copied, readonly)
				[6]: any_useCallback_result1_upvr_4 (readonly)
				[7]: Text_upvr (copied, readonly)
				[8]: displayTitle_upvr_4 (readonly)
				[9]: displayDescription_upvr_4 (readonly)
				[10]: LoadableImage_upvr (copied, readonly)
				[11]: tbl_51_upvw (read and write)
				[12]: any_useState_result1_4_upvr (readonly)
				[13]: constants_upvr (copied, readonly)
				[14]: var322_upvw (read and write)
				[15]: Badge_upvr (copied, readonly)
				[16]: Space_150_upvr (readonly)
				[17]: BadgeSize_upvr (copied, readonly)
				[18]: var323_upvw (read and write)
				[19]: BadgeVariant_upvr (copied, readonly)
				[20]: any_useCallback_result1_upvr_8 (readonly)
				[21]: Icon_upvr (copied, readonly)
				[22]: any_useCallback_result1_upvr_7 (readonly)
			]]
			-- KONSTANTERROR: [0] 1. Error Block 29 start (CF ANALYSIS FAILED)
			local var367 = (var6_result1_upvr_4.Y - 80) - (any_useState_result1_6_upvr.Y - any_useState_result1_2_upvr.Y)
			if var367 < 0 then
				var367 = 0
			end
			local _ = {
				Size = UDim2.new(1, 0, 0, 200);
				sizeConstraint = {
					MinSize = Vector2.new(0, 0);
					MaxSize = Vector2.new(math.huge, var367);
				};
				tag = "col size-full-0 auto-y gap-medium";
				onAbsoluteSizeChanged = any_useCallback_result1_upvr_4;
			}
			local tbl_18 = {
				Title = React_upvr.createElement(Text_upvr, {
					tag = "size-full-0 auto-y text-title-large";
					Text = displayTitle_upvr_4;
					LayoutOrder = 1;
				});
				Body = React_upvr.createElement(Text_upvr, {
					tag = "size-full-0 auto-y text-body-large";
					Text = displayDescription_upvr_4;
					LayoutOrder = 2;
				});
			}
			local _ = {
				AutomaticSize = Enum.AutomaticSize.XY;
				Size = UDim2.fromScale(1, 1);
				BackgroundTransparency = 1;
				LayoutOrder = 3;
			}
			local tbl_39 = {
				Thumbnail = React_upvr.createElement(LoadableImage_upvr, {
					Position = UDim2.fromScale(0.5, 0.5);
					AnchorPoint = Vector2.new(0.5, 0.5);
					Size = UDim2.fromScale(1, 1);
					BackgroundTransparency = 1;
					Image = "rbxassetid://"..tbl_51_upvw[any_useState_result1_4_upvr].mediaId;
					useShimmerAnimationWhileLoading = true;
					showFailedStateWhenLoadingFailed = true;
				});
			}
			local any_createElement_result1_3 = React_upvr.createElement("UIAspectRatioConstraint", {
				AspectRatio = constants_upvr.HORIZONTAL_ASPECT_RATIO;
			})
			tbl_39.AspectRatioConstraint = any_createElement_result1_3
			if var322_upvw then
				any_createElement_result1_3 = React_upvr.createElement
				any_createElement_result1_3 = any_createElement_result1_3(Badge_upvr, {
					Position = UDim2.new(1, -Space_150_upvr, 0, Space_150_upvr);
					AnchorPoint = Vector2.new(1, 0);
					ZIndex = 2;
					size = BadgeSize_upvr.Medium;
					text = var323_upvw;
					variant = BadgeVariant_upvr.Primary;
				})
			else
				any_createElement_result1_3 = nil
			end
			tbl_39.StartTimeBadge = any_createElement_result1_3
			local _ = {
				tag = "padding-small size-full";
				ZIndex = 2;
			}
			local tbl_79 = {
				LayoutOrder = 1;
				tag = "bg-over-media-0 anchor-top-left auto-xy clip padding-x-small padding-y-xsmall position-top-left radius-circle";
			}
			if 1 >= #tbl_51_upvw then
				-- KONSTANTWARNING: GOTO [246] #180
			end
			-- KONSTANTERROR: [0] 1. Error Block 29 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [245] 179. Error Block 32 start (CF ANALYSIS FAILED)
			tbl_79.Visible = true
			;({}).CountView = React_upvr.createElement(View_upvr, tbl_79, {
				Count = React_upvr.createElement(Text_upvr, {
					tag = "auto-xy content-emphasis text-body-small";
					Text = `{any_useState_result1_4_upvr}/{#tbl_51_upvw}`;
				});
			})
			if 1 < any_useState_result1_4_upvr then
				local _ = {
					LayoutOrder = 1;
					tag = "bg-over-media-0 anchor-center-left auto-xy clip position-center-left radius-circle";
					onActivated = any_useCallback_result1_upvr_8;
					testId = "prevThumbnailButton";
				}
				;({}).CycleLeftIcon = React_upvr.createElement(Icon_upvr, {
					name = "icons/actions/cycleLeft";
				})
				-- KONSTANTWARNING: GOTO [309] #227
			end
			-- KONSTANTERROR: [245] 179. Error Block 32 end (CF ANALYSIS FAILED)
		end, tbl_33);
		onAbsoluteSizeChanged = React_upvr.useCallback(function(arg1_14) -- Line 572
			--[[ Upvalues[1]:
				[1]: any_useState_result2_upvr (readonly)
			]]
			any_useState_result2_upvr(arg1_14.AbsoluteSize)
		end, {any_useState_result2_upvr});
		position = UDim2.fromScale(0.5, 0.5);
		screenSize = var6_result1_upvr_4;
		title = joinEvent;
	})
end