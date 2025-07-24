-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:27:43
-- Luau version 6, Types version 3
-- Time taken: 0.002159 seconds

local game_DefineFastFlag_result1_upvr_2 = game:DefineFastFlag("UIBloxUseFoundationButtonABTest2", false)
local GetFFlagEnableAppStorageJsonCacheInABTest_upvr = require(script.Parent.Parent.GetFFlagEnableAppStorageJsonCacheInABTest)
local AppStorageJsonCacheUtils_upvr = require(script:FindFirstAncestor("SharedFlags").Parent.AppCommonLib).Utils.AppStorageJsonCacheUtils
local game_DefineFastString_result1_upvr = game:DefineFastString("UIBloxUseFoundationButtonABTest_LayerName", "Universality.AppNav.2")
local AppStorageService_upvr = game:GetService("AppStorageService")
local HttpService_upvr = game:GetService("HttpService")
local game_DefineFastString_result1_upvr_2 = game:DefineFastString("UIBloxUseFoundationButtonABTest_VariantKey", "FoundationMigrationButtonVariant")
local function enabledByIXP_upvr() -- Line 23, Named "enabledByIXP"
	--[[ Upvalues[7]:
		[1]: game_DefineFastFlag_result1_upvr_2 (readonly)
		[2]: GetFFlagEnableAppStorageJsonCacheInABTest_upvr (readonly)
		[3]: AppStorageJsonCacheUtils_upvr (readonly)
		[4]: game_DefineFastString_result1_upvr (readonly)
		[5]: AppStorageService_upvr (readonly)
		[6]: HttpService_upvr (readonly)
		[7]: game_DefineFastString_result1_upvr_2 (readonly)
	]]
	if game_DefineFastFlag_result1_upvr_2 then
		local var18
		if GetFFlagEnableAppStorageJsonCacheInABTest_upvr() then
			local any_getCachedJsonForKey_result1 = AppStorageJsonCacheUtils_upvr.default:getCachedJsonForKey("ExperimentCache")
			if any_getCachedJsonForKey_result1 then
				var18 = any_getCachedJsonForKey_result1[game_DefineFastString_result1_upvr] or nil
				-- KONSTANTWARNING: GOTO [34] #31
			end
		else
			local pcall_result1, pcall_result2_2_upvr = pcall(function() -- Line 33
				--[[ Upvalues[1]:
					[1]: AppStorageService_upvr (copied, readonly)
				]]
				return AppStorageService_upvr:GetItem("ExperimentCache")
			end)
			if pcall_result1 then
				local pcall_result1_2, pcall_result2_3 = pcall(function() -- Line 37
					--[[ Upvalues[2]:
						[1]: HttpService_upvr (copied, readonly)
						[2]: pcall_result2_2_upvr (readonly)
					]]
					return HttpService_upvr:JSONDecode(pcall_result2_2_upvr)
				end)
				if pcall_result1_2 then
					var18 = pcall_result2_3[game_DefineFastString_result1_upvr] or nil
				end
			end
		end
		if var18 then
			pcall_result2_2_upvr = var18[game_DefineFastString_result1_upvr_2]
			local var26 = pcall_result2_2_upvr or nil
			if var26 == nil then
				pcall_result2_2_upvr = false
				return pcall_result2_2_upvr
			end
			local var27 = var26
			pcall_result2_2_upvr = tonumber(var27)
			if pcall_result2_2_upvr ~= 1 then
				var27 = false
			else
				var27 = true
			end
			return var27
		end
		return false
	end
	return false
end
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("UIBloxUseFoundationButton2", false)
local var30_upvw
return function() -- Line 63
	--[[ Upvalues[3]:
		[1]: game_DefineFastFlag_result1_upvr (readonly)
		[2]: var30_upvw (read and write)
		[3]: enabledByIXP_upvr (readonly)
	]]
	if game_DefineFastFlag_result1_upvr then
		return true
	end
	if var30_upvw == nil then
		var30_upvw = enabledByIXP_upvr()
	end
	return var30_upvw
end