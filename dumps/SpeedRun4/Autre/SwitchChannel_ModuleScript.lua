-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:57:35
-- Luau version 6, Types version 3
-- Time taken: 0.001355 seconds

local module_upvr = require(script.Parent:WaitForChild("Util"))
local var2_upvw
pcall(function() -- Line 10
	--[[ Upvalues[1]:
		[1]: var2_upvw (read and write)
	]]
	var2_upvw = require(game:GetService("Chat").ClientChatModules.ChatLocalization)
end)
if var2_upvw == nil then
	var2_upvw = {
		Get = function(arg1, arg2, arg3) -- Line 11, Named "Get"
			return arg3
		end;
	}
end
function ProcessMessage(arg1, arg2, arg3) -- Line 13
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: var2_upvw (read and write)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 16 start (CF ANALYSIS FAILED)
	if string.sub(arg1, 1, 3):lower() ~= "/c " then
		return false
	end
	local string_sub_result1 = string.sub(arg1, 4)
	local any_GetChannel_result1 = arg2:GetChannel(string_sub_result1)
	if any_GetChannel_result1 then
		arg2:SwitchCurrentChannel(string_sub_result1)
		if not arg3.ShowChannelsBar and arg2:GetCurrentChannel() then
			module_upvr:SendSystemMessageToSelf(string.gsub(var2_upvw:Get("GameChat_SwitchChannel_NowInChannel", string.format("You are now chatting in channel: '%s'", string_sub_result1), {
				RBX_NAME = string_sub_result1;
			}), "{RBX_NAME}", string_sub_result1), any_GetChannel_result1, {})
			-- KONSTANTWARNING: GOTO [100] #77
		end
	else
		local any_GetCurrentChannel_result1 = arg2:GetCurrentChannel()
		if any_GetCurrentChannel_result1 then
			module_upvr:SendSystemMessageToSelf(string.gsub(var2_upvw:Get("GameChat_SwitchChannel_NotInChannel", string.format("You are not in channel: '%s'", string_sub_result1), {
				RBX_NAME = string_sub_result1;
			}), "{RBX_NAME}", string_sub_result1), any_GetCurrentChannel_result1, {
				ChatColor = Color3.fromRGB(245, 50, 50);
			})
		end
	end
	-- KONSTANTERROR: [0] 1. Error Block 16 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [100] 77. Error Block 10 start (CF ANALYSIS FAILED)
	do
		return true
	end
	-- KONSTANTERROR: [100] 77. Error Block 10 end (CF ANALYSIS FAILED)
end
return {
	[module_upvr.KEY_COMMAND_PROCESSOR_TYPE] = module_upvr.COMPLETED_MESSAGE_PROCESSOR;
	[module_upvr.KEY_PROCESSOR_FUNCTION] = ProcessMessage;
}