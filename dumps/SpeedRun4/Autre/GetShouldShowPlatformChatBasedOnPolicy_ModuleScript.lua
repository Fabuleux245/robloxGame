-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:55:31
-- Luau version 6, Types version 3
-- Time taken: 0.000383 seconds

local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("AppChatDisableInExpU13", false)
local UniversalAppPolicy_upvr = require(game:GetService("CorePackages").Workspace.Packages.UniversalAppPolicy)
return function() -- Line 7
	--[[ Upvalues[2]:
		[1]: game_DefineFastFlag_result1_upvr (readonly)
		[2]: UniversalAppPolicy_upvr (readonly)
	]]
	if game_DefineFastFlag_result1_upvr then
		return UniversalAppPolicy_upvr.getAppFeaturePolicies().getCanSeeChatTab()
	end
	return true
end