-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:51:09
-- Luau version 6, Types version 3
-- Time taken: 0.000751 seconds

local module = {}
local Kind_upvr = require(script.Parent.Parent.language.kinds).Kind
function module.getOperationAST(arg1, arg2) -- Line 21
	--[[ Upvalues[1]:
		[1]: Kind_upvr (readonly)
	]]
	local var10
	for _, v in pairs(arg1.definitions) do
		if v.kind == Kind_upvr.OPERATION_DEFINITION then
			if arg2 == nil then
				if var10 then
					return nil
				end
				var10 = v
			elseif v.name and v.name.value == arg2 then
				return v
			end
		end
	end
	return var10
end
return module