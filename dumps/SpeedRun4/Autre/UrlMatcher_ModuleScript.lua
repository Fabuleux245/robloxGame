-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:45:29
-- Luau version 6, Types version 3
-- Time taken: 0.008710 seconds

local Parent = script.Parent.Parent
local Constants_upvr = require(script.Parent.Constants)
local module_upvr = {
	protocolPatterns = {"https?"};
	protocolStrict = false;
	subdomainPatterns = {"www"};
	subdomainStrict = true;
	domainsPatterns = {Constants_upvr.ANY_DOMAIN_PATTERN};
	pathPatterns = nil;
	trimPunctuation = false;
}
local module_2_upvr = {}
module_2_upvr.__index = module_2_upvr
local Cryo_upvr = require(Parent.Cryo)
local Regex_upvr = require(script.Parent.Regex)
local RegExp_upvr = require(Parent.RegExp)
function module_2_upvr.new(arg1) -- Line 66
	--[[ Upvalues[6]:
		[1]: Cryo_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: Regex_upvr (readonly)
		[4]: Constants_upvr (readonly)
		[5]: RegExp_upvr (readonly)
		[6]: module_2_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 23 start (CF ANALYSIS FAILED)
	local var11 = arg1
	if not var11 then
		var11 = {}
	end
	local any_union_result1 = Cryo_upvr.Dictionary.union(module_upvr, var11)
	local var13 = Regex_upvr.oneOf(any_union_result1.protocolPatterns)..Regex_upvr.COLON..Regex_upvr.SLASH..Regex_upvr.SLASH
	local any_negativeLookahead_result1 = Regex_upvr.negativeLookahead(var13)
	local domainsPatterns = any_union_result1.domainsPatterns
	if any_union_result1.pathPatterns ~= nil then
		domainsPatterns = Regex_upvr.oneOf(any_union_result1.pathPatterns)
	else
		domainsPatterns = ""
	end
	if any_union_result1.protocolStrict then
		-- KONSTANTWARNING: GOTO [174] #127
	end
	-- KONSTANTERROR: [0] 1. Error Block 23 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [173] 126. Error Block 25 start (CF ANALYSIS FAILED)
	if any_union_result1.subdomainStrict then
		local any_oneOf_result1 = Regex_upvr.oneOf(Regex_upvr.oneOf(any_union_result1.subdomainPatterns)..Regex_upvr.DOT)
	else
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	end
	local module = {
		_urlPattern = RegExp_upvr(Regex_upvr.capture(Regex_upvr.oneOf({Regex_upvr.negativeLookbehind(Regex_upvr.ALPHANUMERIC), var13}))..Regex_upvr.capture(Regex_upvr.zeroOrOneOf(Regex_upvr.oneOf(any_union_result1.subdomainPatterns)..Regex_upvr.DOT))..Regex_upvr.capture(Regex_upvr.oneOf(domainsPatterns))..Regex_upvr.capture(Regex_upvr.capture(domainsPatterns)..Regex_upvr.zeroOrMore({Regex_upvr.SLASH..Regex_upvr.oneOrMore(any_negativeLookahead_result1..Constants_upvr.PATH_CHAR)})..Regex_upvr.zeroOrOneOf(Regex_upvr.SLASH))..Regex_upvr.capture(Regex_upvr.zeroOrOneOf(Regex_upvr.QUESTION..Regex_upvr.zeroOrMore(any_negativeLookahead_result1..Constants_upvr.QUERY_CHAR)))..Regex_upvr.capture(Regex_upvr.zeroOrOneOf(Regex_upvr.HASH..Regex_upvr.zeroOrMore(any_negativeLookahead_result1..Constants_upvr.FRAGMENT_CHAR)))..Regex_upvr.oneOf({Regex_upvr.lookahead(var13), Regex_upvr.negativeLookahead(Regex_upvr.ALPHANUMERIC), Regex_upvr.STRING_END}), 'm');
		_trimPunctuation = any_union_result1.trimPunctuation;
		match = module_2_upvr.match;
	}
	setmetatable(module, module_2_upvr)
	do
		return module
	end
	-- KONSTANTERROR: [173] 126. Error Block 25 end (CF ANALYSIS FAILED)
end
function module_2_upvr.default() -- Line 108
	--[[ Upvalues[2]:
		[1]: module_2_upvr (readonly)
		[2]: module_upvr (readonly)
	]]
	return module_2_upvr.new(module_upvr)
end
local matchAllRegex_upvr = require(script.Parent.matchAllRegex)
local StringTrim_upvr = require(Parent.StringUtilities).StringTrim
function module_2_upvr.match(arg1, arg2) -- Line 119
	--[[ Upvalues[2]:
		[1]: matchAllRegex_upvr (readonly)
		[2]: StringTrim_upvr (readonly)
	]]
	local var24_upvw = 0
	local module_upvr_2 = {}
	local pcall_result1, pcall_result2 = pcall(function() -- Line 122
		--[[ Upvalues[6]:
			[1]: matchAllRegex_upvr (copied, readonly)
			[2]: arg2 (readonly)
			[3]: arg1 (readonly)
			[4]: var24_upvw (read and write)
			[5]: StringTrim_upvr (copied, readonly)
			[6]: module_upvr_2 (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		for _, v in matchAllRegex_upvr(arg2:lower(), arg1._urlPattern), nil do
			local var34 = var24_upvw + v.index
			var24_upvw = var34 + #v.matchedText - 1
			local var35
			if arg1._trimPunctuation and not v.matchedText:match("%b()$") then
				local var22_result1 = StringTrim_upvr(v.matchedText, "%?%.%!%,%;%:%(%)", {
					right = true;
				})
				if var22_result1 ~= v.matchedText then
					v = matchAllRegex_upvr(var22_result1, arg1._urlPattern)[1]
				end
				var35 = var34 + #var22_result1 - 1
			end
			local unpack_result1, unpack_result2, unpack_result3, unpack_result4, unpack_result5, unpack_result6, unpack_result7 = unpack(v.capturedGroups)
			local any_sub_result1 = arg2:sub(var34, var35)
			local var46 = #unpack_result1 + 1 + #unpack_result2 + #unpack_result3
			local var47 = var46 + #unpack_result4
			local var48 = var47 + #unpack_result6
			local tbl = {
				startIndex = var34;
				endIndex = var35;
				matchedPath = unpack_result5;
			}
			local tbl_2 = {
				fullText = any_sub_result1;
				protocol = StringTrim_upvr(unpack_result1, ":/", {
					right = true;
				});
				subdomain = StringTrim_upvr(unpack_result2, '.', {
					right = true;
				});
				domain = unpack_result3;
				path = any_sub_result1:sub(var46, var47 - 1);
			}
			if any_sub_result1:sub(var47, var48 - 1) ~= "" then
				local _ = {
					left = true;
				}
			else
			end
			tbl_2.query = nil
			if any_sub_result1:sub(var48, var48 + #unpack_result7 - 1) ~= "" then
				local _ = {
					left = true;
				}
			else
			end
			tbl_2.fragment = nil
			tbl.url = tbl_2
			table.insert(module_upvr_2, tbl)
		end
		return module_upvr_2
	end)
	if not pcall_result1 then
		warn("UrlMatcher:match failed: "..tostring(pcall_result2))
		return {}
	end
	local var59 = pcall_result2
	if not var59 then
		var59 = {}
	end
	return var59
end
return module_2_upvr