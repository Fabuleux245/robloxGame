-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:04:22
-- Luau version 6, Types version 3
-- Time taken: 0.007303 seconds

local SceneUnderstanding = script:FindFirstAncestor("SceneUnderstanding")
local safelyAccessProperty_upvr = require(SceneUnderstanding.safelyAccessProperty)
local getFFlagNormalizeAudibilityForAudioSources_upvr = require(SceneUnderstanding.flags.getFFlagNormalizeAudibilityForAudioSources)
local tbl_upvr = {"Wire", "AudioAnalyzer", "AudioChorus", "AudioCompressor", "AudioDeviceInput", "AudioDeviceOutput", "AudioDistortion", "AudioEcho", "AudioEmitter", "AudioEqualizer", "AudioFader", "AudioFilter", "AudioFlanger", "AudioLimiter", "AudioListener", "AudioPitchShifter", "AudioPlayer", "AudioReverb"}
local function _(arg1) -- Line 58, Named "toAudioGraphNode"
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	if arg1 then
		for _, v in tbl_upvr do
			if arg1:IsA(v) then
				return arg1
			end
		end
	end
	return nil
end
local function _(arg1) -- Line 69, Named "calculateSoundPotentialAudibility"
	--[[ Upvalues[2]:
		[1]: safelyAccessProperty_upvr (readonly)
		[2]: getFFlagNormalizeAudibilityForAudioSources_upvr (readonly)
	]]
	local var7
	if not arg1.IsPlaying then
		return 0
	end
	var7 = arg1
	if arg1.SoundGroup then
		var7 = arg1.SoundGroup.Volume
	else
		var7 = 1
	end
	local var8
	if getFFlagNormalizeAudibilityForAudioSources_upvr() and var8 < 1 then
		var8 /= 10
	end
	return var7 * arg1.Volume * var8
end
local getAudibilityOf_upvw
if require(SceneUnderstanding.flags.getFFlagSupportAudioChannelSplitters)() then
	local getOutputWires_upvr = require(SceneUnderstanding.wiring.getOutputWires)
	local toWirableInstance_upvr = require(SceneUnderstanding.wiring.toWirableInstance)
	local function calculatePotentialAudibility_upvr(arg1) -- Line 99, Named "getOutputsOf"
		--[[ Upvalues[2]:
			[1]: getOutputWires_upvr (readonly)
			[2]: toWirableInstance_upvr (readonly)
		]]
		if typeof(arg1) == "Instance" and arg1:IsA("AudioEmitter") then
			return arg1:GetInteractingListeners()
		end
		for _, v_2 in getOutputWires_upvr(arg1) do
			local toWirableInstance_upvr_result1 = toWirableInstance_upvr(v_2.TargetInstance)
			if toWirableInstance_upvr_result1 then
				table.insert({}, toWirableInstance_upvr_result1)
			end
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		return {}
	end
	local function getAudibilityMultiplierFor(arg1) -- Line 118
		local var22 = 0
		for _, v_3 in arg1:GetInteractingListeners() do
			var22 += v_3:GetAudibilityFor(arg1)
		end
		return var22
	end
	function getAudibilityOf_upvw(arg1, arg2) -- Line 126, Named "getAudibilityOf"
		--[[ Upvalues[2]:
			[1]: calculatePotentialAudibility_upvr (readonly)
			[2]: getAudibilityOf_upvw (read and write)
		]]
		if arg2 then
			local _ = arg2
		else
		end
		if ({})[arg1] then
			return 0
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		;({})[arg1] = true
		local var35 = 1
		if typeof(arg1) == "Instance" then
			if arg1:IsA("AudioPlayer") or arg1:IsA("AudioFader") then
				var35 = arg1.Volume
			else
				local var36
				if arg1:IsA("AudioEmitter") then
					for _, _ in arg1:GetInteractingListeners() do
						local var40
					end
					var35 = var40
				elseif arg1:IsA("AudioDeviceOutput") then
					return 1
				end
			end
		end
		for _, _ in calculatePotentialAudibility_upvr(arg1) do
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			local var44
		end
		return var44
	end
else
	local getConnectedWires_upvr = require(SceneUnderstanding.audio.getConnectedWires)
	function calculatePotentialAudibility_upvr(arg1) -- Line 151, Named "getOutputsOf"
		--[[ Upvalues[2]:
			[1]: getConnectedWires_upvr (readonly)
			[2]: tbl_upvr (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 16 start (CF ANALYSIS FAILED)
		if arg1:IsA("AudioEmitter") then
			return arg1:GetInteractingListeners()
		end
		local var45_result1, var45_result2, var45_result3 = getConnectedWires_upvr(arg1, "Output")
		-- KONSTANTERROR: [0] 1. Error Block 16 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [32] 27. Error Block 19 start (CF ANALYSIS FAILED)
		local var49
		if var49 then
			table.insert({}, var49)
		end
		-- KONSTANTERROR: [32] 27. Error Block 19 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [16] 14. Error Block 4 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [16] 14. Error Block 4 end (CF ANALYSIS FAILED)
	end
	local function _(arg1) -- Line 166, Named "getAudibilityMultiplierFor"
		local var54 = 0
		for _, v_6 in arg1:GetInteractingListeners() do
			var54 += v_6:GetAudibilityFor(arg1)
		end
		return var54
	end
	function getAudibilityOf_upvw(arg1, arg2) -- Line 174, Named "getAudibilityOf"
		--[[ Upvalues[2]:
			[1]: calculatePotentialAudibility_upvr (readonly)
			[2]: getAudibilityOf_upvw (read and write)
		]]
		if arg2 then
			local _ = arg2
		else
		end
		if ({})[arg1] then
			return 0
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		;({})[arg1] = true
		if arg1:IsA("AudioPlayer") or arg1:IsA("AudioFader") then
		else
			local var67
			if arg1:IsA("AudioEmitter") then
				for _, _ in arg1:GetInteractingListeners() do
					local var71
				end
			elseif arg1:IsA("AudioDeviceOutput") then
				return 1
			end
		end
		for _, _ in calculatePotentialAudibility_upvr(arg1) do
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			local var75
		end
		return var75
	end
end
local UserGameSettings_upvr = UserSettings():GetService("UserGameSettings")
function calculatePotentialAudibility_upvr(arg1) -- Line 210, Named "calculatePotentialAudibility"
	--[[ Upvalues[4]:
		[1]: safelyAccessProperty_upvr (readonly)
		[2]: UserGameSettings_upvr (readonly)
		[3]: getFFlagNormalizeAudibilityForAudioSources_upvr (readonly)
		[4]: getAudibilityOf_upvw (read and write)
	]]
	local var77 = 0
	if arg1:IsA("Sound") then
		local var78
		if not arg1.IsPlaying then
			var77 = 0
		else
			var78 = arg1
			if arg1.SoundGroup then
				var78 = arg1.SoundGroup.Volume
			else
				var78 = 1
			end
			local var79
			if getFFlagNormalizeAudibilityForAudioSources_upvr() and var79 < 1 then
				var79 /= 10
			end
			var77 = var78 * arg1.Volume * var79
		end
	else
		var79 = getAudibilityOf_upvw
		var78 = arg1
		var79 = var79(var78)
		var77 = var79
	end
	return safelyAccessProperty_upvr(UserGameSettings_upvr, "MasterVolume", 0) * var77
end
return calculatePotentialAudibility_upvr