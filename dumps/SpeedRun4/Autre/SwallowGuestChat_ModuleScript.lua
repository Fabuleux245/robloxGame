-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:57:35
-- Luau version 6, Types version 3
-- Time taken: 0.000991 seconds

local module_upvr = require(script.Parent:WaitForChild("Util"))
local var2_upvw
pcall(function() -- Line 12
	--[[ Upvalues[1]:
		[1]: var2_upvw (read and write)
	]]
	var2_upvw = require(game:GetService("Chat").ClientChatModules.ChatLocalization)
end)
if var2_upvw == nil then
	var2_upvw = {}
	function var2_upvw.Get(arg1, arg2, arg3) -- Line 13
		return arg3
	end
end
local RunService_upvr = game:GetService("RunService")
function ProcessMessage(arg1, arg2, arg3) -- Line 15
	--[[ Upvalues[3]:
		[1]: RunService_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: var2_upvw (read and write)
	]]
	local LocalPlayer = game:GetService("Players").LocalPlayer
	if LocalPlayer and LocalPlayer.UserId < 0 and not RunService_upvr:IsStudio() then
		local any_GetCurrentChannel_result1 = arg2:GetCurrentChannel()
		if any_GetCurrentChannel_result1 then
			module_upvr:SendSystemMessageToSelf(var2_upvw:Get("GameChat_SwallowGuestChat_Message", "Create a free account to get access to chat permissions!"), any_GetCurrentChannel_result1, {})
		end
		return true
	end
	return false
end
return {
	[module_upvr.KEY_COMMAND_PROCESSOR_TYPE] = module_upvr.COMPLETED_MESSAGE_PROCESSOR;
	[module_upvr.KEY_PROCESSOR_FUNCTION] = ProcessMessage;
}