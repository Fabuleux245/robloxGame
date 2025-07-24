-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:44:09
-- Luau version 6, Types version 3
-- Time taken: 0.001788 seconds

local module = {}
local LuauPolyfill = require(script.Parent.Parent.Parent.Parent.LuauPolyfill)
local tbl_upvr = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'}
math.randomseed(os.clock())
local function uuid_upvr() -- Line 59, Named "uuid"
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	local var6 = ""
	for _ = 1, 11 do
		var6 = var6..tbl_upvr[math.random(1, 36)]
	end
	return var6
end
local Boolean_upvr = LuauPolyfill.Boolean
local any_new_result1_upvr = LuauPolyfill.Map.new(nil)
module.uuid = uuid_upvr
function module.makeUniqueId(arg1) -- Line 68
	--[[ Upvalues[3]:
		[1]: uuid_upvr (readonly)
		[2]: Boolean_upvr (readonly)
		[3]: any_new_result1_upvr (readonly)
	]]
	local var9
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var9 = any_new_result1_upvr:get(arg1)
		return var9
	end
	if not Boolean_upvr.toJSBoolean(any_new_result1_upvr:get(arg1)) or not INLINED() then
		var9 = 1
	end
	any_new_result1_upvr:set(arg1, var9 + 1)
	return "%s:%s:%s":format(arg1, tostring(var9), uuid_upvr())
end
return module