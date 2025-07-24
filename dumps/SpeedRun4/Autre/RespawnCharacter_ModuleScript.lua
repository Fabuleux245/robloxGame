-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:46:56
-- Luau version 6, Types version 3
-- Time taken: 0.000815 seconds

local Players_upvr = game:GetService("Players")
return function(arg1) -- Line 4
	--[[ Upvalues[1]:
		[1]: Players_upvr (readonly)
	]]
	local any_getState_result1_2 = arg1:getState()
	if any_getState_result1_2.respawn.customCallback then
		any_getState_result1_2.respawn.customCallback:Fire()
	else
		local Character = Players_upvr.LocalPlayer.Character
		if Character ~= nil then
			local Humanoid = Character:FindFirstChild("Humanoid")
			if Humanoid ~= nil and Humanoid:IsA("Humanoid") then
				Humanoid.Health = 0
			end
		end
	end
end