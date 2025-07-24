-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:52:27
-- Luau version 6, Types version 3
-- Time taken: 0.002170 seconds

local module = {}
local any_named_result1_upvr = require(script.Parent.Symbol).named("ThunkTag")
function module.middleware(arg1) -- Line 15
	--[[ Upvalues[1]:
		[1]: any_named_result1_upvr (readonly)
	]]
	local var3_upvw = arg1
	if not var3_upvw then
		var3_upvw = {}
	end
	return function(arg1_2, arg2) -- Line 18
		--[[ Upvalues[2]:
			[1]: any_named_result1_upvr (copied, readonly)
			[2]: var3_upvw (read and write)
		]]
		return function(arg1_3) -- Line 23
			--[[ Upvalues[4]:
				[1]: any_named_result1_upvr (copied, readonly)
				[2]: var3_upvw (copied, read and write)
				[3]: arg2 (readonly)
				[4]: arg1_2 (readonly)
			]]
			if arg1_3[any_named_result1_upvr] == true then
				local module_2 = {}
				for _, v in pairs(arg1_3.requiredServices) do
					local var12 = var3_upvw[v]
					if var12 == nil then
						error("Service with key %s is a dependency but was not provided":format(v))
					end
					module_2[v] = var12
				end
				return arg1_3(arg2, module_2)
			end
			return arg1_2(arg1_3)
		end
	end
end
function module.new(arg1, arg2, arg3) -- Line 51
	--[[ Upvalues[1]:
		[1]: any_named_result1_upvr (readonly)
	]]
	local var13
	if typeof(arg1) ~= "string" then
		var13 = false
	else
		var13 = true
	end
	assert(var13, "Bad arg #1: name must be a string")
	var13 = true
	if arg2 ~= nil then
		if typeof(arg2) ~= "table" then
			var13 = false
		else
			var13 = true
		end
	end
	assert(var13, "Bad arg #2: requiredServices must be a table or nil")
	if typeof(arg3) ~= "function" then
		var13 = false
	else
		var13 = true
	end
	assert(var13, "Bad arg #3: onInvoke must be a function")
	local var14 = arg2
	if not var14 then
		var14 = {}
	end
	var13 = {}
	var13[any_named_result1_upvr] = true
	var13.type = arg1
	var13.requiredServices = var14
	return setmetatable(var13, {
		__call = function(arg1_4, ...) -- Line 66, Named "__call"
			--[[ Upvalues[1]:
				[1]: arg3 (readonly)
			]]
			arg3(...)
		end;
	})
end
function module.test(arg1, arg2, arg3) -- Line 72
	--[[ Upvalues[1]:
		[1]: any_named_result1_upvr (readonly)
	]]
	local var20 = false
	if typeof(arg1) == "table" then
		if arg1[any_named_result1_upvr] ~= true then
			var20 = false
		else
			var20 = true
		end
	end
	assert(var20, "Test Error - Bad arg #1: Must provide a valid thunk")
	if 0 < #arg1.requiredServices then
		for _, v_2 in ipairs(arg1.requiredServices) do
			local var24
			if arg3[v_2] == nil then
				var24 = false
			else
				var24 = true
			end
			assert(var24, "Test Error - Bad arg #3: Missing required service "..tostring(v_2))
		end
	end
	return arg1(arg2, arg3)
end
return module