-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:09:19
-- Luau version 6, Types version 3
-- Time taken: 0.001512 seconds

local GraphQLServer = script:FindFirstAncestor("GraphQLServer")
local AmpUpsellConnector_upvr = require(GraphQLServer.graphql.connectors.AmpUpsellConnector)
local tbl = {
	UpsellFeatureAccessResponse = {
		featureAccess = function(arg1) -- Line 10, Named "featureAccess"
			return {
				featureName = arg1.featureName;
				access = arg1.access;
				recourse = arg1.recourse;
				recourses = arg1.recourses;
			}
		end;
	};
}
local tbl_2 = {
	getFeatureAccess = function(arg1, arg2, arg3) -- Line 21, Named "getFeatureAccess"
		--[[ Upvalues[1]:
			[1]: AmpUpsellConnector_upvr (readonly)
		]]
		return AmpUpsellConnector_upvr.getFeatureAccessFromFeatureNamesList(arg2.featureNames, arg3.fetchImpl)
	end;
}
local FFlagAmpV2UpsellSupport_upvr = require(GraphQLServer.Parent.SharedFlags).FFlagAmpV2UpsellSupport
function tbl_2.getUpsellFeatureAccess(arg1, arg2, arg3) -- Line 24
	--[[ Upvalues[2]:
		[1]: AmpUpsellConnector_upvr (readonly)
		[2]: FFlagAmpV2UpsellSupport_upvr (readonly)
	]]
	local var8
	if FFlagAmpV2UpsellSupport_upvr then
		var8 = arg2.nameSpace
	else
		var8 = nil
	end
	return AmpUpsellConnector_upvr.getUpsellFeatureAccessFromFeatureName(arg2.featureName, arg2.successfulActions, arg3.fetchImpl, var8)
end
tbl.Query = tbl_2
return {
	default = tbl;
}