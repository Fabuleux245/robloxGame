-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:03:32
-- Luau version 6, Types version 3
-- Time taken: 0.000974 seconds

local Parent = script.Parent
local getDeepValue_upvr = require(Parent.getDeepValue)
local EnumNetworkStatus_upvr = require(Parent.EnumNetworkStatus)
return function(arg1) -- Line 5
	--[[ Upvalues[2]:
		[1]: getDeepValue_upvr (readonly)
		[2]: EnumNetworkStatus_upvr (readonly)
	]]
	local keyPath_upvr = arg1.keyPath
	return function(arg1_2, arg2) -- Line 8
		--[[ Upvalues[3]:
			[1]: getDeepValue_upvr (copied, readonly)
			[2]: keyPath_upvr (readonly)
			[3]: EnumNetworkStatus_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 24 start (CF ANALYSIS FAILED)
		local var7
		if typeof(arg1_2) ~= "table" then
			var7 = false
		else
			var7 = true
		end
		assert(var7)
		if typeof(arg2) ~= "string" then
			var7 = false
			-- KONSTANTWARNING: GOTO [22] #18
		end
		-- KONSTANTERROR: [0] 1. Error Block 24 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [21] 17. Error Block 26 start (CF ANALYSIS FAILED)
		var7 = true
		assert(var7)
		if 0 >= #arg2 then
			var7 = false
		else
			var7 = true
		end
		assert(var7)
		var7 = arg1_2
		local var3_result1 = getDeepValue_upvr(var7, keyPath_upvr)
		var7 = assert
		var7(var3_result1, string.format("Reducer not found for keyPath: %s. Did you forget to call `installReducer`?", keyPath_upvr))
		var7 = var3_result1[arg2]
		if not var7 then
			var7 = EnumNetworkStatus_upvr.NotStarted
		end
		do
			return var7
		end
		-- KONSTANTERROR: [21] 17. Error Block 26 end (CF ANALYSIS FAILED)
	end
end