-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:24:56
-- Luau version 6, Types version 3
-- Time taken: 0.001497 seconds

local Constants_upvr = require(script.Parent.Parent.Parent.ContactImporter.Common.Constants)
local game_GetEngineFeature_result1_upvr = game:GetEngineFeature(Constants_upvr.UNIVERSAL_APP_CONTACT_IMPORTER_STORAGE_KEYS)
local module = {
	isUserOptedInLocalStorage = function(arg1, arg2, arg3) -- Line 18, Named "isUserOptedInLocalStorage"
		--[[ Upvalues[2]:
			[1]: game_GetEngineFeature_result1_upvr (readonly)
			[2]: Constants_upvr (readonly)
		]]
		if not game_GetEngineFeature_result1_upvr then
			return false
		end
		local pcall_result1_2, pcall_result2_2 = pcall(function() -- Line 29
			--[[ Upvalues[2]:
				[1]: arg2 (readonly)
				[2]: Constants_upvr (copied, readonly)
			]]
			return arg2:GetItem(Constants_upvr.LOCAL_STORAGE_KEY_OPTED_IN_USERS)
		end)
		if pcall_result1_2 then
			for i in string.gmatch(pcall_result2_2 or "", "([^,]+)") do
				if arg3 == i then
					return true
				end
			end
		end
		return false
	end;
}
local getFIntContactImporterModalDisplayMaxCount_upvr = require(script.Parent.Parent.Flags.getFIntContactImporterModalDisplayMaxCount)
local getFIntContactImporterModalDisplayMinDays_upvr = require(script.Parent.Parent.Flags.getFIntContactImporterModalDisplayMinDays)
function module.shouldUserSeeModalPotentiallyAgain(arg1, arg2, arg3) -- Line 43
	--[[ Upvalues[4]:
		[1]: game_GetEngineFeature_result1_upvr (readonly)
		[2]: Constants_upvr (readonly)
		[3]: getFIntContactImporterModalDisplayMaxCount_upvr (readonly)
		[4]: getFIntContactImporterModalDisplayMinDays_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 27 start (CF ANALYSIS FAILED)
	if not game_GetEngineFeature_result1_upvr then
		return true
	end
	local pcall_result1_3, pcall_result2_3 = pcall(function() -- Line 49
		--[[ Upvalues[2]:
			[1]: arg2 (readonly)
			[2]: Constants_upvr (copied, readonly)
		]]
		return arg2:GetItem(Constants_upvr.LOCAL_STORAGE_KEY_MODAL_DISPLAY_COUNT)
	end)
	if not pcall_result1_3 then
		return true
	end
	local string_gmatch_result1, string_gmatch_result2_2, string_gmatch_result3 = string.gmatch(pcall_result2_3 or "", "([^,]+)")
	-- KONSTANTERROR: [0] 1. Error Block 27 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [35] 31. Error Block 8 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [35] 31. Error Block 8 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [20] 19. Error Block 35 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [35.12]
	if nil == arg3 then
		if 0 <= getFIntContactImporterModalDisplayMaxCount_upvr() then
			return true
		end
		local pcall_result1, pcall_result2 = pcall(function() -- Line 69
			--[[ Upvalues[2]:
				[1]: arg2 (readonly)
				[2]: Constants_upvr (copied, readonly)
			]]
			return arg2:GetItem(Constants_upvr.LOCAL_STORAGE_KEY_MODAL_TIMESTAMP)
		end)
		if not pcall_result1 then
			return true
		end
		local _, _, _ = string.gmatch(pcall_result2 or "", "([^,]+)")
		-- KONSTANTWARNING: GOTO [59] #51
	end
	-- KONSTANTERROR: [20] 19. Error Block 35 end (CF ANALYSIS FAILED)
end
return module