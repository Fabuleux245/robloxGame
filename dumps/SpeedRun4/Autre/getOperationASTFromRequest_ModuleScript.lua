-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:15:27
-- Luau version 6, Types version 3
-- Time taken: 0.001315 seconds

local Parent = script.Parent.Parent
local LuauPolyfill = require(Parent.LuauPolyfill)
local module = {}
local getOperationAST_upvr = require(Parent.GraphQL).getOperationAST
local Boolean_upvr = LuauPolyfill.Boolean
local Error_upvr = LuauPolyfill.Error
local function getOperationASTFromDocument_upvr(arg1, arg2) -- Line 26, Named "getOperationASTFromDocument"
	--[[ Upvalues[3]:
		[1]: getOperationAST_upvr (readonly)
		[2]: Boolean_upvr (readonly)
		[3]: Error_upvr (readonly)
	]]
	local getOperationAST_upvr_result1 = getOperationAST_upvr(arg1, arg2)
	local var8
	if not Boolean_upvr.toJSBoolean(getOperationAST_upvr_result1) then
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var8 = arg2
			return var8
		end
		if not Boolean_upvr.toJSBoolean(arg2) or not INLINED() then
			var8 = ""
		end
		error(Error_upvr.new("Cannot infer operation %s":format(tostring(var8))))
	end
	return getOperationAST_upvr_result1
end
module.getOperationASTFromDocument = getOperationASTFromDocument_upvr
module.getOperationASTFromRequest = require(script.Parent.memoize).memoize1(function(arg1) -- Line 43
	--[[ Upvalues[1]:
		[1]: getOperationASTFromDocument_upvr (readonly)
	]]
	return getOperationASTFromDocument_upvr(arg1.document, arg1.operationName)
end)
return module