-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:29:59
-- Luau version 6, Types version 3
-- Time taken: 0.000902 seconds

local Songbird = script:FindFirstAncestor("Songbird")
local tbl_upvr = {
	size = require(Songbird.constants).ICON_SIZE;
}
local Cryo_upvr = require(Songbird.Parent.Cryo)
local React_upvr = require(Songbird.Parent.React)
local Foundation_upvr = require(Songbird.Parent.Foundation)
return function(arg1) -- Line 20, Named "LikeButton"
	--[[ Upvalues[4]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: Foundation_upvr (readonly)
	]]
	local any_join_result1 = Cryo_upvr.Dictionary.join(tbl_upvr, arg1)
	local module = {}
	local var8
	if any_join_result1.isFavorited then
		var8 = "icons/common/ratingFilled_medium"
	else
		var8 = "icons/common/rating_medium"
	end
	module.icon = var8
	var8 = Foundation_upvr.Enums.IconSize.Medium
	module.size = var8
	if any_join_result1.onFavorite then
		var8 = any_join_result1.onFavorite
	else
		var8 = function() -- Line 26
		end
	end
	module.onActivated = var8
	return React_upvr.createElement(Foundation_upvr.IconButton, module)
end