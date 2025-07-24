-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:05:25
-- Luau version 6, Types version 3
-- Time taken: 0.001213 seconds

local describeError_upvr = require(script.Parent["ErrorHandling.roblox"]).describeError
if not _G.__DEV__ then
end
return function(arg1, arg2, arg3, arg4, ...) -- Line 15, Named "invokeGuardedCallbackProd"
	--[[ Upvalues[1]:
		[1]: describeError_upvr (readonly)
	]]
	local var2
	local var3
	if not _G.__YOLO__ then
		if arg4 == nil then
			local xpcall_result1, xpcall_result2 = xpcall(arg3, describeError_upvr, ...)
			var2 = xpcall_result1
			var3 = xpcall_result2
		else
			local xpcall_result1_2, xpcall_result2_2 = xpcall(arg3, describeError_upvr, arg4, ...)
			var2 = xpcall_result1_2
			var3 = xpcall_result2_2
		end
	else
		var2 = true
		if arg4 == nil then
			arg3(...)
		else
			arg3(arg4, ...)
		end
	end
	if not var2 then
		arg1.onError(var3)
	end
end