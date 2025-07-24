-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:11:13
-- Luau version 6, Types version 3
-- Time taken: 0.000800 seconds

local module = {}
local CollectionService_upvr = game:GetService("CollectionService")
function module.getCharacterModel(arg1) -- Line 9
	--[[ Upvalues[1]:
		[1]: CollectionService_upvr (readonly)
	]]
	local any_GetTagged_result1 = CollectionService_upvr:GetTagged(`{"HatchCharacterOverride_"}{arg1.UserId}`)
	if #any_GetTagged_result1 == 0 then
		return arg1.Character
	end
	for _, v in any_GetTagged_result1 do
		if v:IsA("Model") then
			return v
		end
	end
	return nil
end
return module