-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:08:34
-- Luau version 6, Types version 3
-- Time taken: 0.001042 seconds

local constants_upvr = require(script:FindFirstAncestor("GenericChallenges").Utils.constants)
return function(arg1, arg2) -- Line 7
	--[[ Upvalues[1]:
		[1]: constants_upvr (readonly)
	]]
	local var5 = false
	if arg1 == constants_upvr.forbiddenStatusCode then
		var5 = false
		if arg2[constants_upvr.challengeTypeHeader] ~= nil then
			var5 = false
			if arg2[constants_upvr.challengeIdHeader] ~= nil then
				if arg2[constants_upvr.challengeMetadataHeader] == nil then
					var5 = false
				else
					var5 = true
				end
			end
		end
	end
	return var5
end