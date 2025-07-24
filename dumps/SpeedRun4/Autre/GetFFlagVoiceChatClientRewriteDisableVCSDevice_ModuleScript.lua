-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:26:56
-- Luau version 6, Types version 3
-- Time taken: 0.000967 seconds

game:DefineFastFlag("VoiceChatClientRewriteDisableVCSDevice", false)
local GetFFlagVoiceChatClientRewriteMasterLua_upvr = require(script.Parent.GetFFlagVoiceChatClientRewriteMasterLua)
return function() -- Line 5
	--[[ Upvalues[1]:
		[1]: GetFFlagVoiceChatClientRewriteMasterLua_upvr (readonly)
	]]
	local game_GetEngineFeature_result1 = game:GetEngineFeature("VoiceChatClientRewrite_OneFlagToRuleThemAll_Client")
	if game_GetEngineFeature_result1 then
		game_GetEngineFeature_result1 = GetFFlagVoiceChatClientRewriteMasterLua_upvr()
		if game_GetEngineFeature_result1 then
			game_GetEngineFeature_result1 = game:GetFastFlag("VoiceChatClientRewriteDisableVCSDevice")
		end
	end
	return game_GetEngineFeature_result1
end