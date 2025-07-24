-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:57:33
-- Luau version 6, Types version 3
-- Time taken: 0.001923 seconds

local module = require(script.Parent:WaitForChild("Util"))
local StarterGui_upvr = game:GetService("StarterGui")
function ProcessMessage(arg1, arg2, arg3) -- Line 9
	--[[ Upvalues[1]:
		[1]: StarterGui_upvr (readonly)
	]]
	if string.sub(arg1, 1, 8):lower() == "/console" or string.sub(arg1, 1, 11):lower() == "/newconsole" then
		local pcall_result1_2, pcall_result2_upvr = pcall(function() -- Line 11
			--[[ Upvalues[1]:
				[1]: StarterGui_upvr (copied, readonly)
			]]
			return StarterGui_upvr:GetCore("DevConsoleVisible")
		end)
		if pcall_result1_2 then
			local pcall_result1_3, pcall_result2_2 = pcall(function() -- Line 13
				--[[ Upvalues[2]:
					[1]: StarterGui_upvr (copied, readonly)
					[2]: pcall_result2_upvr (readonly)
				]]
				StarterGui_upvr:SetCore("DevConsoleVisible", not pcall_result2_upvr)
			end)
			if not pcall_result1_3 and pcall_result2_2 then
				print("Error making developer console visible: "..pcall_result2_2)
			end
		end
		return true
	end
	return false
end
return {
	[module.KEY_COMMAND_PROCESSOR_TYPE] = module.COMPLETED_MESSAGE_PROCESSOR;
	[module.KEY_PROCESSOR_FUNCTION] = ProcessMessage;
}