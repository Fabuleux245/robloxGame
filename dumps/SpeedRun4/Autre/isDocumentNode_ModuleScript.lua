-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:15:32
-- Luau version 6, Types version 3
-- Time taken: 0.001145 seconds

local Parent = script.Parent.Parent
local module = {}
local Boolean_upvr = require(Parent.LuauPolyfill).Boolean
local Kind_upvr = require(Parent.GraphQL).Kind
function module.isDocumentNode(arg1) -- Line 18
	--[[ Upvalues[2]:
		[1]: Boolean_upvr (readonly)
		[2]: Kind_upvr (readonly)
	]]
	local any_toJSBoolean_result1 = Boolean_upvr.toJSBoolean(arg1)
	if any_toJSBoolean_result1 then
		any_toJSBoolean_result1 = false
		if typeof(arg1) == "table" then
			any_toJSBoolean_result1 = Boolean_upvr.toJSBoolean(arg1.kind)
			if any_toJSBoolean_result1 then
				if arg1.kind ~= Kind_upvr.DOCUMENT then
					any_toJSBoolean_result1 = false
				else
					any_toJSBoolean_result1 = true
				end
			end
		end
	end
	return any_toJSBoolean_result1
end
return module