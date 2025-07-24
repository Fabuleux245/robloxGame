-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:40:42
-- Luau version 6, Types version 3
-- Time taken: 0.006806 seconds

local Players = game:GetService("Players")
local any_GetDataStore_result1_upvr = game:GetService("DataStoreService"):GetDataStore("BLOXBIZ_EXPOSURE_STORAGE")
local Utils_upvr = require(script.Parent.Parent.Utils)
local module_upvr = {
	LocalExposureStorage = {};
	IsDaylightSavings = function(arg1) -- Line 14, Named "IsDaylightSavings"
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var16
		if tonumber(os.date("%w")) ~= 7 then
		else
		end
		local tonumber_result1_4 = tonumber(os.date("%m"))
		local tonumber_result1_3 = tonumber(os.date("%d"))
		var16 = 3
		if var16 < tonumber_result1_4 then
			var16 = 11
			if tonumber_result1_4 >= var16 then
			else
			end
		end
		if tonumber_result1_4 ~= 3 then
			var16 = false
		else
			var16 = true
		end
		if var16 then
			if 8 <= tonumber_result1_3 then
				if not true then
					if 14 > tonumber_result1_3 then
					else
					end
				end
			end
		end
		if tonumber_result1_4 ~= 11 then
		else
		end
		local var19 = true
		if var19 then
			if tonumber_result1_3 < 7 then
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			end
		end
		if true or true or not true then
			return true
		end
		return false
	end;
}
function module_upvr.GetTimeDataEST(arg1) -- Line 41
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local var20
	if module_upvr:IsDaylightSavings() then
		var20 = 4
	else
		var20 = 5
	end
	return DateTime.fromUnixTimestamp(os.time() - var20 * 60 * 60):ToUniversalTime()
end
function module_upvr.IsSameDay(arg1, arg2) -- Line 53
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 24 start (CF ANALYSIS FAILED)
	local any_GetTimeDataEST_result1 = module_upvr:GetTimeDataEST()
	local var22
	if any_GetTimeDataEST_result1.Year ~= arg2.Year then
		var22 = false
	else
		var22 = true
	end
	if any_GetTimeDataEST_result1.Month ~= arg2.Month then
		-- KONSTANTWARNING: GOTO [20] #14
	end
	-- KONSTANTERROR: [0] 1. Error Block 24 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [19] 13. Error Block 26 start (CF ANALYSIS FAILED)
	if any_GetTimeDataEST_result1.Day ~= arg2.Day then
	else
	end
	if var22 and true and true then
		return true
	end
	do
		return false
	end
	-- KONSTANTERROR: [19] 13. Error Block 26 end (CF ANALYSIS FAILED)
end
function module_upvr.GetDataTemplate(arg1) -- Line 67
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	return {
		TimeData = module_upvr:GetTimeDataEST();
		Exposures = {};
	}
end
function module_upvr.FetchExposureData(arg1, arg2) -- Line 74
	--[[ Upvalues[3]:
		[1]: any_GetDataStore_result1_upvr (readonly)
		[2]: Utils_upvr (readonly)
		[3]: module_upvr (readonly)
	]]
	local pcall_result1, pcall_result2 = pcall(function() -- Line 75
		--[[ Upvalues[2]:
			[1]: any_GetDataStore_result1_upvr (copied, readonly)
			[2]: arg2 (readonly)
		]]
		return any_GetDataStore_result1_upvr:GetAsync(arg2)
	end)
	local var27 = pcall_result1
	if var27 then
		if pcall_result2 ~= nil then
			var27 = false
		else
			var27 = true
			local var28
		end
	end
	if not pcall_result1 then
		Utils_upvr.pprint("[SuperBiz] Exposure DataStore fetch failure: "..var28)
		var28 = module_upvr:GetDataTemplate()
	elseif var27 then
		var28 = module_upvr:GetDataTemplate()
	end
	module_upvr.LocalExposureStorage[arg2] = var28
	module_upvr:RefreshExposures(arg2)
	return pcall_result1
end
function module_upvr.SaveExposureData(arg1, arg2) -- Line 94
	--[[ Upvalues[3]:
		[1]: module_upvr (readonly)
		[2]: any_GetDataStore_result1_upvr (readonly)
		[3]: Utils_upvr (readonly)
	]]
	local var29_upvr = module_upvr.LocalExposureStorage[arg2]
	if not var29_upvr then return end
	module_upvr:RefreshExposures(arg2)
	local pcall_result1_2, pcall_result2_2 = pcall(function() -- Line 103
		--[[ Upvalues[3]:
			[1]: any_GetDataStore_result1_upvr (copied, readonly)
			[2]: arg2 (readonly)
			[3]: var29_upvr (readonly)
		]]
		return any_GetDataStore_result1_upvr:SetAsync(arg2, var29_upvr)
	end)
	if not pcall_result1_2 then
		Utils_upvr.pprint("[SuperBiz] Exposure DataStore save failure: "..pcall_result2_2)
	end
	module_upvr.LocalExposureStorage[arg2] = nil
	return pcall_result1_2
end
function module_upvr.getValidExposureTime(arg1, arg2) -- Line 116
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local ipairs_result1, ipairs_result2, ipairs_result3 = ipairs(arg2.rays)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [43] 38. Error Block 22 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [43] 38. Error Block 22 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [9] 8. Error Block 33 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [43.11]
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [43.2147483650]
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [43.14]
	if nil > nil then
	else
	end
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [43.15]
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [43.12]
	if nil > nil then
		-- KONSTANTWARNING: GOTO [24] #21
	end
	-- KONSTANTERROR: [9] 8. Error Block 33 end (CF ANALYSIS FAILED)
end
function module_upvr.RecordExposureFor10SecImpressions(arg1, arg2) -- Line 149
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local tostring_result1_3 = tostring(arg2.bloxbiz_ad_id)
	local player_id = arg2.player_id
	module_upvr.LocalExposureStorage[player_id].Exposures[tostring_result1_3] = module_upvr:GetAdExposureCount(player_id, tostring_result1_3) + module_upvr:getValidExposureTime(arg2) / 10
end
function module_upvr.RecordExposureForXSecVideoPlays(arg1, arg2, arg3) -- Line 160
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local tostring_result1_2 = tostring(arg2.bloxbiz_ad_id)
	local player_id_2 = arg2.player_id
	if arg3 <= (arg2.play_end_seconds or 0) then
		module_upvr.LocalExposureStorage[player_id_2].Exposures[tostring_result1_2] = module_upvr:GetAdExposureCount(player_id_2, tostring_result1_2) + 1
	end
end
local RunService_upvr = game:GetService("RunService")
function module_upvr.WaitForDataReady(arg1, arg2) -- Line 173
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: RunService_upvr (readonly)
	]]
	local var41
	while not module_upvr.LocalExposureStorage[arg2] and not var41 do
		if 10 >= tick() - tick() then
			var41 = false
		else
			var41 = true
		end
		RunService_upvr.Stepped:Wait()
	end
	if var41 then
		module_upvr.LocalExposureStorage[arg2] = module_upvr:GetDataTemplate()
	end
end
function module_upvr.RefreshExposures(arg1, arg2) -- Line 190
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	if not module_upvr:IsSameDay(module_upvr.LocalExposureStorage[arg2].TimeData) then
		module_upvr.LocalExposureStorage[arg2] = module_upvr:GetDataTemplate()
	end
end
function module_upvr.GetAdExposureCount(arg1, arg2, arg3) -- Line 200
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	module_upvr:WaitForDataReady(arg2)
	module_upvr:RefreshExposures(arg2)
	local tostring_result1 = tostring(arg3)
	local Exposures = module_upvr.LocalExposureStorage[arg2].Exposures
	local var44 = Exposures[tostring_result1] or 0
	if not var44 then
		Exposures[tostring_result1] = 0
	end
	return var44
end
Players.PlayerAdded:Connect(function(arg1) -- Line 216
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	module_upvr:FetchExposureData(arg1.UserId)
end)
Players.PlayerRemoving:Connect(function(arg1) -- Line 220
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	module_upvr:SaveExposureData(arg1.UserId)
end)
for _, v in pairs(game.Players:GetPlayers()) do
	module_upvr:FetchExposureData(v.UserId)
end
return module_upvr