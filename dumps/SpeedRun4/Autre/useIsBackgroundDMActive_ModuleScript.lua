-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:01:20
-- Luau version 6, Types version 3
-- Time taken: 0.000717 seconds

local useBackgroundExperience_upvr = require(script:FindFirstAncestor("CrossExperienceVoice").Hooks.useBackgroundExperience)
return function() -- Line 5
	--[[ Upvalues[1]:
		[1]: useBackgroundExperience_upvr (readonly)
	]]
	local var2_result1 = useBackgroundExperience_upvr()
	local var4 = var2_result1
	if var4 then
		var4 = var2_result1.jobId
	end
	local var5 = false
	if var4 ~= nil then
		if var4 == "" then
			var5 = false
		else
			var5 = true
		end
	end
	return var5
end