-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:39:57
-- Luau version 6, Types version 3
-- Time taken: 0.001195 seconds

local logError_upvr = require(script.Parent.Parent.Logging.logError)
return function(arg1) -- Line 12, Named "OnChange"
	--[[ Upvalues[1]:
		[1]: logError_upvr (readonly)
	]]
	return {
		type = "SpecialKey";
		kind = "OnChange";
		stage = "observer";
		apply = function(arg1_2, arg2, arg3, arg4) -- Line 18, Named "apply"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: logError_upvr (copied, readonly)
			]]
			local pcall_result1, pcall_result2 = pcall(arg3.GetPropertyChangedSignal, arg3, arg1)
			if not pcall_result1 then
				logError_upvr("cannotConnectChange", nil, arg3.ClassName, arg1)
			else
				if typeof(arg2) ~= "function" then
					logError_upvr("invalidChangeHandler", nil, arg1)
					return
				end
				table.insert(arg4, pcall_result2:Connect(function() -- Line 25
					--[[ Upvalues[3]:
						[1]: arg2 (readonly)
						[2]: arg3 (readonly)
						[3]: arg1 (copied, readonly)
					]]
					arg2(arg3[arg1])
				end))
			end
		end;
	}
end