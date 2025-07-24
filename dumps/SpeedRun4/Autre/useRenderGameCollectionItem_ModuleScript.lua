-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:32:14
-- Luau version 6, Types version 3
-- Time taken: 0.012179 seconds

local GameCollections = script:FindFirstAncestor("GameCollections")
local Parent = GameCollections.Parent
local Responsive_upvr = require(Parent.Responsive)
local GameTile = require(Parent.GameTile)
local module_3_upvr = {
	GameTile = "GameTile";
	SeeAllTile = "SeeAllTile";
}
local usePreferredInput_upvr = Responsive_upvr.usePreferredInput
local useNavigateToGameDetails_upvr = require(GameCollections.useNavigateToGameDetails)
local FFlagLuaAppGameTileInteractionFeedback_upvr = require(Parent.SharedFlags).FFlagLuaAppGameTileInteractionFeedback
local useTriggerGameTileFeedbackCallbacks_upvr = require(GameCollections.useTriggerGameTileFeedbackCallbacks)
local FFlagAllowUseLegacyGameTile_upvr = require(Parent.SharedFlags).FFlagAllowUseLegacyGameTile
local FFlagLuaAppMigrateGameTile_upvr = require(Parent.SharedFlags).FFlagLuaAppMigrateGameTile
local FFlagLuaAppMigrateGameTileIxp_upvr = require(Parent.SharedFlags).FFlagLuaAppMigrateGameTileIxp
local GameTileExperimentation_upvr = GameTile.GameTileExperimentation
local FFlagEnablePreferredTextSizeFixGameGrid_upvr = require(Parent.SharedFlags).FFlagEnablePreferredTextSizeFixGameGrid
local useBreakpointXOrSmaller_upvr = Responsive_upvr.useBreakpointXOrSmaller
local GameTileConstants_upvr = GameTile.GameTileConstants
local GameTileLayoutType_upvr = GameTile.GameTileTypes.GameTileLayoutType
local React_upvr = require(Parent.React)
local SeeAllTile_upvr = require(GameCollections.SeeAllTile)
local FFlagLuaAppCollectionSelectionOrder_upvr = require(Parent.SharedFlags).FFlagLuaAppCollectionSelectionOrder
local AppGameTile_upvr = GameTile.AppGameTile
local FFlagLuaAppGameExperienceTileExternalSdpProps_upvr = require(Parent.SharedFlags).FFlagLuaAppGameExperienceTileExternalSdpProps
local FFlagLuaAppGameTileWideVideoThumbnail_upvr = require(Parent.SharedFlags).FFlagLuaAppGameTileWideVideoThumbnail
local FFlagSongEdpCarouselIxp_upvr = require(Parent.SharedFlags).FFlagSongEdpCarouselIxp
return function(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13, arg14, arg15, arg16, arg17, arg18, arg19, arg20, arg21, arg22, arg23, arg24, arg25, arg26, arg27, arg28, arg29, arg30, arg31) -- Line 38, Named "useRenderGameCollectionItem"
	--[[ Upvalues[21]:
		[1]: usePreferredInput_upvr (readonly)
		[2]: useNavigateToGameDetails_upvr (readonly)
		[3]: FFlagLuaAppGameTileInteractionFeedback_upvr (readonly)
		[4]: useTriggerGameTileFeedbackCallbacks_upvr (readonly)
		[5]: Responsive_upvr (readonly)
		[6]: FFlagAllowUseLegacyGameTile_upvr (readonly)
		[7]: FFlagLuaAppMigrateGameTile_upvr (readonly)
		[8]: FFlagLuaAppMigrateGameTileIxp_upvr (readonly)
		[9]: GameTileExperimentation_upvr (readonly)
		[10]: FFlagEnablePreferredTextSizeFixGameGrid_upvr (readonly)
		[11]: useBreakpointXOrSmaller_upvr (readonly)
		[12]: GameTileConstants_upvr (readonly)
		[13]: GameTileLayoutType_upvr (readonly)
		[14]: React_upvr (readonly)
		[15]: SeeAllTile_upvr (readonly)
		[16]: module_3_upvr (readonly)
		[17]: FFlagLuaAppCollectionSelectionOrder_upvr (readonly)
		[18]: AppGameTile_upvr (readonly)
		[19]: FFlagLuaAppGameExperienceTileExternalSdpProps_upvr (readonly)
		[20]: FFlagLuaAppGameTileWideVideoThumbnail_upvr (readonly)
		[21]: FFlagSongEdpCarouselIxp_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var25_upvw
	local var26_upvw
	local var27_upvw
	if FFlagLuaAppGameTileInteractionFeedback_upvr then
		local useTriggerGameTileFeedbackCallbacks_upvr_result1, var9_result2 = useTriggerGameTileFeedbackCallbacks_upvr()
		var25_upvw = useTriggerGameTileFeedbackCallbacks_upvr_result1
		var26_upvw = var9_result2
	end
	useTriggerGameTileFeedbackCallbacks_upvr_result1 = arg7
	local var30_upvr = useTriggerGameTileFeedbackCallbacks_upvr_result1
	if var30_upvr then
		var27_upvw = Responsive_upvr.Input
		if usePreferredInput_upvr() ~= var27_upvw.Pointer then
			var30_upvr = false
		else
			var30_upvr = true
		end
	end
	local var31_upvr = true
	if arg3 ~= "Wide" then
		if arg3 ~= "Event" then
			var31_upvr = false
		else
			var31_upvr = true
		end
	end
	var27_upvw = nil
	local var32
	if var32 and arg29 then
		var27_upvw = false
	else
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var32 = not FFlagLuaAppMigrateGameTileIxp_upvr
			return var32
		end
		if not FFlagLuaAppMigrateGameTile_upvr or not INLINED() then
			var32 = FFlagLuaAppMigrateGameTileIxp_upvr
			if var32 then
				var32 = GameTileExperimentation_upvr.getIsTileMigrationEnabled()
			end
		end
		var27_upvw = var32
	end
	var32 = nil
	if FFlagEnablePreferredTextSizeFixGameGrid_upvr then
		var32 = useBreakpointXOrSmaller_upvr(Responsive_upvr.Keys.Small)
		if var27_upvw and var32 then
			local var33 = arg3
			if not var33 then
				var33 = GameTileLayoutType_upvr.Narrow
			end
			local largeMetadataTextLines = GameTileConstants_upvr.TileTextLines[var33].largeMetadataTextLines
		else
			local var35 = arg3
			if not var35 then
				var35 = GameTileLayoutType_upvr.Narrow
			end
		end
	end
	local var7_result1_upvr = useNavigateToGameDetails_upvr()
	local metadataTextLines_upvw = GameTileConstants_upvr.TileTextLines[var35].metadataTextLines
	local module_2 = {}
	local var50 = arg2
	module_2[1] = var31_upvr
	module_2[2] = arg4
	module_2[3] = arg16
	module_2[4] = arg5
	module_2[5] = arg6
	module_2[6] = arg1
	module_2[7] = var50
	module_2[8] = arg3
	module_2[9] = arg14
	module_2[10] = arg8
	module_2[11] = arg9
	module_2[12] = arg13
	module_2[13] = arg10
	module_2[14] = arg12
	module_2[15] = arg11
	module_2[16] = arg15
	if FFlagLuaAppGameTileInteractionFeedback_upvr then
		var50 = var25_upvw
	else
		var50 = nil
	end
	if FFlagLuaAppGameTileInteractionFeedback_upvr then
		-- KONSTANTWARNING: GOTO [173] #157
	end
	if FFlagLuaAppMigrateGameTile_upvr then
		-- KONSTANTWARNING: GOTO [181] #165
	end
	if FFlagLuaAppMigrateGameTile_upvr then
		-- KONSTANTWARNING: GOTO [186] #170
	end
	if FFlagLuaAppGameExperienceTileExternalSdpProps_upvr then
		-- KONSTANTWARNING: GOTO [191] #175
	end
	if FFlagLuaAppGameExperienceTileExternalSdpProps_upvr then
		-- KONSTANTWARNING: GOTO [196] #180
	end
	if FFlagLuaAppGameTileWideVideoThumbnail_upvr then
		-- KONSTANTWARNING: GOTO [201] #185
	end
	module_2[17] = var30_upvr
	module_2[18] = arg17
	module_2[19] = arg18
	module_2[20] = arg19
	module_2[21] = arg20
	module_2[22] = arg24
	module_2[23] = var50
	module_2[24] = nil
	module_2[25] = arg21
	module_2[26] = arg22
	module_2[27] = arg23
	module_2[28] = nil
	module_2[29] = nil
	module_2[30] = nil
	module_2[31] = nil
	module_2[32] = nil
	if FFlagSongEdpCarouselIxp_upvr then
		-- KONSTANTWARNING: GOTO [208] #191
	end
	if FFlagLuaAppCollectionSelectionOrder_upvr then
		-- KONSTANTWARNING: GOTO [213] #196
	end
	if FFlagEnablePreferredTextSizeFixGameGrid_upvr then
	else
	end
	module_2[33] = nil
	module_2[34] = nil
	module_2[35] = nil
	return React_upvr.useCallback(function(arg1_2, arg2_2, arg3_2, arg4_2) -- Line 147
		--[[ Upvalues[47]:
			[1]: arg15 (readonly)
			[2]: arg13 (readonly)
			[3]: React_upvr (copied, readonly)
			[4]: SeeAllTile_upvr (copied, readonly)
			[5]: module_3_upvr (copied, readonly)
			[6]: arg23 (readonly)
			[7]: FFlagLuaAppCollectionSelectionOrder_upvr (copied, readonly)
			[8]: arg31 (readonly)
			[9]: AppGameTile_upvr (copied, readonly)
			[10]: arg8 (readonly)
			[11]: arg9 (readonly)
			[12]: arg4 (readonly)
			[13]: arg5 (readonly)
			[14]: arg6 (readonly)
			[15]: var31_upvr (readonly)
			[16]: arg1 (readonly)
			[17]: arg2 (readonly)
			[18]: arg3 (readonly)
			[19]: var30_upvr (readonly)
			[20]: arg14 (readonly)
			[21]: arg10 (readonly)
			[22]: arg11 (readonly)
			[23]: arg12 (readonly)
			[24]: var7_result1_upvr (readonly)
			[25]: arg16 (readonly)
			[26]: arg17 (readonly)
			[27]: arg18 (readonly)
			[28]: arg19 (readonly)
			[29]: arg20 (readonly)
			[30]: FFlagLuaAppGameTileInteractionFeedback_upvr (copied, readonly)
			[31]: var25_upvw (read and write)
			[32]: var26_upvw (read and write)
			[33]: arg21 (readonly)
			[34]: arg22 (readonly)
			[35]: arg24 (readonly)
			[36]: FFlagLuaAppMigrateGameTile_upvr (copied, readonly)
			[37]: arg25 (readonly)
			[38]: FFlagEnablePreferredTextSizeFixGameGrid_upvr (copied, readonly)
			[39]: metadataTextLines_upvw (read and write)
			[40]: var27_upvw (read and write)
			[41]: FFlagLuaAppGameExperienceTileExternalSdpProps_upvr (copied, readonly)
			[42]: arg26 (readonly)
			[43]: arg27 (readonly)
			[44]: FFlagLuaAppGameTileWideVideoThumbnail_upvr (copied, readonly)
			[45]: arg28 (readonly)
			[46]: FFlagSongEdpCarouselIxp_upvr (copied, readonly)
			[47]: arg30 (readonly)
		]]
		local var44
		if var44 then
			var44 = arg15
			if arg2_2 == var44 then
				var44 = arg13
				if var44 then
					var44 = React_upvr.createElement
					local tbl = {}
					tbl.onActivated = arg13
					tbl.Size = arg3_2
					tbl.LayoutOrder = arg2_2
					var44 = var44(SeeAllTile_upvr, tbl)
					return var44, module_3_upvr.SeeAllTile
				end
			end
		end
		var44 = nil
		if arg23 then
			var44 = arg23(arg2_2)
		end
		local var46
		if FFlagLuaAppCollectionSelectionOrder_upvr and arg31 then
			var46 = arg31 + arg2_2
		else
			var46 = nil
		end
		local module = {}
		module.Size = arg3_2
		module.entry = arg1_2
		module.layoutOrder = arg2_2
		module.ZIndex = -arg2_2
		module.reportGameDetailOpened = arg8
		module.reportExperienceLaunched = arg9
		module.index = arg1_2.realGameEntryIndex or arg2_2
		module.friendFooterEnabled = arg4
		module.showFriendActivity = arg5
		module.impressionsTag = arg6
		module.useGridTile = var31_upvr
		module.playerCountStyle = arg1
		module.isSponsoredFooterAllowed = arg2
		module.gameTileLayoutType = arg3
		module.useHoverTile = var30_upvr
		module.topicId = arg14
		module.launchExperienceEventContext = arg10
		module.referralSource = arg11
		module.source = arg12
		module.rowNum = arg4_2
		module.navigateToGameDetails = var7_result1_upvr
		module.hideGameStats = arg16
		module.playButtonStyle = arg17
		module.isContained = arg18
		module.hideTitle = arg19
		module.hideMetadata = arg20
		if FFlagLuaAppGameTileInteractionFeedback_upvr then
			-- KONSTANTWARNING: GOTO [126] #92
		end
		module.onGuiStateChanged = nil
		if FFlagLuaAppGameTileInteractionFeedback_upvr then
			-- KONSTANTWARNING: GOTO [133] #98
		end
		module.onActivated = nil
		module.isDisabled = var44
		module.onSelectionGained = arg21
		module.onSelectionLost = arg22
		module.textSizeOffset = arg24
		if FFlagLuaAppMigrateGameTile_upvr then
			-- KONSTANTWARNING: GOTO [151] #111
		end
		module.contentTextLineCount = nil
		local var48
		if FFlagLuaAppMigrateGameTile_upvr and FFlagEnablePreferredTextSizeFixGameGrid_upvr then
			var48 = metadataTextLines_upvw
		else
			var48 = nil
		end
		module.metadataTextLineCount = var48
		if FFlagLuaAppMigrateGameTile_upvr then
			var48 = var27_upvw
			-- KONSTANTWARNING: GOTO [167] #125
		end
		var48 = nil
		module.isUnifiedGameTile = var48
		if FFlagLuaAppGameExperienceTileExternalSdpProps_upvr then
			var48 = arg26
			-- KONSTANTWARNING: GOTO [174] #131
		end
		var48 = nil
		module.useExperienceTileMetadata = var48
		if FFlagLuaAppGameExperienceTileExternalSdpProps_upvr then
			var48 = arg27
			-- KONSTANTWARNING: GOTO [181] #137
		end
		var48 = nil
		module.forceHideAgeRatings = var48
		if FFlagLuaAppGameTileWideVideoThumbnail_upvr then
			var48 = arg28
			-- KONSTANTWARNING: GOTO [188] #143
		end
		var48 = nil
		module.videoAnalytics = var48
		if FFlagSongEdpCarouselIxp_upvr then
			var48 = arg30
			-- KONSTANTWARNING: GOTO [195] #149
		end
		var48 = nil
		module.onPeekViewClosed = var48
		if FFlagLuaAppCollectionSelectionOrder_upvr then
			var48 = var46
		else
			var48 = nil
		end
		module.SelectionOrder = var48
		return React_upvr.createElement(AppGameTile_upvr, module), module_3_upvr.GameTile
	end, module_2)
end