-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:01:02
-- Luau version 6, Types version 3
-- Time taken: 0.000740 seconds

local Cryo_upvr = require(script:FindFirstAncestor("CrossExperience").dependencies).Cryo
return function(arg1) -- Line 6
	--[[ Upvalues[1]:
		[1]: Cryo_upvr (readonly)
	]]
	if arg1 ~= nil then
		for _, v in ipairs(Cryo_upvr.Dictionary.keys(arg1)) do
			local tonumber_result1 = tonumber(v)
			if tonumber_result1 then
				({})[tonumber_result1] = arg1[v]
			end
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return {}
end