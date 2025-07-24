-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:40:19
-- Luau version 6, Types version 3
-- Time taken: 0.000862 seconds

local function getProperty_unsafe_upvr(arg1, arg2) -- Line 12, Named "getProperty_unsafe"
	return arg1[arg2]
end
local logError_upvr = require(script.Parent.Parent.Logging.logError)
return function(arg1) -- Line 16, Named "OnEvent"
	--[[ Upvalues[2]:
		[1]: getProperty_unsafe_upvr (readonly)
		[2]: logError_upvr (readonly)
	]]
	return {
		type = "SpecialKey";
		kind = "OnEvent";
		stage = "observer";
		apply = function(arg1_2, arg2, arg3, arg4) -- Line 22, Named "apply"
			--[[ Upvalues[3]:
				[1]: getProperty_unsafe_upvr (copied, readonly)
				[2]: arg1 (readonly)
				[3]: logError_upvr (copied, readonly)
			]]
			local pcall_result1, pcall_result2 = pcall(getProperty_unsafe_upvr, arg3, arg1)
			if not pcall_result1 or typeof(pcall_result2) ~= "RBXScriptSignal" then
				logError_upvr("cannotConnectEvent", nil, arg3.ClassName, arg1)
			else
				if typeof(arg2) ~= "function" then
					logError_upvr("invalidEventHandler", nil, arg1)
					return
				end
				table.insert(arg4, pcall_result2:Connect(arg2))
			end
		end;
	}
end