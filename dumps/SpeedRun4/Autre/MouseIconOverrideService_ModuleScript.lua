-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:16:49
-- Luau version 6, Types version 3
-- Time taken: 0.001393 seconds

local UserInputService_upvr = game:GetService("UserInputService")
local tbl_upvr = {}
local function _() -- Line 18, Named "update"
	--[[ Upvalues[2]:
		[1]: tbl_upvr (readonly)
		[2]: UserInputService_upvr (readonly)
	]]
	local var3 = tbl_upvr[#tbl_upvr]
	if var3 then
		UserInputService_upvr.OverrideMouseIconBehavior = var3[2]
	else
		UserInputService_upvr.OverrideMouseIconBehavior = Enum.OverrideMouseIconBehavior.None
	end
end
return {
	push = function(arg1, arg2) -- Line 28, Named "push"
		--[[ Upvalues[2]:
			[1]: tbl_upvr (readonly)
			[2]: UserInputService_upvr (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 35 start (CF ANALYSIS FAILED)
		local var5 = true
		if type(arg1) ~= "userdata" then
			if type(arg1) ~= "string" then
				var5 = false
			else
				var5 = true
			end
		end
		assert(var5, "key")
		if typeof(arg2) ~= "EnumItem" then
			var5 = false
			-- KONSTANTWARNING: GOTO [32] #25
		end
		-- KONSTANTERROR: [0] 1. Error Block 35 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [31] 24. Error Block 33 start (CF ANALYSIS FAILED)
		var5 = true
		assert(var5, "behavior")
		if arg2.EnumType ~= Enum.OverrideMouseIconBehavior then
			var5 = false
		else
			var5 = true
		end
		assert(var5, "behavior.EnumType")
		var5 = tbl_upvr
		local _, ipairs_result2_2, _ = ipairs(var5)
		-- KONSTANTERROR: [31] 24. Error Block 33 end (CF ANALYSIS FAILED)
	end;
	pop = function(arg1) -- Line 43, Named "pop"
		--[[ Upvalues[2]:
			[1]: tbl_upvr (readonly)
			[2]: UserInputService_upvr (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 22 start (CF ANALYSIS FAILED)
		local var9 = true
		if type(arg1) ~= "userdata" then
			if type(arg1) ~= "string" then
				var9 = false
			else
				var9 = true
			end
		end
		assert(var9, "key")
		local ipairs_result1, ipairs_result2, ipairs_result3 = ipairs(tbl_upvr)
		-- KONSTANTERROR: [0] 1. Error Block 22 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [34] 27. Error Block 9 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [34] 27. Error Block 9 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [29] 23. Error Block 7 start (CF ANALYSIS FAILED)
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [34.7]
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [34.2147483650]
		-- KONSTANTERROR: [29] 23. Error Block 7 end (CF ANALYSIS FAILED)
	end;
}