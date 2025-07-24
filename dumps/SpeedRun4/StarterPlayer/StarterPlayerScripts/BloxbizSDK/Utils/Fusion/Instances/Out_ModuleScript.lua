-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:39:58
-- Luau version 6, Types version 3
-- Time taken: 0.001503 seconds

local Parent = script.Parent.Parent
local logError_upvr = require(Parent.Logging.logError)
local xtypeof_upvr = require(Parent.Utility.xtypeof)
return function(arg1) -- Line 13, Named "Out"
	--[[ Upvalues[2]:
		[1]: logError_upvr (readonly)
		[2]: xtypeof_upvr (readonly)
	]]
	return {
		type = "SpecialKey";
		kind = "Out";
		stage = "observer";
		apply = function(arg1_2, arg2, arg3, arg4) -- Line 19, Named "apply"
			--[[ Upvalues[3]:
				[1]: arg1 (readonly)
				[2]: logError_upvr (copied, readonly)
				[3]: xtypeof_upvr (copied, readonly)
			]]
			local pcall_result1, pcall_result2 = pcall(arg3.GetPropertyChangedSignal, arg3, arg1)
			if not pcall_result1 then
				logError_upvr("invalidOutProperty", nil, arg3.ClassName, arg1)
			else
				if xtypeof_upvr(arg2) ~= "State" or arg2.kind ~= "Value" then
					logError_upvr("invalidOutType")
					return
				end
				arg2:set(arg3[arg1])
				table.insert(arg4, pcall_result2:Connect(function() -- Line 29
					--[[ Upvalues[3]:
						[1]: arg2 (readonly)
						[2]: arg3 (readonly)
						[3]: arg1 (copied, readonly)
					]]
					arg2:set(arg3[arg1])
				end))
				table.insert(arg4, function() -- Line 33
					--[[ Upvalues[1]:
						[1]: arg2 (readonly)
					]]
					arg2:set(nil)
				end)
			end
		end;
	}
end