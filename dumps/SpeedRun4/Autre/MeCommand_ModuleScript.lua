-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:57:54
-- Luau version 6, Types version 3
-- Time taken: 0.000648 seconds

local ClientChatModules = game:GetService("Chat"):WaitForChild("ClientChatModules")
local module_upvr_2 = require(ClientChatModules:WaitForChild("ChatSettings"))
local module_upvr = require(ClientChatModules:WaitForChild("ChatConstants"))
return function(arg1) -- Line 10, Named "Run"
	--[[ Upvalues[2]:
		[1]: module_upvr_2 (readonly)
		[2]: module_upvr (readonly)
	]]
	if module_upvr_2 and module_upvr_2.AllowMeCommand then
		arg1:RegisterFilterMessageFunction("me_command", function(arg1_2, arg2, arg3) -- Line 13, Named "MeCommandFilterFunction"
			--[[ Upvalues[1]:
				[1]: module_upvr (copied, readonly)
			]]
			local Message = arg2.Message
			if Message and string.sub(Message, 1, 4):lower() == "/me " then
				arg2.MessageType = module_upvr.MessageTypeMeCommand
			end
		end)
	end
end