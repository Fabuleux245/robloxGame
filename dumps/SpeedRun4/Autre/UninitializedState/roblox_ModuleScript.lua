-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:05:40
-- Luau version 6, Types version 3
-- Time taken: 0.000650 seconds

local console_upvr = require(script.Parent.console)
local module = {}
setmetatable(module, {
	__index = function(arg1, arg2) -- Line 23, Named "__index"
		--[[ Upvalues[1]:
			[1]: console_upvr (readonly)
		]]
		if _G.__DEV__ then
			console_upvr.warn("Attempted to access uninitialized state. Use setState to initialize state")
		end
		return nil
	end;
	__newindex = function(arg1, arg2) -- Line 31, Named "__newindex"
		--[[ Upvalues[1]:
			[1]: console_upvr (readonly)
		]]
		if _G.__DEV__ then
			console_upvr.error("Attempted to directly mutate state. Use setState to assign new values to state.")
		end
		return nil
	end;
	__tostring = function(arg1) -- Line 39, Named "__tostring"
		return "<uninitialized component state>"
	end;
	__metatable = "UninitializedState";
})
return module