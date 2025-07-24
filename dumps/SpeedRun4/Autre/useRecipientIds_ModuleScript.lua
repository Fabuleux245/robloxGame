-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:53:12
-- Luau version 6, Types version 3
-- Time taken: 0.000811 seconds

local useSelector_upvr = require(script:FindFirstAncestor("AppChat").Parent.RoactUtils).Hooks.RoactRodux.useSelector
return function(arg1) -- Line 6
	--[[ Upvalues[1]:
		[1]: useSelector_upvr (readonly)
	]]
	local var8
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var8 = arg1.participants
		return var8
	end
	if not arg1 or not INLINED() then
		var8 = {}
	end
	for _, v in var8 do
		local tonumber_result1 = tonumber(v)
		if tonumber_result1 and tonumber_result1 ~= useSelector_upvr(function(arg1_2) -- Line 7
			return tonumber(arg1_2.LocalUserId)
		end) then
			table.insert({}, tonumber_result1)
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return {}
end