-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:28:39
-- Luau version 6, Types version 3
-- Time taken: 0.005141 seconds

local SocialContextToasts = script:FindFirstAncestor("SocialContextToasts")
local Parent = SocialContextToasts.Parent
local React_upvr = require(Parent.React)
local UIBlox = require(Parent.UIBlox)
local Colors_upvr = UIBlox.App.Style.Colors
local CoPlayFooter_upvr = UIBlox.App.Tile.ExperienceTileMetadata.CoPlayFooter
local function _(arg1, arg2, arg3) -- Line 34, Named "makeCoPlayFooter"
	--[[ Upvalues[3]:
		[1]: React_upvr (readonly)
		[2]: CoPlayFooter_upvr (readonly)
		[3]: Colors_upvr (readonly)
	]]
	return function(arg1_2) -- Line 35
		--[[ Upvalues[6]:
			[1]: arg1 (readonly)
			[2]: React_upvr (copied, readonly)
			[3]: CoPlayFooter_upvr (copied, readonly)
			[4]: arg3 (readonly)
			[5]: arg2 (readonly)
			[6]: Colors_upvr (copied, readonly)
		]]
		local X_2 = arg1_2.Size.X
		if #arg1 == 1 then
			X_2 = X_2.Offset
		else
			X_2 = (X_2.Offset - -9) / 2
		end
		local module = {}
		module.users = arg1
		module.size = arg1_2.Size
		module.faceGroupCount = 1
		module.showEmphasisBorder = arg3
		local tbl = {
			faceWidth = X_2;
			faceHeight = X_2;
			faceGroupGap = -9;
			badgeHeight = X_2;
			badgeBorderColor = arg2.Theme.SystemPrimaryContent;
			faceBorderColor = arg2.Theme.SystemPrimaryContent;
			faceBackgroundColor = {
				Transparency = 0;
				Colors_upvr.Smoke
			};
		}
		tbl.showEmphasisBorder = arg3
		module.styleProps = tbl
		return React_upvr.createElement(CoPlayFooter_upvr, module)
	end
end
local tbl_3_upvr = {
	areUsersActive = true;
}
local Cryo_upvr = require(Parent.Cryo)
local GetFFlagSocialContextToastEventStream_upvr = require(Parent.SharedFlags).GetFFlagSocialContextToastEventStream
local SocialContextToastEvents_upvr = require(SocialContextToasts.SocialContextToastEvents)
local SocialContextToastAnalyticsActionTypes_upvr = require(SocialContextToasts.Enums.SocialContextToastAnalyticsActionTypes)
local useStyle_upvr = UIBlox.Core.Style.useStyle
local getLocalizedStrings_upvr = require(Parent.NotificationsCommon).LocalizationHelper.getLocalizedStrings
local Toast_upvr = UIBlox.App.Dialog.Toast
local vector2_upvr_2 = Vector2.new(48, 48)
local vector2_upvr = Vector2.new(36, 36)
return function(arg1) -- Line 62, Named "ToastWrapper"
	--[[ Upvalues[13]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_3_upvr (readonly)
		[3]: GetFFlagSocialContextToastEventStream_upvr (readonly)
		[4]: React_upvr (readonly)
		[5]: SocialContextToastEvents_upvr (readonly)
		[6]: SocialContextToastAnalyticsActionTypes_upvr (readonly)
		[7]: useStyle_upvr (readonly)
		[8]: getLocalizedStrings_upvr (readonly)
		[9]: Toast_upvr (readonly)
		[10]: CoPlayFooter_upvr (readonly)
		[11]: Colors_upvr (readonly)
		[12]: vector2_upvr_2 (readonly)
		[13]: vector2_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local any_join_result1_upvr_2 = Cryo_upvr.Dictionary.join(tbl_3_upvr, arg1)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [12] 11. Error Block 2 start (CF ANALYSIS FAILED)
	local analyticsProps_upvr = any_join_result1_upvr_2.analyticsProps
	local function _() -- Line 68
		--[[ Upvalues[4]:
			[1]: any_join_result1_upvr_2 (readonly)
			[2]: SocialContextToastEvents_upvr (copied, readonly)
			[3]: analyticsProps_upvr (readonly)
			[4]: SocialContextToastAnalyticsActionTypes_upvr (copied, readonly)
		]]
		local var43
		if any_join_result1_upvr_2.userIdList then
			var43 = table.concat(any_join_result1_upvr_2.userIdList)
		end
		SocialContextToastEvents_upvr(analyticsProps_upvr.eventIngest, {
			toastType = analyticsProps_upvr.toastType;
			friendId = var43;
			universeId = analyticsProps_upvr.gameId;
			placeId = analyticsProps_upvr.placeId;
			actionType = SocialContextToastAnalyticsActionTypes_upvr.ForceDismissed;
		})
	end
	-- KONSTANTERROR: [12] 11. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [24] 21. Error Block 3 start (CF ANALYSIS FAILED)
	analyticsProps_upvr = any_join_result1_upvr_2.onActivated
	-- KONSTANTERROR: [24] 21. Error Block 3 end (CF ANALYSIS FAILED)
end