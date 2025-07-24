-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:50:31
-- Luau version 6, Types version 3
-- Time taken: 0.001730 seconds

local LuauPolyfill = require(script.Parent.Parent.Parent.LuauPolyfill)
local String_upvr = LuauPolyfill.String
local var5_upvw
local var4_upvw
var4_upvw = 48
local isNaN_upvr = LuauPolyfill.Number.isNaN
local const_number_upvw = 57
function var5_upvw(arg1) -- Line 71
	--[[ Upvalues[3]:
		[1]: isNaN_upvr (readonly)
		[2]: var4_upvw (read and write)
		[3]: const_number_upvw (read and write)
	]]
	local var9 = not isNaN_upvr(arg1)
	if var9 then
		var9 = false
		if var4_upvw <= arg1 then
			if arg1 > const_number_upvw then
				var9 = false
			else
				var9 = true
			end
		end
	end
	return var9
end
return {
	naturalCompare = function(arg1, arg2) -- Line 23, Named "naturalCompare"
		--[[ Upvalues[3]:
			[1]: String_upvr (readonly)
			[2]: var5_upvw (read and write)
			[3]: var4_upvw (read and write)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [89] 78. Error Block 24 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [89] 78. Error Block 24 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [2] 3. Error Block 2 start (CF ANALYSIS FAILED)
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [89.1308]
		-- KONSTANTERROR: [2] 3. Error Block 2 end (CF ANALYSIS FAILED)
	end;
}