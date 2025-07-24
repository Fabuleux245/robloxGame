-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:01:01
-- Luau version 6, Types version 3
-- Time taken: 0.000887 seconds

local CrossExperience = script:FindFirstAncestor("CrossExperience")
local observeCurrentContextId_upvr = require(CrossExperience.Utils.observeCurrentContextId)
local Constants_upvr = require(CrossExperience.Constants)
return function(arg1) -- Line 6
	--[[ Upvalues[2]:
		[1]: observeCurrentContextId_upvr (readonly)
		[2]: Constants_upvr (readonly)
	]]
	local var6_upvw
	observeCurrentContextId_upvr(function(arg1_2) -- Line 8
		--[[ Upvalues[3]:
			[1]: Constants_upvr (copied, readonly)
			[2]: var6_upvw (read and write)
			[3]: arg1 (readonly)
		]]
		local var7
		if arg1_2 ~= Constants_upvr.AUDIO_FOCUS_MANAGEMENT.CEV.CONTEXT_ID then
			var7 = false
		else
			var7 = true
		end
		if var7 ~= var6_upvw then
			var6_upvw = var7
			arg1(var6_upvw)
		end
	end)
end