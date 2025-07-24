-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:44:10
-- Luau version 6, Types version 3
-- Time taken: 0.000976 seconds

local module = {}
local LuauPolyfill = require(script.Parent.Parent.Parent.Parent.LuauPolyfill)
require(script.Parent.Parent.globals)
local Set_upvr = LuauPolyfill.Set
local isNonNullObject_upvr = require(script.Parent.objects).isNonNullObject
local Object_upvr = LuauPolyfill.Object
local Array_upvr = LuauPolyfill.Array
local function deepFreeze_upvr(arg1) -- Line 22, Named "deepFreeze"
	--[[ Upvalues[4]:
		[1]: Set_upvr (readonly)
		[2]: isNonNullObject_upvr (readonly)
		[3]: Object_upvr (readonly)
		[4]: Array_upvr (readonly)
	]]
	local tbl = {}
	tbl[1] = arg1
	local any_new_result1_upvr = Set_upvr.new(tbl)
	for _, v_upvr in any_new_result1_upvr do
		if isNonNullObject_upvr(v_upvr) then
			if not table.isfrozen(v_upvr) then
				Object_upvr.freeze(v_upvr)
			end
			Array_upvr.forEach(Object_upvr.keys(v_upvr), function(arg1_2) -- Line 30
				--[[ Upvalues[3]:
					[1]: isNonNullObject_upvr (copied, readonly)
					[2]: v_upvr (readonly)
					[3]: any_new_result1_upvr (readonly)
				]]
				if isNonNullObject_upvr(v_upvr[arg1_2]) then
					any_new_result1_upvr:add(v_upvr[arg1_2])
				end
			end)
		end
	end
	return arg1
end
function module.maybeDeepFreeze(arg1) -- Line 41
	--[[ Upvalues[1]:
		[1]: deepFreeze_upvr (readonly)
	]]
	if _G.__DEV__ then
		deepFreeze_upvr(arg1)
	end
	return arg1
end
return module