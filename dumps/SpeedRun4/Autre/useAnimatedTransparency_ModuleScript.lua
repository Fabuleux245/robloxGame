-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:01:16
-- Luau version 6, Types version 3
-- Time taken: 0.000719 seconds

local useSequentialAnimation_upvr = require(script:FindFirstAncestor("CrossExperienceVoice").Hooks.useSequentialAnimation)
return function(arg1, arg2, arg3) -- Line 5
	--[[ Upvalues[1]:
		[1]: useSequentialAnimation_upvr (readonly)
	]]
	local var2_result1, var2_result2_upvr = useSequentialAnimation_upvr(arg1)
	return var2_result1, function(arg1_2) -- Line 8, Named "animate"
		--[[ Upvalues[3]:
			[1]: var2_result2_upvr (readonly)
			[2]: arg2 (readonly)
			[3]: arg3 (readonly)
		]]
		local tbl_2 = {}
		local tbl = {}
		tbl.value = arg1_2
		tbl.durationInMs = arg2
		tbl.easingStyle = arg3
		tbl_2[1] = tbl
		var2_result2_upvr(tbl_2, nil)
	end
end