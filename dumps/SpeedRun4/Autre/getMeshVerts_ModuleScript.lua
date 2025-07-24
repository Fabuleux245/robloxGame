-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:09:36
-- Luau version 6, Types version 3
-- Time taken: 0.000614 seconds

local pcallDeferred_upvr = require(script.Parent.Parent.util.pcallDeferred)
local UGCValidationService_upvr = game:GetService("UGCValidationService")
return function(arg1, arg2) -- Line 12, Named "getVerts"
	--[[ Upvalues[2]:
		[1]: pcallDeferred_upvr (readonly)
		[2]: UGCValidationService_upvr (readonly)
	]]
	local pcallDeferred_upvr_result1, var2_result2 = pcallDeferred_upvr(function() -- Line 18
		--[[ Upvalues[2]:
			[1]: UGCValidationService_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		return UGCValidationService_upvr:GetEditableMeshVerts(arg1.editableMesh)
	end, arg2)
	if not pcallDeferred_upvr_result1 then
		local var7 = "Failed to read mesh: "..arg1.fullName
		if arg2.isServer then
			error(var7)
		end
		return false, {var7}
	end
	return true, nil, var2_result2
end