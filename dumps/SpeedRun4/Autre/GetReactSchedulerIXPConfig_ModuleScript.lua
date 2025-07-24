-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:27:30
-- Luau version 6, Types version 3
-- Time taken: 0.001323 seconds

local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("EnableReactSchedulerIXP", false)
local GetFFlagEnableAppStorageJsonCacheInABTest_upvr = require(script.Parent.GetFFlagEnableAppStorageJsonCacheInABTest)
local AppStorageJsonCacheUtils_upvr = require(script:FindFirstAncestor("SharedFlags").Parent.AppCommonLib).Utils.AppStorageJsonCacheUtils
local game_DefineFastString_result1_upvr = game:DefineFastString("ExperienceReactDeferredScheduler_LayerName", "UIEcosystem.User")
local AppStorageService_upvr = game:GetService("AppStorageService")
local HttpService_upvr = game:GetService("HttpService")
return function() -- Line 26
	--[[ Upvalues[6]:
		[1]: game_DefineFastFlag_result1_upvr (readonly)
		[2]: GetFFlagEnableAppStorageJsonCacheInABTest_upvr (readonly)
		[3]: AppStorageJsonCacheUtils_upvr (readonly)
		[4]: game_DefineFastString_result1_upvr (readonly)
		[5]: AppStorageService_upvr (readonly)
		[6]: HttpService_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 18 start (CF ANALYSIS FAILED)
	if not game_DefineFastFlag_result1_upvr then
		return nil
	end
	if GetFFlagEnableAppStorageJsonCacheInABTest_upvr() then
		local any_getCachedJsonForKey_result1 = AppStorageJsonCacheUtils_upvr.default:getCachedJsonForKey("ExperimentCache")
		if any_getCachedJsonForKey_result1 then
			do
				return any_getCachedJsonForKey_result1[game_DefineFastString_result1_upvr]
			end
			-- KONSTANTWARNING: GOTO [36] #33
		end
	else
		local pcall_result1_4, pcall_result2_3_upvr = pcall(function() -- Line 37
			--[[ Upvalues[1]:
				[1]: AppStorageService_upvr (copied, readonly)
			]]
			return AppStorageService_upvr:GetItem("ExperimentCache")
		end)
		if pcall_result1_4 then
			local pcall_result1_3, pcall_result2 = pcall(function() -- Line 41
				--[[ Upvalues[2]:
					[1]: HttpService_upvr (copied, readonly)
					[2]: pcall_result2_3_upvr (readonly)
				]]
				return HttpService_upvr:JSONDecode(pcall_result2_3_upvr)
			end)
			if pcall_result1_3 and pcall_result2 then
				return pcall_result2[game_DefineFastString_result1_upvr]
			end
		end
	end
	-- KONSTANTERROR: [0] 1. Error Block 18 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [36] 33. Error Block 11 start (CF ANALYSIS FAILED)
	do
		return nil
	end
	-- KONSTANTERROR: [36] 33. Error Block 11 end (CF ANALYSIS FAILED)
end