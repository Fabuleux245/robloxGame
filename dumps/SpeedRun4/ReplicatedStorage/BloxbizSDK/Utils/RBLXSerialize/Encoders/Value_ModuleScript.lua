-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:07:56
-- Luau version 6, Types version 3
-- Time taken: 0.000862 seconds

local Binary_upvr = require(script.Parent.Parent.Binary)
local Convertors_upvr = require(script.Parent.Parent.Convertors)
return function(arg1, arg2) -- Line 4
	--[[ Upvalues[2]:
		[1]: Binary_upvr (readonly)
		[2]: Convertors_upvr (readonly)
	]]
	local typeof_result1 = typeof(arg2)
	local var5 = Convertors_upvr[typeof_result1]
	if var5 then
		local var5_result1 = var5(true, arg2)
		if var5_result1 then
			return Binary_upvr.describe("StoreType", "Value")..Binary_upvr.describe("DataType", typeof_result1)..Binary_upvr.describe("Value", var5_result1)
		end
		return nil
	end
	return nil
end