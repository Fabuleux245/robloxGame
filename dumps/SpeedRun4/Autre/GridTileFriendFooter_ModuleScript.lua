-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:34:04
-- Luau version 6, Types version 3
-- Time taken: 0.003430 seconds

local Parent = script:FindFirstAncestor("GameTile").Parent
local Array_upvr = require(Parent.LuauPolyfill).Array
local UIBlox = require(Parent.UIBlox)
local useStyle_upvr = UIBlox.Core.Style.useStyle
local useDesignTokens_upvr = require(Parent.Style).useDesignTokens
local FFlagEnablePreferredTextSizeFixGameGrid_upvr = require(Parent.SharedFlags).FFlagEnablePreferredTextSizeFixGameGrid
local useTextSizeOffset_upvr = UIBlox.Core.Style.useTextSizeOffset
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local React_upvr = require(Parent.React)
local CoPlayFooter_upvr = UIBlox.App.Tile.ExperienceTileMetadata.CoPlayFooter
local Colors_upvr = require(Parent.Style).Colors
return {
	GridTileFriendFooter = function(arg1) -- Line 50, Named "GridTileFriendFooter"
		--[[ Upvalues[9]:
			[1]: useStyle_upvr (readonly)
			[2]: useDesignTokens_upvr (readonly)
			[3]: FFlagEnablePreferredTextSizeFixGameGrid_upvr (readonly)
			[4]: useTextSizeOffset_upvr (readonly)
			[5]: useLocalization_upvr (readonly)
			[6]: React_upvr (readonly)
			[7]: CoPlayFooter_upvr (readonly)
			[8]: Array_upvr (readonly)
			[9]: Colors_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var20
		if arg1.useLargerFont then
			var20 = useStyle_upvr()
		else
			var20 = useStyle_upvr()
		end
		var20 = useDesignTokens_upvr()
		local Global = var20.Global
		if FFlagEnablePreferredTextSizeFixGameGrid_upvr then
			var20 = useTextSizeOffset_upvr()
		else
			var20 = 0
		end
		if not arg1.showOnlineBorder then
		end
		local module_2 = {}
		if FFlagEnablePreferredTextSizeFixGameGrid_upvr then
		else
		end
		module_2.Size = UDim2.new(1, 0, 0, Global.Space_250)
		module_2.BackgroundTransparency = 1
		local module_3 = {}
		local tbl_2 = {}
		local friends = arg1.friends
		local tbl = {}
		for i_2 = 1, #friends do
			tbl[i_2] = friends[i_2].userId
			local _
		end
		tbl_2.users = tbl
		tbl_2.labelText = Array_upvr.join(Array_upvr.map(arg1.friends, function(arg1_3) -- Line 43
			return arg1_3.displayName
		end), useLocalization_upvr({
			friendsSeparator = "Feature.GameDetails.Label.FriendsSeparator";
		}).friendsSeparator)
		tbl_2.showEmphasisBorder = arg1.showOnlineBorder
		tbl_2.faceGroupCount = 2
		tbl_2.styleProps = {
			faceWidth = Global.Size_250;
			faceHeight = Global.Size_250;
			faceGroupGap = -Global.Space_75;
			containerGap = Global.Space_50 - 3;
			badgeBorderWidth = 3;
			badgeHeight = Global.Size_250;
			fontStyle = var20.Font.CaptionHeader;
			badgeSpacingLeading = Global.Space_50;
			badgeSpacingTrailing = Global.Space_50;
			badgeBackgroundColor = {
				Color = Colors_upvr.Smoke;
				Transparency = 0;
			};
			badgeContentColor = {
				Color = Colors_upvr.White;
				Transparency = 0;
			};
		}
		module_3.OnlineFriends = React_upvr.createElement(CoPlayFooter_upvr, tbl_2)
		return React_upvr.createElement("Frame", module_2, module_3)
	end;
	getUserIdsForFacePile = function(arg1) -- Line 32, Named "getUserIdsForFacePile"
		local module = {}
		for i = 1, #arg1 do
			module[i] = arg1[i].userId
		end
		return module
	end;
	getDisplayName = function(arg1, arg2) -- Line 41, Named "getDisplayName"
		--[[ Upvalues[1]:
			[1]: Array_upvr (readonly)
		]]
		return Array_upvr.join(Array_upvr.map(arg1, function(arg1_2) -- Line 43
			return arg1_2.displayName
		end), arg2)
	end;
}