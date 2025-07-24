-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:44:48
-- Luau version 6, Types version 3
-- Time taken: 0.002364 seconds

local Parent = script:FindFirstAncestor("TopicContentsRodux").Parent
local OmniRecommendationsContentType_upvr = require(Parent.DiscoveryTypes).OmniRecommendationsContentType
local Result_upvr = require(Parent.Result)
local module_upvr = {
	new = function() -- Line 14, Named "new"
		return {}
	end;
	mock = function(arg1) -- Line 20, Named "mock"
		--[[ Upvalues[1]:
			[1]: OmniRecommendationsContentType_upvr (readonly)
		]]
		local module = {
			contentType = OmniRecommendationsContentType_upvr.Game;
			contentId = arg1 or "149757";
			isSponsored = false;
			isShowSponsoredLabel = module.isSponsored;
			adId = nil;
		}
		return module
	end;
}
function module_upvr.fromGamesApiData(arg1) -- Line 30
	--[[ Upvalues[3]:
		[1]: Result_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: OmniRecommendationsContentType_upvr (readonly)
	]]
	if type(arg1.universeId) ~= "number" and type(arg1.universeId) ~= "string" then
		return Result_upvr.error("TopicContentsEntryModel.fromGamesApiData expects universeId to be a number or a string")
	end
	local any_new_result1_2 = module_upvr.new()
	any_new_result1_2.contentType = OmniRecommendationsContentType_upvr.Game
	any_new_result1_2.contentId = tostring(arg1.universeId)
	any_new_result1_2.isSponsored = arg1.isSponsored
	any_new_result1_2.isShowSponsoredLabel = nil
	if arg1.isShowSponsoredLabel == nil then
		any_new_result1_2.isShowSponsoredLabel = true
	else
		any_new_result1_2.isShowSponsoredLabel = arg1.isShowSponsoredLabel
	end
	any_new_result1_2.adId = arg1.nativeAdData
	return Result_upvr.success(any_new_result1_2)
end
if require(Parent.SharedFlags).FFlagSearchOmniAutocompletePage then
	function module_upvr.fromOmniAutocompleteApi(arg1) -- Line 53
		--[[ Upvalues[3]:
			[1]: Result_upvr (readonly)
			[2]: module_upvr (readonly)
			[3]: OmniRecommendationsContentType_upvr (readonly)
		]]
		if type(arg1.universeId) ~= "number" and type(arg1.universeId) ~= "string" then
			return Result_upvr.error("TopicContentsEntryModel.fromOmniAutocomplete expects universeId to be a number or a string")
		end
		local any_new_result1_3 = module_upvr.new()
		any_new_result1_3.contentType = OmniRecommendationsContentType_upvr.Game
		any_new_result1_3.contentId = tostring(arg1.universeId)
		return Result_upvr.success(any_new_result1_3)
	end
end
function module_upvr.fromExploreApiData(arg1) -- Line 70
	--[[ Upvalues[3]:
		[1]: Result_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: OmniRecommendationsContentType_upvr (readonly)
	]]
	if type(arg1.universeId) ~= "number" and type(arg1.universeId) ~= "string" then
		return Result_upvr.error("TopicContentsEntryModel.fromExploreApiData expects universeId to be a number or a string")
	end
	local any_new_result1 = module_upvr.new()
	any_new_result1.contentType = OmniRecommendationsContentType_upvr.Game
	any_new_result1.contentId = tostring(arg1.universeId)
	any_new_result1.isSponsored = arg1.isSponsored
	any_new_result1.adId = arg1.nativeAdData
	any_new_result1.isShowSponsoredLabel = nil
	return Result_upvr.success(any_new_result1)
end
if require(Parent.SharedFlags).FFlagEnableTopSongsSort then
	function module_upvr.songFromExploreApiData(arg1) -- Line 86
		--[[ Upvalues[3]:
			[1]: Result_upvr (readonly)
			[2]: module_upvr (readonly)
			[3]: OmniRecommendationsContentType_upvr (readonly)
		]]
		if type(arg1.assetId) ~= "number" and type(arg1.assetId) ~= "string" then
			return Result_upvr.error("TopicContentsEntryModel.songFromExploreApiData expects assetId to be a number or a string")
		end
		local any_new_result1_4 = module_upvr.new()
		any_new_result1_4.contentType = OmniRecommendationsContentType_upvr.Song
		any_new_result1_4.contentId = tostring(arg1.assetId)
		any_new_result1_4.isSponsored = false
		return Result_upvr.success(any_new_result1_4)
	end
end
function module_upvr.fromOmniRecommendations(arg1) -- Line 101
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: Result_upvr (readonly)
	]]
	local any_new_result1_5 = module_upvr.new()
	any_new_result1_5.contentType = arg1.contentType
	any_new_result1_5.contentId = tostring(arg1.contentId)
	local var11
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var11 = arg1.contentMetadata.EncryptedAdTrackingData
		return var11
	end
	if not arg1.contentMetadata or not INLINED() then
		var11 = nil
	end
	any_new_result1_5.adId = var11
	var11 = false
	if any_new_result1_5.adId ~= nil then
		if any_new_result1_5.adId == "" then
			var11 = false
		else
			var11 = true
		end
	end
	any_new_result1_5.isSponsored = var11
	var11 = nil
	any_new_result1_5.isShowSponsoredLabel = var11
	var11 = Result_upvr.success(any_new_result1_5)
	return var11
end
return module_upvr