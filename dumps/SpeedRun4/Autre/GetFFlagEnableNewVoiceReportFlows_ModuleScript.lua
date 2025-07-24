-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:43:43
-- Luau version 6, Types version 3
-- Time taken: 0.001478 seconds

game:DefineFastFlag("EnableNewVoiceReportFlows", false)
game:DefineFastString("NewInGameMenuForcedUserIds", "")
local Players_upvr = game:GetService("Players")
local IXPVoiceAbuseReportReportAbuseMenu_upvr = require(script.Parent.IXPVoiceAbuseReportReportAbuseMenu)
return function() -- Line 8
	--[[ Upvalues[2]:
		[1]: Players_upvr (readonly)
		[2]: IXPVoiceAbuseReportReportAbuseMenu_upvr (readonly)
	]]
	local var6
	while not var6 do
		Players_upvr:GetPropertyChangedSignal("LocalPlayer"):Wait()
		var6 = Players_upvr.LocalPlayer
	end
	for i in game:GetFastString("NewInGameMenuForcedUserIds"):gmatch("%d+") do
		if var6 and tonumber(i) == var6.UserId then
			return true
		end
	end
	local game_GetFastFlag_result1 = game:GetFastFlag("EnableNewVoiceReportFlows")
	if game_GetFastFlag_result1 then
		game_GetFastFlag_result1 = IXPVoiceAbuseReportReportAbuseMenu_upvr.enabled
	end
	return game_GetFastFlag_result1
end