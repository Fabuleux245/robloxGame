-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:36:02
-- Luau version 6, Types version 3
-- Time taken: 0.001383 seconds

local Parent = script:FindFirstAncestor("GraphQlShared").Parent
local DiscoveryUtils = require(Parent.DiscoveryUtils)
local OmniRecommendationsPageType_upvr = DiscoveryUtils.OmniRecommendationsPageType
local FFlagLuaAppSupportSduiTreatment_upvr = require(Parent.SharedFlags).FFlagLuaAppSupportSduiTreatment
local AddSystemInfoToArgs_upvr = DiscoveryUtils.AddSystemInfoToArgs
local any_new_result1_upvr = require(Parent.UrlBuilder).UrlBuilder.new({
	base = require(Parent.Http).Url.APIS_URL;
	path = "/discovery-api/omni-recommendation";
})
local HttpService_upvr = game:GetService("HttpService")
return function(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) -- Line 52
	--[[ Upvalues[5]:
		[1]: OmniRecommendationsPageType_upvr (readonly)
		[2]: FFlagLuaAppSupportSduiTreatment_upvr (readonly)
		[3]: AddSystemInfoToArgs_upvr (readonly)
		[4]: any_new_result1_upvr (readonly)
		[5]: HttpService_upvr (readonly)
	]]
	local tbl = {
		pageType = OmniRecommendationsPageType_upvr.fromAppPage(arg2);
	}
	tbl.sessionId = arg3
	tbl.pageToken = arg4
	tbl.supportedTreatmentTypes = arg5
	tbl.requestIntent = arg6
	tbl.topicIds = arg7
	local var11
	if FFlagLuaAppSupportSduiTreatment_upvr then
		var11 = arg8
	else
		var11 = nil
	end
	tbl.sduiTreatmentTypes = var11
	var11 = AddSystemInfoToArgs_upvr
	var11(tbl)
	var11 = any_new_result1_upvr()
	return arg1(var11, "POST", {
		postBody = HttpService_upvr:JSONEncode(tbl);
	})
end