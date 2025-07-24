-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:34:00
-- Luau version 6, Types version 3
-- Time taken: 0.051301 seconds

-- KONSTANTERROR: [0] 1. Error Block 69 start (CF ANALYSIS FAILED)
local GameTile = script:FindFirstAncestor("GameTile")
local GridTileTextFooter_upvr = require(GameTile.Footer.GridTileTextFooter)
local GameStats_upvr = require(GameTile.Footer.GameStats)
local AppExperienceActionRow_upvr = require(GameTile.AppExperienceActionRow)
local GameTileConstants_upvr = require(GameTile.GameTileConstants)
local GameTileTypes_upvr = require(GameTile.GameTileTypes)
local Parent = GameTile.Parent
local React_upvr = require(Parent.React)
local Roact_upvr = require(Parent.Roact)
local t = require(Parent.t)
local UIBlox = require(Parent.UIBlox)
local withStyle_upvr = UIBlox.Style.withStyle
local ImpressionsTagUtility_upvr = require(Parent.Impressions).ImpressionsTagUtility
local Responsive_upvr = require(Parent.Responsive)
local DiscoveryAppLaunchTracker_upvr = require(Parent.AppLaunchTracker).DiscoveryAppLaunchTracker
local FFlagLuaAppGameTileInteractionFeedback_upvr = require(Parent.SharedFlags).FFlagLuaAppGameTileInteractionFeedback
local FFlagLuaAppGameTileIconTextBadgeEnabled_upvr = require(Parent.SharedFlags).FFlagLuaAppGameTileIconTextBadgeEnabled
local FFlagLuaAppGameExperienceTileExternalSdpProps_upvr = require(Parent.SharedFlags).FFlagLuaAppGameExperienceTileExternalSdpProps
local FFlagLuaAppMigrateGameTileActiveFriendsFix_upvr = require(Parent.SharedFlags).FFlagLuaAppMigrateGameTileActiveFriendsFix
local FFlagEnablePreferredTextSizeFixGameGrid_upvr = require(Parent.SharedFlags).FFlagEnablePreferredTextSizeFixGameGrid
local FFlagAddVideoDetectorWrapper_DEV_upvr = require(Parent.SharedFlags).FFlagAddVideoDetectorWrapper_DEV
local FFlagLuaAppCollectionSelectionOrder_upvr = require(Parent.SharedFlags).FFlagLuaAppCollectionSelectionOrder
local IsVRAppBuild_upvr = require(Parent.AppCommonLib).IsVRAppBuild
local game_GetEngineFeature_result1_upvr_2 = game:GetEngineFeature("BatchThumbnailSupports256x144Asset")
local game_GetEngineFeature_result1_upvr = game:GetEngineFeature("BatchThumbnailSupports384x216Asset")
local FFlagLuaAppMigrateGameTile_upvr = require(Parent.SharedFlags).FFlagLuaAppMigrateGameTile
local FFlagLuaAppMigrateGameTileIxp_upvr = require(Parent.SharedFlags).FFlagLuaAppMigrateGameTileIxp
local FFlagLuaAppUnifyPlayButtonTile_upvr = require(Parent.SharedFlags).FFlagLuaAppUnifyPlayButtonTile
local FFlagLuaAppGameTileWideVideoThumbnail_upvr = require(Parent.SharedFlags).FFlagLuaAppGameTileWideVideoThumbnail
local var30_upvr
if FFlagAddVideoDetectorWrapper_DEV_upvr then
	var30_upvr = require(Parent.VideoUtils).VideoPlaybackCoordinator
else
	var30_upvr = require(GameTile.Video.VideoPlaybackCoordinator)
end
game:DefineFastInt("LuaAppGameTileHoverDelayMs", 130)
local function _() -- Line 112, Named "getHoverDelay"
	return game:GetFastInt("LuaAppGameTileHoverDelayMs") / 1000
end
local any_extend_result1 = Roact_upvr.PureComponent:extend("AppGameTile")
local tbl_10 = {
	entry = t.table;
	reportGameDetailOpened = t.callback;
	reportExperienceLaunched = t.optional(t.callback);
	Size = t.optional(t.union(t.UDim2, t.table));
	ZIndex = t.optional(t.number);
	useHoverTile = t.optional(t.boolean);
	hasBackground = t.boolean;
	useGridTile = t.boolean;
	playerCountStyle = t.optional(t.string);
	isSponsoredFooterAllowed = t.optional(t.boolean);
	useExperienceTileMetadata = t.boolean;
	hideGameStats = t.optional(t.boolean);
	gameTileLayoutType = t.optional(t.string);
	topicId = t.optional(t.string);
}
local any_optional_result1 = t.optional(t.string)
tbl_10.playButtonStyle = any_optional_result1
if FFlagLuaAppGameTileInteractionFeedback_upvr then
	any_optional_result1 = t.optional(t.callback)
else
	any_optional_result1 = nil
end
tbl_10.onGuiStateChanged = any_optional_result1
tbl_10.isDisabled = t.optional(t.boolean)
if FFlagLuaAppGameTileInteractionFeedback_upvr then
	-- KONSTANTWARNING: GOTO [671] #395
end
-- KONSTANTERROR: [0] 1. Error Block 69 end (CF ANALYSIS FAILED)
-- KONSTANTERROR: [670] 394. Error Block 78 start (CF ANALYSIS FAILED)
tbl_10.onActivated = nil
local formatRating
formatRating = t.optional(t.callback)
tbl_10.onSelectionGained = formatRating
formatRating = t.optional(t.callback)
tbl_10.onSelectionLost = formatRating
formatRating = t.optional(t.boolean)
tbl_10.friendFooterEnabled = formatRating
formatRating = t.optional(t.number)
tbl_10.index = formatRating
formatRating = t.optional(t.number)
tbl_10.layoutOrder = formatRating
formatRating = t.optional(t.string)
tbl_10.source = formatRating
formatRating = t.optional(t.string)
tbl_10.referralSource = formatRating
formatRating = t.optional(t.callback)
tbl_10.onPeekViewClosed = formatRating
formatRating = t.optional(t.number)
tbl_10.rowNum = formatRating
formatRating = t.boolean
tbl_10.showFriendActivity = formatRating
formatRating = t.optional(t.number)
tbl_10.contentTextLineCount = formatRating
if FFlagEnablePreferredTextSizeFixGameGrid_upvr and FFlagLuaAppMigrateGameTile_upvr then
	formatRating = t.optional(t.number)
else
	formatRating = nil
end
tbl_10.metadataTextLineCount = formatRating
formatRating = t.optional(t.string)
tbl_10.thumbnailAspectRatioOverride = formatRating
formatRating = t.optional(t.string)
tbl_10.impressionsTag = formatRating
formatRating = t.optional(t.string)
tbl_10.launchExperienceEventContext = formatRating
formatRating = t.callback
tbl_10.navigateToGameDetails = formatRating
formatRating = t.optional(t.boolean)
tbl_10.isContained = formatRating
formatRating = t.optional(t.boolean)
tbl_10.hideTitle = formatRating
formatRating = t.optional(t.boolean)
tbl_10.hideMetadata = formatRating
formatRating = t.optional(t.number)
tbl_10.textSizeOffset = formatRating
if FFlagLuaAppMigrateGameTile_upvr then
	formatRating = t.optional(t.boolean)
	-- KONSTANTWARNING: GOTO [819] #482
end
formatRating = nil
tbl_10.isUnifiedGameTile = formatRating
if FFlagLuaAppMigrateGameTile_upvr then
	formatRating = t.optional(t.table)
	-- KONSTANTWARNING: GOTO [829] #489
end
formatRating = nil
tbl_10.foundationTokens = formatRating
if FFlagLuaAppGameTileWideVideoThumbnail_upvr then
	formatRating = t.optional(t.table)
	-- KONSTANTWARNING: GOTO [839] #496
end
formatRating = nil
tbl_10.videoAnalytics = formatRating
if FFlagLuaAppCollectionSelectionOrder_upvr then
	formatRating = t.optional(t.number)
	-- KONSTANTWARNING: GOTO [849] #503
end
formatRating = nil
tbl_10.SelectionOrder = formatRating
formatRating = t.optional(t.table)
tbl_10.game = formatRating
formatRating = t.string
tbl_10.universeId = formatRating
formatRating = t.optional(t.string)
tbl_10.navigationUniverseId = formatRating
formatRating = t.string
tbl_10.name = formatRating
formatRating = t.number
tbl_10.totalUpVotes = formatRating
formatRating = t.number
tbl_10.totalDownVotes = formatRating
formatRating = t.optional(t.string)
tbl_10.friendActivityTitle = formatRating
formatRating = t.optional(t.string)
tbl_10.friendVisitedString = formatRating
formatRating = t.string
tbl_10.imageThumbnail = formatRating
formatRating = t.optional(t.string)
tbl_10.wideThumbnail = formatRating
if FFlagLuaAppGameTileWideVideoThumbnail_upvr then
	formatRating = t.optional(t.string)
	-- KONSTANTWARNING: GOTO [914] #540
end
formatRating = nil
tbl_10.videoThumbnail = formatRating
formatRating = t.optional(t.string)
tbl_10.rating = formatRating
formatRating = t.optional(t.boolean)
tbl_10.showAgeRating = formatRating
formatRating = t.optional(t.string)
tbl_10.ageRatingText = formatRating
formatRating = t.table
tbl_10.friendVisits = formatRating
formatRating = t.boolean
tbl_10.hidePlayButton = formatRating
formatRating = t.optional(t.table)
tbl_10.footerLayoutData = formatRating
formatRating = t.callback
tbl_10.openContextualMenu = formatRating
formatRating = t.callback
tbl_10.openSponsoredTooltip = formatRating
formatRating = t.callback
tbl_10.networking = formatRating
formatRating = t.table
tbl_10.hoverRef = formatRating
if FFlagLuaAppGameTileWideVideoThumbnail_upvr then
	formatRating = t.optional(t.boolean)
	-- KONSTANTWARNING: GOTO [976] #575
end
formatRating = nil
tbl_10.isHoverSupported = formatRating
formatRating = t.optional(t.boolean)
tbl_10.isHovered = formatRating
if FFlagLuaAppGameTileWideVideoThumbnail_upvr then
	formatRating = t.boolean
else
	formatRating = nil
end
tbl_10.isVideoPlaying = formatRating
formatRating = t.optional(t.table)
tbl_10.tileBadges = formatRating
formatRating = t.optional(t.table)
tbl_10.users = formatRating
formatRating = t.optional(t.table)
tbl_10.inGameUsersByGame = formatRating
formatRating = t.boolean
tbl_10.hasInGameFriends = formatRating
formatRating = t.optional(t.boolean)
tbl_10.forceHideAgeRatings = formatRating
any_extend_result1.validateProps = t.strictInterface(tbl_10)
local Narrow = GameTileTypes_upvr.GameTileLayoutType.Narrow
local tbl_4 = {}
formatRating = false
tbl_4.useHoverTile = formatRating
formatRating = false
tbl_4.hasBackground = formatRating
formatRating = false
tbl_4.useExperienceTileMetadata = formatRating
formatRating = false
tbl_4.useGridTile = formatRating
formatRating = UIBlox.App.Tile.AspectRatioModeEnum.Square
tbl_4.thumbnailAspectRatioOverride = formatRating
tbl_4.gameTileLayoutType = Narrow
formatRating = GameTileConstants_upvr.TileTextLines[Narrow].titleTextLines
tbl_4.contentTextLineCount = formatRating
formatRating = false
tbl_4.hideGameStats = formatRating
any_extend_result1.defaultProps = tbl_4
local game_DefineFastFlag_result1_upvr_2 = game:DefineFastFlag("LuaAppUnifiedTileHoverStateFix", false)
local HoverTileCoordinator_upvr = require(GameTile.HoverTileCoordinator)
local VideoEndReason_upvr = require(GameTile.Video.Analytics.VideoEndReason)
local FFlagLuaAppGameTileWideVideoThumbnailOnMobile_upvr = require(Parent.SharedFlags).FFlagLuaAppGameTileWideVideoThumbnailOnMobile
local SponsoredGamesRecordClick_upvr = require(GameTile.SponsoredGamesRecordClick)
local GetFFlagEnableNavigationPerformanceIntervals_upvr = require(Parent.SharedFlags).GetFFlagEnableNavigationPerformanceIntervals
local IntervalPerformanceTracker_upvr = require(Parent.IntervalPerformanceTracker).IntervalPerformanceTracker
local ContentProvider_upvr = game:GetService("ContentProvider")
local memoize_upvr = require(Parent.AppCommonLib).memoize
local sortFriendsByPresenceAndRecencyFactory_upvr = require(GameTile.sortFriendsByPresenceAndRecencyFactory)
function any_extend_result1.init(arg1) -- Line 215
	--[[ Upvalues[18]:
		[1]: DiscoveryAppLaunchTracker_upvr (readonly)
		[2]: game_DefineFastFlag_result1_upvr_2 (readonly)
		[3]: HoverTileCoordinator_upvr (readonly)
		[4]: FFlagLuaAppGameTileWideVideoThumbnail_upvr (readonly)
		[5]: var30_upvr (readonly)
		[6]: VideoEndReason_upvr (readonly)
		[7]: FFlagLuaAppGameTileWideVideoThumbnailOnMobile_upvr (readonly)
		[8]: Roact_upvr (readonly)
		[9]: AppExperienceActionRow_upvr (readonly)
		[10]: FFlagLuaAppUnifyPlayButtonTile_upvr (readonly)
		[11]: FFlagLuaAppMigrateGameTile_upvr (readonly)
		[12]: SponsoredGamesRecordClick_upvr (readonly)
		[13]: FFlagLuaAppGameTileInteractionFeedback_upvr (readonly)
		[14]: GetFFlagEnableNavigationPerformanceIntervals_upvr (readonly)
		[15]: IntervalPerformanceTracker_upvr (readonly)
		[16]: ContentProvider_upvr (readonly)
		[17]: memoize_upvr (readonly)
		[18]: sortFriendsByPresenceAndRecencyFactory_upvr (readonly)
	]]
	if DiscoveryAppLaunchTracker_upvr.isEnabled() and DiscoveryAppLaunchTracker_upvr.default then
		DiscoveryAppLaunchTracker_upvr.default:trackTileInit()
	end
	arg1.state = {
		isHovered = false;
		canDisplayFriendFooter = false;
		isSelected = false;
	}
	function arg1.reportExperienceLaunchedFromActionBar(...) -- Line 226
		--[[ Upvalues[7]:
			[1]: arg1 (readonly)
			[2]: game_DefineFastFlag_result1_upvr_2 (copied, readonly)
			[3]: HoverTileCoordinator_upvr (copied, readonly)
			[4]: FFlagLuaAppGameTileWideVideoThumbnail_upvr (copied, readonly)
			[5]: var30_upvr (copied, readonly)
			[6]: VideoEndReason_upvr (copied, readonly)
			[7]: FFlagLuaAppGameTileWideVideoThumbnailOnMobile_upvr (copied, readonly)
		]]
		arg1.recordSponsoredGameClick()
		if arg1.props.isHovered and (not arg1.props.isUnifiedGameTile or not game_DefineFastFlag_result1_upvr_2) then
			HoverTileCoordinator_upvr.default:reset()
		end
		if arg1.props.reportExperienceLaunched then
			arg1.props.reportExperienceLaunched(...)
		end
		if FFlagLuaAppGameTileWideVideoThumbnail_upvr then
			local var49 = VideoEndReason_upvr
			if FFlagLuaAppGameTileWideVideoThumbnailOnMobile_upvr then
				var49 = nil
			else
				var49 = arg1.props.index
			end
			local props_2 = arg1.props
			if FFlagLuaAppGameTileWideVideoThumbnailOnMobile_upvr then
				props_2 = nil
			else
				props_2 = arg1.props.videoAnalytics
			end
			var30_upvr.default:reset(var49.ExperienceLaunched, var49, props_2.navigationUniverseId, props_2)
		end
	end
	function arg1.renderAppExperienceActionRow(arg1_2) -- Line 248
		--[[ Upvalues[5]:
			[1]: Roact_upvr (copied, readonly)
			[2]: AppExperienceActionRow_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: FFlagLuaAppUnifyPlayButtonTile_upvr (copied, readonly)
			[5]: FFlagLuaAppMigrateGameTile_upvr (copied, readonly)
		]]
		local module_7 = {
			universeId = arg1.props.navigationUniverseId;
			referralSource = arg1.props.referralSource;
			launchSource = "ExperienceTile";
			reportExperienceLaunched = arg1.reportExperienceLaunchedFromActionBar;
			openGameDetails = arg1.onActivated;
			entry = arg1.props.entry;
			launchExperienceEventContext = arg1.props.launchExperienceEventContext;
		}
		local var53
		if arg1.props.useGridTile then
			var53 = 0
		else
			var53 = nil
		end
		module_7.horizontalPadding = var53
		var53 = arg1.props.index
		module_7.index = var53
		if FFlagLuaAppUnifyPlayButtonTile_upvr and FFlagLuaAppMigrateGameTile_upvr then
			var53 = arg1.props.isUnifiedGameTile
		else
			var53 = nil
		end
		module_7.isUnifiedGameTileEnabled = var53
		return Roact_upvr.createElement(AppExperienceActionRow_upvr, module_7)
	end
	function arg1.onHoverChanged(arg1_3) -- Line 265
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local tbl_16 = {}
		tbl_16.isHovered = arg1_3
		arg1:setState(tbl_16)
	end
	arg1.gameTileRef = Roact_upvr.createRef()
	function arg1.getTilePosition() -- Line 273
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1.gameTileRef.current then
			return arg1.gameTileRef.current.AbsolutePosition
		end
		return nil
	end
	function arg1.getTileSize() -- Line 281
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1.gameTileRef.current then
			return arg1.gameTileRef.current.AbsoluteSize
		end
		return nil
	end
	function arg1.recordSponsoredGameClick() -- Line 289
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: SponsoredGamesRecordClick_upvr (copied, readonly)
		]]
		local entry = arg1.props.entry
		if entry.isSponsored then
			SponsoredGamesRecordClick_upvr(arg1.props.networking, entry.adId)
		end
	end
	function arg1.onActivated() -- Line 298
		--[[ Upvalues[9]:
			[1]: arg1 (readonly)
			[2]: HoverTileCoordinator_upvr (copied, readonly)
			[3]: FFlagLuaAppGameTileWideVideoThumbnail_upvr (copied, readonly)
			[4]: var30_upvr (copied, readonly)
			[5]: VideoEndReason_upvr (copied, readonly)
			[6]: FFlagLuaAppGameTileWideVideoThumbnailOnMobile_upvr (copied, readonly)
			[7]: FFlagLuaAppGameTileInteractionFeedback_upvr (copied, readonly)
			[8]: GetFFlagEnableNavigationPerformanceIntervals_upvr (copied, readonly)
			[9]: IntervalPerformanceTracker_upvr (copied, readonly)
		]]
		if arg1.props.isHovered then
			HoverTileCoordinator_upvr.default:reset()
		end
		if FFlagLuaAppGameTileWideVideoThumbnail_upvr then
			local var61 = VideoEndReason_upvr
			if FFlagLuaAppGameTileWideVideoThumbnailOnMobile_upvr then
				var61 = nil
			else
				var61 = arg1.props.index
			end
			local props = arg1.props
			if FFlagLuaAppGameTileWideVideoThumbnailOnMobile_upvr then
				props = nil
			else
				props = arg1.props.videoAnalytics
			end
			var30_upvr.default:reset(var61.TileClicked, var61, props.navigationUniverseId, props)
		end
		if arg1.isMounted then
			if FFlagLuaAppGameTileInteractionFeedback_upvr and arg1.props.onActivated then
				arg1.props.onActivated()
			end
			local navigationUniverseId = arg1.props.navigationUniverseId
			if GetFFlagEnableNavigationPerformanceIntervals_upvr() then
				IntervalPerformanceTracker_upvr:startTracking("AppGameTile_to_GameDetail", 2)
			end
			arg1.props.navigateToGameDetails(navigationUniverseId, {
				source = arg1.props.source;
				index = arg1.props.index;
				referralSource = arg1.props.referralSource;
				onPeekViewClosed = arg1.props.onPeekViewClosed;
			})
			arg1.props.reportGameDetailOpened(arg1.props.index, navigationUniverseId)
			arg1.recordSponsoredGameClick()
		end
	end
	function arg1.onFriendFooterActivated() -- Line 340
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1.isMounted then
			arg1.props.openContextualMenu(arg1.props.game, arg1.getTileSize(), arg1.getTilePosition())
		end
	end
	function arg1.onActivateSponsoredTooltip() -- Line 348
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1.isMounted then
			arg1.props.openSponsoredTooltip()
		end
	end
	function arg1.loadWideThumbnail() -- Line 356
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: ContentProvider_upvr (copied, readonly)
		]]
		local wideThumbnail_upvr = arg1.props.wideThumbnail
		if wideThumbnail_upvr ~= nil then
			task.spawn(function() -- Line 359
				--[[ Upvalues[2]:
					[1]: ContentProvider_upvr (copied, readonly)
					[2]: wideThumbnail_upvr (readonly)
				]]
				ContentProvider_upvr:PreloadAsync({wideThumbnail_upvr})
			end)
		end
	end
	function arg1.getVisitedFriends() -- Line 365
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local friendVisits = arg1.props.friendVisits
		for i = 1, #friendVisits do
			local tostring_result1 = tostring(friendVisits[i].userId)
			if arg1.props.users and arg1.props.users[tostring_result1] then
				table.insert({}, {
					userId = tostring_result1;
					displayName = arg1.props.users[tostring_result1].displayName;
				})
			end
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		return {}
	end
	arg1.getSortedFriends = memoize_upvr(function(arg1_4, arg2, arg3) -- Line 389
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: FFlagLuaAppMigrateGameTile_upvr (copied, readonly)
			[3]: sortFriendsByPresenceAndRecencyFactory_upvr (copied, readonly)
		]]
		if not arg1_4 or not arg2 then
			return {}
		end
		local module_6 = {}
		for i_2, v in pairs(arg2) do
			local var83 = arg1_4[v]
			if var83 and var83.isFriend then
				if arg1.props.useGridTile or FFlagLuaAppMigrateGameTile_upvr and arg3 then
					table.insert(module_6, {
						userId = var83.id;
						displayName = var83.displayName;
					})
				else
					table.insert(module_6, var83)
				end
			end
		end
		if arg1.props.useGridTile or FFlagLuaAppMigrateGameTile_upvr and arg3 then
			i_2 = sortFriendsByPresenceAndRecencyFactory_upvr("displayName")
			table.sort(module_6, i_2)
			return module_6
		end
		table.sort(module_6, sortFriendsByPresenceAndRecencyFactory_upvr("name"))
		return module_6
	end)
	function arg1.onSelectionGained() -- Line 420
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:setState({
			isSelected = true;
		})
		if arg1.props.onSelectionGained then
			arg1.props.onSelectionGained(arg1.props.entry, arg1.props.index, arg1.props.navigationUniverseId)
		end
	end
	function arg1.onSelectionLost() -- Line 428
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:setState({
			isSelected = false;
		})
		if arg1.props.onSelectionLost then
			arg1.props.onSelectionLost()
		end
	end
end
local function _(arg1) -- Line 440, Named "getTextLiteralForTextFooter"
	if arg1 == nil then
		return nil
	end
	if arg1.type ~= "TextLabel" then
		return nil
	end
	local text_5 = arg1.text
	if text_5 == nil then
		return nil
	end
	return text_5.textLiteral
end
local ExperienceFooter_upvr = require(GameTile.Footer.ExperienceFooter)
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("LuaAppFixFacePileOverlap", false)
local UserIconList_upvr = require(GameTile.Footer.UserIconList)
function formatRating(arg1, arg2) -- Line 454, Named "renderFooter"
	--[[ Upvalues[10]:
		[1]: Roact_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: GridTileTextFooter_upvr (readonly)
		[4]: ExperienceFooter_upvr (readonly)
		[5]: FFlagLuaAppMigrateGameTileActiveFriendsFix_upvr (readonly)
		[6]: FFlagLuaAppMigrateGameTile_upvr (readonly)
		[7]: GameStats_upvr (readonly)
		[8]: withStyle_upvr (readonly)
		[9]: game_DefineFastFlag_result1_upvr (readonly)
		[10]: UserIconList_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local entry_3 = arg1.props.entry
	local isSponsored_2 = entry_3.isSponsored
	local inGameUsersByGame = arg1.props.inGameUsersByGame
	local friendActivityTitle_upvr = arg1.props.friendActivityTitle
	local useExperienceTileMetadata = arg1.props.useExperienceTileMetadata
	local var138
	if not entry_3.isShowSponsoredLabel then
		var138 = arg1.props
		local isSponsoredFooterAllowed = var138.isSponsoredFooterAllowed
	end
	local footerLayoutData_2 = arg1.props.footerLayoutData
	if footerLayoutData_2 == nil then
		var138 = nil
	elseif footerLayoutData_2.type ~= "TextLabel" then
		var138 = nil
	else
		local text = footerLayoutData_2.text
		if text == nil then
			var138 = nil
		else
			var138 = text.textLiteral
		end
	end
	footerLayoutData_2 = false
	local var142 = footerLayoutData_2
	if var138 ~= nil then
		if 0 >= #var138 then
			var142 = false
		else
			var142 = true
		end
	end
	local var143
	local useHoverTile = arg1.props.useHoverTile
	if var142 then
		local module_18 = {}
		local tbl_15 = {
			text = var138;
			useLargerFont = useHoverTile;
		}
		if useHoverTile then
			var143 = 0
		else
			var143 = arg2.Tokens.Global.Space_75
		end
		tbl_15.Position = UDim2.new(0, 0, 0.5, var143)
		tbl_15.AnchorPoint = Vector2.new(0, 0.5)
		module_18.TextFooter = React_upvr.createElement(GridTileTextFooter_upvr, tbl_15)
		return Roact_upvr.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, arg2.Tokens.Global.Space_250);
			BackgroundTransparency = 1;
			BorderSizePixel = 0;
		}, module_18)
	end
	local var148
	if var148 or useExperienceTileMetadata then
		local function INLINED_2() -- Internal function, doesn't exist in bytecode
			var148 = useExperienceTileMetadata
			return var148
		end
		if arg1.state.isHovered or INLINED_2() then
			var148 = arg1.props.showAgeRating
		end
		local var149 = friendActivityTitle_upvr
		if var149 then
			var149 = arg1.props.showFriendActivity
			if var149 then
				var149 = not arg1.state.isHovered
			end
		end
		return Roact_upvr.createElement(ExperienceFooter_upvr, {
			isSponsored = isSponsored_2;
			isShowSponsoredLabel = isSponsoredFooterAllowed;
			isPlayable = true;
			requiresPurchase = false;
			rating = arg1.props.rating;
			playingCount = entry_3.playerCount;
			coPlayFriends = inGameUsersByGame;
			showAgeRating = var148;
			localizedAgeRatingTextLabel = arg1.props.ageRatingText;
			friendActivityTitle = friendActivityTitle_upvr;
			showFriendActivity = var149;
			useExperienceTileMetadata = useExperienceTileMetadata;
		})
	end
	var148 = arg1.props.friendFooterEnabled
	local var151 = FFlagLuaAppMigrateGameTileActiveFriendsFix_upvr
	if var151 then
		var151 = FFlagLuaAppMigrateGameTile_upvr
		if var151 then
			var151 = arg1.props.isUnifiedGameTile
		end
	end
	if var148 then
		if arg1.props.hasInGameFriends then
		end
	end
	local tbl_8 = {
		isSponsored = isSponsored_2;
		isShowSponsoredLabel = isSponsoredFooterAllowed;
	}
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	tbl_8.playerCount = entry_3.playerCount
	tbl_8.totalUpVotes = arg1.props.totalUpVotes
	tbl_8.totalDownVotes = arg1.props.totalDownVotes
	if isSponsored_2 and isSponsoredFooterAllowed then
		local module_3 = {
			stats = tbl_8;
		}
		var143 = arg1.props
		module_3.hideGameStats = var143.hideGameStats
		module_3.onActivateSponsoredTooltip = arg1.onActivateSponsoredTooltip
		return Roact_upvr.createElement(GameStats_upvr, module_3)
	end
	if arg1.state.canDisplayFriendFooter then
		local any_getSortedFriends_result1_upvr = arg1.getSortedFriends(arg1.props.users, inGameUsersByGame, var151)
		return withStyle_upvr(function(arg1_7) -- Line 539
			--[[ Upvalues[5]:
				[1]: arg1 (readonly)
				[2]: game_DefineFastFlag_result1_upvr (copied, readonly)
				[3]: Roact_upvr (copied, readonly)
				[4]: UserIconList_upvr (copied, readonly)
				[5]: any_getSortedFriends_result1_upvr (readonly)
			]]
			local var156 = arg1
			local any_getTileSize_result1_2 = var156.getTileSize()
			if any_getTileSize_result1_2 then
				var156 = any_getTileSize_result1_2.X
			else
				var156 = 0
			end
			local Color = arg1_7.Theme.BackgroundDefault.Color
			if game_DefineFastFlag_result1_upvr then
				return Roact_upvr.createElement("Frame", {
					Size = UDim2.new(1, 0, 0, 24);
					BackgroundTransparency = 1;
				}, {Roact_upvr.createElement("TextButton", {
					Text = "";
					Size = UDim2.new(1, 0, 0, 24);
					BackgroundTransparency = 1;
					[Roact_upvr.Event.Activated] = arg1.onFriendFooterActivated;
					AnchorPoint = Vector2.new(0, 0.5);
					Position = UDim2.fromScale(0, 1);
				}, {
					UserIconList = Roact_upvr.createElement(UserIconList_upvr, {
						users = any_getSortedFriends_result1_upvr;
						width = var156;
						height = 24;
						maskColor = Color;
					});
				})})
			end
			return Roact_upvr.createElement("TextButton", {
				Text = "";
				Size = UDim2.new(1, 0, 0, 24);
				BackgroundTransparency = 1;
				[Roact_upvr.Event.Activated] = arg1.onFriendFooterActivated;
			}, {
				UserIconList = Roact_upvr.createElement(UserIconList_upvr, {
					users = any_getSortedFriends_result1_upvr;
					width = var156;
					height = 24;
					maskColor = Color;
				});
			})
		end)
	end
	if friendActivityTitle_upvr then
		if arg1.props.showFriendActivity then
			return withStyle_upvr(function(arg1_8) -- Line 581
				--[[ Upvalues[2]:
					[1]: Roact_upvr (copied, readonly)
					[2]: friendActivityTitle_upvr (readonly)
				]]
				local Font_2 = arg1_8.Font
				local Theme = arg1_8.Theme
				return Roact_upvr.createElement("TextLabel", {
					Text = friendActivityTitle_upvr;
					TextColor3 = Theme.TextMuted.Color;
					Font = Font_2.CaptionSubHeader.Font;
					TextTruncate = Enum.TextTruncate.AtEnd;
					TextSize = Font_2.BaseSize * Font_2.CaptionSubHeader.RelativeSize;
					Size = UDim2.new(1, 0, 1, 0);
					BorderSizePixel = 0;
					TextXAlignment = Enum.TextXAlignment.Left;
					TextYAlignment = Enum.TextYAlignment.Center;
					TextTransparency = Theme.TextMuted.Transparency;
					BackgroundTransparency = 1;
				})
			end)
		end
	end
	local module_21 = {
		stats = tbl_8;
	}
	var143 = arg1.props
	module_21.hideGameStats = var143.hideGameStats
	module_21.onActivateSponsoredTooltip = arg1.onActivateSponsoredTooltip
	return Roact_upvr.createElement(GameStats_upvr, module_21)
end
any_extend_result1.renderFooter = formatRating
local FFlagLuaAppMigrateGameTileFixConsoleMetadataText_upvr = require(Parent.SharedFlags).FFlagLuaAppMigrateGameTileFixConsoleMetadataText
local GridTileSponsoredFooter_upvr = require(GameTile.Footer.GridTileSponsoredFooter)
local GridTileFriendFooter_upvr = require(GameTile.Footer.GridTileFriendFooter).GridTileFriendFooter
local GridTileIconTextFooter_upvr = require(GameTile.Footer.GridTileIconTextFooter)
local Images_upvr = UIBlox.App.ImageSet.Images
local FFlagLuaAppFixSmallScreenFooterStatsOverlap_upvr = require(Parent.SharedFlags).FFlagLuaAppFixSmallScreenFooterStatsOverlap
function formatRating(arg1) -- Line 613, Named "renderGridTilesFooter"
	--[[ Upvalues[16]:
		[1]: FFlagLuaAppMigrateGameTileActiveFriendsFix_upvr (readonly)
		[2]: FFlagLuaAppMigrateGameTile_upvr (readonly)
		[3]: FFlagLuaAppMigrateGameTileFixConsoleMetadataText_upvr (readonly)
		[4]: GameTileTypes_upvr (readonly)
		[5]: React_upvr (readonly)
		[6]: GridTileSponsoredFooter_upvr (readonly)
		[7]: GridTileTextFooter_upvr (readonly)
		[8]: Roact_upvr (readonly)
		[9]: GridTileFriendFooter_upvr (readonly)
		[10]: GridTileIconTextFooter_upvr (readonly)
		[11]: Images_upvr (readonly)
		[12]: GameStats_upvr (readonly)
		[13]: GameTileConstants_upvr (readonly)
		[14]: FFlagLuaAppMigrateGameTileIxp_upvr (readonly)
		[15]: FFlagEnablePreferredTextSizeFixGameGrid_upvr (readonly)
		[16]: FFlagLuaAppFixSmallScreenFooterStatsOverlap_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var193
	if not arg1.props.useHoverTile then
	end
	local var194 = FFlagLuaAppMigrateGameTileActiveFriendsFix_upvr
	if var194 then
		var194 = FFlagLuaAppMigrateGameTile_upvr
		if var194 then
			var193 = arg1.props
			var194 = var193.isUnifiedGameTile
		end
	end
	if arg1.props.friendVisits then
		var193 = arg1.props.friendVisits
		var193 = 0
		if var193 >= #var193 then
		else
		end
	end
	local footerLayoutData_3 = arg1.props.footerLayoutData
	if footerLayoutData_3 == nil then
		var193 = nil
	elseif footerLayoutData_3.type ~= "TextLabel" then
		var193 = nil
	else
		local text_2 = footerLayoutData_3.text
		if text_2 == nil then
			var193 = nil
		else
			var193 = text_2.textLiteral
		end
	end
	if var193 == nil and (arg1.props.isHovered or arg1.state.isSelected) or arg1.props.ageRatingText then
		var193 = arg1.props.ageRatingText
	end
	if var193 ~= nil then
		if 0 >= #var193 then
		else
		end
	end
	local entry_2 = arg1.props.entry
	if entry_2.isSponsored then
		if not entry_2.isShowSponsoredLabel then
		end
	end
	local function INLINED_4() -- Internal function, doesn't exist in bytecode
		local var198
		return arg1.props.gameTileLayoutType == GameTileTypes_upvr.GameTileLayoutType.Narrow
	end
	if FFlagLuaAppMigrateGameTileFixConsoleMetadataText_upvr and INLINED_4() and arg1.props.useExperienceTileMetadata and (arg1.props.isSponsoredFooterAllowed or true) then
		var198 = false
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	if arg1.props.isSponsoredFooterAllowed then
		return React_upvr.createElement(GridTileSponsoredFooter_upvr, {
			useLargerFont = var198;
			onActivateSponsoredTooltip = arg1.onActivateSponsoredTooltip;
		})
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	if true then
		local module_2 = {
			text = var193;
			useLargerFont = var198;
		}
		if FFlagLuaAppMigrateGameTile_upvr then
		end
		module_2.isUnifiedGameTile = arg1.props.isUnifiedGameTile
		return React_upvr.createElement(GridTileTextFooter_upvr, module_2)
	end
	if arg1.props.friendFooterEnabled and arg1.props.hasInGameFriends then
		return Roact_upvr.createElement(GridTileFriendFooter_upvr, {
			showOnlineBorder = true;
			friends = arg1.getSortedFriends(arg1.props.users, arg1.props.inGameUsersByGame, var194);
			useLargerFont = var198;
		})
	end
	if arg1.props.friendVisitedString then
		local module_5 = {
			icon = Images_upvr["icons/menu/recent"];
			text = arg1.props.friendVisitedString;
		}
		if var198 then
		else
		end
		module_5.iconSize = 24
		module_5.useLargerFont = var198
		return Roact_upvr.createElement(GridTileIconTextFooter_upvr, module_5)
	end
	if true then
		return Roact_upvr.createElement(GridTileFriendFooter_upvr, {
			showOnlineBorder = false;
			friends = arg1.getVisitedFriends();
			useLargerFont = var198;
		})
	end
	local module_16 = {}
	local tbl_3 = {
		totalUpVotes = arg1.props.totalUpVotes;
	}
	local totalDownVotes_2 = arg1.props.totalDownVotes
	tbl_3.totalDownVotes = totalDownVotes_2
	if arg1.props.playerCountStyle == GameTileConstants_upvr.PlayerCountStyleValues.Footer then
		totalDownVotes_2 = arg1.props.entry.playerCount
	else
		totalDownVotes_2 = nil
	end
	tbl_3.playerCount = totalDownVotes_2
	module_16.stats = tbl_3
	module_16.isGridTile = arg1.props.useGridTile
	module_16.hideGameStats = arg1.props.hideGameStats
	module_16.useLargerFont = var198
	if not FFlagLuaAppMigrateGameTile_upvr or not not FFlagLuaAppMigrateGameTileIxp_upvr then
		if not FFlagLuaAppMigrateGameTileIxp_upvr or not arg1.props.isUnifiedGameTile then
		end
	end
	module_16.isUnifiedGameTile = nil
	if FFlagEnablePreferredTextSizeFixGameGrid_upvr or FFlagLuaAppFixSmallScreenFooterStatsOverlap_upvr then
	else
	end
	module_16.gameTileLayoutType = nil
	return Roact_upvr.createElement(GameStats_upvr, module_16)
end
any_extend_result1.renderGridTilesFooter = formatRating
local GameTileViewConfig_upvr = require(GameTile.GameTileViewConfig)
local GameTileVideoThumbnail_upvr = require(GameTile.GameTileVideoThumbnail)
local GameTileThumbnailBadges_upvr = require(GameTile.Overlays.GameTileThumbnailBadges)
local GameTileView_upvr = require(GameTile.GameTileView)
local FFlagLuaAppMigrateGameTileHoverFixes_upvr = require(Parent.SharedFlags).FFlagLuaAppMigrateGameTileHoverFixes
local withGridConfig_DEPRECATED_upvr = UIBlox.Core.Layout.Grid.withGridConfig_DEPRECATED
local ZoomAnimatedFrame_upvr = require(GameTile.ZoomAnimatedFrame)
local ExperienceTileV3_upvr = UIBlox.App.Tile.ExperienceTileV3
function formatRating(arg1, arg2, arg3, arg4) -- Line 707, Named "renderContent"
	--[[ Upvalues[23]:
		[1]: FFlagLuaAppMigrateGameTile_upvr (readonly)
		[2]: FFlagLuaAppMigrateGameTileIxp_upvr (readonly)
		[3]: GameTileConstants_upvr (readonly)
		[4]: GameTileViewConfig_upvr (readonly)
		[5]: React_upvr (readonly)
		[6]: GameStats_upvr (readonly)
		[7]: FFlagLuaAppGameTileWideVideoThumbnail_upvr (readonly)
		[8]: GameTileVideoThumbnail_upvr (readonly)
		[9]: Roact_upvr (readonly)
		[10]: GameTileThumbnailBadges_upvr (readonly)
		[11]: GameTileView_upvr (readonly)
		[12]: FFlagLuaAppCollectionSelectionOrder_upvr (readonly)
		[13]: FFlagLuaAppMigrateGameTileHoverFixes_upvr (readonly)
		[14]: FFlagEnablePreferredTextSizeFixGameGrid_upvr (readonly)
		[15]: FFlagLuaAppGameTileInteractionFeedback_upvr (readonly)
		[16]: AppExperienceActionRow_upvr (readonly)
		[17]: FFlagLuaAppUnifyPlayButtonTile_upvr (readonly)
		[18]: withStyle_upvr (readonly)
		[19]: IsVRAppBuild_upvr (readonly)
		[20]: FFlagLuaAppGameExperienceTileExternalSdpProps_upvr (readonly)
		[21]: withGridConfig_DEPRECATED_upvr (readonly)
		[22]: ZoomAnimatedFrame_upvr (readonly)
		[23]: ExperienceTileV3_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [5] 4. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [5] 4. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [10] 8. Error Block 3 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [10] 8. Error Block 3 end (CF ANALYSIS FAILED)
end
any_extend_result1.renderContent = formatRating
function formatRating(arg1) -- Line 919, Named "render"
	--[[ Upvalues[3]:
		[1]: DiscoveryAppLaunchTracker_upvr (readonly)
		[2]: withStyle_upvr (readonly)
		[3]: FFlagLuaAppMigrateGameTile_upvr (readonly)
	]]
	if DiscoveryAppLaunchTracker_upvr.isEnabled() and DiscoveryAppLaunchTracker_upvr.default then
		DiscoveryAppLaunchTracker_upvr.default:trackTileRender()
	end
	if arg1.props.game == nil then
		return nil
	end
	return withStyle_upvr(function(arg1_9) -- Line 929
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: FFlagLuaAppMigrateGameTile_upvr (copied, readonly)
		]]
		local var216
		if FFlagLuaAppMigrateGameTile_upvr then
			var216 = arg1.props.foundationTokens
		else
			var216 = nil
		end
		return arg1:renderContent(arg1_9.Settings.ReducedMotion, arg1_9, var216)
	end)
end
any_extend_result1.render = formatRating
function formatRating(arg1) -- Line 939, Named "didMount"
	--[[ Upvalues[1]:
		[1]: ImpressionsTagUtility_upvr (readonly)
	]]
	arg1.isMounted = true
	ImpressionsTagUtility_upvr.AddTag(arg1.gameTileRef, arg1.props.impressionsTag, arg1.props.index)
	if not arg1.props.useGridTile and arg1.props.friendFooterEnabled and arg1.props.hasInGameFriends then
		arg1:setState({
			canDisplayFriendFooter = true;
		})
	end
	if arg1.props.useGridTile then
		arg1.loadWideThumbnail()
	end
end
any_extend_result1.didMount = formatRating
function formatRating(arg1) -- Line 954, Named "willUnmount"
	--[[ Upvalues[1]:
		[1]: ImpressionsTagUtility_upvr (readonly)
	]]
	arg1.isMounted = false
	ImpressionsTagUtility_upvr.RemoveTag(arg1.gameTileRef, arg1.props.impressionsTag, arg1.props.index)
end
any_extend_result1.willUnmount = formatRating
function formatRating(arg1, arg2) -- Line 959, Named "didUpdate"
	--[[ Upvalues[1]:
		[1]: ImpressionsTagUtility_upvr (readonly)
	]]
	if arg2.impressionsTag ~= arg1.props.impressionsTag or arg2.index ~= arg1.props.index then
		ImpressionsTagUtility_upvr.RemoveTag(arg1.gameTileRef, arg2.impressionsTag, arg2.index)
		ImpressionsTagUtility_upvr.AddTag(arg1.gameTileRef, arg1.props.impressionsTag, arg1.props.index)
	end
	if arg1.props.useGridTile and arg2.universeId ~= arg1.props.universeId then
		arg1.loadWideThumbnail()
	end
	if not arg1.props.useGridTile and (arg2.friendFooterEnabled ~= arg1.props.friendFooterEnabled or arg2.hasInGameFriends ~= arg1.props.hasInGameFriends) then
		if arg1.props.friendFooterEnabled and arg1.props.hasInGameFriends then
			arg1:setState({
				canDisplayFriendFooter = true;
			})
		end
	end
end
any_extend_result1.didUpdate = formatRating
function formatRating(arg1, arg2) -- Line 984
	if arg1 + arg2 == 0 then
		return "--"
	end
	return tostring(math.floor(arg1 / (arg1 + arg2) * 100 + 0.5))..'%'
end
local function _(arg1, arg2) -- Line 992, Named "getWideThumbnail"
	--[[ Upvalues[2]:
		[1]: game_GetEngineFeature_result1_upvr (readonly)
		[2]: game_GetEngineFeature_result1_upvr_2 (readonly)
	]]
	if arg1 and arg1 ~= '0' then
		if game_GetEngineFeature_result1_upvr then
			return `rbxthumb://type=Asset&id={arg1}&w=384&h=216`
		end
		if game_GetEngineFeature_result1_upvr_2 then
			return `rbxthumb://type=Asset&id={arg1}&w=256&h=144`
		end
	end
	return `rbxthumb://type=GameThumbnail&id={arg2}&w=384&h=216`
end
local function _(arg1, arg2) -- Line 1003, Named "getSquareGameIcon"
	if arg1 then
		return arg1
	end
	return `rbxthumb://type=GameIcon&id={arg2}&w=150&h=150`
end
local GameInfosReducer_upvr = require(Parent.GameInfosRodux).GameInfosReducer
local getGameTileLayoutData_upvr = require(GameTile.getGameTileLayoutData)
local GameIconReducer_upvr = require(Parent.GameIconRodux).GameIcons.GameIconReducer
local getValidTileBadges_upvr = require(GameTile.Overlays.getValidTileBadges)
local OpenCentralOverlayForPlacesList_upvr = require(GameTile.OpenCentralOverlayForPlacesList)
local OpenSponsoredTooltip_upvr = require(GameTile.OpenSponsoredTooltip)
local useTokens_upvr = require(Parent.Foundation).Hooks.useTokens
local useIsHoveredTile_upvr = require(GameTile.useIsHoveredTile)
local useUiModeInfo_upvr = require(Parent.RobloxAppHooks).useUiModeInfo
local UiMode_upvr = require(Parent.RobloxAppEnums).UiMode
local useValidTileBadges_upvr = require(GameTile.Overlays.useValidTileBadges)
local useSelector_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useSelector
local useHasInGameFriends_upvr = require(GameTile.useHasInGameFriends)
local var250_upvw = require(Parent.RoactServices).RoactServices.connect({
	networking = require(Parent.RoactServiceTags).RoactNetworking;
})(require(Parent.RoactRodux).connect(function(arg1, arg2) -- Line 1013
	--[[ Upvalues[10]:
		[1]: GameInfosReducer_upvr (readonly)
		[2]: GameTileConstants_upvr (readonly)
		[3]: FFlagLuaAppGameExperienceTileExternalSdpProps_upvr (readonly)
		[4]: getGameTileLayoutData_upvr (readonly)
		[5]: game_GetEngineFeature_result1_upvr (readonly)
		[6]: game_GetEngineFeature_result1_upvr_2 (readonly)
		[7]: FFlagLuaAppGameTileWideVideoThumbnail_upvr (readonly)
		[8]: GameIconReducer_upvr (readonly)
		[9]: getValidTileBadges_upvr (readonly)
		[10]: FFlagLuaAppGameTileIconTextBadgeEnabled_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 183 start (CF ANALYSIS FAILED)
	local var231
	if arg2.entry.navigationUniverseId and arg2.entry.navigationUniverseId ~= "" and arg2.entry.navigationUniverseId ~= '0' then
	else
	end
	local var232 = arg1.Personalization[GameInfosReducer_upvr.key][arg2.entry.universeId]
	if not var232 or not var232.totalUpVotes then
	end
	if not var232 or not var232.totalDownVotes then
	end
	if not var232 or not var232.friendActivityTitle then
	end
	if not var232 or not var232.minimumAge then
	end
	if not var232 or not var232.ageRecommendationDisplayName then
	end
	var231 = nil
	if arg2.gameTileLayoutType == "Event" then
		if arg2.playButtonStyle == GameTileConstants_upvr.PlayButtonStyleValues.Enabled then
			var231 = false
		else
			var231 = true
		end
	elseif arg2.gameTileLayoutType == "Wide" then
		if arg2.playButtonStyle ~= GameTileConstants_upvr.PlayButtonStyleValues.Disabled then
			var231 = false
		else
			var231 = true
		end
	else
		var231 = false
	end
	-- KONSTANTERROR: [0] 1. Error Block 183 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [100] 68. Error Block 164 start (CF ANALYSIS FAILED)
	local var234 = FFlagLuaAppGameExperienceTileExternalSdpProps_upvr
	if var234 then
		var234 = arg2.forceHideAgeRatings
	end
	-- KONSTANTERROR: [100] 68. Error Block 164 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [104] 71. Error Block 171 start (CF ANALYSIS FAILED)
	if var234 then
	elseif 0 ~= 0 and "" ~= "" then
	else
	end
	local var221_result1 = getGameTileLayoutData_upvr(var232, arg2.topicId)
	if var221_result1 then
		if var221_result1.primaryMediaAsset then
		end
	end
	local var236
	local function INLINED_6() -- Internal function, doesn't exist in bytecode
		var236 = var232.primaryWideAssetId
		return var236
	end
	if not var236 and (not var232 or not INLINED_6()) then
		var236 = nil
	end
	-- KONSTANTERROR: [104] 71. Error Block 171 end (CF ANALYSIS FAILED)
end, function(arg1) -- Line 1119
	--[[ Upvalues[2]:
		[1]: OpenCentralOverlayForPlacesList_upvr (readonly)
		[2]: OpenSponsoredTooltip_upvr (readonly)
	]]
	return {
		openContextualMenu = function(arg1_10, arg2, arg3) -- Line 1121, Named "openContextualMenu"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: OpenCentralOverlayForPlacesList_upvr (copied, readonly)
			]]
			arg1(OpenCentralOverlayForPlacesList_upvr(arg1_10, arg2, arg3))
		end;
		openSponsoredTooltip = function() -- Line 1124, Named "openSponsoredTooltip"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: OpenSponsoredTooltip_upvr (copied, readonly)
			]]
			return arg1(OpenSponsoredTooltip_upvr())
		end;
	}
end)(any_extend_result1))
local Cryo_upvr = require(Parent.Cryo)
local useHasVideoThumbnailSelector_upvr = require(GameTile.Video.useHasVideoThumbnailSelector)
local FFlagLuaAppEdpMediaGalleryVideoPreview_upvr = require(Parent.SharedFlags).FFlagLuaAppEdpMediaGalleryVideoPreview
local usePreferredInput_upvr = Responsive_upvr.usePreferredInput
local GameVideoPlaybackDetector_upvr = require(GameTile.Video.GameVideoPlaybackDetector)
local game_DefineFastInt_result1_upvr = game:DefineFastInt("LuaAppGameTileVideoDwellTimeInSec", 3)
local game_DefineFastInt_result1_upvr_2 = game:DefineFastInt("LuaAppGameTileVideoVisiblePercent", 80)
local VideoPlaybackDetector_upvr = require(GameTile.Video.VideoPlaybackDetector)
do
	return function(arg1) -- Line 1134
		--[[ Upvalues[23]:
			[1]: React_upvr (readonly)
			[2]: FFlagLuaAppMigrateGameTile_upvr (readonly)
			[3]: useTokens_upvr (readonly)
			[4]: IsVRAppBuild_upvr (readonly)
			[5]: useIsHoveredTile_upvr (readonly)
			[6]: useUiModeInfo_upvr (readonly)
			[7]: UiMode_upvr (readonly)
			[8]: FFlagLuaAppGameTileIconTextBadgeEnabled_upvr (readonly)
			[9]: useValidTileBadges_upvr (readonly)
			[10]: useSelector_upvr (readonly)
			[11]: useHasInGameFriends_upvr (readonly)
			[12]: var250_upvw (read and write)
			[13]: Cryo_upvr (readonly)
			[14]: FFlagLuaAppGameTileWideVideoThumbnail_upvr (readonly)
			[15]: useHasVideoThumbnailSelector_upvr (readonly)
			[16]: FFlagAddVideoDetectorWrapper_DEV_upvr (readonly)
			[17]: FFlagLuaAppEdpMediaGalleryVideoPreview_upvr (readonly)
			[18]: usePreferredInput_upvr (readonly)
			[19]: GameVideoPlaybackDetector_upvr (readonly)
			[20]: Responsive_upvr (readonly)
			[21]: game_DefineFastInt_result1_upvr (readonly)
			[22]: game_DefineFastInt_result1_upvr_2 (readonly)
			[23]: VideoPlaybackDetector_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		-- KONSTANTERROR: [0] 1. Error Block 79 start (CF ANALYSIS FAILED)
		local any_useRef_result1 = React_upvr.useRef(nil)
		local var280
		if var280 then
			var280 = useTokens_upvr()
		end
		var280 = not IsVRAppBuild_upvr()
		if var280 then
			var280 = arg1.useHoverTile
		end
		local formatted_2 = `{arg1.impressionsTag or ""}_{arg1.index or '0'}_{arg1.gameTileLayoutType or "Narrow"}`
		if arg1.impressionsTag == nil or arg1.index == nil then
			var280 = false
		end
		local useIsHoveredTile_upvr_result1 = useIsHoveredTile_upvr(any_useRef_result1, formatted_2, var280)
		if useUiModeInfo_upvr().uiMode ~= UiMode_upvr.TenFoot then
			-- KONSTANTWARNING: GOTO [56] #44
		end
		-- KONSTANTERROR: [0] 1. Error Block 79 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [55] 43. Error Block 99 start (CF ANALYSIS FAILED)
		local var283 = true
		local var284
		if var283 then
		else
		end
		if arg1.useExperienceTileMetadata ~= nil then
			-- KONSTANTWARNING: GOTO [70] #54
		end
		if FFlagLuaAppGameTileIconTextBadgeEnabled_upvr then
			-- KONSTANTWARNING: GOTO [82] #63
		end
		local var248_result1 = useSelector_upvr(function(arg1_15) -- Line 1166
			return arg1_15.Users
		end)
		local var248_result1_2 = useSelector_upvr(function(arg1_16) -- Line 1170
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			return arg1_16.InGameUsersByGame[arg1.entry.universeId]
		end)
		local _, any_useState_result2_2 = React_upvr.useState(false)
		local module_12 = {
			useExperienceTileMetadata = var283;
			hasBackground = arg1.useHoverTile;
			hoverRef = any_useRef_result1;
		}
		if FFlagLuaAppGameTileWideVideoThumbnail_upvr then
			-- KONSTANTWARNING: GOTO [124] #98
		end
		module_12.isHoverSupported = nil
		module_12.isHovered = useIsHoveredTile_upvr_result1
		if FFlagLuaAppGameTileWideVideoThumbnail_upvr then
			-- KONSTANTWARNING: GOTO [133] #105
		end
		module_12.isVideoPlaying = nil
		if FFlagLuaAppGameTileIconTextBadgeEnabled_upvr then
			-- KONSTANTWARNING: GOTO [140] #111
		end
		module_12.tileBadges = nil
		if FFlagLuaAppMigrateGameTile_upvr then
		else
		end
		module_12.foundationTokens = nil
		module_12.users = var248_result1
		module_12.inGameUsersByGame = var248_result1_2
		module_12.hasInGameFriends = useHasInGameFriends_upvr(useSelector_upvr(function(arg1_14) -- Line 1162
			return arg1_14.LocalUserId
		end), var248_result1, var248_result1_2)
		if FFlagLuaAppGameTileWideVideoThumbnail_upvr then
			local var293
			if FFlagAddVideoDetectorWrapper_DEV_upvr and FFlagLuaAppEdpMediaGalleryVideoPreview_upvr then
			else
			end
			if useHasVideoThumbnailSelector_upvr(arg1.entry.universeId, arg1.topicId) then
				local module_15 = {
					GameTile = React_upvr.createElement(var250_upvw, Cryo_upvr.Dictionary.join(arg1, module_12));
				}
				if FFlagAddVideoDetectorWrapper_DEV_upvr then
					var293 = React_upvr.createElement
					local tbl_14 = {
						videoKey = formatted_2;
						itemIndex = arg1.index;
					}
					local universeId_2 = arg1.entry.universeId
					tbl_14.universeId = universeId_2
					tbl_14.tileRef = any_useRef_result1
					tbl_14.isHoverSupported = var280
					tbl_14.isHovered = useIsHoveredTile_upvr_result1
					if FFlagLuaAppEdpMediaGalleryVideoPreview_upvr then
						if nil ~= Responsive_upvr.Input.Touch then
							universeId_2 = false
						else
							universeId_2 = true
						end
					else
						universeId_2 = nil
					end
					tbl_14.autoplay = universeId_2
					tbl_14.onPlaybackChange = any_useState_result2_2
					tbl_14.videoAnalytics = arg1.videoAnalytics
					tbl_14.videoDwellTimeInSec = game_DefineFastInt_result1_upvr
					tbl_14.videoVisiblePercent = game_DefineFastInt_result1_upvr_2
					var293 = var293(GameVideoPlaybackDetector_upvr, tbl_14)
				else
					var293 = React_upvr.createElement
					var293 = var293(VideoPlaybackDetector_upvr, {
						videoKey = formatted_2;
						itemIndex = arg1.index;
						universeId = arg1.entry.universeId;
						tileRef = any_useRef_result1;
						isHoverSupported = var280;
						isHovered = useIsHoveredTile_upvr_result1;
						onPlaybackChange = any_useState_result2_2;
						videoAnalytics = arg1.videoAnalytics;
					})
				end
				module_15.VideoPlaybackDetector = var293
				return React_upvr.createElement(React_upvr.Fragment, {}, module_15)
			end
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		do
			return React_upvr.createElement(var250_upvw, Cryo_upvr.Dictionary.join(arg1, module_12))
		end
		-- KONSTANTERROR: [55] 43. Error Block 99 end (CF ANALYSIS FAILED)
	end
end
-- KONSTANTERROR: [670] 394. Error Block 78 end (CF ANALYSIS FAILED)