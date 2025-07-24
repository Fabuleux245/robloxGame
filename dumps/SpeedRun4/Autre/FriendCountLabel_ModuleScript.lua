-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:51:10
-- Luau version 6, Types version 3
-- Time taken: 0.000536 seconds

local Parent = script:FindFirstAncestor("AppChat").Parent
local React_upvr = require(Parent.React)
local useTokens_upvr = require(Parent.Foundation).Hooks.useTokens
local AvatarWithLabel_upvr = require(script.Parent.AvatarWithLabel)
return React_upvr.memo(function(arg1) -- Line 12, Named "FriendCountLabel"
	--[[ Upvalues[3]:
		[1]: useTokens_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: AvatarWithLabel_upvr (readonly)
	]]
	local var3_result1 = useTokens_upvr()
	return React_upvr.createElement(AvatarWithLabel_upvr, {
		image = "icons/actions/friend_sort/add_friends";
		text = `{arg1.currentSize}/{arg1.maxSize}`;
		avatarImageStyle = var3_result1.Color.Content.Default;
		labelFontSize = var3_result1.Typography.CaptionMedium.FontSize;
	})
end)