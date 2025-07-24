-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:29:58
-- Luau version 6, Types version 3
-- Time taken: 0.002400 seconds

local Songbird = script:FindFirstAncestor("Songbird")
local tbl_upvr_2 = {{
	className = "Sound";
	title = "Beach Morning LoFi";
	assetId = "rbxassetid://83784623771159";
	position = Vector3.new(50, 0, 0);
}, {
	className = "AudioPlayer";
	title = "Mirage Portal";
	assetId = "rbxassetid://75793628822368";
	position = Vector3.new(-50, 0, 0);
}, {
	className = "Sound";
	title = "Altogether Elsewhere";
	assetId = "rbxassetid://73856926671353";
	position = Vector3.new(0, 0, 50);
}, {
	className = "Sound";
	title = "Shiawase";
	assetId = "rbxassetid://5409360995";
	position = Vector3.new(0, 0, -50);
}, {
	className = "Sound";
	title = "Life in an Elevator";
	assetId = "rbxassetid://1841647093";
	position = Vector3.new(100, 0, 0);
	shouldSurfaceToUser = false;
}, {
	className = "Sound";
	title = "Explosion";
	assetId = "rbxassetid://157878578";
	position = Vector3.new(0, 0, 100);
	shouldSurfaceToUser = false;
}}
local function spawnAudioEmitter_upvr(arg1) -- Line 68, Named "spawnAudioEmitter"
	local Part = Instance.new("Part")
	Part.Position = arg1.position
	Part.Anchored = true
	Part.Name = arg1.title
	if arg1.className == "Sound" then
		local Sound = Instance.new("Sound")
		Sound.SoundId = arg1.assetId
		Sound.Looped = true
		Sound.RollOffMinDistance = 10
		Sound.RollOffMaxDistance = Vector3.new(50, 0, 50).X * 0.8
		Sound.Parent = Part
		Sound:Play()
	else
		local AudioPlayer = Instance.new("AudioPlayer")
		AudioPlayer.Asset = arg1.assetId
		AudioPlayer.Looping = true
		AudioPlayer.Parent = Part
		local AudioEmitter = Instance.new("AudioEmitter")
		AudioEmitter.Parent = Part
		local Wire = Instance.new("Wire")
		Wire.SourceInstance = AudioPlayer
		Wire.TargetInstance = AudioEmitter
		Wire.Parent = AudioPlayer
		AudioPlayer:Play()
	end
	Part.Parent = workspace
	return Part
end
local getFFlagDebugMusicSampleSounds_upvr = require(Songbird.Flags.getFFlagDebugMusicSampleSounds)
local useEffect_upvr = require(Songbird.Parent.React).useEffect
local ReplicatedStorage_upvr = game:GetService("ReplicatedStorage")
return function() -- Line 106, Named "DebugAudioEmitters"
	--[[ Upvalues[5]:
		[1]: getFFlagDebugMusicSampleSounds_upvr (readonly)
		[2]: useEffect_upvr (readonly)
		[3]: tbl_upvr_2 (readonly)
		[4]: spawnAudioEmitter_upvr (readonly)
		[5]: ReplicatedStorage_upvr (readonly)
	]]
	if getFFlagDebugMusicSampleSounds_upvr() then
		useEffect_upvr(function() -- Line 108
			local AudioListener = Instance.new("AudioListener")
			local AudioDeviceOutput = Instance.new("AudioDeviceOutput")
			AudioDeviceOutput.Parent = AudioListener
			local Wire_2 = Instance.new("Wire")
			Wire_2.SourceInstance = AudioListener
			Wire_2.TargetInstance = AudioDeviceOutput
			Wire_2.Parent = AudioListener
			AudioListener.Parent = workspace.CurrentCamera
		end, {})
		useEffect_upvr(function() -- Line 122
			--[[ Upvalues[3]:
				[1]: tbl_upvr_2 (copied, readonly)
				[2]: spawnAudioEmitter_upvr (copied, readonly)
				[3]: ReplicatedStorage_upvr (copied, readonly)
			]]
			local tbl_upvr = {}
			for _, v in tbl_upvr_2 do
				local spawnAudioEmitter_result1 = spawnAudioEmitter_upvr(v)
				local BillboardGui = Instance.new("BillboardGui")
				BillboardGui.ExtentsOffsetWorldSpace = Vector3.new(0, 10, 0)
				BillboardGui.Size = UDim2.fromScale(10, 2)
				BillboardGui.Adornee = spawnAudioEmitter_result1
				local TextLabel = Instance.new("TextLabel")
				TextLabel.Text = v.title
				TextLabel.Size = UDim2.fromScale(1, 1)
				TextLabel.Font = Enum.Font.BuilderSansBold
				local var30 = true
				TextLabel.TextScaled = var30
				if v.shouldSurfaceToUser == false then
					var30 = Color3.fromHex("#c4474f")
				else
					var30 = Color3.fromHex("#fff")
				end
				TextLabel.TextColor3 = var30
				TextLabel.BackgroundTransparency = 1
				TextLabel.Parent = BillboardGui
				local UIStroke = Instance.new("UIStroke")
				UIStroke.Color = Color3.fromHex("#202020")
				UIStroke.Thickness = 2
				UIStroke.Parent = TextLabel
				BillboardGui.Parent = spawnAudioEmitter_result1
				table.insert(tbl_upvr, spawnAudioEmitter_result1)
			end
			local Sound_2_upvr = Instance.new("Sound")
			Sound_2_upvr.SoundId = "rbxassetid://9048375035"
			Sound_2_upvr.Volume = 0.05
			Sound_2_upvr.Looped = true
			Sound_2_upvr.Parent = ReplicatedStorage_upvr
			Sound_2_upvr:Play()
			return function() -- Line 161
				--[[ Upvalues[2]:
					[1]: Sound_2_upvr (readonly)
					[2]: tbl_upvr (readonly)
				]]
				Sound_2_upvr:Destroy()
				for _, v_2 in tbl_upvr do
					v_2:Destroy()
				end
			end
		end, {})
	end
	return nil
end