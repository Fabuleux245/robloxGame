-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:15:03
-- Luau version 6, Types version 3
-- Time taken: 0.000894 seconds

local ReactIs_upvr = require(script:FindFirstAncestor("UsageTracker").Parent.ReactIs)
return function(arg1) -- Line 5, Named "isReactComponent"
	--[[ Upvalues[1]:
		[1]: ReactIs_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 21 start (CF ANALYSIS FAILED)
	local pcall_result1, pcall_result2 = pcall(ReactIs_upvr.isValidElementType, arg1)
	if pcall_result1 and pcall_result2 then
		local var4
		if typeof(arg1) == "function" then
			var4 = 'a'
			local info, NONE = debug.info(arg1, var4)
			if string.sub(debug.info(arg1, 'n'), 1, 3) ~= "use" then
				var4 = false
			else
				var4 = true
			end
			if info == 1 and not NONE and not var4 then
				do
					return true
				end
				-- KONSTANTWARNING: GOTO [52] #42
			end
		elseif typeof(arg1) == "table" then
			return true
		end
	end
	-- KONSTANTERROR: [0] 1. Error Block 21 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [52] 42. Error Block 14 start (CF ANALYSIS FAILED)
	do
		return false
	end
	-- KONSTANTERROR: [52] 42. Error Block 14 end (CF ANALYSIS FAILED)
end