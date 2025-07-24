-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:43:37
-- Luau version 6, Types version 3
-- Time taken: 0.001623 seconds

local module_2 = {}
local Boolean_upvr = require(script.Parent.Parent.Parent.Parent.LuauPolyfill).Boolean
local getOperationName_upvr = require(script.Parent.Parent.Parent.utilities).getOperationName
function module_2.transformOperation(arg1) -- Line 20
	--[[ Upvalues[2]:
		[1]: Boolean_upvr (readonly)
		[2]: getOperationName_upvr (readonly)
	]]
	local module = {}
	local var5
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var5 = arg1.variables
		return var5
	end
	if not Boolean_upvr.toJSBoolean(arg1.variables) or not INLINED() then
		var5 = {}
	end
	module.variables = var5
	local function INLINED_2() -- Internal function, doesn't exist in bytecode
		var5 = arg1.extensions
		return var5
	end
	if not Boolean_upvr.toJSBoolean(arg1.extensions) or not INLINED_2() then
		var5 = {}
	end
	module.extensions = var5
	var5 = arg1.operationName
	module.operationName = var5
	var5 = arg1.query
	module.query = var5
	var5 = Boolean_upvr.toJSBoolean(module.operationName)
	if not var5 then
		var5 = typeof(module.query)
		if var5 ~= "string" then
			local function INLINED_3() -- Internal function, doesn't exist in bytecode
				var5 = getOperationName_upvr(module.query)
				return var5
			end
			if not Boolean_upvr.toJSBoolean(getOperationName_upvr(module.query)) or not INLINED_3() then
				var5 = nil
			end
			module.operationName = var5
			return module
		end
		module.operationName = ""
	end
	return module
end
return module_2