-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:39:40
-- Luau version 6, Types version 3
-- Time taken: 0.000451 seconds

local Parent = script:FindFirstAncestor("ProfileQRCode").Parent
local RoduxUsers_upvr = require(script.Parent.RoduxUsers)
local module_upvr = {
	byUserId = {};
	byUsername = {};
}
local convertActions_upvr = require(Parent.SocialReducerAdaptors).convertActions
local any_installReducer_result1_upvr = RoduxUsers_upvr.installReducer()
local usersActionAdaptor_upvr = require(Parent.SocialReducerAdaptors).usersActionAdaptor
return function() -- Line 14
	--[[ Upvalues[5]:
		[1]: convertActions_upvr (readonly)
		[2]: any_installReducer_result1_upvr (readonly)
		[3]: usersActionAdaptor_upvr (readonly)
		[4]: RoduxUsers_upvr (readonly)
		[5]: module_upvr (readonly)
	]]
	return convertActions_upvr(any_installReducer_result1_upvr, usersActionAdaptor_upvr(RoduxUsers_upvr), module_upvr)
end