-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:27:31
-- Luau version 6, Types version 3
-- Time taken: 0.002638 seconds

local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("DevEnableAppNavIXP2", false)
local game_DefineFastFlag_result1_upvr_2 = game:DefineFastFlag("EnableAppNavABTest2", false)
local GetFFlagEnableAppStorageJsonCacheInABTest_upvr = require(script.Parent.GetFFlagEnableAppStorageJsonCacheInABTest)
local AppStorageJsonCacheUtils_upvr = require(script:FindFirstAncestor("SharedFlags").Parent.AppCommonLib).Utils.AppStorageJsonCacheUtils
local game_DefineFastString_result1_upvr = game:DefineFastString("LuaAppUniversalityAppNavLayerName", "Universality.AppNav")
local AppStorageService_upvr = game:GetService("AppStorageService")
local HttpService_upvr = game:GetService("HttpService")
local function enabledByIXP_upvr() -- Line 24, Named "enabledByIXP"
	--[[ Upvalues[7]:
		[1]: game_DefineFastFlag_result1_upvr (readonly)
		[2]: game_DefineFastFlag_result1_upvr_2 (readonly)
		[3]: GetFFlagEnableAppStorageJsonCacheInABTest_upvr (readonly)
		[4]: AppStorageJsonCacheUtils_upvr (readonly)
		[5]: game_DefineFastString_result1_upvr (readonly)
		[6]: AppStorageService_upvr (readonly)
		[7]: HttpService_upvr (readonly)
	]]
	if game_DefineFastFlag_result1_upvr then
		return true
	end
	if game_DefineFastFlag_result1_upvr_2 then
		local var20
		if GetFFlagEnableAppStorageJsonCacheInABTest_upvr() then
			local any_getCachedJsonForKey_result1 = AppStorageJsonCacheUtils_upvr.default:getCachedJsonForKey("ExperimentCache")
			if any_getCachedJsonForKey_result1 then
				local var22 = any_getCachedJsonForKey_result1[game_DefineFastString_result1_upvr]
				if not var22 then
					var22 = any_getCachedJsonForKey_result1["Universality.AppNav"]
					if not var22 then
						var22 = nil
					end
				end
				var20 = var22
				-- KONSTANTWARNING: GOTO [48] #43
			end
		else
			local pcall_result1_4, pcall_result2_4_upvr = pcall(function() -- Line 38
				--[[ Upvalues[1]:
					[1]: AppStorageService_upvr (copied, readonly)
				]]
				return AppStorageService_upvr:GetItem("ExperimentCache")
			end)
			if pcall_result1_4 then
				local pcall_result1, pcall_result2_3 = pcall(function() -- Line 42
					--[[ Upvalues[2]:
						[1]: HttpService_upvr (copied, readonly)
						[2]: pcall_result2_4_upvr (readonly)
					]]
					return HttpService_upvr:JSONDecode(pcall_result2_4_upvr)
				end)
				if pcall_result1 then
					local var29 = pcall_result2_3[game_DefineFastString_result1_upvr]
					if not var29 then
						var29 = pcall_result2_3["Universality.AppNav"]
						if not var29 then
							var29 = nil
						end
					end
					var20 = var29
				end
			end
		end
		if var20 then
			pcall_result2_4_upvr = var20.AppNavVariant
			local var30 = pcall_result2_4_upvr or nil
			if var30 == nil then
				pcall_result2_4_upvr = false
				return pcall_result2_4_upvr
			end
			pcall_result1 = var30
			local var31 = pcall_result1
			pcall_result2_4_upvr = tonumber(var31)
			if pcall_result2_4_upvr ~= 1 then
				var31 = false
			else
				var31 = true
			end
			return var31
		end
		return false
	end
	return false
end
local var33_upvw
local GetFFlagLuaAppUseAppHeaderBar_upvr = require(script.Parent.GetFFlagLuaAppUseAppHeaderBar)
return function() -- Line 69
	--[[ Upvalues[3]:
		[1]: var33_upvw (read and write)
		[2]: enabledByIXP_upvr (readonly)
		[3]: GetFFlagLuaAppUseAppHeaderBar_upvr (readonly)
	]]
	if var33_upvw == nil then
		var33_upvw = enabledByIXP_upvr()
	end
	local var35 = var33_upvw
	if var35 then
		var35 = GetFFlagLuaAppUseAppHeaderBar_upvr()
	end
	return var35
end