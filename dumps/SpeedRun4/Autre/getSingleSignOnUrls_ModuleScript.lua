-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:21:17
-- Luau version 6, Types version 3
-- Time taken: 0.001635 seconds

local Parent = script:FindFirstAncestor("AuthCommon").Parent
local getAppFeaturePolicies_upvr = require(Parent.UniversalAppPolicy).getAppFeaturePolicies
local FFlagAddLinkedAuthEndpoints_upvr = require(Parent.SharedFlags).FFlagAddLinkedAuthEndpoints
local UrlBuilder_upvr = require(Parent.UrlBuilder).UrlBuilder
return function(arg1) -- Line 27, Named "getSingleSignOnUrls"
	--[[ Upvalues[3]:
		[1]: getAppFeaturePolicies_upvr (readonly)
		[2]: FFlagAddLinkedAuthEndpoints_upvr (readonly)
		[3]: UrlBuilder_upvr (readonly)
	]]
	if arg1 then
		local _ = arg1
	else
	end
	local any_getUrlAuthRoutes_result1 = getAppFeaturePolicies_upvr().getUrlAuthRoutes()
	local module = {}
	if FFlagAddLinkedAuthEndpoints_upvr then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		local any_getLinkedAuthEndpointsEnabled_result1 = getAppFeaturePolicies_upvr().getLinkedAuthEndpointsEnabled()
	end
	if any_getUrlAuthRoutes_result1.account then
		module.account = UrlBuilder_upvr.fromString("auth"..':'..any_getUrlAuthRoutes_result1.account)
	end
	if FFlagAddLinkedAuthEndpoints_upvr and any_getLinkedAuthEndpointsEnabled_result1 and any_getUrlAuthRoutes_result1.linkedLogin then
		module.connect = UrlBuilder_upvr.fromString("auth"..':'..any_getUrlAuthRoutes_result1.linkedLogin)
	elseif any_getUrlAuthRoutes_result1.connect then
		module.connect = UrlBuilder_upvr.fromString("auth"..':'..any_getUrlAuthRoutes_result1.connect)
	end
	if any_getUrlAuthRoutes_result1.disconnect then
		module.disconnect = UrlBuilder_upvr.fromString("auth"..':'..any_getUrlAuthRoutes_result1.disconnect)
	end
	if FFlagAddLinkedAuthEndpoints_upvr and any_getLinkedAuthEndpointsEnabled_result1 and any_getUrlAuthRoutes_result1.externalLogin then
		module.login = UrlBuilder_upvr.fromString("auth"..':'..any_getUrlAuthRoutes_result1.externalLogin)
	elseif any_getUrlAuthRoutes_result1.login then
		module.login = UrlBuilder_upvr.fromString("auth"..':'..any_getUrlAuthRoutes_result1.login)
	end
	if FFlagAddLinkedAuthEndpoints_upvr and any_getLinkedAuthEndpointsEnabled_result1 and any_getUrlAuthRoutes_result1.linkedSignup then
		module.signup = UrlBuilder_upvr.fromString("auth"..':'..any_getUrlAuthRoutes_result1.linkedSignup)
	elseif any_getUrlAuthRoutes_result1.signup then
		module.signup = UrlBuilder_upvr.fromString("auth"..':'..any_getUrlAuthRoutes_result1.signup)
	end
	if FFlagAddLinkedAuthEndpoints_upvr and any_getLinkedAuthEndpointsEnabled_result1 then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		module.linkingPlatform = getAppFeaturePolicies_upvr().getLinkingPlatform()
	end
	return module
end