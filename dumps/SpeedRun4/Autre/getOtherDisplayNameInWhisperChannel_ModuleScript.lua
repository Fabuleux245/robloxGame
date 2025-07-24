-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:04:01
-- Luau version 6, Types version 3
-- Time taken: 0.000826 seconds

local Players_upvr = game:GetService("Players")
return function(arg1, arg2) -- Line 3, Named "getOtherDisplayNameInWhisperChannel"
	--[[ Upvalues[1]:
		[1]: Players_upvr (readonly)
	]]
	for _, v in ipairs(arg1:GetChildren()) do
		if v:IsA("TextSource") then
			local any_GetPlayerByUserId_result1 = Players_upvr:GetPlayerByUserId(v.UserId)
			if any_GetPlayerByUserId_result1 and any_GetPlayerByUserId_result1 ~= arg2 then
				return any_GetPlayerByUserId_result1.DisplayName
			end
		end
	end
	return nil
end