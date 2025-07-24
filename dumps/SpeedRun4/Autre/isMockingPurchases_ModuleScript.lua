-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:51:20
-- Luau version 6, Types version 3
-- Time taken: 0.000463 seconds

local RunService_upvr = game:GetService("RunService")
local RequestType_upvr = require(script.Parent.Parent.Enums.RequestType)
return function(arg1) -- Line 11, Named "isMockingPurchases"
	--[[ Upvalues[2]:
		[1]: RunService_upvr (readonly)
		[2]: RequestType_upvr (readonly)
	]]
	local any_IsStudio_result1 = RunService_upvr:IsStudio()
	if any_IsStudio_result1 then
		if arg1 == RequestType_upvr.AvatarCreationFee then
			any_IsStudio_result1 = false
		else
			any_IsStudio_result1 = true
		end
	end
	return any_IsStudio_result1
end