-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:10:36
-- Luau version 6, Types version 3
-- Time taken: 0.001777 seconds

local CollectionService_upvr = game:GetService("CollectionService")
local Analytics_upvr = require(script.Parent.Parent.Analytics)
return function(arg1, arg2) -- Line 9, Named "validateTags"
	--[[ Upvalues[2]:
		[1]: CollectionService_upvr (readonly)
		[2]: Analytics_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local descendants = arg1:GetDescendants()
	table.insert(descendants, arg1)
	local tbl = {}
	for _, v in ipairs(descendants) do
		if 0 < #CollectionService_upvr:GetTags(v) then
			table.insert(tbl, v)
		end
	end
	if 0 < #tbl then
		local ipairs_result1_2, ipairs_result2, ipairs_result3_2 = ipairs(tbl)
		for _, v_2 in ipairs_result1_2, ipairs_result2, ipairs_result3_2 do
			table.insert({"Found the following instance tags which are not allowed:"}, v_2:GetFullName())
			local var29
		end
		ipairs_result3_2 = Analytics_upvr.ErrorType
		ipairs_result3_2 = nil
		Analytics_upvr.reportFailure(ipairs_result3_2.validateTags, ipairs_result3_2, arg2)
		return false, var29
	end
	return true
end