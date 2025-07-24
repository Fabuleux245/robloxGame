-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:59:22
-- Luau version 6, Types version 3
-- Time taken: 0.000634 seconds

local Players_upvr = game:GetService("Players")
return function(arg1) -- Line 3, Named "getLocalUserId"
	--[[ Upvalues[1]:
		[1]: Players_upvr (readonly)
	]]
	local var2 = arg1
	if not var2 then
		var2 = Players_upvr
	end
	local LocalPlayer = var2.LocalPlayer
	if LocalPlayer then
		return tostring(LocalPlayer.UserId)
	end
	return nil
end