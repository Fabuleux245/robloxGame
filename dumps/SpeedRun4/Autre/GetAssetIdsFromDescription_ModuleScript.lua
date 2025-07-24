-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:00:01
-- Luau version 6, Types version 3
-- Time taken: 0.001406 seconds

local tbl_upvr = {"ClimbAnimation", "Face", "FallAnimation", "GraphicTShirt", "Head", "IdleAnimation", "JumpAnimation", "LeftArm", "LeftLeg", "Pants", "RightArm", "RightLeg", "RunAnimation", "Shirt", "SwimAnimation", "Torso", "WalkAnimation"}
return function(arg1) -- Line 22
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	local module = {}
	for _, v in ipairs(tbl_upvr) do
		local var25 = arg1[v]
		if typeof(var25) == "number" and 0 < var25 then
			table.insert(module, var25)
		elseif typeof(var25) == "string" and var25 ~= "" then
			for i_5 in var25:gmatch("([%d]+),?") do
				table.insert(module, tonumber(i_5))
			end
		end
	end
	for _, v_2 in ipairs(arg1:GetAccessories(true)) do
		table.insert(module, v_2.AssetId)
	end
	for _, v_3 in ipairs(arg1:GetEquippedEmotes()) do
		local var35 = arg1:GetEmotes()[v_3.Name]
		if var35 then
			for _, v_4 in ipairs(var35) do
				table.insert(module, v_4)
			end
		end
	end
	return module
end