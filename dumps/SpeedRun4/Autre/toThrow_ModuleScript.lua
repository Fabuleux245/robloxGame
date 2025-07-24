-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:50:58
-- Luau version 6, Types version 3
-- Time taken: 0.001192 seconds

return function(arg1, arg2, arg3) -- Line 16, Named "toThrow"
	local pcall_result1, pcall_result2 = pcall(arg1)
	if not pcall_result1 then
		if typeof(arg2) == "string" then
			local var3
			if typeof(pcall_result2) == "string" then
				var3 = pcall_result2
			elseif typeof(pcall_result2) == "table" and typeof(pcall_result2.message) == "string" then
				var3 = pcall_result2.message
			end
			if var3 == nil then
				return {
					pass = false;
					message = string.format("Matcher Error:\n".."Expected function to throw a string or an Error ".."object, but it threw an error of type '%s'.\nYou ".."may wish to use `pcall` instead and run custom ".."expectations on the returned error", typeof(pcall_result2));
				}
			end
			if var3:find(arg2, 1, not arg3) ~= nil then
				return {
					pass = true;
					message = string.format("Expected function not to throw with '%s'", arg2);
				}
			end
			return {
				pass = false;
				message = string.format("Expected function to throw with\n'%s'\nbut threw\n'%s'\ninstead", arg2, var3);
			}
		end
		return {
			pass = true;
			message = "Expected function not to throw";
		}
	end
	return {
		pass = false;
		message = "Expected function to throw";
	}
end