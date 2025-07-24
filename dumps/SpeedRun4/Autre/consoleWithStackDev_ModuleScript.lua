-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:05:20
-- Luau version 6, Types version 3
-- Time taken: 0.001227 seconds

local LuauPolyfill = require(script.Parent.Parent.LuauPolyfill)
local printWarning_upvw
local ReactSharedInternals_upvr = require(script.Parent.ReactSharedInternals)
local Array_upvr = LuauPolyfill.Array
local console_upvr = LuauPolyfill.console
function printWarning_upvw(arg1, arg2, arg3) -- Line 36, Named "printWarning"
	--[[ Upvalues[3]:
		[1]: ReactSharedInternals_upvr (readonly)
		[2]: Array_upvr (readonly)
		[3]: console_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var11
	if _G.__DEV__ then
		local any_getStackAddendum_result1 = ReactSharedInternals_upvr.ReactDebugCurrentFrame.getStackAddendum()
		if any_getStackAddendum_result1 ~= "" then
			var11 = Array_upvr.slice(var11, 1)
			table.insert(var11, any_getStackAddendum_result1)
		end
		local any_map_result1 = Array_upvr.map(var11, tostring)
		table.insert(any_map_result1, 1, "Warning: "..arg2.."%s")
		console_upvr[arg1](unpack(any_map_result1))
	end
end
return {
	warn = function(arg1, ...) -- Line 25
		--[[ Upvalues[1]:
			[1]: printWarning_upvw (read and write)
		]]
		if _G.__DEV__ then
			printWarning_upvw("warn", arg1, {...})
		end
	end;
	error = function(arg1, ...) -- Line 30
		--[[ Upvalues[1]:
			[1]: printWarning_upvw (read and write)
		]]
		if _G.__DEV__ then
			printWarning_upvw("error", arg1, {...})
		end
	end;
}