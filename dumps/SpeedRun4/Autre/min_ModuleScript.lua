-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:46:34
-- Luau version 6, Types version 3
-- Time taken: 0.001116 seconds

local function var2_upvr(arg1, arg2) -- Line 34
	if arg1 >= arg2 then
	else
	end
	return true
end
local reduce_upvr = require(script.Parent.reduce)
return function(arg1, arg2, arg3) -- Line 39, Named "min"
	--[[ Upvalues[2]:
		[1]: var2_upvr (readonly)
		[2]: reduce_upvr (readonly)
	]]
	local var4_upvr
	if not var4_upvr then
		var4_upvr = var2_upvr
	end
	if arg2 then
		return reduce_upvr(arg1, function(arg1_2, arg2_2, arg3_2) -- Line 43
			--[[ Upvalues[2]:
				[1]: arg2 (readonly)
				[2]: var4_upvr (readonly)
			]]
			local arg2_result1 = arg2(arg2_2, arg3_2)
			if not arg1_2 then
				local module_2 = {
					value = arg2_result1;
				}
				module_2.original = arg2_2
				return module_2
			end
			if var4_upvr(arg2_result1, arg1_2.value) then
				local module = {
					value = arg2_result1;
				}
				module.original = arg2_2
				return module
			end
			return arg1_2
		end, nil).original
	end
	return reduce_upvr(arg1, function(arg1_3, arg2_3) -- Line 53
		--[[ Upvalues[1]:
			[1]: var4_upvr (readonly)
		]]
		if not arg1_3 then
			return arg2_3
		end
		if var4_upvr(arg2_3, arg1_3) then
			return arg2_3
		end
		return arg1_3
	end, nil)
end