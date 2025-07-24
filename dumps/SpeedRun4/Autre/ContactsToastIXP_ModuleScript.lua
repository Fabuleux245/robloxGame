-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:25:54
-- Luau version 6, Types version 3
-- Time taken: 0.001068 seconds

local ContactsToast = script:FindFirstAncestor("ContactsToast")
local FStringSocialFriendsLayer_upvr = require(ContactsToast.Flags.FStringSocialFriendsLayer)
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("ContactsToastExperimentEnabledv1", false)
local FStringContactsToastButtonKey_upvr = require(ContactsToast.Flags.FStringContactsToastButtonKey)
local function var4_upvr(arg1) -- Line 13
	--[[ Upvalues[3]:
		[1]: game_DefineFastFlag_result1_upvr (readonly)
		[2]: FStringSocialFriendsLayer_upvr (readonly)
		[3]: FStringContactsToastButtonKey_upvr (readonly)
	]]
	if not game_DefineFastFlag_result1_upvr then
		return false
	end
	local var6 = arg1[FStringSocialFriendsLayer_upvr]
	if not var6 then
		var6 = {}
	end
	return var6[FStringContactsToastButtonKey_upvr]
end
local module = {
	FFlagContactsToastExperimentEnabled = game_DefineFastFlag_result1_upvr;
}
local useUserExperiment_upvr = require(ContactsToast.Parent.RoactAppExperiment).useUserExperiment
function module.useContactsToastVariant() -- Line 24
	--[[ Upvalues[4]:
		[1]: game_DefineFastFlag_result1_upvr (readonly)
		[2]: useUserExperiment_upvr (readonly)
		[3]: FStringSocialFriendsLayer_upvr (readonly)
		[4]: var4_upvr (readonly)
	]]
	if not game_DefineFastFlag_result1_upvr then
		return false
	end
	return useUserExperiment_upvr({FStringSocialFriendsLayer_upvr}, var4_upvr)
end
return module