-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:08:24
-- Luau version 6, Types version 3
-- Time taken: 0.000709 seconds

local GenericChallenges = script:FindFirstAncestor("GenericChallenges")
local module_2_upvr = {}
module_2_upvr.__index = module_2_upvr
local constants_upvr = require(GenericChallenges.Utils.constants)
local Base64_upvr = require(GenericChallenges.Parent.AuthCommon).Utils.Base64
local HttpService_upvr = game:GetService("HttpService")
local GenericType_upvr = require(GenericChallenges.Types.GenericType)
function module_2_upvr.new(arg1) -- Line 41
	--[[ Upvalues[5]:
		[1]: constants_upvr (readonly)
		[2]: Base64_upvr (readonly)
		[3]: HttpService_upvr (readonly)
		[4]: GenericType_upvr (readonly)
		[5]: module_2_upvr (readonly)
	]]
	local module = {
		challengeId = arg1[constants_upvr.challengeIdHeader];
	}
	local any_Decode_result1 = Base64_upvr.Decode(arg1[constants_upvr.challengeMetadataHeader])
	module.challengeMetadata = {
		raw = arg1[constants_upvr.challengeMetadataHeader];
		decoded = any_Decode_result1;
		typed = HttpService_upvr:JSONDecode(any_Decode_result1);
	}
	module.challengeType = {
		raw = arg1[constants_upvr.challengeTypeHeader];
		typed = GenericType_upvr.fromRawValue(arg1[constants_upvr.challengeTypeHeader]);
	}
	return setmetatable(module, module_2_upvr)
end
return module_2_upvr