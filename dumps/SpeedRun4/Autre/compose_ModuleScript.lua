-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:07:04
-- Luau version 6, Types version 3
-- Time taken: 0.001082 seconds

return function(...) -- Line 4
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local args_list = {...}
	local arg_count = #args_list
	local var10_upvr
	if arg_count == 0 then
		function var10_upvr(arg1) -- Line 9
			return arg1
		end
		return var10_upvr
	end
	var10_upvr = args_list[1]
	for i = 2, arg_count do
		local var11_upvr = args_list[i]
		function var10_upvr(...) -- Line 18
			--[[ Upvalues[2]:
				[1]: var10_upvr (readonly)
				[2]: var11_upvr (readonly)
			]]
			return var10_upvr(var11_upvr(...))
		end
	end
	return var10_upvr
end