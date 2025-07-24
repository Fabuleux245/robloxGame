-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:13:51
-- Luau version 6, Types version 3
-- Time taken: 0.002238 seconds

local function _(arg1) -- Line 4, Named "trimTrailingNewline"
	if arg1:sub(-1, -1) == '\n' then
		return arg1:sub(1, -2)
	end
	return arg1
end
local Config_upvr = require(script.Parent.Config)
return function(arg1, arg2, arg3) -- Line 12
	--[[ Upvalues[1]:
		[1]: Config_upvr (readonly)
	]]
	if typeof(arg2) ~= "string" then
		error("Bad argument #2 - expected a string for the name of the library")
	end
	if typeof(arg3) ~= "table" then
		error("Bad argument #3 - expected a default config table for the library")
	end
	local module_upvr = {}
	local any_new_result1_upvr = Config_upvr.new(arg3)
	function module_upvr.init(arg1_2) -- Line 23
		--[[ Upvalues[4]:
			[1]: module_upvr (readonly)
			[2]: any_new_result1_upvr (readonly)
			[3]: arg1 (readonly)
			[4]: arg2 (readonly)
		]]
		setmetatable(module_upvr, nil)
		local var9
		if arg1_2 then
			var9 = any_new_result1_upvr
			var9 = arg1_2
			var9.set(var9)
		end
		var9 = any_new_result1_upvr.get()
		module_upvr.Config = var9
		var9 = module_upvr.Config
		local arg1_result1 = arg1(var9)
		var9 = pairs(arg1_result1)
		local pairs_result1_upvr, pairs_result2, pairs_result3 = pairs(arg1_result1)
		for i, v in pairs_result1_upvr, pairs_result2, pairs_result3 do
			module_upvr[i] = v
		end
		local call_stack = debug.traceback()
		if call_stack:sub(-1, -1) == '\n' then
			pairs_result1_upvr = call_stack:sub(1, -2)
		else
			pairs_result1_upvr = call_stack
		end
		function module_upvr.init(arg1_3) -- Line 38
			--[[ Upvalues[3]:
				[1]: arg1_2 (readonly)
				[2]: arg2 (copied, readonly)
				[3]: pairs_result1_upvr (readonly)
			]]
			local var16
			if arg1_3 == var16 then
			else
				local call_stack_2 = debug.traceback()
				if call_stack_2:sub(-1, -1) == '\n' then
					var16 = call_stack_2:sub(1, -2)
				else
					var16 = call_stack_2
				end
				warn(string.format("%s has already been configured\nFirst init traceback:\n%s\nCurrent init traceback:\n%s", arg2, pairs_result1_upvr, var16))
			end
		end
		if _G.__UIBLOX_TRACK_USAGE__ then
			return setmetatable(module_upvr, getmetatable(arg1_result1))
		end
		local module = {}
		local function __index(arg1_4, arg2_2) -- Line 63
			--[[ Upvalues[1]:
				[1]: arg2 (copied, readonly)
			]]
			error("%q (%s) is not a valid member of %s":format(tostring(arg2_2), typeof(arg2_2), arg2), 2)
		end
		module.__index = __index
		local function __newindex(arg1_5, arg2_3, arg3_2) -- Line 69
			--[[ Upvalues[1]:
				[1]: arg2 (copied, readonly)
			]]
			error("%q (%s) is not a valid member of %s":format(tostring(arg2_3), typeof(arg2_3), arg2), 2)
		end
		module.__newindex = __newindex
		return setmetatable(module_upvr, module)
	end
	return setmetatable(module_upvr, {
		__index = function(arg1_6, arg2_4) -- Line 78, Named "__index"
			--[[ Upvalues[1]:
				[1]: arg2 (readonly)
			]]
			error("You must call %s.init(config) before using it!":format(arg2), 2)
		end;
		__newindex = function(arg1_7, arg2_5, arg3_3) -- Line 82, Named "__newindex"
			--[[ Upvalues[1]:
				[1]: arg2 (readonly)
			]]
			error("You must call %s.init(config) before using it!":format(arg2), 2)
		end;
	})
end