-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:58:32
-- Luau version 6, Types version 3
-- Time taken: 0.001479 seconds

local Parent = script.Parent.Parent
local ReactSymbols = require(Parent.Shared).ReactSymbols
local module = {}
local REACT_MEMO_TYPE_upvr = ReactSymbols.REACT_MEMO_TYPE
local console_upvr = require(Parent.Shared).console
local REACT_FORWARD_REF_TYPE_upvr = ReactSymbols.REACT_FORWARD_REF_TYPE
function module.forwardRef(arg1) -- Line 27
	--[[ Upvalues[3]:
		[1]: REACT_MEMO_TYPE_upvr (readonly)
		[2]: console_upvr (readonly)
		[3]: REACT_FORWARD_REF_TYPE_upvr (readonly)
	]]
	if _G.__DEV__ then
		if typeof(arg1) == "table" and arg1["$$typeof"] == REACT_MEMO_TYPE_upvr then
			console_upvr.error("forwardRef requires a render function but received a `memo` ".."component. Instead of forwardRef(memo(...)), use ".."memo(forwardRef(...)).")
		elseif typeof(arg1) ~= "function" then
			console_upvr.error("forwardRef requires a render function but was given %s.", typeof(arg1))
		else
			local parameter_count, is_vararg = debug.info(arg1, 'a')
			local var10
			if parameter_count ~= 0 and parameter_count ~= 2 then
				if parameter_count == 1 then
					var10 = "Did you forget to use the ref parameter?"
				else
					var10 = "Any additional parameter will be undefined."
				end
				console_upvr.error("forwardRef render functions accept exactly two parameters: props and ref. %s", var10)
			end
		end
	end
	local module_2 = {
		["$$typeof"] = REACT_FORWARD_REF_TYPE_upvr;
	}
	module_2.render = arg1
	if _G.__DEV__ then
		local var12_upvw
		var10 = {}
		local var13 = var10
		function var13.__index(arg1_2, arg2) -- Line 90
			--[[ Upvalues[1]:
				[1]: var12_upvw (read and write)
			]]
			if arg2 == "displayName" then
				return var12_upvw
			end
			return rawget(arg1_2, arg2)
		end
		function var13.__newindex(arg1_3, arg2, arg3) -- Line 96
			--[[ Upvalues[1]:
				[1]: var12_upvw (read and write)
			]]
			if arg2 == "displayName" then
				var12_upvw = arg3
			else
				rawset(arg1_3, arg2, arg3)
			end
		end
		setmetatable(module_2, var13)
	end
	return module_2
end
return module