-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:10:05
-- Luau version 6, Types version 3
-- Time taken: 0.000592 seconds

local UGCValidationService_upvr = game:GetService("UGCValidationService")
local Analytics_upvr = require(script.Parent.Parent.Analytics)
return function(arg1, arg2) -- Line 9, Named "validateCanLoad"
	--[[ Upvalues[2]:
		[1]: UGCValidationService_upvr (readonly)
		[2]: Analytics_upvr (readonly)
	]]
	local pcall_result1, pcall_result2 = pcall(function() -- Line 10
		--[[ Upvalues[2]:
			[1]: UGCValidationService_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		return UGCValidationService_upvr:CanLoadAsset(arg1)
	end)
	if not pcall_result1 or not pcall_result2 then
		Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.validateCanLoad, nil, arg2)
		return false, {"Asset could not be loaded"}
	end
	return true
end