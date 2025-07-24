-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:51:09
-- Luau version 6, Types version 3
-- Time taken: 0.000649 seconds

return function(arg1, arg2) -- Line 7
	local module_upvr = {}
	for i, v in pairs(arg2) do
		module_upvr[arg1[i]] = v
	end
	local getmetatable_result1 = getmetatable(arg1)
	local __index_2_upvr = getmetatable_result1.__index
	function getmetatable_result1.__index(arg1_2, arg2_2) -- Line 15
		--[[ Upvalues[2]:
			[1]: module_upvr (readonly)
			[2]: __index_2_upvr (readonly)
		]]
		if arg2_2 == "toRawValue" then
			return function(arg1_3) -- Line 17
				--[[ Upvalues[1]:
					[1]: module_upvr (copied, readonly)
				]]
				return module_upvr[arg1_3]
			end
		end
		return __index_2_upvr[arg2_2]
	end
end