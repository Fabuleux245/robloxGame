-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:58:33
-- Luau version 6, Types version 3
-- Time taken: 0.002127 seconds

local Parent = script.Parent.Parent
local console_upvr = require(Parent.Shared).console
local inspect_upvr = require(Parent.LuauPolyfill).util.inspect
function lazyInitializer(arg1) -- Line 72
	--[[ Upvalues[2]:
		[1]: console_upvr (readonly)
		[2]: inspect_upvr (readonly)
	]]
	if arg1._status == -1 then
		local any__result_result1 = arg1._result()
		arg1._status = 0
		arg1._result = any__result_result1
		any__result_result1:andThen(function(arg1_2) -- Line 80
			--[[ Upvalues[3]:
				[1]: arg1 (readonly)
				[2]: console_upvr (copied, readonly)
				[3]: inspect_upvr (copied, readonly)
			]]
			if arg1._status == 0 then
				if _G.__DEV__ and arg1_2.default == nil then
					console_upvr.error("lazy: Expected the result of a dynamic import() call. ".."Instead received: `%s`\n\nYour code should look like: \n  ".."local MyComponent = lazy(function() return req".."quire(script.Parent.MyComponent) end)", inspect_upvr(arg1_2))
				end
				local var6 = arg1
				var6._status = 1
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				var6._result = arg1_2.default
			end
		end, function(arg1_3) -- Line 101
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			if arg1._status == 0 then
				local var8 = arg1
				var8._status = 2
				var8._result = arg1_3
			end
		end)
	end
	if arg1._status == 1 then
		return arg1._result
	end
	error(arg1._result)
end
local module_2 = {}
local REACT_LAZY_TYPE_upvr = require(Parent.Shared).ReactSymbols.REACT_LAZY_TYPE
function module_2.lazy(arg1) -- Line 119
	--[[ Upvalues[2]:
		[1]: REACT_LAZY_TYPE_upvr (readonly)
		[2]: console_upvr (readonly)
	]]
	local tbl_3 = {
		_status = -1;
	}
	tbl_3._result = arg1
	local module = {
		["$$typeof"] = REACT_LAZY_TYPE_upvr;
		_payload = tbl_3;
		_init = lazyInitializer;
	}
	if _G.__DEV__ then
		local var14_upvw
		local var15_upvw
		local tbl = {}
		local function __index(arg1_4, arg2) -- Line 141
			--[[ Upvalues[2]:
				[1]: var14_upvw (read and write)
				[2]: var15_upvw (read and write)
			]]
			if arg2 == "defaultProps" then
				return var14_upvw
			end
			if arg2 == "propTypes" then
				return var15_upvw
			end
		end
		tbl.__index = __index
		local function __newindex(arg1_5, arg2, arg3) -- Line 150
			--[[ Upvalues[3]:
				[1]: console_upvr (copied, readonly)
				[2]: var14_upvw (read and write)
				[3]: var15_upvw (read and write)
			]]
			if arg2 == "defaultProps" then
				console_upvr.error("React.lazy(...): It is not supported to assign `defaultProps` to ".."a lazy component import. Either specify them where the component ".."is defined, or create a wrapping component around it.")
				var14_upvw = arg3
				local tbl_2 = {}
				local function __index() -- Line 161
				end
				tbl_2.__index = __index
				local function __newindex() -- Line 162
				end
				tbl_2.__newindex = __newindex
				setmetatable(arg1_5, tbl_2)
			end
			if arg2 == "propTypes" then
				console_upvr.error("React.lazy(...): It is not supported to assign `propTypes` to ".."a lazy component import. Either specify them where the component ".."is defined, or create a wrapping component around it.")
				var15_upvw = arg3
				setmetatable(arg1_5, {
					__index = function() -- Line 175, Named "__index"
					end;
					__newindex = function() -- Line 176, Named "__newindex"
					end;
				})
			end
		end
		tbl.__newindex = __newindex
		setmetatable(module, tbl)
	end
	return module
end
return module_2