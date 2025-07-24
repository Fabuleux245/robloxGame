-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:09:22
-- Luau version 6, Types version 3
-- Time taken: 0.003734 seconds

local module = {}
local OmniFeedConnector = require(script.Parent.Parent.Parent.connectors.OmniFeed.OmniFeedConnector)
local tbl = {
	OmniFeedItem = {
		experiences = function(arg1) -- Line 35, Named "experiences"
			-- KONSTANTERROR: [0] 1. Error Block 40 start (CF ANALYSIS FAILED)
			if not arg1.metadata or not arg1.metadata.Game or not arg1.recommendations then
				return nil
			end
			-- KONSTANTERROR: [0] 1. Error Block 40 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [123] 82. Error Block 32 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [123] 82. Error Block 32 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [25] 18. Error Block 7 start (CF ANALYSIS FAILED)
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [123.9]
			-- KONSTANTERROR: [25] 18. Error Block 7 end (CF ANALYSIS FAILED)
		end;
	};
	OmniFeedMetadata = {
		GameJSON = function(arg1) -- Line 73, Named "GameJSON"
			return arg1.Game
		end;
		CatalogAssetJSON = function(arg1) -- Line 76, Named "CatalogAssetJSON"
			return arg1.CatalogAsset
		end;
		CatalogBundleJSON = function(arg1) -- Line 79, Named "CatalogBundleJSON"
			return arg1.CatalogBundle
		end;
		RecommendedFriendJSON = function(arg1) -- Line 82, Named "RecommendedFriendJSON"
			return arg1.RecommendedFriend
		end;
	};
}
local tbl_3 = {}
local function metadata(arg1) -- Line 87
	return arg1.contentMetadata
end
tbl_3.metadata = metadata
function tbl_3.sortsExpirationTime(arg1) -- Line 90
	if not arg1.sortsRefreshInterval then
		return nil
	end
	return math.floor(tick()) + arg1.sortsRefreshInterval
end
function tbl_3.recommendationsId(arg1) -- Line 96
	return arg1.requestId
end
function tbl_3.globalLayoutData(arg1) -- Line 99
	return arg1.globalLayoutData
end
local Array_upvr = require(script:FindFirstAncestor("GraphQLServer").Parent.LuauPolyfill).Array
function tbl_3.sorts(arg1) -- Line 102
	--[[ Upvalues[1]:
		[1]: Array_upvr (readonly)
	]]
	if not arg1.sorts then
		return nil
	end
	return Array_upvr.map(arg1.sorts, function(arg1_2) -- Line 107
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return {
			topic = arg1_2.topic;
			topicId = arg1_2.topicId;
			treatmentType = arg1_2.treatmentType;
			recommendations = arg1_2.recommendationList;
			metadata = arg1.contentMetadata;
		}
	end)
end
tbl.OmniFeed = tbl_3
tbl.OmniFeedItemWithMetadata = {
	metadata = function(arg1) -- Line 121, Named "metadata"
		return arg1.contentMetadata
	end;
	sort = function(arg1) -- Line 124, Named "sort"
		return {
			topicId = arg1.topicId;
			metadata = arg1.contentMetadata;
			recommendations = arg1.recommendations;
		}
	end;
}
local tbl_2 = {}
local findOmniFeedBySessionId_upvr = OmniFeedConnector.findOmniFeedBySessionId
function tbl_2.omniFeed(arg1, arg2, arg3) -- Line 135
	--[[ Upvalues[1]:
		[1]: findOmniFeedBySessionId_upvr (readonly)
	]]
	return findOmniFeedBySessionId_upvr(arg2, arg3.fetchImpl)
end
local fetchMoreOmniRecommendationMetadata_upvr = OmniFeedConnector.fetchMoreOmniRecommendationMetadata
function tbl_2.refreshOmniFeedItem(arg1, arg2, arg3) -- Line 138
	--[[ Upvalues[1]:
		[1]: fetchMoreOmniRecommendationMetadata_upvr (readonly)
	]]
	return fetchMoreOmniRecommendationMetadata_upvr(arg2, arg3.fetchImpl)
end
tbl.Query = tbl_2
module.default = tbl
return module