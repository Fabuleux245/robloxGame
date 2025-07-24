-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:16:08
-- Luau version 6, Types version 3
-- Time taken: 0.000791 seconds

return function(arg1) -- Line 57, Named "setAndForwardRef"
	local getForwardedRef_upvr = arg1.getForwardedRef
	local setLocalRef_upvr = arg1.setLocalRef
	return function(arg1_2) -- Line 59
		--[[ Upvalues[2]:
			[1]: getForwardedRef_upvr (readonly)
			[2]: setLocalRef_upvr (readonly)
		]]
		local var2_result1 = getForwardedRef_upvr()
		setLocalRef_upvr(arg1_2)
		if typeof(var2_result1) == "function" then
			var2_result1(arg1_2)
		elseif typeof(var2_result1) == "table" then
			var2_result1.current = arg1_2
		end
	end
end