-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:50:08
-- Luau version 6, Types version 3
-- Time taken: 0.002406 seconds

local Parent = script:FindFirstAncestor("AppChat").Parent
local Constants = require(script.Parent.Constants)
local UrlMatching = require(Parent.UrlMatching)
local Regex = UrlMatching.Regex
local any_zeroOrOneOf_result1_upvr = Regex.zeroOrOneOf(Regex.SLASH..Constants.LOCALE_LANGUAGE_PATTERN..Regex.zeroOrOneOf(Regex.DASH..Constants.LOCALE_COUNTRY_PATTERN))
local any_new_result1_upvr = UrlMatching.UrlProcessor.new({
	domainsPatterns = require(Parent.Cryo).List.map(Constants.ROBLOX_DOMAIN_PATTERNS, function(arg1) -- Line 20
		--[[ Upvalues[1]:
			[1]: any_zeroOrOneOf_result1_upvr (readonly)
		]]
		return arg1..any_zeroOrOneOf_result1_upvr
	end);
	protocolStrict = false;
	subdomainPatterns = {UrlMatching.Constants.ANY_DOMAIN_NAME};
	subdomainStrict = false;
	trimPunctuation = true;
}, require(script.Parent.RobloxUrlMap))
local addMessage_upvr = require(script.Parent.Parent.Parent.Utils.addMessage)
local Text_upvr = require(Parent.AppCommonLib).Text
return function(arg1) -- Line 31
	--[[ Upvalues[3]:
		[1]: any_new_result1_upvr (readonly)
		[2]: addMessage_upvr (readonly)
		[3]: Text_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local module = {}
	local any_process_result1 = any_new_result1_upvr:process(arg1)
	if any_process_result1 == nil or #any_process_result1 == 0 then
		return addMessage_upvr(module, arg1)
	end
	for _, v in any_process_result1 do
		module = addMessage_upvr(module, Text_upvr.Trim(arg1:sub(1, v.startIndex - 1)))
		table.insert(module, v.result)
		local var23
	end
	return addMessage_upvr(module, Text_upvr.Trim(arg1:sub(var23)))
end