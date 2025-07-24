-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:00:56
-- Luau version 6, Types version 3
-- Time taken: 0.002643 seconds

local module_2_upvr = {}
module_2_upvr.__index = module_2_upvr
function module_2_upvr.new() -- Line 17
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	local module = {
		audioPlayers = {};
		isInitialized = false;
		sfxAudioFader = nil;
		onPartyVoiceVolumeChangedSignal = nil;
	}
	setmetatable(module, module_2_upvr)
	return module
end
local game_GetEngineFeature_result1_upvr_2 = game:GetEngineFeature("AudioPlayerUpdateAssetAPI")
function module_2_upvr.addSound(arg1, arg2, arg3) -- Line 28
	--[[ Upvalues[1]:
		[1]: game_GetEngineFeature_result1_upvr_2 (readonly)
	]]
	local AudioPlayer = Instance.new("AudioPlayer")
	AudioPlayer.Parent = workspace
	if game_GetEngineFeature_result1_upvr_2 then
		AudioPlayer.Asset = arg3
	else
		AudioPlayer.AssetId = arg3
	end
	local Wire = Instance.new("Wire")
	Wire.Parent = workspace
	Wire.SourceInstance = AudioPlayer
	Wire.TargetInstance = arg1.sfxAudioFader
	arg1.audioPlayers[arg2] = AudioPlayer
end
local game_DefineFastInt_result1_upvr = game:DefineFastInt("PartyVoiceAudioFaderVolumePerc", 100)
local ReplicatedStorage_upvr = game:GetService("ReplicatedStorage")
local game_GetEngineFeature_result1_upvr = game:GetEngineFeature("PartyVoiceVolume")
local UserGameSettings_upvr = UserSettings():GetService("UserGameSettings")
function module_2_upvr.initialize(arg1) -- Line 46
	--[[ Upvalues[4]:
		[1]: game_DefineFastInt_result1_upvr (readonly)
		[2]: ReplicatedStorage_upvr (readonly)
		[3]: game_GetEngineFeature_result1_upvr (readonly)
		[4]: UserGameSettings_upvr (readonly)
	]]
	if game_DefineFastInt_result1_upvr ~= 100 then
		ReplicatedStorage_upvr:WaitForChild("AudioFader").Volume = game_DefineFastInt_result1_upvr / 100
	end
	local AudioDeviceOutput = Instance.new("AudioDeviceOutput")
	AudioDeviceOutput.Parent = workspace
	local AudioFader = Instance.new("AudioFader")
	AudioFader.Parent = workspace
	if game_DefineFastInt_result1_upvr ~= 100 then
		AudioFader.Volume = game_DefineFastInt_result1_upvr / 100
	end
	local Wire_2 = Instance.new("Wire")
	Wire_2.Parent = workspace
	Wire_2.SourceInstance = AudioFader
	Wire_2.TargetInstance = AudioDeviceOutput
	arg1.sfxAudioFader = AudioFader
	arg1:addSound("join", "rbxassetid://87296803139875")
	arg1:addSound("leave", "rbxassetid://108128059974752")
	arg1.isInitialized = true
	if game_GetEngineFeature_result1_upvr then
		arg1.onPartyVoiceVolumeChangedSignal = UserGameSettings_upvr:GetPropertyChangedSignal("PartyVoiceVolume"):Connect(function() -- Line 75
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1:playSound("join")
		end)
	end
end
function module_2_upvr.playSound(arg1, arg2) -- Line 81
	if not arg1.isInitialized then
		arg1:initialize()
	end
	if not arg1.isInitialized or not arg1.audioPlayers[arg2] then
	else
		arg1.audioPlayers[arg2].TimePosition = 0
		arg1.audioPlayers[arg2]:Play()
	end
end
function module_2_upvr.disconnect(arg1) -- Line 94
	if arg1.onPartyVoiceVolumeChangedSignal then
		arg1.onPartyVoiceVolumeChangedSignal:Disconnect()
	end
end
module_2_upvr.default = module_2_upvr.new()
return module_2_upvr