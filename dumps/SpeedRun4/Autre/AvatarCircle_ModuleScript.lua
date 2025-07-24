-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:48:17
-- Luau version 6, Types version 3
-- Time taken: 0.001423 seconds

local Parent = script:FindFirstAncestor("AppChat").Parent
local tbl_upvr = {
	presenceIndicatorSize = 14;
}
local Cryo_upvr = require(Parent.Cryo)
local React_upvr = require(Parent.React)
local AvatarOneToOne_upvr = require(script.AvatarOneToOne)
local AvatarGroup_upvr = require(script.AvatarGroup)
return function(arg1) -- Line 31, Named "AvatarCircle"
	--[[ Upvalues[5]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: AvatarOneToOne_upvr (readonly)
		[5]: AvatarGroup_upvr (readonly)
	]]
	local any_union_result1 = Cryo_upvr.Dictionary.union(arg1, tbl_upvr)
	if #any_union_result1.thumbnails == 1 then
		return React_upvr.createElement(AvatarOneToOne_upvr, {
			circleColor3 = any_union_result1.circleColor3;
			circleDividerColor3 = any_union_result1.circleDividerColor3;
			circleDividerTransparency = any_union_result1.circleDividerTransparency;
			circleInteriorBackgroundColor3 = any_union_result1.circleInteriorBackgroundColor3;
			circleInteriorBackgroundTransparency = any_union_result1.circleInteriorBackgroundTransparency;
			circleTransparency = any_union_result1.circleTransparency;
			onActivated = any_union_result1.onActivated;
			overlaySize = any_union_result1.overlaySize;
			presenceImage = any_union_result1.presenceImage;
			presenceImageColor3 = any_union_result1.presenceImageColor3;
			presenceImageTransparency = any_union_result1.presenceImageTransparency;
			presenceIndicatorSize = any_union_result1.presenceIndicatorSize;
			showNewPresenceImage = any_union_result1.showNewPresenceImage;
			thumbnail = any_union_result1.thumbnails[1];
		})
	end
	return React_upvr.createElement(AvatarGroup_upvr, {
		circleColor3 = any_union_result1.circleColor3;
		circleDividerColor3 = any_union_result1.circleDividerColor3;
		circleDividerTransparency = any_union_result1.circleDividerTransparency;
		circleInteriorBackgroundColor3 = any_union_result1.circleInteriorBackgroundColor3;
		circleInteriorBackgroundTransparency = any_union_result1.circleInteriorBackgroundTransparency;
		circleTransparency = any_union_result1.circleTransparency;
		onActivated = any_union_result1.onActivated;
		overlaySize = any_union_result1.overlaySize;
		thumbnails = any_union_result1.thumbnails;
	})
end