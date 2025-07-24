-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:04:30
-- Luau version 6, Types version 3
-- Time taken: 0.001124 seconds

local function captureSize_upvr(...) -- Line 30, Named "captureSize"
	return {...}, select('#', ...)
end
return function(arg1) -- Line 34, Named "memoize"
	--[[ Upvalues[1]:
		[1]: captureSize_upvr (readonly)
	]]
	local var2_upvw
	if type(arg1) ~= "function" then
		var2_upvw = false
	else
		var2_upvw = true
	end
	assert(var2_upvw, "memoize requires a function to memoize")
	var2_upvw = nil
	local var4_upvw
	local var5_upvw
	local var6_upvw
	return function(...) -- Line 42
		--[[ Upvalues[6]:
			[1]: var2_upvw (read and write)
			[2]: var4_upvw (read and write)
			[3]: var5_upvw (read and write)
			[4]: var6_upvw (read and write)
			[5]: captureSize_upvr (copied, readonly)
			[6]: arg1 (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 27 start (CF ANALYSIS FAILED)
		local var7
		while 0 < var7 and select(var7, ...) == nil do
			var7 -= 1
		end
		if var7 ~= var2_upvw then
			var4_upvw = {...}
			var2_upvw = var7
			local captureSize_result1, captureSize_result2 = captureSize_upvr(arg1(...))
			var5_upvw = captureSize_result1
			var6_upvw = captureSize_result2
			return unpack(var5_upvw, 1, var6_upvw)
		end
		local const_number = 1
		-- KONSTANTERROR: [0] 1. Error Block 27 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [73] 62. Error Block 11 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [73] 62. Error Block 11 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [49] 42. Error Block 9 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [73.131835]
		-- KONSTANTERROR: [49] 42. Error Block 9 end (CF ANALYSIS FAILED)
	end
end