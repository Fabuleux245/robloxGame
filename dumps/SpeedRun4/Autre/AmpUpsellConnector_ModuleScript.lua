-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:09:00
-- Luau version 6, Types version 3
-- Time taken: 0.005856 seconds

local GraphQLServer = script:FindFirstAncestor("GraphQLServer")
local UrlBuilder = require(GraphQLServer.Parent.UrlBuilder).UrlBuilder
local UrlBase = require(GraphQLServer.Parent.UrlBuilder).UrlBase
local Promise_upvr = require(GraphQLServer.Parent.Promise)
local GraphQLError_upvr = require(GraphQLServer.Parent.GraphQL).GraphQLError
local Fetch = require(GraphQLServer.Parent.Fetch)
local fetch_upvr = Fetch.fetch
local Response_upvr = Fetch.Response
local FFlagAmpV2UpsellSupport_upvr = require(GraphQLServer.Parent.SharedFlags).FFlagAmpV2UpsellSupport
local module = {}
local any_new_result1_upvr = UrlBuilder.new({
	base = UrlBase.APIS;
	path = "access-management/v1/feature-access";
	query = {
		featureNames = "{featureNames}";
	};
})
function module.getFeatureAccessFromFeatureNamesList(arg1, arg2) -- Line 30
	--[[ Upvalues[5]:
		[1]: fetch_upvr (readonly)
		[2]: Promise_upvr (readonly)
		[3]: any_new_result1_upvr (readonly)
		[4]: Response_upvr (readonly)
		[5]: GraphQLError_upvr (readonly)
	]]
	if arg2 then
	else
	end
	return Promise_upvr.new(function(arg1_2, arg2_2) -- Line 36
		--[[ Upvalues[5]:
			[1]: arg1 (readonly)
			[2]: any_new_result1_upvr (copied, readonly)
			[3]: fetch_upvr (readonly)
			[4]: Response_upvr (copied, readonly)
			[5]: GraphQLError_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local any_expect_result1_2 = fetch_upvr(any_new_result1_upvr({
			featureNames = table.concat(arg1, ',');
		}), {
			method = "GET";
		}):catch(function() -- Line 40
			--[[ Upvalues[1]:
				[1]: Response_upvr (copied, readonly)
			]]
			return Response_upvr.error()
		end):expect()
		if any_expect_result1_2.status == 304 then
			arg2_2(GraphQLError_upvr.new("Got Response: 304, using cached data instead"))
		else
			if not any_expect_result1_2.ok then
				arg2_2(GraphQLError_upvr.new("Failed to find feature access values"))
				return
			end
			local any_expect_result1_4 = any_expect_result1_2:json():catch(function() -- Line 58
				return nil
			end):expect()
			if not any_expect_result1_4 then
				arg2_2(GraphQLError_upvr.new("Failed to decode HTTP response as JSON for AMP Feature Access API"))
				return
			end
			for _, v in any_expect_result1_4.features do
				table.insert({}, {
					featureName = v.featureName;
					access = v.access;
				})
				local var31
			end
			arg1_2({
				features = var31;
			})
		end
	end)
end
local tbl = {
	base = UrlBase.APIS;
	path = "access-management/v1/upsell-feature-access";
}
if FFlagAmpV2UpsellSupport_upvr then
	local tbl_3 = {{
		name = "featureName";
		value = "{featureName}";
		optional = false;
	}, {
		name = "successfulActions";
		value = "{successfulActions}";
		optional = false;
	}, {
		name = "nameSpace";
		value = "{nameSpace}";
		optional = true;
	}}
else
end
tbl.query = {
	featureName = "{featureName}";
	successfulActions = "{successfulActions}";
}
local any_new_result1_upvr_2 = UrlBuilder.new(tbl)
function module.getUpsellFeatureAccessFromFeatureName(arg1, arg2, arg3, arg4) -- Line 100
	--[[ Upvalues[6]:
		[1]: fetch_upvr (readonly)
		[2]: Promise_upvr (readonly)
		[3]: any_new_result1_upvr_2 (readonly)
		[4]: FFlagAmpV2UpsellSupport_upvr (readonly)
		[5]: Response_upvr (readonly)
		[6]: GraphQLError_upvr (readonly)
	]]
	if arg3 then
	else
	end
	return Promise_upvr.new(function(arg1_3, arg2_3) -- Line 108
		--[[ Upvalues[8]:
			[1]: arg2 (readonly)
			[2]: any_new_result1_upvr_2 (copied, readonly)
			[3]: arg1 (readonly)
			[4]: FFlagAmpV2UpsellSupport_upvr (copied, readonly)
			[5]: arg4 (readonly)
			[6]: fetch_upvr (readonly)
			[7]: Response_upvr (copied, readonly)
			[8]: GraphQLError_upvr (copied, readonly)
		]]
		local tbl_2 = {}
		local var42 = arg1
		tbl_2.featureName = var42
		tbl_2.successfulActions = table.concat(arg2, ',')
		if FFlagAmpV2UpsellSupport_upvr then
			var42 = arg4
		else
			var42 = nil
		end
		tbl_2.nameSpace = var42
		local any_expect_result1_3 = fetch_upvr(any_new_result1_upvr_2(tbl_2), {
			method = "GET";
		}):catch(function() -- Line 116
			--[[ Upvalues[1]:
				[1]: Response_upvr (copied, readonly)
			]]
			return Response_upvr.error()
		end):expect()
		if any_expect_result1_3.status == 304 then
			arg2_3(GraphQLError_upvr.new("Got Response: 304, using cached data instead"))
		else
			if not any_expect_result1_3.ok then
				arg2_3(GraphQLError_upvr.new("Failed to find upsell feature access values"))
				return
			end
			local any_expect_result1 = any_expect_result1_3:json():catch(function() -- Line 134
				return nil
			end):expect()
			if not any_expect_result1 then
				arg2_3(GraphQLError_upvr.new("Failed to decode HTTP response as JSON for AMP Upsell Feature Access API"))
				return
			end
			arg1_3({
				featureName = any_expect_result1.featureName;
				access = any_expect_result1.access;
				recourse = any_expect_result1.recourse;
				recourses = any_expect_result1.recourses;
				shouldPrompt = any_expect_result1.shouldPrompt;
			})
		end
	end)
end
return module