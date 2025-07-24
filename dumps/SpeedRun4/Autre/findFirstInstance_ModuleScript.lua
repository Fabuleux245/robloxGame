-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:04:43
-- Luau version 6, Types version 3
-- Time taken: 0.001028 seconds

local function _(arg1, arg2) -- Line 6, Named "getProperty"
	local pcall_result1, pcall_result2_2 = pcall(function() -- Line 7
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: arg2 (readonly)
		]]
		return arg1[arg2]
	end)
	if pcall_result1 == true then
		return pcall_result2_2
	end
	return nil
end
local function propertyMatch_upvr(arg1, arg2) -- Line 14, Named "propertyMatch"
	for i_upvr, v in pairs(arg2) do
		local pcall_result1_2, pcall_result2 = pcall(function() -- Line 7
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: i_upvr (readonly)
			]]
			return arg1[i_upvr]
		end)
		local var14
		if pcall_result1_2 == true then
			var14 = pcall_result2
		else
			var14 = nil
		end
		if var14 ~= v then
			var14 = false
			return var14
		end
	end
	return true
end
return function(arg1, arg2) -- Line 24, Named "findFirstInstance"
	--[[ Upvalues[1]:
		[1]: propertyMatch_upvr (readonly)
	]]
	for _, v_2 in ipairs(arg1:GetDescendants()) do
		if propertyMatch_upvr(v_2, arg2) then
			return v_2
		end
	end
	return nil
end