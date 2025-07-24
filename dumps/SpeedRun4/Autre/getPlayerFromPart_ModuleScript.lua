-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:04:53
-- Luau version 6, Types version 3
-- Time taken: 0.000785 seconds

local Players_upvr = game:GetService("Players")
return function(arg1) -- Line 4, Named "getPlayerFromPart"
	--[[ Upvalues[1]:
		[1]: Players_upvr (readonly)
	]]
	if not arg1 then
		return nil
	end
	for _, v in pairs(Players_upvr:GetPlayers()) do
		local Character = v.Character
		if Character and arg1:IsDescendantOf(Character) then
			return v
		end
	end
	return nil
end