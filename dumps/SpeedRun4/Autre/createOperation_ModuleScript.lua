-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:43:34
-- Luau version 6, Types version 3
-- Time taken: 0.001250 seconds

local module = {}
local Object_upvr = require(script.Parent.Parent.Parent.Parent.LuauPolyfill).Object
function module.createOperation(arg1, arg2) -- Line 19
	--[[ Upvalues[1]:
		[1]: Object_upvr (readonly)
	]]
	local any_assign_result1_upvw = Object_upvr.assign({}, arg1)
	return setmetatable(arg2, {
		__index = {
			setContext = function(arg1_2, arg2_2) -- Line 22, Named "setContext"
				--[[ Upvalues[2]:
					[1]: any_assign_result1_upvw (read and write)
					[2]: Object_upvr (copied, readonly)
				]]
				if typeof(arg2_2) == "function" then
					any_assign_result1_upvw = Object_upvr.assign({}, any_assign_result1_upvw, arg2_2(any_assign_result1_upvw))
				else
					any_assign_result1_upvw = Object_upvr.assign({}, any_assign_result1_upvw, arg2_2)
				end
			end;
			getContext = function(arg1_3) -- Line 30, Named "getContext"
				--[[ Upvalues[2]:
					[1]: Object_upvr (copied, readonly)
					[2]: any_assign_result1_upvw (read and write)
				]]
				return Object_upvr.assign({}, any_assign_result1_upvw)
			end;
		};
	})
end
return module