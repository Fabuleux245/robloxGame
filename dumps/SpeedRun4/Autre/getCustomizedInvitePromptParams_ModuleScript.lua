-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:45:35
-- Luau version 6, Types version 3
-- Time taken: 0.001271 seconds

local Constants_upvr = require(game:GetService("CoreGui").RobloxGui.Modules.Settings.Pages.ShareGame.Constants)
return function(arg1, arg2) -- Line 9
	--[[ Upvalues[1]:
		[1]: Constants_upvr (readonly)
	]]
	if arg1 and arg1.InviteUser ~= 0 then
		local InviteUser = arg1.InviteUser
	else
	end
	if nil then
	else
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	local arg2_result1, arg2_result2 = arg2(Constants_upvr.Triggers.DeveloperMultiple, nil)
	if not arg2_result1 then
		return nil
	end
	local module = {}
	if arg2_result2 and arg1 then
		if arg1.InviteMessageId ~= "" then
			module.inviteMessageId = arg1.InviteMessageId
		end
		if arg1.InviteUser ~= 0 then
			module.inviteUserId = arg1.InviteUser
		end
		if arg1.PromptMessage ~= "" then
			module.promptMessage = arg1.PromptMessage
		end
		if arg1.LaunchData ~= "" then
			module.launchData = arg1.LaunchData
		end
	end
	return module
end