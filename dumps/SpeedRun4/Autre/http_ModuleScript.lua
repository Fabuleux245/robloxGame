-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:58:51
-- Luau version 6, Types version 3
-- Time taken: 0.028865 seconds

local HttpService_upvr = game:GetService("HttpService")
local HttpRbxApiService_upvr = game:GetService("HttpRbxApiService")
local Modules = game:GetService("CoreGui").RobloxGui.Modules
local Utility_upvr = require(Modules.Shell.Utility)
local module = {}
local string_gsub_result1_upvw = string.gsub(string.gsub(game:GetService("ContentProvider").BaseUrl:lower(), "/m.", "/www."), "http://", "https://")
module.BaseUrl = string_gsub_result1_upvw
module.AssetGameBaseUrl = string.gsub(string_gsub_result1_upvw, "https://www.", "https://assetgame.")
local function _(arg1) -- Line 47, Named "decodeJSON"
	--[[ Upvalues[1]:
		[1]: HttpService_upvr (readonly)
	]]
	if arg1 == nil or #arg1 == 0 then
		return nil
	end
	local pcall_result1_52, pcall_result2_62 = pcall(function() -- Line 52
		--[[ Upvalues[2]:
			[1]: HttpService_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		return HttpService_upvr:JSONDecode(arg1)
	end)
	if not pcall_result1_52 then
		return nil
	end
	return pcall_result2_62
end
local function _(arg1, arg2) -- Line 62, Named "rbxGetAsync"
	--[[ Upvalues[1]:
		[1]: HttpService_upvr (readonly)
	]]
	local pcall_result1_26, pcall_result2_65_upvr = pcall(function() -- Line 63
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return game:HttpGetAsync(arg1)
	end)
	if not pcall_result1_26 then
		return nil
	end
	if arg2 then
		return pcall_result2_65_upvr
	end
	if pcall_result2_65_upvr == nil or #pcall_result2_65_upvr == 0 then
		return nil
	end
	local pcall_result1_31, pcall_result2_30 = pcall(function() -- Line 52
		--[[ Upvalues[2]:
			[1]: HttpService_upvr (copied, readonly)
			[2]: pcall_result2_65_upvr (readonly)
		]]
		return HttpService_upvr:JSONDecode(pcall_result2_65_upvr)
	end)
	if not pcall_result1_31 then
		return nil
	end
	return pcall_result2_30
end
local function _(arg1, arg2, arg3) -- Line 77, Named "rbxPostAsync"
	--[[ Upvalues[1]:
		[1]: HttpService_upvr (readonly)
	]]
	local pcall_result1_11, pcall_result2_3_upvr = pcall(function() -- Line 78
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: arg2 (readonly)
			[3]: arg3 (readonly)
		]]
		return game:HttpPostAsync(arg1, arg2, arg3)
	end)
	if not pcall_result1_11 then
		return nil
	end
	if pcall_result2_3_upvr == nil or #pcall_result2_3_upvr == 0 then
		return nil
	end
	local pcall_result1_45, pcall_result2_20 = pcall(function() -- Line 52
		--[[ Upvalues[2]:
			[1]: HttpService_upvr (copied, readonly)
			[2]: pcall_result2_3_upvr (readonly)
		]]
		return HttpService_upvr:JSONDecode(pcall_result2_3_upvr)
	end)
	if not pcall_result1_45 then
		return nil
	end
	return pcall_result2_20
end
local function _(arg1) -- Line 89, Named "rbxApiGetAsync"
	--[[ Upvalues[2]:
		[1]: HttpRbxApiService_upvr (readonly)
		[2]: HttpService_upvr (readonly)
	]]
	local pcall_result1_6, pcall_result2_34_upvr = pcall(function() -- Line 90
		--[[ Upvalues[2]:
			[1]: HttpRbxApiService_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		return HttpRbxApiService_upvr:GetAsync(arg1)
	end)
	if not pcall_result1_6 then
		return nil
	end
	if pcall_result2_34_upvr == nil or #pcall_result2_34_upvr == 0 then
		return nil
	end
	local pcall_result1_9, pcall_result2_26 = pcall(function() -- Line 52
		--[[ Upvalues[2]:
			[1]: HttpService_upvr (copied, readonly)
			[2]: pcall_result2_34_upvr (readonly)
		]]
		return HttpService_upvr:JSONDecode(pcall_result2_34_upvr)
	end)
	if not pcall_result1_9 then
		return nil
	end
	return pcall_result2_26
end
local function _(arg1, arg2, arg3, arg4) -- Line 101, Named "rbxApiPostAsync"
	--[[ Upvalues[2]:
		[1]: HttpRbxApiService_upvr (readonly)
		[2]: HttpService_upvr (readonly)
	]]
	local pcall_result1_70, pcall_result2_71_upvr = pcall(function() -- Line 102
		--[[ Upvalues[5]:
			[1]: HttpRbxApiService_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: arg2 (readonly)
			[4]: arg3 (readonly)
			[5]: arg4 (readonly)
		]]
		return HttpRbxApiService_upvr:PostAsync(arg1, arg2, arg3, arg4)
	end)
	if not pcall_result1_70 then
		return nil
	end
	if pcall_result2_71_upvr == nil or #pcall_result2_71_upvr == 0 then
		return nil
	end
	local pcall_result1_38, pcall_result2_8 = pcall(function() -- Line 52
		--[[ Upvalues[2]:
			[1]: HttpService_upvr (copied, readonly)
			[2]: pcall_result2_71_upvr (readonly)
		]]
		return HttpService_upvr:JSONDecode(pcall_result2_71_upvr)
	end)
	if not pcall_result1_38 then
		return nil
	end
	return pcall_result2_8
end
local function _(arg1, arg2, arg3, arg4) -- Line 113, Named "rbxApiPostAsyncFullUrl"
	--[[ Upvalues[2]:
		[1]: HttpRbxApiService_upvr (readonly)
		[2]: HttpService_upvr (readonly)
	]]
	local pcall_result1_19, pcall_result2_12_upvr = pcall(function() -- Line 114
		--[[ Upvalues[5]:
			[1]: HttpRbxApiService_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: arg2 (readonly)
			[4]: arg3 (readonly)
			[5]: arg4 (readonly)
		]]
		return HttpRbxApiService_upvr:PostAsyncFullUrl(arg1, arg2, arg3, arg4)
	end)
	if not pcall_result1_19 then
		return nil
	end
	if pcall_result2_12_upvr == nil or #pcall_result2_12_upvr == 0 then
		return nil
	end
	local pcall_result1_68, pcall_result2_35 = pcall(function() -- Line 52
		--[[ Upvalues[2]:
			[1]: HttpService_upvr (copied, readonly)
			[2]: pcall_result2_12_upvr (readonly)
		]]
		return HttpService_upvr:JSONDecode(pcall_result2_12_upvr)
	end)
	if not pcall_result1_68 then
		return nil
	end
	return pcall_result2_35
end
local function _(arg1) -- Line 125, Named "rbxRequestInternal"
	--[[ Upvalues[2]:
		[1]: Utility_upvr (readonly)
		[2]: HttpService_upvr (readonly)
	]]
	local var40_upvw
	local any_Signal_result1_upvr_2 = Utility_upvr.Signal()
	HttpService_upvr:RequestInternal(arg1):Start(function(arg1_2, arg2) -- Line 130
		--[[ Upvalues[3]:
			[1]: var40_upvw (read and write)
			[2]: HttpService_upvr (copied, readonly)
			[3]: any_Signal_result1_upvr_2 (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 34 start (CF ANALYSIS FAILED)
		if not arg1_2 then
			-- KONSTANTWARNING: GOTO [38] #29
		end
		-- KONSTANTERROR: [0] 1. Error Block 34 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [2] 3. Error Block 35 start (CF ANALYSIS FAILED)
		if arg2.StatusCode == 401 then
		elseif arg2.StatusCode >= 200 then
			local StatusCode_4 = arg2.StatusCode
			if 400 <= StatusCode_4 then
			else
				local Body_upvr_6 = arg2.Body
				if Body_upvr_6 == nil or #Body_upvr_6 == 0 then
					StatusCode_4 = nil
				else
					local pcall_result1_44, pcall_result2_15 = pcall(function() -- Line 52
						--[[ Upvalues[2]:
							[1]: HttpService_upvr (copied, readonly)
							[2]: Body_upvr_6 (readonly)
						]]
						return HttpService_upvr:JSONDecode(Body_upvr_6)
					end)
					if not pcall_result1_44 then
						StatusCode_4 = nil
					else
						StatusCode_4 = pcall_result2_15
					end
				end
				var40_upvw = StatusCode_4
			end
		end
		any_Signal_result1_upvr_2:fire()
		-- KONSTANTERROR: [2] 3. Error Block 35 end (CF ANALYSIS FAILED)
	end)
	any_Signal_result1_upvr_2:wait()
	return var40_upvw
end
local function buildServiceUrl_upvr(arg1) -- Line 145, Named "buildServiceUrl"
	--[[ Upvalues[1]:
		[1]: string_gsub_result1_upvw (read and write)
	]]
	return string.gsub(string_gsub_result1_upvw, "https://www.", "https://"..arg1..'.')
end
local function _(arg1) -- Line 149, Named "isStringNilOrEmpty"
	local var48 = true
	if arg1 ~= nil then
		if #arg1 ~= 0 then
			var48 = false
		else
			var48 = true
		end
	end
	return var48
end
function module.GetGameSortsAsync2() -- Line 195
	--[[ Upvalues[2]:
		[1]: buildServiceUrl_upvr (readonly)
		[2]: HttpService_upvr (readonly)
	]]
	local formatted_upvr_21 = string.format("%sv1/games/sorts?model.gameSortsContext=GamesAllSorts", buildServiceUrl_upvr("games"))
	local pcall_result1_42, pcall_result2_31_upvr = pcall(function() -- Line 63
		--[[ Upvalues[1]:
			[1]: formatted_upvr_21 (readonly)
		]]
		return game:HttpGetAsync(formatted_upvr_21)
	end)
	if not pcall_result1_42 then
		return nil
	end
	if pcall_result2_31_upvr == nil or #pcall_result2_31_upvr == 0 then
		return nil
	end
	local pcall_result1, pcall_result2_51 = pcall(function() -- Line 52
		--[[ Upvalues[2]:
			[1]: HttpService_upvr (copied, readonly)
			[2]: pcall_result2_31_upvr (readonly)
		]]
		return HttpService_upvr:JSONDecode(pcall_result2_31_upvr)
	end)
	if not pcall_result1 then
		return nil
	end
	return pcall_result2_51
end
function module.GetCuratedSortAsync(arg1, arg2) -- Line 238
	--[[ Upvalues[2]:
		[1]: string_gsub_result1_upvw (read and write)
		[2]: HttpService_upvr (readonly)
	]]
	local formatted_upvr_20 = string.format("%sgames/set?GameSetTargetId=%d&MaxRows=%d", string_gsub_result1_upvw, arg1, arg2)
	local pcall_result1_56, pcall_result2_4_upvr = pcall(function() -- Line 63
		--[[ Upvalues[1]:
			[1]: formatted_upvr_20 (readonly)
		]]
		return game:HttpGetAsync(formatted_upvr_20)
	end)
	if not pcall_result1_56 then
		return nil
	end
	if pcall_result2_4_upvr == nil or #pcall_result2_4_upvr == 0 then
		return nil
	end
	local pcall_result1_47, pcall_result2_37 = pcall(function() -- Line 52
		--[[ Upvalues[2]:
			[1]: HttpService_upvr (copied, readonly)
			[2]: pcall_result2_4_upvr (readonly)
		]]
		return HttpService_upvr:JSONDecode(pcall_result2_4_upvr)
	end)
	if not pcall_result1_47 then
		return nil
	end
	return pcall_result2_37
end
function module.GetCuratedSortByUrlAsync(arg1) -- Line 246
	--[[ Upvalues[1]:
		[1]: HttpService_upvr (readonly)
	]]
	local pcall_result1_2, pcall_result2_61_upvr = pcall(function() -- Line 63
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return game:HttpGetAsync(arg1)
	end)
	if not pcall_result1_2 then
		return nil
	end
	if pcall_result2_61_upvr == nil or #pcall_result2_61_upvr == 0 then
		return nil
	end
	local pcall_result1_43, pcall_result2_70 = pcall(function() -- Line 52
		--[[ Upvalues[2]:
			[1]: HttpService_upvr (copied, readonly)
			[2]: pcall_result2_61_upvr (readonly)
		]]
		return HttpService_upvr:JSONDecode(pcall_result2_61_upvr)
	end)
	if not pcall_result1_43 then
		return nil
	end
	return pcall_result2_70
end
function module.GetUserPlacesAsync(arg1, arg2, arg3) -- Line 280
	--[[ Upvalues[2]:
		[1]: string_gsub_result1_upvw (read and write)
		[2]: HttpService_upvr (readonly)
	]]
	local formatted_upvr_11 = string.format("%sgames/list-users-games-json?userid=%d&startIndex=%d&pageSize=%d", string_gsub_result1_upvw, arg3, arg1, arg2)
	local pcall_result1_35, pcall_result2_68_upvr = pcall(function() -- Line 63
		--[[ Upvalues[1]:
			[1]: formatted_upvr_11 (readonly)
		]]
		return game:HttpGetAsync(formatted_upvr_11)
	end)
	if not pcall_result1_35 then
		return nil
	end
	if pcall_result2_68_upvr == nil or #pcall_result2_68_upvr == 0 then
		return nil
	end
	local pcall_result1_30, pcall_result2_36 = pcall(function() -- Line 52
		--[[ Upvalues[2]:
			[1]: HttpService_upvr (copied, readonly)
			[2]: pcall_result2_68_upvr (readonly)
		]]
		return HttpService_upvr:JSONDecode(pcall_result2_68_upvr)
	end)
	if not pcall_result1_30 then
		return nil
	end
	return pcall_result2_36
end
function module.SearchGamesAsync(arg1, arg2, arg3) -- Line 288
	--[[ Upvalues[2]:
		[1]: string_gsub_result1_upvw (read and write)
		[2]: HttpService_upvr (readonly)
	]]
	local formatted_upvr_15 = string.format("%sgames/list-json?keyword=%s&StartRows=%d&MaxRows=%d&filterByDeviceType=true", string_gsub_result1_upvw, HttpService_upvr:UrlEncode(arg3), arg1, arg2)
	local pcall_result1_37, pcall_result2_19_upvr = pcall(function() -- Line 63
		--[[ Upvalues[1]:
			[1]: formatted_upvr_15 (readonly)
		]]
		return game:HttpGetAsync(formatted_upvr_15)
	end)
	if not pcall_result1_37 then
		return nil
	end
	if pcall_result2_19_upvr == nil or #pcall_result2_19_upvr == 0 then
		return nil
	end
	local pcall_result1_24, pcall_result2_10 = pcall(function() -- Line 52
		--[[ Upvalues[2]:
			[1]: HttpService_upvr (copied, readonly)
			[2]: pcall_result2_19_upvr (readonly)
		]]
		return HttpService_upvr:JSONDecode(pcall_result2_19_upvr)
	end)
	if not pcall_result1_24 then
		return nil
	end
	return pcall_result2_10
end
function module.SearchGamesAsync2(arg1, arg2, arg3) -- Line 296
	--[[ Upvalues[2]:
		[1]: string_gsub_result1_upvw (read and write)
		[2]: HttpService_upvr (readonly)
	]]
	local formatted_upvr_4 = string.format("%sv1/games/list?model.keyword=%s&model.startRows=%d&model.maxRows=%d", string.gsub(string_gsub_result1_upvw, "https://www.", "https://".."games"..'.'), HttpService_upvr:UrlEncode(arg3), arg1, arg2)
	local pcall_result1_69, pcall_result2_55_upvr = pcall(function() -- Line 63
		--[[ Upvalues[1]:
			[1]: formatted_upvr_4 (readonly)
		]]
		return game:HttpGetAsync(formatted_upvr_4)
	end)
	if not pcall_result1_69 then
		return nil
	end
	if pcall_result2_55_upvr == nil or #pcall_result2_55_upvr == 0 then
		return nil
	end
	local pcall_result1_72, pcall_result2_58 = pcall(function() -- Line 52
		--[[ Upvalues[2]:
			[1]: HttpService_upvr (copied, readonly)
			[2]: pcall_result2_55_upvr (readonly)
		]]
		return HttpService_upvr:JSONDecode(pcall_result2_55_upvr)
	end)
	if not pcall_result1_72 then
		return nil
	end
	return pcall_result2_58
end
function module.GetSortAsync2(arg1, arg2, arg3, arg4) -- Line 348
	--[[ Upvalues[2]:
		[1]: string_gsub_result1_upvw (read and write)
		[2]: HttpService_upvr (readonly)
	]]
	local formatted_upvr_14 = string.format("%sv1/games/list?model.sortToken=%s&model.startRows=%d&model.maxRows=%d", string.gsub(string_gsub_result1_upvw, "https://www.", "https://".."games"..'.'), HttpService_upvr:UrlEncode(arg3), arg1, arg2)
	if arg4 then
		formatted_upvr_14 = string.format("%s&model.timeFilter=%s", formatted_upvr_14, arg4)
	end
	local pcall_result1_12, pcall_result2_59_upvr = pcall(function() -- Line 63
		--[[ Upvalues[1]:
			[1]: formatted_upvr_14 (readonly)
		]]
		return game:HttpGetAsync(formatted_upvr_14)
	end)
	if not pcall_result1_12 then
		return nil
	end
	if pcall_result2_59_upvr == nil or #pcall_result2_59_upvr == 0 then
		return nil
	end
	local pcall_result1_46, pcall_result2_66 = pcall(function() -- Line 52
		--[[ Upvalues[2]:
			[1]: HttpService_upvr (copied, readonly)
			[2]: pcall_result2_59_upvr (readonly)
		]]
		return HttpService_upvr:JSONDecode(pcall_result2_59_upvr)
	end)
	if not pcall_result1_46 then
		return nil
	end
	return pcall_result2_66
end
function module.GetGamesAsync(arg1) -- Line 414
	--[[ Upvalues[2]:
		[1]: string_gsub_result1_upvw (read and write)
		[2]: HttpService_upvr (readonly)
	]]
	local var98_upvr = string.gsub(string_gsub_result1_upvw, "https://www.", "https://".."games"..'.').."v1/games?universeIds="..table.concat(arg1, ',')
	local pcall_result1_73, pcall_result2_5_upvr = pcall(function() -- Line 63
		--[[ Upvalues[1]:
			[1]: var98_upvr (readonly)
		]]
		return game:HttpGetAsync(var98_upvr)
	end)
	if not pcall_result1_73 then
		return nil
	end
	if pcall_result2_5_upvr == nil or #pcall_result2_5_upvr == 0 then
		return nil
	end
	local pcall_result1_67, pcall_result2_40 = pcall(function() -- Line 52
		--[[ Upvalues[2]:
			[1]: HttpService_upvr (copied, readonly)
			[2]: pcall_result2_5_upvr (readonly)
		]]
		return HttpService_upvr:JSONDecode(pcall_result2_5_upvr)
	end)
	if not pcall_result1_67 then
		return nil
	end
	return pcall_result2_40
end
function module.PostExperienceGuidelines(arg1) -- Line 452
	--[[ Upvalues[3]:
		[1]: buildServiceUrl_upvr (readonly)
		[2]: HttpService_upvr (readonly)
		[3]: Utility_upvr (readonly)
	]]
	local tbl_30 = {
		Url = string.format("%sexperience-guidelines-api/experience-guidelines/get-age-recommendation", buildServiceUrl_upvr("apis"));
		Method = "POST";
	}
	local tbl_26 = {}
	tbl_26.universeId = arg1
	tbl_30.Body = HttpService_upvr:JSONEncode(tbl_26)
	tbl_30.Headers = {
		["Content-Type"] = "application/json";
		Accept = "application/json";
	}
	local var107_upvw
	local any_Signal_result1_upvr = Utility_upvr.Signal()
	HttpService_upvr:RequestInternal(tbl_30):Start(function(arg1_3, arg2) -- Line 130
		--[[ Upvalues[3]:
			[1]: var107_upvw (read and write)
			[2]: HttpService_upvr (copied, readonly)
			[3]: any_Signal_result1_upvr (readonly)
		]]
		if not arg1_3 then
		elseif arg2.StatusCode == 401 then
		elseif arg2.StatusCode >= 200 then
			local StatusCode_6 = arg2.StatusCode
			if 400 <= StatusCode_6 then
			else
				local Body_upvr_9 = arg2.Body
				if Body_upvr_9 == nil or #Body_upvr_9 == 0 then
					StatusCode_6 = nil
				else
					local pcall_result1_55, pcall_result2_14 = pcall(function() -- Line 52
						--[[ Upvalues[2]:
							[1]: HttpService_upvr (copied, readonly)
							[2]: Body_upvr_9 (readonly)
						]]
						return HttpService_upvr:JSONDecode(Body_upvr_9)
					end)
					if not pcall_result1_55 then
						StatusCode_6 = nil
					else
						StatusCode_6 = pcall_result2_14
					end
				end
				var107_upvw = StatusCode_6
			end
		end
		any_Signal_result1_upvr:fire()
	end)
	any_Signal_result1_upvr:wait()
	return var107_upvw
end
function module.GetGameIconIdAsync(arg1) -- Line 478
	--[[ Upvalues[2]:
		[1]: string_gsub_result1_upvw (read and write)
		[2]: HttpService_upvr (readonly)
	]]
	local var116_upvr = string_gsub_result1_upvw.."places/icons/json?placeId="..tostring(arg1)
	local pcall_result1_32, pcall_result2_54_upvr = pcall(function() -- Line 63
		--[[ Upvalues[1]:
			[1]: var116_upvr (readonly)
		]]
		return game:HttpGetAsync(var116_upvr)
	end)
	if not pcall_result1_32 then
		return nil
	end
	if pcall_result2_54_upvr == nil or #pcall_result2_54_upvr == 0 then
		return nil
	end
	local pcall_result1_60, pcall_result2_72 = pcall(function() -- Line 52
		--[[ Upvalues[2]:
			[1]: HttpService_upvr (copied, readonly)
			[2]: pcall_result2_54_upvr (readonly)
		]]
		return HttpService_upvr:JSONDecode(pcall_result2_54_upvr)
	end)
	if not pcall_result1_60 then
		return nil
	end
	return pcall_result2_72
end
function module.GetGameVotesAsync(arg1) -- Line 497
	--[[ Upvalues[2]:
		[1]: string_gsub_result1_upvw (read and write)
		[2]: HttpService_upvr (readonly)
	]]
	local var123_upvr = string_gsub_result1_upvw.."PlaceItem/GameDetailsVotingPanelJson?placeId="..tostring(arg1)
	local pcall_result1_5, pcall_result2_50_upvr = pcall(function() -- Line 63
		--[[ Upvalues[1]:
			[1]: var123_upvr (readonly)
		]]
		return game:HttpGetAsync(var123_upvr)
	end)
	if not pcall_result1_5 then
		return nil
	end
	if pcall_result2_50_upvr == nil or #pcall_result2_50_upvr == 0 then
		return nil
	end
	local pcall_result1_41, pcall_result2_44 = pcall(function() -- Line 52
		--[[ Upvalues[2]:
			[1]: HttpService_upvr (copied, readonly)
			[2]: pcall_result2_50_upvr (readonly)
		]]
		return HttpService_upvr:JSONDecode(pcall_result2_50_upvr)
	end)
	if not pcall_result1_41 then
		return nil
	end
	return pcall_result2_44
end
function module.GetRecommendedGamesAsync(arg1) -- Line 524
	--[[ Upvalues[2]:
		[1]: string_gsub_result1_upvw (read and write)
		[2]: HttpService_upvr (readonly)
	]]
	local var130_upvr = string_gsub_result1_upvw.."Games/GetRecommendedGamesJson?currentPlaceId="..tostring(arg1)
	local pcall_result1_66, pcall_result2_22_upvr = pcall(function() -- Line 63
		--[[ Upvalues[1]:
			[1]: var130_upvr (readonly)
		]]
		return game:HttpGetAsync(var130_upvr)
	end)
	if not pcall_result1_66 then
		return nil
	end
	if pcall_result2_22_upvr == nil or #pcall_result2_22_upvr == 0 then
		return nil
	end
	local pcall_result1_10, pcall_result2_21 = pcall(function() -- Line 52
		--[[ Upvalues[2]:
			[1]: HttpService_upvr (copied, readonly)
			[2]: pcall_result2_22_upvr (readonly)
		]]
		return HttpService_upvr:JSONDecode(pcall_result2_22_upvr)
	end)
	if not pcall_result1_10 then
		return nil
	end
	return pcall_result2_21
end
function module.GetGameThumbnailsAsync(arg1) -- Line 553
	--[[ Upvalues[2]:
		[1]: string_gsub_result1_upvw (read and write)
		[2]: HttpService_upvr (readonly)
	]]
	local var137_upvr = string_gsub_result1_upvw.."thumbnail/place-thumbnails?placeId="..tostring(arg1)
	local pcall_result1_3, pcall_result2_18_upvr = pcall(function() -- Line 63
		--[[ Upvalues[1]:
			[1]: var137_upvr (readonly)
		]]
		return game:HttpGetAsync(var137_upvr)
	end)
	if not pcall_result1_3 then
		return nil
	end
	if pcall_result2_18_upvr == nil or #pcall_result2_18_upvr == 0 then
		return nil
	end
	local pcall_result1_15, pcall_result2_32 = pcall(function() -- Line 52
		--[[ Upvalues[2]:
			[1]: HttpService_upvr (copied, readonly)
			[2]: pcall_result2_18_upvr (readonly)
		]]
		return HttpService_upvr:JSONDecode(pcall_result2_18_upvr)
	end)
	if not pcall_result1_15 then
		return nil
	end
	return pcall_result2_32
end
function module.GetBadgesForUniverseAsync(arg1, arg2) -- Line 585
	--[[ Upvalues[2]:
		[1]: string_gsub_result1_upvw (read and write)
		[2]: HttpService_upvr (readonly)
	]]
	local formatted_upvr_13 = string.format("%sv1/universes/%d/badges?sortOrder=Asc&limit=100", string.gsub(string_gsub_result1_upvw, "https://www.", "https://".."badges"..'.'), arg1)
	if arg2 then
		formatted_upvr_13 = string.format(formatted_upvr_13.."&cursor=%s", arg2)
	end
	local pcall_result1_28, pcall_result2_73_upvr = pcall(function() -- Line 63
		--[[ Upvalues[1]:
			[1]: formatted_upvr_13 (readonly)
		]]
		return game:HttpGetAsync(formatted_upvr_13)
	end)
	if not pcall_result1_28 then
		return nil
	end
	if pcall_result2_73_upvr == nil or #pcall_result2_73_upvr == 0 then
		return nil
	end
	local pcall_result1_22, pcall_result2_11 = pcall(function() -- Line 52
		--[[ Upvalues[2]:
			[1]: HttpService_upvr (copied, readonly)
			[2]: pcall_result2_73_upvr (readonly)
		]]
		return HttpService_upvr:JSONDecode(pcall_result2_73_upvr)
	end)
	if not pcall_result1_22 then
		return nil
	end
	return pcall_result2_11
end
function module.GetUserAwardedBadgesAsync(arg1, arg2) -- Line 606
	--[[ Upvalues[2]:
		[1]: string_gsub_result1_upvw (read and write)
		[2]: HttpService_upvr (readonly)
	]]
	local formatted_upvr = string.format("%sv1/users/%d/badges/awarded-dates?badgeIds=%s", string.gsub(string_gsub_result1_upvw, "https://www.", "https://".."badges"..'.'), arg1, table.concat(arg2, ','))
	local pcall_result1_27, pcall_result2_7_upvr = pcall(function() -- Line 63
		--[[ Upvalues[1]:
			[1]: formatted_upvr (readonly)
		]]
		return game:HttpGetAsync(formatted_upvr)
	end)
	if not pcall_result1_27 then
		return nil
	end
	if pcall_result2_7_upvr == nil or #pcall_result2_7_upvr == 0 then
		return nil
	end
	local pcall_result1_7, pcall_result2_57 = pcall(function() -- Line 52
		--[[ Upvalues[2]:
			[1]: HttpService_upvr (copied, readonly)
			[2]: pcall_result2_7_upvr (readonly)
		]]
		return HttpService_upvr:JSONDecode(pcall_result2_7_upvr)
	end)
	if not pcall_result1_7 then
		return nil
	end
	return pcall_result2_57
end
function module.PostFavoriteToggleAsync(arg1) -- Line 619
	--[[ Upvalues[2]:
		[1]: string_gsub_result1_upvw (read and write)
		[2]: HttpService_upvr (readonly)
	]]
	local var158_upvr = string_gsub_result1_upvw.."favorite/toggle?assetID="..tostring(arg1)
	local var159_upvr = "favoriteToggle"
	local var163_upvr
	local pcall_result1_64, pcall_result2_69_upvr = pcall(function() -- Line 78
		--[[ Upvalues[3]:
			[1]: var158_upvr (readonly)
			[2]: var159_upvr (readonly)
			[3]: var163_upvr (readonly)
		]]
		return game:HttpPostAsync(var158_upvr, var159_upvr, var163_upvr)
	end)
	if not pcall_result1_64 then
		return nil
	end
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var159_upvr = #pcall_result2_69_upvr
		return var159_upvr == 0
	end
	if pcall_result2_69_upvr == nil or INLINED() then
		return nil
	end
	var159_upvr = pcall
	function var163_upvr() -- Line 52
		--[[ Upvalues[2]:
			[1]: HttpService_upvr (copied, readonly)
			[2]: pcall_result2_69_upvr (readonly)
		]]
		return HttpService_upvr:JSONDecode(pcall_result2_69_upvr)
	end
	var159_upvr = var159_upvr(var163_upvr)
	local var159_result1, var159_upvr_result2 = var159_upvr(var163_upvr)
	if not var159_result1 then
		return nil
	end
	return var159_upvr_result2
end
function module.PostGameVoteAsync(arg1, arg2) -- Line 640
	--[[ Upvalues[2]:
		[1]: string_gsub_result1_upvw (read and write)
		[2]: HttpService_upvr (readonly)
	]]
	local var167_upvr = string_gsub_result1_upvw.."voting/vote?assetId="..tostring(arg1).."&vote="..tostring(arg2)
	local var168_upvr = "vote"
	local var172_upvr
	local pcall_result1_4, pcall_result2_9_upvr = pcall(function() -- Line 78
		--[[ Upvalues[3]:
			[1]: var167_upvr (readonly)
			[2]: var168_upvr (readonly)
			[3]: var172_upvr (readonly)
		]]
		return game:HttpPostAsync(var167_upvr, var168_upvr, var172_upvr)
	end)
	if not pcall_result1_4 then
		return nil
	end
	local function INLINED_2() -- Internal function, doesn't exist in bytecode
		var168_upvr = #pcall_result2_9_upvr
		return var168_upvr == 0
	end
	if pcall_result2_9_upvr == nil or INLINED_2() then
		return nil
	end
	var168_upvr = pcall
	function var172_upvr() -- Line 52
		--[[ Upvalues[2]:
			[1]: HttpService_upvr (copied, readonly)
			[2]: pcall_result2_9_upvr (readonly)
		]]
		return HttpService_upvr:JSONDecode(pcall_result2_9_upvr)
	end
	var168_upvr = var168_upvr(var172_upvr)
	local var168_upvr_result1, var168_upvr_result2 = var168_upvr(var172_upvr)
	if not var168_upvr_result1 then
		return nil
	end
	return var168_upvr_result2
end
local GetFStringAppLocationForAppPresence_upvr = require(Modules.Shell.Flags.GetFStringAppLocationForAppPresence)
function module.RegisterAppPresence() -- Line 651
	--[[ Upvalues[3]:
		[1]: buildServiceUrl_upvr (readonly)
		[2]: GetFStringAppLocationForAppPresence_upvr (readonly)
		[3]: HttpService_upvr (readonly)
	]]
	local formatted_upvr_18 = string.format("%s/v1/presence/register-app-presence", buildServiceUrl_upvr("presence"))
	local any_JSONEncode_result1_upvr = HttpService_upvr:JSONEncode({
		location = GetFStringAppLocationForAppPresence_upvr();
	})
	local var180_upvr
	local pcall_result1_71, pcall_result2_67_upvr = pcall(function() -- Line 78
		--[[ Upvalues[3]:
			[1]: formatted_upvr_18 (readonly)
			[2]: any_JSONEncode_result1_upvr (readonly)
			[3]: var180_upvr (readonly)
		]]
		return game:HttpPostAsync(formatted_upvr_18, any_JSONEncode_result1_upvr, var180_upvr)
	end)
	if not pcall_result1_71 then
		return nil
	end
	local function INLINED_3() -- Internal function, doesn't exist in bytecode
		var180_upvr = #pcall_result2_67_upvr
		return var180_upvr == 0
	end
	if pcall_result2_67_upvr == nil or INLINED_3() then
		return nil
	end
	var180_upvr = pcall
	local function var183() -- Line 52
		--[[ Upvalues[2]:
			[1]: HttpService_upvr (copied, readonly)
			[2]: pcall_result2_67_upvr (readonly)
		]]
		return HttpService_upvr:JSONDecode(pcall_result2_67_upvr)
	end
	var180_upvr = var180_upvr(var183)
	local var180_upvr_result1, var180_upvr_result2 = var180_upvr(var183)
	if not var180_upvr_result1 then
		return nil
	end
	return var180_upvr_result2
end
function module.GetCrossplayEnabledStatusAsync() -- Line 674
	--[[ Upvalues[3]:
		[1]: buildServiceUrl_upvr (readonly)
		[2]: Utility_upvr (readonly)
		[3]: HttpService_upvr (readonly)
	]]
	local var187_upvw
	local any_Signal_result1_upvr_9 = Utility_upvr.Signal()
	HttpService_upvr:RequestInternal({
		Url = string.format("%suser-settings-api/v1/user-settings?requestedUserSettings=xboxCrossPlayStatusIsEnabled", buildServiceUrl_upvr("apis"));
		Method = "GET";
	}):Start(function(arg1, arg2) -- Line 130
		--[[ Upvalues[3]:
			[1]: var187_upvw (read and write)
			[2]: HttpService_upvr (copied, readonly)
			[3]: any_Signal_result1_upvr_9 (readonly)
		]]
		if not arg1 then
		elseif arg2.StatusCode == 401 then
		elseif arg2.StatusCode >= 200 then
			local StatusCode_8 = arg2.StatusCode
			if 400 <= StatusCode_8 then
			else
				local Body_upvr_2 = arg2.Body
				if Body_upvr_2 == nil or #Body_upvr_2 == 0 then
					StatusCode_8 = nil
				else
					local pcall_result1_62, pcall_result2_45 = pcall(function() -- Line 52
						--[[ Upvalues[2]:
							[1]: HttpService_upvr (copied, readonly)
							[2]: Body_upvr_2 (readonly)
						]]
						return HttpService_upvr:JSONDecode(Body_upvr_2)
					end)
					if not pcall_result1_62 then
						StatusCode_8 = nil
					else
						StatusCode_8 = pcall_result2_45
					end
				end
				var187_upvw = StatusCode_8
			end
		end
		any_Signal_result1_upvr_9:fire()
	end)
	any_Signal_result1_upvr_9:wait()
	return var187_upvw
end
function module.PostCrossplayStatusAsync(arg1) -- Line 687
	--[[ Upvalues[3]:
		[1]: buildServiceUrl_upvr (readonly)
		[2]: HttpService_upvr (readonly)
		[3]: Utility_upvr (readonly)
	]]
	local tbl_32 = {
		Url = string.format("%suser-settings-api/v1/user-settings", buildServiceUrl_upvr("apis"));
		Method = "POST";
	}
	local tbl_29 = {}
	tbl_29.xboxCrossPlayStatusIsEnabled = arg1
	tbl_32.Body = HttpService_upvr:JSONEncode(tbl_29)
	tbl_32.Headers = {
		["Content-Type"] = "application/json";
		Accept = "application/json";
	}
	local var198_upvw
	local any_Signal_result1_upvr_8 = Utility_upvr.Signal()
	HttpService_upvr:RequestInternal(tbl_32):Start(function(arg1_4, arg2) -- Line 130
		--[[ Upvalues[3]:
			[1]: var198_upvw (read and write)
			[2]: HttpService_upvr (copied, readonly)
			[3]: any_Signal_result1_upvr_8 (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 34 start (CF ANALYSIS FAILED)
		if not arg1_4 then
			-- KONSTANTWARNING: GOTO [38] #29
		end
		-- KONSTANTERROR: [0] 1. Error Block 34 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [2] 3. Error Block 35 start (CF ANALYSIS FAILED)
		if arg2.StatusCode == 401 then
		elseif arg2.StatusCode >= 200 then
			local StatusCode_7 = arg2.StatusCode
			if 400 <= StatusCode_7 then
			else
				local Body_upvr_8 = arg2.Body
				if Body_upvr_8 == nil or #Body_upvr_8 == 0 then
					StatusCode_7 = nil
				else
					local pcall_result1_8, pcall_result2_48 = pcall(function() -- Line 52
						--[[ Upvalues[2]:
							[1]: HttpService_upvr (copied, readonly)
							[2]: Body_upvr_8 (readonly)
						]]
						return HttpService_upvr:JSONDecode(Body_upvr_8)
					end)
					if not pcall_result1_8 then
						StatusCode_7 = nil
					else
						StatusCode_7 = pcall_result2_48
					end
				end
				var198_upvw = StatusCode_7
			end
		end
		any_Signal_result1_upvr_8:fire()
		-- KONSTANTERROR: [2] 3. Error Block 35 end (CF ANALYSIS FAILED)
	end)
	any_Signal_result1_upvr_8:wait()
	return var198_upvw
end
function module.GetRecommendedUsersndsAsync() -- Line 713
	--[[ Upvalues[2]:
		[1]: buildServiceUrl_upvr (readonly)
		[2]: HttpService_upvr (readonly)
	]]
	local formatted_upvr_10 = string.format("%s/v1/recommended-users", buildServiceUrl_upvr("friends"))
	local pcall_result1_63, pcall_result2_16_upvr = pcall(function() -- Line 63
		--[[ Upvalues[1]:
			[1]: formatted_upvr_10 (readonly)
		]]
		return game:HttpGetAsync(formatted_upvr_10)
	end)
	if not pcall_result1_63 then
		return nil
	end
	if pcall_result2_16_upvr == nil or #pcall_result2_16_upvr == 0 then
		return nil
	end
	local pcall_result1_13, pcall_result2_60 = pcall(function() -- Line 52
		--[[ Upvalues[2]:
			[1]: HttpService_upvr (copied, readonly)
			[2]: pcall_result2_16_upvr (readonly)
		]]
		return HttpService_upvr:JSONDecode(pcall_result2_16_upvr)
	end)
	if not pcall_result1_13 then
		return nil
	end
	return pcall_result2_60
end
function module.GetUsersPresenceAsync(arg1) -- Line 735
	--[[ Upvalues[2]:
		[1]: HttpService_upvr (readonly)
		[2]: buildServiceUrl_upvr (readonly)
	]]
	local tbl_36 = {}
	tbl_36.userIds = arg1
	local formatted_upvr_17 = string.format("%s/v1/presence/users", buildServiceUrl_upvr("presence"))
	local any_JSONEncode_result1_upvr_3 = HttpService_upvr:JSONEncode(tbl_36)
	local var217_upvr
	local pcall_result1_59, pcall_result2_56_upvr = pcall(function() -- Line 78
		--[[ Upvalues[3]:
			[1]: formatted_upvr_17 (readonly)
			[2]: any_JSONEncode_result1_upvr_3 (readonly)
			[3]: var217_upvr (readonly)
		]]
		return game:HttpPostAsync(formatted_upvr_17, any_JSONEncode_result1_upvr_3, var217_upvr)
	end)
	if not pcall_result1_59 then
		return nil
	end
	local function INLINED_4() -- Internal function, doesn't exist in bytecode
		var217_upvr = #pcall_result2_56_upvr
		return var217_upvr == 0
	end
	if pcall_result2_56_upvr == nil or INLINED_4() then
		return nil
	end
	var217_upvr = pcall
	local function var220() -- Line 52
		--[[ Upvalues[2]:
			[1]: HttpService_upvr (copied, readonly)
			[2]: pcall_result2_56_upvr (readonly)
		]]
		return HttpService_upvr:JSONDecode(pcall_result2_56_upvr)
	end
	var217_upvr = var217_upvr(var220)
	local var217_result1, var217_result2 = var217_upvr(var220)
	if not var217_result1 then
		return nil
	end
	return var217_result2
end
function module.GetPlatformUserBalanceAsync() -- Line 753
	--[[ Upvalues[2]:
		[1]: buildServiceUrl_upvr (readonly)
		[2]: HttpService_upvr (readonly)
	]]
	local formatted_upvr_2 = string.format("%sv1/user/currency", buildServiceUrl_upvr("economy"))
	local pcall_result1_58, pcall_result2_49_upvr = pcall(function() -- Line 63
		--[[ Upvalues[1]:
			[1]: formatted_upvr_2 (readonly)
		]]
		return game:HttpGetAsync(formatted_upvr_2)
	end)
	if not pcall_result1_58 then
		return nil
	end
	if pcall_result2_49_upvr == nil or #pcall_result2_49_upvr == 0 then
		return nil
	end
	local pcall_result1_57, pcall_result2_64 = pcall(function() -- Line 52
		--[[ Upvalues[2]:
			[1]: HttpService_upvr (copied, readonly)
			[2]: pcall_result2_49_upvr (readonly)
		]]
		return HttpService_upvr:JSONDecode(pcall_result2_49_upvr)
	end)
	if not pcall_result1_57 then
		return nil
	end
	return pcall_result2_64
end
function module.GetTotalUserBalanceAsync() -- Line 764
	--[[ Upvalues[2]:
		[1]: buildServiceUrl_upvr (readonly)
		[2]: HttpService_upvr (readonly)
	]]
	local formatted_upvr_12 = string.format("%sv1/user/currency", buildServiceUrl_upvr("economy"))
	local pcall_result1_25, pcall_result2_41_upvr = pcall(function() -- Line 63
		--[[ Upvalues[1]:
			[1]: formatted_upvr_12 (readonly)
		]]
		return game:HttpGetAsync(formatted_upvr_12)
	end)
	if not pcall_result1_25 then
		return nil
	end
	if pcall_result2_41_upvr == nil or #pcall_result2_41_upvr == 0 then
		return nil
	end
	local pcall_result1_14, pcall_result2_38 = pcall(function() -- Line 52
		--[[ Upvalues[2]:
			[1]: HttpService_upvr (copied, readonly)
			[2]: pcall_result2_41_upvr (readonly)
		]]
		return HttpService_upvr:JSONDecode(pcall_result2_41_upvr)
	end)
	if not pcall_result1_14 then
		return nil
	end
	return pcall_result2_38
end
function module.GetUserOwnedPackagesAsync(arg1, arg2) -- Line 856
	--[[ Upvalues[2]:
		[1]: string_gsub_result1_upvw (read and write)
		[2]: HttpService_upvr (readonly)
	]]
	local var238_upvr = string_gsub_result1_upvw.."users/inventory/list-json?userId="..tostring(arg1).."&assetTypeId="..tostring(32).."&pageNumber="..tostring(arg2 or 1)
	local pcall_result1_54, pcall_result2_upvr = pcall(function() -- Line 63
		--[[ Upvalues[1]:
			[1]: var238_upvr (readonly)
		]]
		return game:HttpGetAsync(var238_upvr)
	end)
	if not pcall_result1_54 then
		return nil
	end
	if pcall_result2_upvr == nil or #pcall_result2_upvr == 0 then
		return nil
	end
	local pcall_result1_53, pcall_result2_63 = pcall(function() -- Line 52
		--[[ Upvalues[2]:
			[1]: HttpService_upvr (copied, readonly)
			[2]: pcall_result2_upvr (readonly)
		]]
		return HttpService_upvr:JSONDecode(pcall_result2_upvr)
	end)
	if not pcall_result1_53 then
		return nil
	end
	return pcall_result2_63
end
function module.GetCurrentlyWearingAsync(arg1) -- Line 872
	--[[ Upvalues[2]:
		[1]: string_gsub_result1_upvw (read and write)
		[2]: HttpService_upvr (readonly)
	]]
	local formatted_upvr_3 = string.format("%s/v1/users/%d/currently-wearing", string.gsub(string_gsub_result1_upvw, "https://www.", "https://".."avatar"..'.'), arg1)
	local pcall_result1_65, pcall_result2_52_upvr = pcall(function() -- Line 63
		--[[ Upvalues[1]:
			[1]: formatted_upvr_3 (readonly)
		]]
		return game:HttpGetAsync(formatted_upvr_3)
	end)
	if not pcall_result1_65 then
		return nil
	end
	if pcall_result2_52_upvr == nil or #pcall_result2_52_upvr == 0 then
		return nil
	end
	local pcall_result1_21, pcall_result2_2 = pcall(function() -- Line 52
		--[[ Upvalues[2]:
			[1]: HttpService_upvr (copied, readonly)
			[2]: pcall_result2_52_upvr (readonly)
		]]
		return HttpService_upvr:JSONDecode(pcall_result2_52_upvr)
	end)
	if not pcall_result1_21 then
		return nil
	end
	return pcall_result2_2
end
function module.SetWearingAssetsAsync(arg1) -- Line 900
	--[[ Upvalues[3]:
		[1]: HttpService_upvr (readonly)
		[2]: buildServiceUrl_upvr (readonly)
		[3]: Utility_upvr (readonly)
	]]
	local tbl_33 = {}
	tbl_33.assetIds = arg1
	local var254_upvw
	local any_Signal_result1_upvr_6 = Utility_upvr.Signal()
	HttpService_upvr:RequestInternal({
		Url = string.format("%s/v1/avatar/set-wearing-assets", buildServiceUrl_upvr("avatar"));
		Method = "POST";
		Body = HttpService_upvr:JSONEncode(tbl_33);
		Headers = {
			["Content-Type"] = "application/json";
		};
	}):Start(function(arg1_5, arg2) -- Line 130
		--[[ Upvalues[3]:
			[1]: var254_upvw (read and write)
			[2]: HttpService_upvr (copied, readonly)
			[3]: any_Signal_result1_upvr_6 (readonly)
		]]
		if not arg1_5 then
		elseif arg2.StatusCode == 401 then
		elseif arg2.StatusCode >= 200 then
			local StatusCode_3 = arg2.StatusCode
			if 400 <= StatusCode_3 then
			else
				local Body_upvr_7 = arg2.Body
				if Body_upvr_7 == nil or #Body_upvr_7 == 0 then
					StatusCode_3 = nil
				else
					local pcall_result1_51, pcall_result2 = pcall(function() -- Line 52
						--[[ Upvalues[2]:
							[1]: HttpService_upvr (copied, readonly)
							[2]: Body_upvr_7 (readonly)
						]]
						return HttpService_upvr:JSONDecode(Body_upvr_7)
					end)
					if not pcall_result1_51 then
						StatusCode_3 = nil
					else
						StatusCode_3 = pcall_result2
					end
				end
				var254_upvw = StatusCode_3
			end
		end
		any_Signal_result1_upvr_6:fire()
	end)
	any_Signal_result1_upvr_6:wait()
	return var254_upvw
end
function module.PurchaseProductAsync(arg1, arg2, arg3, arg4) -- Line 957
	--[[ Upvalues[2]:
		[1]: string_gsub_result1_upvw (read and write)
		[2]: HttpService_upvr (readonly)
	]]
	local tbl_5 = {}
	tbl_5.expectedCurrency = arg4
	tbl_5.expectedPrice = arg2
	tbl_5.expectedSellerId = arg3
	local formatted_upvr_5 = string.format("%s/v1/purchases/products/%d", string.gsub(string_gsub_result1_upvw, "https://www.", "https://".."economy"..'.'), arg1)
	local any_JSONEncode_result1_upvr_2 = HttpService_upvr:JSONEncode(tbl_5)
	local var266_upvr
	local pcall_result1_50, pcall_result2_13_upvr = pcall(function() -- Line 78
		--[[ Upvalues[3]:
			[1]: formatted_upvr_5 (readonly)
			[2]: any_JSONEncode_result1_upvr_2 (readonly)
			[3]: var266_upvr (readonly)
		]]
		return game:HttpPostAsync(formatted_upvr_5, any_JSONEncode_result1_upvr_2, var266_upvr)
	end)
	if not pcall_result1_50 then
		return nil
	end
	local function INLINED_5() -- Internal function, doesn't exist in bytecode
		var266_upvr = #pcall_result2_13_upvr
		return var266_upvr == 0
	end
	if pcall_result2_13_upvr == nil or INLINED_5() then
		return nil
	end
	var266_upvr = pcall
	local function var269() -- Line 52
		--[[ Upvalues[2]:
			[1]: HttpService_upvr (copied, readonly)
			[2]: pcall_result2_13_upvr (readonly)
		]]
		return HttpService_upvr:JSONDecode(pcall_result2_13_upvr)
	end
	var266_upvr = var266_upvr(var269)
	local var266_result1, var266_result2 = var266_upvr(var269)
	if not var266_result1 then
		return nil
	end
	return var266_result2
end
function module.MultiGetBundleDetailsAsync(arg1) -- Line 998
	--[[ Upvalues[2]:
		[1]: string_gsub_result1_upvw (read and write)
		[2]: HttpService_upvr (readonly)
	]]
	local formatted_upvr_19 = string.format("%sv1/bundles/details?bundleIds=%s", string.gsub(string_gsub_result1_upvw, "https://www.", "https://".."catalog"..'.'), table.concat(arg1, ','))
	local pcall_result1_33, pcall_result2_28_upvr = pcall(function() -- Line 63
		--[[ Upvalues[1]:
			[1]: formatted_upvr_19 (readonly)
		]]
		return game:HttpGetAsync(formatted_upvr_19)
	end)
	if not pcall_result1_33 then
		return nil
	end
	if pcall_result2_28_upvr == nil or #pcall_result2_28_upvr == 0 then
		return nil
	end
	local pcall_result1_49, pcall_result2_6 = pcall(function() -- Line 52
		--[[ Upvalues[2]:
			[1]: HttpService_upvr (copied, readonly)
			[2]: pcall_result2_28_upvr (readonly)
		]]
		return HttpService_upvr:JSONDecode(pcall_result2_28_upvr)
	end)
	if not pcall_result1_49 then
		return nil
	end
	return pcall_result2_6
end
function module.GetUserOwnedBundlesAsync(arg1, arg2) -- Line 1023
	--[[ Upvalues[2]:
		[1]: string_gsub_result1_upvw (read and write)
		[2]: HttpService_upvr (readonly)
	]]
	local formatted_upvr_7 = string.format("%sv1/users/%s/bundles?sortOrder=Asc&limit=100", string.gsub(string_gsub_result1_upvw, "https://www.", "https://".."catalog"..'.'), tostring(arg1))
	if arg2 then
		formatted_upvr_7 = string.format(formatted_upvr_7.."&cursor=%s", arg2)
	end
	local pcall_result1_48, pcall_result2_27_upvr = pcall(function() -- Line 63
		--[[ Upvalues[1]:
			[1]: formatted_upvr_7 (readonly)
		]]
		return game:HttpGetAsync(formatted_upvr_7)
	end)
	if not pcall_result1_48 then
		return nil
	end
	if pcall_result2_27_upvr == nil or #pcall_result2_27_upvr == 0 then
		return nil
	end
	local pcall_result1_74, pcall_result2_46 = pcall(function() -- Line 52
		--[[ Upvalues[2]:
			[1]: HttpService_upvr (copied, readonly)
			[2]: pcall_result2_27_upvr (readonly)
		]]
		return HttpService_upvr:JSONDecode(pcall_result2_27_upvr)
	end)
	if not pcall_result1_74 then
		return nil
	end
	return pcall_result2_46
end
function module.GetAssetThumbnailBatchAsync(arg1, arg2, arg3) -- Line 1047
	--[[ Upvalues[2]:
		[1]: string_gsub_result1_upvw (read and write)
		[2]: HttpService_upvr (readonly)
	]]
	local formatted_upvr_6 = string.format(string.gsub(string_gsub_result1_upvw, "https://www.", "https://".."games"..'.').."v1/games/game-thumbnails?%s&height="..tostring(arg3).."&width="..tostring(arg2), "imageTokens="..table.concat(arg1, "&imageTokens="))
	local pcall_result1_40, pcall_result2_42_upvr = pcall(function() -- Line 63
		--[[ Upvalues[1]:
			[1]: formatted_upvr_6 (readonly)
		]]
		return game:HttpGetAsync(formatted_upvr_6)
	end)
	if not pcall_result1_40 then
		return nil
	end
	if pcall_result2_42_upvr == nil or #pcall_result2_42_upvr == 0 then
		return nil
	end
	local pcall_result1_61, pcall_result2_53 = pcall(function() -- Line 52
		--[[ Upvalues[2]:
			[1]: HttpService_upvr (copied, readonly)
			[2]: pcall_result2_42_upvr (readonly)
		]]
		return HttpService_upvr:JSONDecode(pcall_result2_42_upvr)
	end)
	if not pcall_result1_61 then
		return nil
	end
	return pcall_result2_53
end
local Url_upvr = require(game:GetService("CorePackages").Workspace.Packages.Http).Url
function module.ReportAbuseAsyncV2(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9) -- Line 1061
	--[[ Upvalues[3]:
		[1]: HttpService_upvr (readonly)
		[2]: Url_upvr (readonly)
		[3]: HttpRbxApiService_upvr (readonly)
	]]
	local tbl_34 = {}
	local tbl_28 = {}
	local tbl_27 = {}
	local tbl = {}
	local tbl_3 = {}
	tbl_3.data = arg6
	tbl[1] = tbl_3
	tbl_27.valueList = tbl
	tbl_28.ENTRY_POINT = tbl_27
	local tbl_25 = {}
	local tbl_24 = {}
	local tbl_21 = {}
	tbl_21.data = arg1
	tbl_24[1] = tbl_21
	tbl_25.valueList = tbl_24
	tbl_28.SUBMITTER_USER_ID = tbl_25
	local tbl_23 = {}
	local tbl_18 = {}
	local tbl_2 = {}
	tbl_2.data = arg3
	tbl_18[1] = tbl_2
	tbl_23.valueList = tbl_18
	tbl_28.REPORT_TARGET_USER_ID = tbl_23
	local tbl_40 = {}
	local tbl_17 = {}
	local tbl_10 = {}
	tbl_10.data = arg8
	tbl_17[1] = tbl_10
	tbl_40.valueList = tbl_17
	tbl_28.REPORTED_ABUSE_CATEGORY = tbl_40
	local tbl_39 = {}
	local tbl_31 = {}
	local tbl_35 = {}
	tbl_35.data = arg7
	tbl_31[1] = tbl_35
	tbl_39.valueList = tbl_31
	tbl_28.REPORTED_ABUSE_VECTOR = tbl_39
	local tbl_9 = {}
	local tbl_22 = {}
	local tbl_11 = {}
	tbl_11.data = arg9
	tbl_22[1] = tbl_11
	tbl_9.valueList = tbl_22
	tbl_28.REPORTER_COMMENT = tbl_9
	local tbl_20 = {}
	local tbl_19 = {}
	local tbl_16 = {}
	tbl_16.data = arg2
	tbl_19[1] = tbl_16
	tbl_20.valueList = tbl_19
	tbl_28.REPORT_TARGET_ASSET_ID = tbl_20
	local tbl_15 = {}
	local tbl_14 = {}
	local tbl_7 = {}
	tbl_7.data = arg4
	tbl_14[1] = tbl_7
	tbl_15.valueList = tbl_14
	tbl_28.REPORT_TARGET_ASSET_NAME = tbl_15
	local tbl_13 = {}
	local tbl_38 = {}
	local tbl_12 = {}
	tbl_12.data = arg5
	tbl_38[1] = tbl_12
	tbl_13.valueList = tbl_38
	tbl_28.REPORT_TARGET_ASSET_DESCRIPTION = tbl_13
	tbl_34.tags = tbl_28
	local any_JSONEncode_result1_upvr_4 = HttpService_upvr:JSONEncode(tbl_34)
	if any_JSONEncode_result1_upvr_4 then
		local var325_upvr = Url_upvr.APIS_URL.."abuse-reporting/v2/abuse-report"
		local Default_upvr = Enum.ThrottlingPriority.Default
		local ApplicationJson_upvr = Enum.HttpContentType.ApplicationJson
		local pcall_result1_20, pcall_result2_47_upvr = pcall(function() -- Line 114
			--[[ Upvalues[5]:
				[1]: HttpRbxApiService_upvr (copied, readonly)
				[2]: var325_upvr (readonly)
				[3]: any_JSONEncode_result1_upvr_4 (readonly)
				[4]: Default_upvr (readonly)
				[5]: ApplicationJson_upvr (readonly)
			]]
			return HttpRbxApiService_upvr:PostAsyncFullUrl(var325_upvr, any_JSONEncode_result1_upvr_4, Default_upvr, ApplicationJson_upvr)
		end)
		if not pcall_result1_20 then
			return nil
		end
		if pcall_result2_47_upvr == nil or #pcall_result2_47_upvr == 0 then
			return nil
		end
		local pcall_result1_39, pcall_result2_39 = pcall(function() -- Line 52
			--[[ Upvalues[2]:
				[1]: HttpService_upvr (copied, readonly)
				[2]: pcall_result2_47_upvr (readonly)
			]]
			return HttpService_upvr:JSONDecode(pcall_result2_47_upvr)
		end)
		if not pcall_result1_39 then
			return nil
		end
		return pcall_result2_39
	end
	return nil
end
function module.GetConsecutiveDaysLoggedInAsync() -- Line 1144
	--[[ Upvalues[3]:
		[1]: buildServiceUrl_upvr (readonly)
		[2]: Utility_upvr (readonly)
		[3]: HttpService_upvr (readonly)
	]]
	local var334_upvw
	local any_Signal_result1_upvr_7 = Utility_upvr.Signal()
	HttpService_upvr:RequestInternal({
		Url = string.format("%sv1/xbox/get-login-consecutive-days", buildServiceUrl_upvr("auth"));
		Method = "GET";
	}):Start(function(arg1, arg2) -- Line 130
		--[[ Upvalues[3]:
			[1]: var334_upvw (read and write)
			[2]: HttpService_upvr (copied, readonly)
			[3]: any_Signal_result1_upvr_7 (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 34 start (CF ANALYSIS FAILED)
		if not arg1 then
			-- KONSTANTWARNING: GOTO [38] #29
		end
		-- KONSTANTERROR: [0] 1. Error Block 34 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [2] 3. Error Block 35 start (CF ANALYSIS FAILED)
		if arg2.StatusCode == 401 then
		elseif arg2.StatusCode >= 200 then
			local StatusCode_5 = arg2.StatusCode
			if 400 <= StatusCode_5 then
			else
				local Body_upvr_5 = arg2.Body
				if Body_upvr_5 == nil or #Body_upvr_5 == 0 then
					StatusCode_5 = nil
				else
					local pcall_result1_36, pcall_result2_33 = pcall(function() -- Line 52
						--[[ Upvalues[2]:
							[1]: HttpService_upvr (copied, readonly)
							[2]: Body_upvr_5 (readonly)
						]]
						return HttpService_upvr:JSONDecode(Body_upvr_5)
					end)
					if not pcall_result1_36 then
						StatusCode_5 = nil
					else
						StatusCode_5 = pcall_result2_33
					end
				end
				var334_upvw = StatusCode_5
			end
		end
		any_Signal_result1_upvr_7:fire()
		-- KONSTANTERROR: [2] 3. Error Block 35 end (CF ANALYSIS FAILED)
	end)
	any_Signal_result1_upvr_7:wait()
	return var334_upvw
end
function module.IsValidUsername(arg1, arg2) -- Line 1160
	--[[ Upvalues[3]:
		[1]: string_gsub_result1_upvw (read and write)
		[2]: HttpService_upvr (readonly)
		[3]: Utility_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [3] 3. Error Block 17 start (CF ANALYSIS FAILED)
	if #arg1 ~= 0 then
	else
	end
	-- KONSTANTERROR: [3] 3. Error Block 17 end (CF ANALYSIS FAILED)
end
function module.IsValidPassword(arg1, arg2) -- Line 1182
	--[[ Upvalues[3]:
		[1]: string_gsub_result1_upvw (read and write)
		[2]: HttpService_upvr (readonly)
		[3]: Utility_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [3] 3. Error Block 17 start (CF ANALYSIS FAILED)
	if #arg1 ~= 0 then
	else
	end
	-- KONSTANTERROR: [3] 3. Error Block 17 end (CF ANALYSIS FAILED)
end
function module.PostSponsoredGameClickAsync(arg1) -- Line 1209
	--[[ Upvalues[2]:
		[1]: buildServiceUrl_upvr (readonly)
		[2]: HttpService_upvr (readonly)
	]]
	local formatted_upvr_8, NONE_upvr = string.format("\"%s\"", arg1)
	local formatted_upvr_16 = string.format("%sv1/sponsored-games/click", buildServiceUrl_upvr("ads"))
	local pcall_result1_34, pcall_result2_29_upvr = pcall(function() -- Line 78
		--[[ Upvalues[3]:
			[1]: formatted_upvr_16 (readonly)
			[2]: formatted_upvr_8 (readonly)
			[3]: NONE_upvr (readonly)
		]]
		return game:HttpPostAsync(formatted_upvr_16, formatted_upvr_8, NONE_upvr)
	end)
	if not pcall_result1_34 then
		return nil
	end
	if pcall_result2_29_upvr == nil or #pcall_result2_29_upvr == 0 then
		return nil
	end
	local pcall_result1_17, pcall_result2_43 = pcall(function() -- Line 52
		--[[ Upvalues[2]:
			[1]: HttpService_upvr (copied, readonly)
			[2]: pcall_result2_29_upvr (readonly)
		]]
		return HttpService_upvr:JSONDecode(pcall_result2_29_upvr)
	end)
	if not pcall_result1_17 then
		return nil
	end
	return pcall_result2_43
end
function module.GetUserVoteCountFromVotingApiAsync() -- Line 1226
	--[[ Upvalues[3]:
		[1]: buildServiceUrl_upvr (readonly)
		[2]: Utility_upvr (readonly)
		[3]: HttpService_upvr (readonly)
	]]
	local var352_upvw
	local any_Signal_result1_upvr_5 = Utility_upvr.Signal()
	HttpService_upvr:RequestInternal({
		Url = string.format("%svoting-api/user/get-vote-count?targetType=Place", buildServiceUrl_upvr("apis"));
		Method = "GET";
	}):Start(function(arg1, arg2) -- Line 130
		--[[ Upvalues[3]:
			[1]: var352_upvw (read and write)
			[2]: HttpService_upvr (copied, readonly)
			[3]: any_Signal_result1_upvr_5 (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 34 start (CF ANALYSIS FAILED)
		if not arg1 then
			-- KONSTANTWARNING: GOTO [38] #29
		end
		-- KONSTANTERROR: [0] 1. Error Block 34 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [2] 3. Error Block 35 start (CF ANALYSIS FAILED)
		if arg2.StatusCode == 401 then
		elseif arg2.StatusCode >= 200 then
			local StatusCode_2 = arg2.StatusCode
			if 400 <= StatusCode_2 then
			else
				local Body_upvr = arg2.Body
				if Body_upvr == nil or #Body_upvr == 0 then
					StatusCode_2 = nil
				else
					local pcall_result1_16, pcall_result2_25 = pcall(function() -- Line 52
						--[[ Upvalues[2]:
							[1]: HttpService_upvr (copied, readonly)
							[2]: Body_upvr (readonly)
						]]
						return HttpService_upvr:JSONDecode(Body_upvr)
					end)
					if not pcall_result1_16 then
						StatusCode_2 = nil
					else
						StatusCode_2 = pcall_result2_25
					end
				end
				var352_upvw = StatusCode_2
			end
		end
		any_Signal_result1_upvr_5:fire()
		-- KONSTANTERROR: [2] 3. Error Block 35 end (CF ANALYSIS FAILED)
	end)
	any_Signal_result1_upvr_5:wait()
	return var352_upvw
end
function module.CreateCrossDeviceLoginCode() -- Line 1243
	--[[ Upvalues[2]:
		[1]: buildServiceUrl_upvr (readonly)
		[2]: HttpService_upvr (readonly)
	]]
	local formatted_upvr_9 = string.format("%sauth-token-service/v1/login/create", buildServiceUrl_upvr("apis"))
	local var362_upvr = ""
	local var366_upvr
	local pcall_result1_29, pcall_result2_23_upvr = pcall(function() -- Line 78
		--[[ Upvalues[3]:
			[1]: formatted_upvr_9 (readonly)
			[2]: var362_upvr (readonly)
			[3]: var366_upvr (readonly)
		]]
		return game:HttpPostAsync(formatted_upvr_9, var362_upvr, var366_upvr)
	end)
	if not pcall_result1_29 then
		return nil
	end
	local function INLINED_6() -- Internal function, doesn't exist in bytecode
		var362_upvr = #pcall_result2_23_upvr
		return var362_upvr == 0
	end
	if pcall_result2_23_upvr == nil or INLINED_6() then
		return nil
	end
	var362_upvr = pcall
	function var366_upvr() -- Line 52
		--[[ Upvalues[2]:
			[1]: HttpService_upvr (copied, readonly)
			[2]: pcall_result2_23_upvr (readonly)
		]]
		return HttpService_upvr:JSONDecode(pcall_result2_23_upvr)
	end
	var362_upvr = var362_upvr(var366_upvr)
	local var362_result1, var362_result2 = var362_upvr(var366_upvr)
	if not var362_result1 then
		return nil
	end
	return var362_result2
end
function module.CheckCrossDeviceLoginStatus(arg1, arg2) -- Line 1257
	--[[ Upvalues[3]:
		[1]: buildServiceUrl_upvr (readonly)
		[2]: HttpService_upvr (readonly)
		[3]: Utility_upvr (readonly)
	]]
	local tbl_6 = {
		Url = string.format("%sauth-token-service/v1/login/status", buildServiceUrl_upvr("apis"));
		Method = "POST";
	}
	local tbl_8 = {}
	tbl_8.code = arg1
	tbl_8.privateKey = arg2
	tbl_6.Body = HttpService_upvr:JSONEncode(tbl_8)
	tbl_6.Headers = {
		["Content-Type"] = "application/json";
		Accept = "application/json";
	}
	local var372_upvw
	local any_Signal_result1_upvr_4 = Utility_upvr.Signal()
	HttpService_upvr:RequestInternal(tbl_6):Start(function(arg1_6, arg2_2) -- Line 130
		--[[ Upvalues[3]:
			[1]: var372_upvw (read and write)
			[2]: HttpService_upvr (copied, readonly)
			[3]: any_Signal_result1_upvr_4 (readonly)
		]]
		if not arg1_6 then
		elseif arg2_2.StatusCode == 401 then
		elseif arg2_2.StatusCode >= 200 then
			local StatusCode_9 = arg2_2.StatusCode
			if 400 <= StatusCode_9 then
			else
				local Body_upvr_4 = arg2_2.Body
				if Body_upvr_4 == nil or #Body_upvr_4 == 0 then
					StatusCode_9 = nil
				else
					local pcall_result1_23, pcall_result2_17 = pcall(function() -- Line 52
						--[[ Upvalues[2]:
							[1]: HttpService_upvr (copied, readonly)
							[2]: Body_upvr_4 (readonly)
						]]
						return HttpService_upvr:JSONDecode(Body_upvr_4)
					end)
					if not pcall_result1_23 then
						StatusCode_9 = nil
					else
						StatusCode_9 = pcall_result2_17
					end
				end
				var372_upvw = StatusCode_9
			end
		end
		any_Signal_result1_upvr_4:fire()
	end)
	any_Signal_result1_upvr_4:wait()
	return var372_upvw
end
function module.CancelCrossDeviceLogin(arg1) -- Line 1276
	--[[ Upvalues[3]:
		[1]: buildServiceUrl_upvr (readonly)
		[2]: HttpService_upvr (readonly)
		[3]: Utility_upvr (readonly)
	]]
	local tbl_37 = {
		Url = string.format("%sauth-token-service/v1/login/cancel", buildServiceUrl_upvr("apis"));
		Method = "POST";
	}
	local tbl_4 = {}
	tbl_4.code = arg1
	tbl_37.Body = HttpService_upvr:JSONEncode(tbl_4)
	tbl_37.Headers = {
		["Content-Type"] = "application/json";
		Accept = "application/json";
	}
	local var383_upvw
	local any_Signal_result1_upvr_3 = Utility_upvr.Signal()
	HttpService_upvr:RequestInternal(tbl_37):Start(function(arg1_7, arg2) -- Line 130
		--[[ Upvalues[3]:
			[1]: var383_upvw (read and write)
			[2]: HttpService_upvr (copied, readonly)
			[3]: any_Signal_result1_upvr_3 (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 34 start (CF ANALYSIS FAILED)
		if not arg1_7 then
			-- KONSTANTWARNING: GOTO [38] #29
		end
		-- KONSTANTERROR: [0] 1. Error Block 34 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [2] 3. Error Block 35 start (CF ANALYSIS FAILED)
		if arg2.StatusCode == 401 then
		elseif arg2.StatusCode >= 200 then
			local StatusCode = arg2.StatusCode
			if 400 <= StatusCode then
			else
				local Body_upvr_3 = arg2.Body
				if Body_upvr_3 == nil or #Body_upvr_3 == 0 then
					StatusCode = nil
				else
					local pcall_result1_18, pcall_result2_24 = pcall(function() -- Line 52
						--[[ Upvalues[2]:
							[1]: HttpService_upvr (copied, readonly)
							[2]: Body_upvr_3 (readonly)
						]]
						return HttpService_upvr:JSONDecode(Body_upvr_3)
					end)
					if not pcall_result1_18 then
						StatusCode = nil
					else
						StatusCode = pcall_result2_24
					end
				end
				var383_upvw = StatusCode
			end
		end
		any_Signal_result1_upvr_3:fire()
		-- KONSTANTERROR: [2] 3. Error Block 35 end (CF ANALYSIS FAILED)
	end)
	any_Signal_result1_upvr_3:wait()
	return var383_upvw
end
return module