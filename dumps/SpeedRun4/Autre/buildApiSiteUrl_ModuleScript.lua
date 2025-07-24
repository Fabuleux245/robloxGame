-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:28:15
-- Luau version 6, Types version 3
-- Time taken: 0.002385 seconds

local ContentProvider_upvr = game:GetService("ContentProvider")
local _, parseBaseUrlInformation_result2, parseBaseUrlInformation_result3_upvr = (function() -- Line 4, Named "parseBaseUrlInformation"
	--[[ Upvalues[1]:
		[1]: ContentProvider_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 23 start (CF ANALYSIS FAILED)
	local BaseUrl = ContentProvider_upvr.BaseUrl
	local var3
	if BaseUrl:sub(#BaseUrl) == '/' then
		var3 = #BaseUrl - 1
		BaseUrl = BaseUrl:sub(1, var3)
	end
	local _, any_find_result2_2 = BaseUrl:find("://")
	if type(any_find_result2_2) ~= "number" then
		var3 = false
	else
		var3 = true
	end
	assert(var3, "Expected schemeEnd to be a number")
	local any_find_result1, any_find_result2 = BaseUrl:find("%.", any_find_result2_2 + 1)
	if type(any_find_result1) ~= "number" then
		-- KONSTANTWARNING: GOTO [49] #38
	end
	-- KONSTANTERROR: [0] 1. Error Block 23 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [48] 37. Error Block 25 start (CF ANALYSIS FAILED)
	assert(true, "Expected prefixIndex to be a number")
	if type(any_find_result2) ~= "number" then
	else
	end
	assert(true, "Expected prefixEnd to be a number")
	do
		return BaseUrl, BaseUrl:sub(any_find_result2_2 + 1, any_find_result1 - 1), BaseUrl:sub(any_find_result2 + 1)
	end
	-- KONSTANTERROR: [48] 37. Error Block 25 end (CF ANALYSIS FAILED)
end)()
return function(arg1) -- Line 34
	--[[ Upvalues[1]:
		[1]: parseBaseUrlInformation_result3_upvr (readonly)
	]]
	local var12
	if type(arg1) ~= "string" then
		var12 = false
	else
		var12 = true
	end
	assert(var12, "siteName must be a string")
	var12 = "https://%s.%s"
	return string.format(var12, arg1, parseBaseUrlInformation_result3_upvr)
end