-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:08:41
-- Luau version 6, Types version 3
-- Time taken: 0.000863 seconds

local constants_upvr = require(script.Parent.constants)
local Base64_upvr = require(script:FindFirstAncestor("GenericChallenges").Parent.AuthCommon).Utils.Base64
local HttpService_upvr = game:GetService("HttpService")
return function(arg1) -- Line 11
	--[[ Upvalues[3]:
		[1]: constants_upvr (readonly)
		[2]: Base64_upvr (readonly)
		[3]: HttpService_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 20 start (CF ANALYSIS FAILED)
	local var5
	if arg1.challengeId == nil then
		var5 = false
	else
		var5 = true
	end
	assert(var5, "challenge id must not be nil")
	if arg1.challengeType == nil then
		var5 = false
		-- KONSTANTWARNING: GOTO [18] #13
	end
	-- KONSTANTERROR: [0] 1. Error Block 20 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [17] 12. Error Block 22 start (CF ANALYSIS FAILED)
	var5 = true
	assert(var5, "challenge type must not be nil")
	if arg1.metadata == nil then
		var5 = false
	else
		var5 = true
	end
	assert(var5, "metadata must not be nil")
	local module = {}
	var5 = constants_upvr.challengeIdHeader
	module[var5] = arg1.challengeId
	var5 = constants_upvr.challengeTypeHeader
	module[var5] = arg1.challengeType
	var5 = constants_upvr.challengeMetadataHeader
	module[var5] = Base64_upvr.Encode(HttpService_upvr:JSONEncode(arg1.metadata))
	do
		return module
	end
	-- KONSTANTERROR: [17] 12. Error Block 22 end (CF ANALYSIS FAILED)
end