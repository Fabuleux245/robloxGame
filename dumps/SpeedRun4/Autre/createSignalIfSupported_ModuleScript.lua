-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:43:30
-- Luau version 6, Types version 3
-- Time taken: 0.000426 seconds

return {
	createSignalIfSupported = function() -- Line 11, Named "createSignalIfSupported"
		local AbortController = _G.AbortController
		if typeof(AbortController) == "nil" then
			return {
				controller = false;
				signal = false;
			}
		end
		local any_new_result1 = AbortController.new()
		return {
			controller = any_new_result1;
			signal = any_new_result1.signal;
		}
	end;
}