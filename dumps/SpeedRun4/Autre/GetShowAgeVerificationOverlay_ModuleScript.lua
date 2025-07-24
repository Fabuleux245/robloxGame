-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:36:58
-- Luau version 6, Types version 3
-- Time taken: 0.001826 seconds

local VoiceChatCore = script:FindFirstAncestor("VoiceChatCore")
local function createQueryParams_upvr(arg1) -- Line 11, Named "createQueryParams"
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var10
	for i, v in arg1 do
		local var11
		if 0 < var10 then
			var11 = '&'
		else
			var11 = ""
		end
		var10 += 1
	end
	if var10 == 0 then
		return ""
	end
	return '?'..""..var11..i..'='..v
end
local GetFFlagUseMicPermForEnrollment_upvr = require(VoiceChatCore.Parent.SharedFlags).GetFFlagUseMicPermForEnrollment
local Constants_upvr = require(VoiceChatCore.Constants)
return function(arg1, arg2, arg3, arg4) -- Line 21
	--[[ Upvalues[3]:
		[1]: GetFFlagUseMicPermForEnrollment_upvr (readonly)
		[2]: Constants_upvr (readonly)
		[3]: createQueryParams_upvr (readonly)
	]]
	local var15
	if type(arg3) ~= "string" then
		var15 = false
	else
		var15 = true
	end
	assert(var15, "GetShowAgeVerificationOverlay request expects placeId to be a string")
	if type(arg2) ~= "string" then
		var15 = false
	else
		var15 = true
	end
	assert(var15, "GetShowAgeVerificationOverlay request expects universeId to be a string")
	var15 = true
	if type(arg4) ~= "boolean" then
		if type(arg4) ~= "nil" then
			var15 = false
		else
			var15 = true
		end
	end
	assert(var15, "GetShowAgeVerificationOverlay request expects hasMicPermissions to be a boolean or nil")
	var15 = GetFFlagUseMicPermForEnrollment_upvr()
	if var15 then
		if arg4 ~= nil then
			var15 = tostring(not arg4)
			;({}).userHasDisabledMicDevicePermissions = var15
		end
		if arg3 ~= "" and arg3 ~= nil then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			;({}).placeId = arg3
		end
	end
	if GetFFlagUseMicPermForEnrollment_upvr() then
		var15 = string.format
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		var15 = var15("%s/v1/settings/verify/show-age-verification-overlay/%s%s", Constants_upvr.VOICE_URL, arg2, createQueryParams_upvr({}))
		-- KONSTANTWARNING: GOTO [105] #79
	end
	var15 = string.format
	local var16
	var16 = Constants_upvr
	if arg3 ~= "" and arg3 ~= nil then
		var16 = arg2.."?placeId="..arg3
	else
		var16 = arg2
	end
	var15 = var15("%s/v1/settings/verify/show-age-verification-overlay/%s", var16.VOICE_URL, var16)
	var16 = "GET"
	return arg1(var15, var16)
end