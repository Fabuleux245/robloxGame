-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:16:07
-- Luau version 6, Types version 3
-- Time taken: 0.002072 seconds

local LuauPolyfill = require(script.Parent.Parent.Parent.Parent.LuauPolyfill)
local var2_upvw
local Boolean_upvr = LuauPolyfill.Boolean
local Array_upvr = LuauPolyfill.Array
local function deepDiffer_upvr(arg1, arg2, arg3, arg4) -- Line 29, Named "deepDiffer"
	--[[ Upvalues[4]:
		[1]: var2_upvw (read and write)
		[2]: Boolean_upvr (readonly)
		[3]: Array_upvr (readonly)
		[4]: deepDiffer_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 104 start (CF ANALYSIS FAILED)
	if arg3 ~= nil then
		local _ = arg3
	else
	end
	if typeof(-1) == "number" then
		-- KONSTANTWARNING: GOTO [15] #13
	end
	-- KONSTANTERROR: [0] 1. Error Block 104 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [14] 12. Error Block 109 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	if typeof(-1) == "number" then
	else
	end
	-- KONSTANTERROR: [14] 12. Error Block 109 end (CF ANALYSIS FAILED)
end
return setmetatable({
	unstable_setLogListeners = function(arg1) -- Line 22, Named "unstable_setLogListeners"
		--[[ Upvalues[1]:
			[1]: var2_upvw (read and write)
		]]
		var2_upvw = arg1
	end;
}, {
	__call = function(arg1, arg2, arg3, arg4, arg5) -- Line 110, Named "__call"
		--[[ Upvalues[1]:
			[1]: deepDiffer_upvr (readonly)
		]]
		return deepDiffer_upvr(arg2, arg3, arg4, arg5)
	end;
})