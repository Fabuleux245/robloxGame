-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:57:33
-- Luau version 6, Types version 3
-- Time taken: 0.000629 seconds

local module_upvr = require(script.Parent:WaitForChild("Util"))
local module_upvr_2 = require(script.Parent.Parent:WaitForChild("ChatConstants"))
return {
	[module_upvr.KEY_COMMAND_PROCESSOR_TYPE] = module_upvr.COMPLETED_MESSAGE_PROCESSOR;
	[module_upvr.KEY_PROCESSOR_FUNCTION] = function(arg1, arg2, arg3) -- Line 9, Named "ProcessMessage"
		--[[ Upvalues[2]:
			[1]: module_upvr (readonly)
			[2]: module_upvr_2 (readonly)
		]]
		if string.sub(arg1, 1, 8):lower() == "/version" or string.sub(arg1, 1, 9):lower() == "/version " then
			module_upvr:SendSystemMessageToSelf(string.format("This experience is running chat version [%d.%d.%s].", module_upvr_2.MajorVersion, module_upvr_2.MinorVersion, module_upvr_2.BuildVersion), arg2:GetCurrentChannel(), {})
			return true
		end
		return false
	end;
}