-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:09:32
-- Luau version 6, Types version 3
-- Time taken: 0.000421 seconds

local getEditableInstanceFromContext_upvr = require(script.Parent.Parent.util.getEditableInstanceFromContext)
return function(arg1, arg2, arg3) -- Line 6
	--[[ Upvalues[1]:
		[1]: getEditableInstanceFromContext_upvr (readonly)
	]]
	local var3_result1, var3_result2 = getEditableInstanceFromContext_upvr(arg1, arg2, arg3.editableImages, arg3)
	if not var3_result1 then
		return false
	end
	return true, var3_result2
end