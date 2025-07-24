-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:44:54
-- Luau version 6, Types version 3
-- Time taken: 0.005883 seconds

local Parent = script:FindFirstAncestor("TopicInfosRodux").Parent
local DiscoveryTypes_upvr = require(Parent.DiscoveryTypes)
local FFlagLuaAppAddTopicInfoDataSource_upvr = require(Parent.SharedFlags).FFlagLuaAppAddTopicInfoDataSource
local tbl_upvr = {
	default = "LuaApp/category/filter_default";
	Featured = "LuaApp/category/filter_featured";
	FriendActivity = "LuaApp/category/filter_friendsplaying";
	MyFavorite = "LuaApp/category/filter_myfavorites";
	MyRecent = "LuaApp/category/filter_continueplaying";
	Popular = "LuaApp/category/filter_popular";
	PopularInCountry = "LuaApp/category/filter_popularnearyou";
	TopGrossing = "LuaApp/category/filter_topearning";
	TopRated = "LuaApp/category/filter_toprated";
	TopRetaining = "LuaApp/category/filter_recommended";
}
local module_upvr = {}
module_upvr.__index = module_upvr
function module_upvr.new() -- Line 37
	--[[ Upvalues[3]:
		[1]: FFlagLuaAppAddTopicInfoDataSource_upvr (readonly)
		[2]: DiscoveryTypes_upvr (readonly)
		[3]: module_upvr (readonly)
	]]
	local module_3 = {}
	local var7
	if FFlagLuaAppAddTopicInfoDataSource_upvr then
		var7 = DiscoveryTypes_upvr.DataSourceType.Unknown
	else
		var7 = nil
	end
	module_3.dataSource = var7
	var7 = setmetatable
	var7(module_3, module_upvr)
	return module_3
end
function module_upvr.mockFromGamesApi(arg1, arg2) -- Line 47
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local module_2 = {}
	module_2.name = arg1
	module_2.displayName = ""
	module_2.token = ""
	module_2.contextUniverseId = ""
	module_2.contextCountryRegionId = ""
	module_2.gameSetTypeId = arg2 or 0
	return module_upvr.fromGamesApi(module_2)
end
function module_upvr.mockFromExploreJsonData(arg1, arg2) -- Line 60
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local module_4 = {
		sortDisplayName = "";
	}
	module_4.sortId = arg1
	module_4.gameSetTargetId = 0
	module_4.gameSetTypeId = 0
	module_4.topicLayoutData = {}
	module_4.treatmentType = arg2
	return module_upvr.fromExploreJsonData(module_4)
end
function module_upvr.mockFromOmniApi(arg1) -- Line 73
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local module = {}
	module.topicId = arg1
	module.topic = ""
	module.treatmentType = ""
	return module_upvr.fromOmniApi(module)
end
function module_upvr.fromGamesApi(arg1) -- Line 82
	--[[ Upvalues[4]:
		[1]: module_upvr (readonly)
		[2]: FFlagLuaAppAddTopicInfoDataSource_upvr (readonly)
		[3]: DiscoveryTypes_upvr (readonly)
		[4]: tbl_upvr (readonly)
	]]
	local any_new_result1 = module_upvr.new()
	if FFlagLuaAppAddTopicInfoDataSource_upvr then
		any_new_result1.dataSource = DiscoveryTypes_upvr.DataSourceType.GamesApi
	end
	any_new_result1.name = arg1.name
	any_new_result1.displayName = arg1.displayName
	any_new_result1.token = arg1.token
	any_new_result1.contextUniverseId = arg1.contextUniverseId
	any_new_result1.contextCountryRegionId = arg1.contextCountryRegionId
	any_new_result1.gameSetTypeId = tostring(arg1.gameSetTypeId)
	any_new_result1.gameSetTargetId = arg1.gameSetTargetId
	any_new_result1.treatmentType = "Carousel"
	if any_new_result1.name ~= nil then
		any_new_result1.displayIcon = tbl_upvr[any_new_result1.name]
	end
	if any_new_result1.displayIcon == nil then
		any_new_result1.displayIcon = tbl_upvr.default
	end
	any_new_result1.uniqueKey = any_new_result1.name
	any_new_result1.analyticsTypeId = any_new_result1.gameSetTypeId
	return any_new_result1
end
local FFlagEnableTopSongsSort_upvr = require(Parent.SharedFlags).FFlagEnableTopSongsSort
function module_upvr.fromExploreJsonData(arg1) -- Line 113
	--[[ Upvalues[5]:
		[1]: module_upvr (readonly)
		[2]: FFlagLuaAppAddTopicInfoDataSource_upvr (readonly)
		[3]: DiscoveryTypes_upvr (readonly)
		[4]: FFlagEnableTopSongsSort_upvr (readonly)
		[5]: tbl_upvr (readonly)
	]]
	local any_new_result1_2 = module_upvr.new()
	if FFlagLuaAppAddTopicInfoDataSource_upvr then
		any_new_result1_2.dataSource = DiscoveryTypes_upvr.DataSourceType.ExploreApi
	end
	any_new_result1_2.displayName = arg1.sortDisplayName
	any_new_result1_2.name = arg1.sortId
	any_new_result1_2.subtitle = arg1.subtitle
	any_new_result1_2.token = ""
	any_new_result1_2.gameSetTargetId = arg1.gameSetTargetId
	any_new_result1_2.gameSetTypeId = tostring(arg1.gameSetTypeId)
	any_new_result1_2.topicLayoutData = arg1.topicLayoutData
	any_new_result1_2.treatmentType = arg1.treatmentType
	any_new_result1_2.appliedFilters = arg1.appliedFilters
	any_new_result1_2.subtitle = arg1.subtitle
	if FFlagEnableTopSongsSort_upvr then
		any_new_result1_2.contentType = arg1.contentType
	end
	if any_new_result1_2.name ~= nil then
		any_new_result1_2.displayIcon = tbl_upvr[any_new_result1_2.name]
	end
	if any_new_result1_2.displayIcon == nil then
		any_new_result1_2.displayIcon = tbl_upvr.default
	end
	any_new_result1_2.uniqueKey = any_new_result1_2.name
	any_new_result1_2.analyticsTypeId = any_new_result1_2.gameSetTypeId
	return any_new_result1_2
end
function module_upvr.fromOmniApi(arg1) -- Line 147
	--[[ Upvalues[3]:
		[1]: module_upvr (readonly)
		[2]: FFlagLuaAppAddTopicInfoDataSource_upvr (readonly)
		[3]: DiscoveryTypes_upvr (readonly)
	]]
	local any_new_result1_4 = module_upvr.new()
	if FFlagLuaAppAddTopicInfoDataSource_upvr then
		any_new_result1_4.dataSource = DiscoveryTypes_upvr.DataSourceType.DiscoveryApi
	end
	any_new_result1_4.displayName = arg1.topic
	any_new_result1_4.topicId = tostring(arg1.topicId)
	any_new_result1_4.subtitle = arg1.subtitle
	any_new_result1_4.treatmentType = arg1.treatmentType
	any_new_result1_4.uniqueKey = any_new_result1_4.topicId
	local topicId = any_new_result1_4.topicId
	any_new_result1_4.analyticsTypeId = topicId
	if FFlagLuaAppAddTopicInfoDataSource_upvr then
		topicId = nil
	else
		topicId = true
	end
	any_new_result1_4.fromOmni = topicId
	return any_new_result1_4
end
if require(Parent.SharedFlags).FFlagSearchOmniAutocompletePage then
	function module_upvr.fromOmniAutocompleteApi(arg1) -- Line 165
		--[[ Upvalues[3]:
			[1]: module_upvr (readonly)
			[2]: FFlagLuaAppAddTopicInfoDataSource_upvr (readonly)
			[3]: DiscoveryTypes_upvr (readonly)
		]]
		local any_new_result1_3 = module_upvr.new()
		if FFlagLuaAppAddTopicInfoDataSource_upvr then
			any_new_result1_3.dataSource = DiscoveryTypes_upvr.DataSourceType.OmniAutocompleteApi
		end
		any_new_result1_3.displayName = arg1.sortDisplayName
		any_new_result1_3.name = arg1.sortId
		local topicLayoutData = arg1.topicLayoutData
		if not topicLayoutData then
			topicLayoutData = {}
		end
		any_new_result1_3.topicLayoutData = topicLayoutData
		any_new_result1_3.uniqueKey = any_new_result1_3.name
		any_new_result1_3.analyticsTypeId = any_new_result1_3.name
		any_new_result1_3.gameSetTypeId = any_new_result1_3.name
		return any_new_result1_3
	end
end
function module_upvr.makeTopSearchTopicKey(arg1, arg2) -- Line 182
	return `{arg1}_{arg2}`
end
function module_upvr.fromTopSearchApi(arg1, arg2) -- Line 186
	--[[ Upvalues[3]:
		[1]: module_upvr (readonly)
		[2]: FFlagLuaAppAddTopicInfoDataSource_upvr (readonly)
		[3]: DiscoveryTypes_upvr (readonly)
	]]
	local any_new_result1_5 = module_upvr.new()
	if FFlagLuaAppAddTopicInfoDataSource_upvr then
		any_new_result1_5.dataSource = DiscoveryTypes_upvr.DataSourceType.SearchApi
	end
	any_new_result1_5.topicId = tostring(arg1.topicId)
	any_new_result1_5.treatmentType = arg1.treatmentType
	local topicLayoutData_2 = arg1.topicLayoutData
	if not topicLayoutData_2 then
		topicLayoutData_2 = {}
	end
	any_new_result1_5.topicLayoutData = topicLayoutData_2
	any_new_result1_5.searchUuid = arg2
	any_new_result1_5.uniqueKey = module_upvr.makeTopSearchTopicKey(any_new_result1_5.searchUuid, any_new_result1_5.topicId)
	any_new_result1_5.analyticsTypeId = any_new_result1_5.uniqueKey
	return any_new_result1_5
end
function module_upvr.isOmni(arg1) -- Line 202
	--[[ Upvalues[2]:
		[1]: FFlagLuaAppAddTopicInfoDataSource_upvr (readonly)
		[2]: DiscoveryTypes_upvr (readonly)
	]]
	if FFlagLuaAppAddTopicInfoDataSource_upvr then
		if arg1.dataSource == DiscoveryTypes_upvr.DataSourceType.DiscoveryApi then
			return true
		end
		return false
	end
	if arg1.fromOmni then
		return true
	end
	return false
end
function module_upvr.isSponsored(arg1) -- Line 218
	if arg1.topicId == "400000000" then
		return true
	end
	if arg1.gameSetTypeId == "27" then
		return true
	end
	return false
end
return module_upvr