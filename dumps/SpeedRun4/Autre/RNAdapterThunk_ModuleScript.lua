-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:37:32
-- Luau version 6, Types version 3
-- Time taken: 0.002384 seconds

local Parent = script:FindFirstAncestor("NavigationRodux").Parent
local ArgCheck_upvr = require(Parent.ArgCheck)
local module = {}
local any_named_result1_upvr = require(Parent.AppCommonLib).Symbol.named("RNAdapterThunkTag")
function module.middleware(arg1) -- Line 19
	--[[ Upvalues[2]:
		[1]: ArgCheck_upvr (readonly)
		[2]: any_named_result1_upvr (readonly)
	]]
	ArgCheck_upvr.isType(arg1, "function", "rnDispatcher")
	return function(arg1_2, arg2) -- Line 22
		--[[ Upvalues[2]:
			[1]: any_named_result1_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		return function(arg1_3) -- Line 23
			--[[ Upvalues[4]:
				[1]: any_named_result1_upvr (copied, readonly)
				[2]: arg2 (readonly)
				[3]: arg1 (copied, readonly)
				[4]: arg1_2 (readonly)
			]]
			if typeof(arg1_3) == "table" and arg1_3[any_named_result1_upvr] == true then
				return arg1_3(arg2, arg1)
			end
			return arg1_2(arg1_3)
		end
	end
end
function module.new(arg1, arg2) -- Line 33
	--[[ Upvalues[2]:
		[1]: ArgCheck_upvr (readonly)
		[2]: any_named_result1_upvr (readonly)
	]]
	ArgCheck_upvr.isNonEmptyString(arg1, "name")
	ArgCheck_upvr.isType(arg2, "function", "onInvoke")
	local module_2 = {
		[any_named_result1_upvr] = true;
	}
	module_2.type = arg1
	return setmetatable(module_2, {
		__call = function(arg1_4, ...) -- Line 41, Named "__call"
			--[[ Upvalues[1]:
				[1]: arg2 (readonly)
			]]
			arg2(...)
		end;
	})
end
function module.test(arg1, arg2, arg3) -- Line 47
	--[[ Upvalues[2]:
		[1]: ArgCheck_upvr (readonly)
		[2]: any_named_result1_upvr (readonly)
	]]
	local var9 = false
	if type(arg1) == "table" then
		if arg1[any_named_result1_upvr] ~= true then
			var9 = false
		else
			var9 = true
		end
	end
	ArgCheck_upvr.assert(var9, "'thunk' must be a valid RNAdapterThunk")
	return arg1(arg2, arg3)
end
function module.is(arg1) -- Line 56
	--[[ Upvalues[1]:
		[1]: any_named_result1_upvr (readonly)
	]]
	local type_result1 = type(arg1)
	if type_result1 == "table" then
		if arg1[any_named_result1_upvr] ~= true then
			type_result1 = false
		else
			type_result1 = true
		end
		return type_result1
	end
	return false
end
return module