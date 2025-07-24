-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:17:01
-- Luau version 6, Types version 3
-- Time taken: 0.005173 seconds

local AmpUpsell = script:FindFirstAncestor("AmpUpsell")
local Parent = AmpUpsell.Parent
local UrlBuilder = require(Parent.UrlBuilder).UrlBuilder
local UrlBase = require(Parent.UrlBuilder).UrlBase
local Fetch = require(Parent.Fetch)
local Promise_upvr = require(Parent.Promise)
local fetch_upvr = Fetch.fetch
local Response_upvr = Fetch.Response
local AccessResponseEnum_upvr = require(AmpUpsell.Common.Enums).AccessResponseEnum
local FFlagAmpV2UpsellSupport_upvr = require(Parent.SharedFlags).FFlagAmpV2UpsellSupport
local tbl_4 = {
	base = UrlBase.APIS;
	path = "access-management/v1/upsell-feature-access";
}
if FFlagAmpV2UpsellSupport_upvr then
	local tbl_7 = {{
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
tbl_4.query = {
	featureName = "{featureName}";
	successfulActions = "{successfulActions}";
}
local any_new_result1_upvr = UrlBuilder.new(tbl_4)
local function _(arg1, arg2, arg3) -- Line 55, Named "getUpsellFeatureAccessFromFeatureName"
	--[[ Upvalues[5]:
		[1]: fetch_upvr (readonly)
		[2]: Promise_upvr (readonly)
		[3]: any_new_result1_upvr (readonly)
		[4]: FFlagAmpV2UpsellSupport_upvr (readonly)
		[5]: Response_upvr (readonly)
	]]
	return Promise_upvr.new(function(arg1_2, arg2_2) -- Line 61
		--[[ Upvalues[7]:
			[1]: arg2 (readonly)
			[2]: any_new_result1_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: FFlagAmpV2UpsellSupport_upvr (copied, readonly)
			[5]: arg3 (readonly)
			[6]: fetch_upvr (readonly)
			[7]: Response_upvr (copied, readonly)
		]]
		local tbl_3 = {}
		local var22 = arg1
		tbl_3.featureName = var22
		tbl_3.successfulActions = table.concat(arg2, ',')
		if FFlagAmpV2UpsellSupport_upvr then
			var22 = arg3
		else
			var22 = nil
		end
		tbl_3.nameSpace = var22
		local any_expect_result1_7 = fetch_upvr(any_new_result1_upvr(tbl_3), {
			method = "GET";
		}):catch(function() -- Line 69
			--[[ Upvalues[1]:
				[1]: Response_upvr (copied, readonly)
			]]
			return Response_upvr.error()
		end):expect()
		if any_expect_result1_7.status == 304 then
			arg2_2("Got Response: 304")
		else
			if not any_expect_result1_7.ok then
				arg2_2("Failed to find upsell feature access values")
				return
			end
			local any_expect_result1_2 = any_expect_result1_7:json():catch(function() -- Line 87
				return nil
			end):expect()
			if not any_expect_result1_2 then
				arg2_2("Failed to decode HTTP response as JSON for AMP Upsell Feature Access API")
				return
			end
			arg1_2({
				access = any_expect_result1_2.access;
				recourse = any_expect_result1_2.recourse;
				recourses = any_expect_result1_2.recourses;
				shouldPrompt = any_expect_result1_2.shouldPrompt;
			})
		end
	end)
end
local any_new_result1_upvr_2 = UrlBuilder.new({
	base = UrlBase.APIS;
	path = "access-management/v1/feature-access";
	query = {
		featureNames = "{featureNames}";
	};
})
local gql_upvr = require(Parent.ApolloClient).gql
return {
	upsellFeatureAccess = function(arg1, arg2, arg3) -- Line 106, Named "upsellFeatureAccess"
		--[[ Upvalues[6]:
			[1]: FFlagAmpV2UpsellSupport_upvr (readonly)
			[2]: fetch_upvr (readonly)
			[3]: Promise_upvr (readonly)
			[4]: any_new_result1_upvr (readonly)
			[5]: Response_upvr (readonly)
			[6]: AccessResponseEnum_upvr (readonly)
		]]
		local var29_upvr
		if FFlagAmpV2UpsellSupport_upvr then
			var29_upvr = arg3
		else
			var29_upvr = nil
		end
		return Promise_upvr.new(function(arg1_3, arg2_3) -- Line 61
			--[[ Upvalues[7]:
				[1]: arg2 (readonly)
				[2]: any_new_result1_upvr (copied, readonly)
				[3]: arg1 (readonly)
				[4]: FFlagAmpV2UpsellSupport_upvr (copied, readonly)
				[5]: var29_upvr (readonly)
				[6]: fetch_upvr (readonly)
				[7]: Response_upvr (copied, readonly)
			]]
			local tbl_2 = {}
			local var32 = arg1
			tbl_2.featureName = var32
			tbl_2.successfulActions = table.concat(arg2, ',')
			if FFlagAmpV2UpsellSupport_upvr then
				var32 = var29_upvr
			else
				var32 = nil
			end
			tbl_2.nameSpace = var32
			local any_expect_result1 = fetch_upvr(any_new_result1_upvr(tbl_2), {
				method = "GET";
			}):catch(function() -- Line 69
				--[[ Upvalues[1]:
					[1]: Response_upvr (copied, readonly)
				]]
				return Response_upvr.error()
			end):expect()
			if any_expect_result1.status == 304 then
				arg2_3("Got Response: 304")
			else
				if not any_expect_result1.ok then
					arg2_3("Failed to find upsell feature access values")
					return
				end
				local any_expect_result1_3 = any_expect_result1:json():catch(function() -- Line 87
					return nil
				end):expect()
				if not any_expect_result1_3 then
					arg2_3("Failed to decode HTTP response as JSON for AMP Upsell Feature Access API")
					return
				end
				arg1_3({
					access = any_expect_result1_3.access;
					recourse = any_expect_result1_3.recourse;
					recourses = any_expect_result1_3.recourses;
					shouldPrompt = any_expect_result1_3.shouldPrompt;
				})
			end
		end):catch(function(arg1_4) -- Line 108
			--[[ Upvalues[1]:
				[1]: AccessResponseEnum_upvr (copied, readonly)
			]]
			return {
				access = AccessResponseEnum_upvr.Error;
			}
		end):expect()
	end;
	upsellFeatureAccessGql = function(arg1, arg2, arg3, arg4) -- Line 172, Named "upsellFeatureAccessGql"
		--[[ Upvalues[3]:
			[1]: gql_upvr (readonly)
			[2]: FFlagAmpV2UpsellSupport_upvr (readonly)
			[3]: AccessResponseEnum_upvr (readonly)
		]]
		local tbl_6 = {
			query = gql_upvr(require(script.Parent.GetUpsellFeatureAccess));
		}
		local tbl = {}
		tbl.featureName = arg2
		local tbl_5 = {}
		tbl.successfulActions = tbl_5
		if FFlagAmpV2UpsellSupport_upvr then
			tbl_5 = arg4
		else
			tbl_5 = nil
		end
		tbl.nameSpace = tbl_5
		tbl_6.variables = tbl
		tbl_6.fetchPolicy = "network-only"
		local any_expect_result1_4 = arg1:query(tbl_6):catch(function(arg1_7) -- Line 190
			--[[ Upvalues[1]:
				[1]: AccessResponseEnum_upvr (copied, readonly)
			]]
			return {
				access = AccessResponseEnum_upvr.Error;
			}
		end):expect()
		if any_expect_result1_4.data and any_expect_result1_4.data.getUpsellFeatureAccess.featureAccess then
			return any_expect_result1_4.data.getUpsellFeatureAccess.featureAccess
		end
		return {
			access = AccessResponseEnum_upvr.Error;
		}
	end;
	getFeatureAccess = function(arg1) -- Line 117, Named "getFeatureAccess"
		--[[ Upvalues[5]:
			[1]: fetch_upvr (readonly)
			[2]: Promise_upvr (readonly)
			[3]: any_new_result1_upvr_2 (readonly)
			[4]: Response_upvr (readonly)
			[5]: AccessResponseEnum_upvr (readonly)
		]]
		return Promise_upvr.new(function(arg1_5, arg2) -- Line 119
			--[[ Upvalues[4]:
				[1]: arg1 (readonly)
				[2]: any_new_result1_upvr_2 (copied, readonly)
				[3]: fetch_upvr (readonly)
				[4]: Response_upvr (copied, readonly)
			]]
			-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
			local any_expect_result1_5 = fetch_upvr(any_new_result1_upvr_2({
				featureNames = table.concat(arg1, ',');
			}), {
				method = "GET";
			}):catch(function() -- Line 123
				--[[ Upvalues[1]:
					[1]: Response_upvr (copied, readonly)
				]]
				return Response_upvr.error()
			end):expect()
			if any_expect_result1_5.status == 304 then
				arg2("Got Response: 304")
			else
				if not any_expect_result1_5.ok then
					arg2("Failed to find get feature access values")
					return
				end
				local any_expect_result1_6 = any_expect_result1_5:json():catch(function() -- Line 141
					return nil
				end):expect()
				if not any_expect_result1_6 then
					arg2("Failed to decode HTTP response as JSON for AMP Upsell Feature Access API")
					return
				end
				for _, v in any_expect_result1_6.features do
					table.insert({}, {
						feature = v.featureName;
						access = v.access;
					})
					local var59
				end
				arg1_5({
					featureAccessList = var59;
				})
			end
		end):catch(function(arg1_6) -- Line 164
			--[[ Upvalues[1]:
				[1]: AccessResponseEnum_upvr (copied, readonly)
			]]
			return {
				access = AccessResponseEnum_upvr.Error;
			}
		end):expect()
	end;
}