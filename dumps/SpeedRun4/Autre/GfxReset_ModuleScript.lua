-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:44:48
-- Luau version 6, Types version 3
-- Time taken: 0.002903 seconds

local function _(arg1) -- Line 16, Named "SavedQualitySettingEnumFromValue"
	for _, v in Enum.SavedQualitySetting:GetEnumItems(), nil do
		if v.Value == arg1 then
			return v
		end
	end
	return Enum.SavedQualitySetting.Automatic
end
local game_DefineFastFlag_result1_upvr_3 = game:DefineFastFlag("IGMAlwaysResetGfxLv5", false)
local GameSettings_upvr = UserSettings().GameSettings
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("IGMRevertGfxQuality", false)
local game_DefineFastFlag_result1_upvr_4 = game:DefineFastFlag("IGMRevertGfxLv5Only", false)
local game_DefineFastFlag_result1_upvr_5 = game:DefineFastFlag("IGMResetGfxQuality", false)
local game_DefineFastFlag_result1_upvr_2 = game:DefineFastFlag("IGMResetGfxLv5Only", false)
function applicationId() -- Line 67
	local AppStorageService = game:GetService("AppStorageService")
	if not AppStorageService then
		return nil
	end
	local any_GetItem_result1 = AppStorageService:GetItem("AppInstallationId")
	local typeof_result1 = typeof(any_GetItem_result1)
	if typeof_result1 == "number" then
		return tonumber(any_GetItem_result1) or nil
	end
	if typeof_result1 == "string" then
		if string.len(any_GetItem_result1) <= 0 then
			return nil
		end
		return tonumber(string.sub(any_GetItem_result1, -string.len(tostring(1000))))
	end
	return nil
end
local game_DefineFastInt_result1_upvr = game:DefineFastInt("IGMTempOverrideGfxLv5", 0)
return {
	RunGfxReset = function() -- Line 26, Named "RunGfxReset"
		--[[ Upvalues[6]:
			[1]: game_DefineFastFlag_result1_upvr_3 (readonly)
			[2]: GameSettings_upvr (readonly)
			[3]: game_DefineFastFlag_result1_upvr (readonly)
			[4]: game_DefineFastFlag_result1_upvr_4 (readonly)
			[5]: game_DefineFastFlag_result1_upvr_5 (readonly)
			[6]: game_DefineFastFlag_result1_upvr_2 (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 41 start (CF ANALYSIS FAILED)
		local var9
		if GameSettings_upvr.SavedQualityLevel ~= Enum.SavedQualitySetting.QualityLevel5 then
			var9 = false
		else
			var9 = true
		end
		-- KONSTANTERROR: [0] 1. Error Block 41 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [11] 9. Error Block 5 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [11] 9. Error Block 5 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [12] 10. Error Block 6 start (CF ANALYSIS FAILED)
		GameSettings_upvr.SavedQualityLevel = Enum.SavedQualitySetting.Automatic
		-- KONSTANTERROR: [12] 10. Error Block 6 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [17] 13. Error Block 7 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [17] 13. Error Block 7 end (CF ANALYSIS FAILED)
	end;
	TemporaryOverride = function(arg1) -- Line 93, Named "TemporaryOverride"
		--[[ Upvalues[1]:
			[1]: game_DefineFastInt_result1_upvr (readonly)
		]]
		local var14
		if ((applicationId() or 0) + 329) % 1000 >= game_DefineFastInt_result1_upvr then
			var14 = false
		else
			var14 = true
		end
		if var14 and (arg1 == Enum.SavedQualitySetting.QualityLevel5 or arg1 == Enum.SavedQualitySetting.QualityLevel5.Value) then
			return true, Enum.SavedQualitySetting.Automatic.Value
		end
		return false, Enum.SavedQualitySetting.Automatic.Value
	end;
}