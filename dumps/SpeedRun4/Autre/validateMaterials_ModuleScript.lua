-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:10:20
-- Luau version 6, Types version 3
-- Time taken: 0.002534 seconds

local Parent = script.Parent.Parent
local Constants_upvr = require(Parent.Constants)
local Analytics_upvr = require(Parent.Analytics)
return function(arg1, arg2) -- Line 9, Named "validateMaterials"
	--[[ Upvalues[2]:
		[1]: Constants_upvr (readonly)
		[2]: Analytics_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local tbl_2 = {}
	local descendants = arg1:GetDescendants()
	table.insert(descendants, arg1)
	for i, v in descendants do
		if v:IsA("BasePart") and not Constants_upvr.MATERIAL_WHITELIST[v.Material] then
			table.insert(tbl_2, v:GetFullName())
		end
	end
	if 0 < #tbl_2 then
		local tbl = {}
		i = Constants_upvr.MATERIAL_WHITELIST
		local pairs_result1, pairs_result2, pairs_result3 = pairs(i)
		for i_2 in pairs_result1, pairs_result2, pairs_result3 do
			table.insert({}, i_2.Name)
			local var30
		end
		pairs_result2 = tbl
		pairs_result3 = "Invalid material setup for"
		table.insert(pairs_result2, pairs_result3)
		pairs_result2 = tbl_2
		local pairs_result1_2, pairs_result2_2, pairs_result3_2 = pairs(pairs_result2)
		for _, v_2 in pairs_result1_2, pairs_result2_2, pairs_result3_2 do
			table.insert(tbl, v_2)
			local var34
		end
		pairs_result3_2 = "Accepted values are: "..table.concat(var30, ", ")
		pairs_result2_2 = var34
		table.insert(pairs_result2_2, pairs_result3_2)
		pairs_result2_2 = Analytics_upvr
		pairs_result3_2 = Analytics_upvr.ErrorType
		pairs_result2_2 = pairs_result3_2.validateMaterials
		pairs_result3_2 = nil
		pairs_result2_2.reportFailure(pairs_result2_2, pairs_result3_2, arg2)
		pairs_result2_2 = var34
		return false, pairs_result2_2
	end
	return true
end