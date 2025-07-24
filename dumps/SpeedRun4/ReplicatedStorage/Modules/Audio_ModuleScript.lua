-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:06:33
-- Luau version 6, Types version 3
-- Time taken: 0.027535 seconds

local module_6_upvr = {}
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local SoundService_upvr = game:GetService("SoundService")
local Modules = ReplicatedStorage:WaitForChild("Modules")
local module_3_upvr = require(Modules:WaitForChild("Tweens"))
module_6_upvr.SoundGroup = {
	Master = Instance.new("SoundGroup");
	Music = Instance.new("SoundGroup");
	Sound = Instance.new("SoundGroup");
	SFX = Instance.new("SoundGroup");
	Ambience = Instance.new("SoundGroup");
	UI = Instance.new("SoundGroup");
}
module_6_upvr.ManagedSound = {}
module_6_upvr.SoundPool = {}
module_6_upvr.SoundCollection = {}
module_6_upvr.Playlist = {}
module_6_upvr.SubscribedPlaylist = {}
module_6_upvr.SFX = {}
local tbl_5_upvr = {
	SoundId = "";
	Volume = 0.5;
	Parent = SoundService_upvr;
	SoundGroup = module_6_upvr.SoundGroup.Master;
	PoolSize = 3;
}
module_6_upvr.PlaylistFadeDuration = 0.5
local tbl_6_upvr = {
	Now = os.clock();
	FadingPlaylist = false;
	CurrentPlaylist = nil;
	PendingPlaylist = nil;
	VolumeFades = {};
	LoadingSounds = {};
	FailedSoundIds = {};
	ActiveSFX = {};
	ActiveSpeedTweens = {};
	SteppingManagedInternally = true;
	RenderSteppedConnection = nil;
}
local tbl = {}
for _, v in SoundService_upvr:GetDescendants() do
	if v:IsA("SoundGroup") then
		tbl[v.Name] = v
	end
end
for i_2, v_2 in module_6_upvr.SoundGroup do
	if tbl[i_2] then
		module_6_upvr.SoundGroup[i_2] = tbl[i_2]
		v_2:Destroy()
	else
		v_2.Volume = 1
	end
end
local function VolumeFadeComplete_upvr(arg1, arg2) -- Line 190, Named "BuildHierarchyRecursive"
	--[[ Upvalues[2]:
		[1]: module_6_upvr (readonly)
		[2]: VolumeFadeComplete_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [4] 5. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [4] 5. Error Block 2 end (CF ANALYSIS FAILED)
end
VolumeFadeComplete_upvr({
	[module_6_upvr.SoundGroup.Master] = {
		[module_6_upvr.SoundGroup.Music] = {};
		[module_6_upvr.SoundGroup.Sound] = {
			[module_6_upvr.SoundGroup.SFX] = {};
			[module_6_upvr.SoundGroup.Ambience] = {};
			[module_6_upvr.SoundGroup.UI] = {};
		};
	};
}, SoundService_upvr)
if require(ReplicatedStorage:WaitForChild("Settings")).AudioMusicAmbienceMutedInStudio then
	module_6_upvr.SoundGroup.Music.Volume = 0
	module_6_upvr.SoundGroup.Ambience.Volume = 0
end
local function VolumeFadeApply_upvr(arg1) -- Line 215, Named "VolumeFadeApply"
	--[[ Upvalues[2]:
		[1]: module_3_upvr (readonly)
		[2]: module_6_upvr (readonly)
	]]
	local ManagedSound = arg1.ManagedSound
	local Value = arg1.Tween.Value
	local Volume = arg1.Properties.Volume
	if Volume then
		ManagedSound.Volume = module_3_upvr.Lerp(Volume.Initial, Volume.Target, Value)
	end
	local VolumeMod = arg1.Properties.VolumeMod
	if VolumeMod then
		ManagedSound.VolumeMods.Fade = module_3_upvr.Lerp(VolumeMod.Initial, VolumeMod.Target, Value)
	end
	ManagedSound.Sound.Volume = module_6_upvr.ManagedSound.GetModdedVolume(ManagedSound)
end
function VolumeFadeComplete_upvr(arg1) -- Line 238, Named "VolumeFadeComplete"
	--[[ Upvalues[2]:
		[1]: tbl_6_upvr (readonly)
		[2]: VolumeFadeApply_upvr (readonly)
	]]
	if tbl_6_upvr.VolumeFades[arg1.ManagedSound] == arg1 then
		tbl_6_upvr.VolumeFades[arg1.ManagedSound] = nil
	end
	local Completed_3 = arg1.Tween.Completed
	if Completed_3 then
		VolumeFadeApply_upvr(arg1)
	end
	if arg1.Callback then
		arg1.Callback(Completed_3)
	end
end
function module_6_upvr.GetPlaybackStateFromSound(arg1) -- Line 252
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [13] 10. Error Block 5 start (CF ANALYSIS FAILED)
	do
		return Enum.PlaybackState.Paused
	end
	-- KONSTANTERROR: [13] 10. Error Block 5 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [16] 12. Error Block 11 start (CF ANALYSIS FAILED)
	if arg1.IsPlaying then
		return Enum.PlaybackState.Delayed
	end
	-- KONSTANTERROR: [16] 12. Error Block 11 end (CF ANALYSIS FAILED)
end
local function ApplyProperties(arg1, arg2) -- Line 277
	--[[ Upvalues[2]:
		[1]: tbl_6_upvr (readonly)
		[2]: module_6_upvr (readonly)
	]]
	for i_3, v_3 in arg2 do
		arg1.Sound[i_3] = v_3
	end
	if arg2.PlaybackSpeed then
		local var30 = tbl_6_upvr.ActiveSpeedTweens[arg1]
		if var30 then
			var30.StartValue = arg2.PlaybackSpeed
		end
	end
	if arg2.Volume then
		arg1.Volume = arg2.Volume
		i_3 = module_6_upvr
		arg1.Sound.Volume = i_3.ManagedSound.GetModdedVolume(arg1)
	end
end
module_6_upvr.ManagedSound.ApplyProperties = ApplyProperties
module_6_upvr.ManagedSound.GetModdedVolume = function(arg1) -- Line 299, Named "GetModdedVolume"
	local Volume_2 = arg1.Volume
	for _, v_4 in arg1.VolumeMods do
		Volume_2 *= v_4
	end
	return Volume_2
end
local function SetVolume(arg1, arg2) -- Line 311
	--[[ Upvalues[1]:
		[1]: module_6_upvr (readonly)
	]]
	arg1.Volume = math.max(arg2, 0)
	arg1.Sound.Volume = module_6_upvr.ManagedSound.GetModdedVolume(arg1)
end
module_6_upvr.ManagedSound.SetVolume = SetVolume
local function SetVolumeMod(arg1, arg2, arg3) -- Line 322
	--[[ Upvalues[1]:
		[1]: module_6_upvr (readonly)
	]]
	arg1.VolumeMods[arg2] = math.max(arg3, 0)
	arg1.Sound.Volume = module_6_upvr.ManagedSound.GetModdedVolume(arg1)
end
module_6_upvr.ManagedSound.SetVolumeMod = SetVolumeMod
local function FadeToVolume(arg1, arg2, arg3, arg4, arg5, ...) -- Line 334
	--[[ Upvalues[3]:
		[1]: tbl_6_upvr (readonly)
		[2]: VolumeFadeApply_upvr (readonly)
		[3]: module_3_upvr (readonly)
	]]
	local var36 = tbl_6_upvr.VolumeFades[arg1]
	if var36 then
		if tbl_6_upvr.VolumeFades[var36.ManagedSound] == var36 then
			tbl_6_upvr.VolumeFades[var36.ManagedSound] = nil
		end
		local Completed = var36.Tween.Completed
		if Completed then
			VolumeFadeApply_upvr(var36)
		end
		if var36.Callback then
			var36.Callback(Completed)
		end
	end
	local maximum_3 = math.max(arg2, 0)
	local tbl_7 = {}
	tbl_7.ManagedSound = arg1
	tbl_7.Tween = module_3_upvr.new(0, maximum_3, ...)
	tbl_7.Properties = {}
	tbl_7.Callback = arg5
	if arg3 then
		tbl_7.Properties.Volume = {
			Initial = arg1.Volume;
			Target = math.max(arg3, 0);
		}
	end
	if arg4 then
		tbl_7.Properties.VolumeMod = {
			Initial = arg1.VolumeMods.Fade or 1;
			Target = math.max(arg4, 0);
		}
	end
	tbl_6_upvr.VolumeFades[arg1] = tbl_7
	if maximum_3 == 0 then
		module_3_upvr.Tween(tbl_7.Tween, tbl_6_upvr.Now, 1)
		if tbl_6_upvr.VolumeFades[tbl_7.ManagedSound] == tbl_7 then
			tbl_6_upvr.VolumeFades[tbl_7.ManagedSound] = nil
		end
		local Completed_2 = tbl_7.Tween.Completed
		if Completed_2 then
			VolumeFadeApply_upvr(tbl_7)
		end
		if tbl_7.Callback then
			tbl_7.Callback(Completed_2)
		end
	end
end
module_6_upvr.ManagedSound.FadeToVolume = FadeToVolume
module_6_upvr.ManagedSound.FadeToSpeed = function(arg1, arg2, arg3) -- Line 382, Named "FadeToSpeed"
	--[[ Upvalues[2]:
		[1]: tbl_6_upvr (readonly)
		[2]: module_3_upvr (readonly)
	]]
	local var43 = tbl_6_upvr.ActiveSpeedTweens[arg1]
	if not var43 then
		var43 = module_3_upvr.new(arg1.Sound.PlaybackSpeed, arg3, Enum.EasingStyle.Sine)
		tbl_6_upvr.ActiveSpeedTweens[arg1] = var43
	end
	var43.Rate = arg3
	module_3_upvr.Begin(var43, os.clock(), arg2)
end
local module_5_upvr = require(Modules:WaitForChild("Signal"))
module_6_upvr.ManagedSound.Wrap = function(arg1) -- Line 398, Named "Wrap"
	--[[ Upvalues[2]:
		[1]: module_5_upvr (readonly)
		[2]: module_6_upvr (readonly)
	]]
	local module_2_upvr = {}
	module_2_upvr.Sound = arg1
	module_2_upvr.Volume = arg1.Volume
	module_2_upvr.VolumeMods = {}
	module_2_upvr.DidLoop = module_5_upvr.new()
	module_2_upvr.Ended = module_5_upvr.new()
	module_2_upvr.Loaded = module_5_upvr.new()
	module_2_upvr.Paused = module_5_upvr.new()
	module_2_upvr.Played = module_5_upvr.new()
	module_2_upvr.Resumed = module_5_upvr.new()
	module_2_upvr.Stopped = module_5_upvr.new()
	module_2_upvr.PlayebackState = module_6_upvr.GetPlaybackStateFromSound(arg1)
	arg1.DidLoop:Connect(function(...) -- Line 419
		--[[ Upvalues[3]:
			[1]: module_2_upvr (readonly)
			[2]: module_6_upvr (copied, readonly)
			[3]: arg1 (readonly)
		]]
		module_2_upvr.PlayebackState = Enum.PlaybackState.Completed
		module_2_upvr.DidLoop:Fire(module_2_upvr, ...)
		module_2_upvr.PlayebackState = module_6_upvr.GetPlaybackStateFromSound(arg1)
	end)
	arg1.Ended:Connect(function(...) -- Line 427
		--[[ Upvalues[1]:
			[1]: module_2_upvr (readonly)
		]]
		module_2_upvr.PlayebackState = Enum.PlaybackState.Completed
		module_2_upvr.Ended:Fire(module_2_upvr, ...)
	end)
	arg1.Loaded:Connect(function(...) -- Line 433
		--[[ Upvalues[1]:
			[1]: module_2_upvr (readonly)
		]]
		module_2_upvr.Loaded:Fire(module_2_upvr, ...)
	end)
	arg1.Paused:Connect(function(...) -- Line 437
		--[[ Upvalues[3]:
			[1]: module_2_upvr (readonly)
			[2]: module_6_upvr (copied, readonly)
			[3]: arg1 (readonly)
		]]
		module_2_upvr.PlayebackState = module_6_upvr.GetPlaybackStateFromSound(arg1)
		module_2_upvr.Paused:Fire(module_2_upvr, ...)
	end)
	arg1.Played:Connect(function(...) -- Line 443
		--[[ Upvalues[3]:
			[1]: module_2_upvr (readonly)
			[2]: module_6_upvr (copied, readonly)
			[3]: arg1 (readonly)
		]]
		module_2_upvr.PlayebackState = module_6_upvr.GetPlaybackStateFromSound(arg1)
		module_2_upvr.Played:Fire(module_2_upvr, ...)
	end)
	arg1.Resumed:Connect(function(...) -- Line 449
		--[[ Upvalues[3]:
			[1]: module_2_upvr (readonly)
			[2]: module_6_upvr (copied, readonly)
			[3]: arg1 (readonly)
		]]
		module_2_upvr.PlayebackState = module_6_upvr.GetPlaybackStateFromSound(arg1)
		module_2_upvr.Resumed:Fire(module_2_upvr, ...)
	end)
	arg1.Stopped:Connect(function(...) -- Line 455
		--[[ Upvalues[1]:
			[1]: module_2_upvr (readonly)
		]]
		module_2_upvr.PlayebackState = Enum.PlaybackState.Cancelled
		module_2_upvr.Stopped:Fire(module_2_upvr, ...)
	end)
	return module_2_upvr
end
module_6_upvr.ManagedSound.Clone = function(arg1) -- Line 464, Named "Clone"
	--[[ Upvalues[1]:
		[1]: module_6_upvr (readonly)
	]]
	if type(arg1) == "table" then
		for i_5, v_5 in arg1 do
			if type(v_5) ~= "table" then
				if typeof(v_5) == "Instance" then
					module_6_upvr.ManagedSound.Create()[i_5] = Instance.fromExisting(v_5)
				else
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					module_6_upvr.ManagedSound.Create()[i_5] = v_5
				end
			end
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		return module_6_upvr.ManagedSound.Create()
	end
	return module_6_upvr.ManagedSound.Wrap(arg1:Clone())
end
local function Create(arg1, arg2) -- Line 488
	--[[ Upvalues[2]:
		[1]: tbl_5_upvr (readonly)
		[2]: module_6_upvr (readonly)
	]]
	local Sound = Instance.new("Sound")
	Sound.Volume = tbl_5_upvr.Volume
	Sound.SoundGroup = tbl_5_upvr.SoundGroup
	local any_Wrap_result1 = module_6_upvr.ManagedSound.Wrap(Sound)
	if arg1 then
		module_6_upvr.ManagedSound.ApplyProperties(any_Wrap_result1, arg1)
	end
	if arg2 then
		any_Wrap_result1._Ephemeral = true
	end
	return any_Wrap_result1
end
module_6_upvr.ManagedSound.Create = Create
local function Destroy(arg1, arg2) -- Line 511
	--[[ Upvalues[1]:
		[1]: tbl_6_upvr (readonly)
	]]
	arg1.DidLoop:DisconnectAll()
	arg1.Ended:DisconnectAll()
	arg1.Loaded:DisconnectAll()
	arg1.Paused:DisconnectAll()
	arg1.Resumed:DisconnectAll()
	arg1.Stopped:DisconnectAll()
	if arg2 or arg1._Ephemeral then
		arg1.Sound.PlayOnRemove = false
		arg1.Sound:Destroy()
		arg1.Sound:Stop()
	end
	arg1.PlayebackState = Enum.PlaybackState.Cancelled
	tbl_6_upvr.VolumeFades[arg1] = nil
	tbl_6_upvr.ActiveSFX[arg1] = nil
	tbl_6_upvr.ActiveSpeedTweens[arg1] = nil
end
module_6_upvr.ManagedSound.Destroy = Destroy
module_6_upvr.ManagedSound.IsDone = function(arg1) -- Line 536, Named "IsDone"
	local var57 = true
	if arg1.PlayebackState ~= Enum.PlaybackState.Completed then
		if arg1.PlayebackState ~= Enum.PlaybackState.Cancelled then
			var57 = false
		else
			var57 = true
		end
	end
	return var57
end
local function Play(arg1) -- Line 544
	--[[ Upvalues[1]:
		[1]: tbl_6_upvr (readonly)
	]]
	local IsPlaying_3 = arg1.Sound.IsPlaying
	if IsPlaying_3 then
		IsPlaying_3 = arg1.Sound:IsDescendantOf(game)
	end
	local var59 = not IsPlaying_3
	if var59 then
		if arg1.Sound.IsLoaded then
			tbl_6_upvr.FailedSoundIds[arg1.Sound.SoundId] = nil
		else
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			if tbl_6_upvr.FailedSoundIds[arg1.Sound.SoundId] then
				var59 = false
			else
				tbl_6_upvr.LoadingSounds[arg1] = tbl_6_upvr.Now + 30
			end
		end
	end
	if var59 then
		arg1.Sound:Play()
	end
	return var59
end
module_6_upvr.ManagedSound.Play = Play
local function Pause(arg1) -- Line 567
	local IsPlaying = arg1.Sound.IsPlaying
	if IsPlaying then
		arg1.Sound:Pause()
	end
	return IsPlaying
end
module_6_upvr.ManagedSound.Pause = Pause
local function Resume(arg1) -- Line 578
	local var61 = not arg1.Sound.IsPlaying
	if var61 then
		arg1.Sound:Resume()
	end
	return var61
end
module_6_upvr.ManagedSound.Resume = Resume
local function Stop(arg1) -- Line 589
	local IsPlaying_2 = arg1.Sound.IsPlaying
	if IsPlaying_2 then
		arg1.Sound:Stop()
	end
	return IsPlaying_2
end
module_6_upvr.ManagedSound.Stop = Stop
local function SoundPoolUpdatePool_upvr(arg1) -- Line 604, Named "SoundPoolUpdatePool"
	--[[ Upvalues[1]:
		[1]: module_6_upvr (readonly)
	]]
	local len = #arg1.InactivePool
	if len < arg1.PoolSize then
		for i_6 = len + 1, arg1.PoolSize do
			arg1.InactivePool[i_6] = module_6_upvr.ManagedSound.Create(arg1.SoundProperties)
		end
	elseif arg1.PoolSize < len then
		for i_29 = arg1.PoolSize + 1, len do
			module_6_upvr.ManagedSound.Destroy(arg1.InactivePool[i_29], true)
			arg1.InactivePool[i_29] = nil
		end
	end
end
local function Create(arg1, arg2, arg3, arg4, arg5) -- Line 619
	--[[ Upvalues[2]:
		[1]: tbl_5_upvr (readonly)
		[2]: SoundPoolUpdatePool_upvr (readonly)
	]]
	local var66 = arg3
	if not var66 then
		var66 = tbl_5_upvr.PoolSize
	end
	local maximum = math.max(var66, 1)
	local module_7 = {}
	local tbl_3 = {}
	local var70 = arg1
	if not var70 then
		var70 = tbl_5_upvr.SoundId
	end
	tbl_3.SoundId = var70
	var70 = arg2
	local var71 = var70
	if not var71 then
		var71 = tbl_5_upvr.Volume
	end
	tbl_3.Volume = var71
	var71 = arg4
	local var72 = var71
	if not var72 then
		var72 = tbl_5_upvr.SoundGroup
	end
	tbl_3.SoundGroup = var72
	module_7.SoundProperties = tbl_3
	tbl_3 = arg5
	local var73 = tbl_3
	if not var73 then
		var73 = tbl_5_upvr.Parent
	end
	module_7.Parent = var73
	module_7.PoolSize = maximum
	module_7.ActivePool = table.create(maximum)
	module_7.InactivePool = table.create(maximum)
	module_7._Connections = {}
	SoundPoolUpdatePool_upvr(module_7)
	return module_7
end
module_6_upvr.SoundPool.Create = Create
local function Destroy(arg1) -- Line 649
	--[[ Upvalues[1]:
		[1]: module_6_upvr (readonly)
	]]
	for _, v_6 in arg1.InactivePool do
		module_6_upvr.ManagedSound.Destroy(v_6, true)
	end
	table.clear(arg1.InactivePool)
	for _, v_7 in arg1.ActivePool do
		module_6_upvr.ManagedSound.Destroy(v_7.ManagedSound, true)
	end
	table.clear(arg1.ActivePool)
end
module_6_upvr.SoundPool.Destroy = Destroy
module_6_upvr.SoundPool.SetSoundProperties = function(arg1, arg2, arg3, arg4) -- Line 664, Named "SetSoundProperties"
	--[[ Upvalues[1]:
		[1]: module_6_upvr (readonly)
	]]
	local tbl_2 = {}
	tbl_2.SoundId = arg1
	tbl_2.Volume = arg3
	tbl_2.SoundGroup = arg4
	local var91
	for i_9, v_8 in tbl_2 do
		if arg1.SoundProperties[i_9] ~= v_8 then
			arg1.SoundProperties[i_9] = v_8
		end
	end
	if nil then
		for _, v_9 in arg1.InactivePool do
			module_6_upvr.ManagedSound.ApplyProperties(v_9, arg1.SoundProperties)
		end
		for _, v_10 in arg1.ActivePool do
			module_6_upvr.ManagedSound.ApplyProperties(v_10.ManagedSound, arg1.SoundProperties)
		end
	end
end
module_6_upvr.SoundPool.SetParent = function(arg1, arg2) -- Line 696, Named "SetParent"
	if arg2 and arg2 ~= arg1.Parent then
		arg1.Parent = arg2
		for _, v_11 in arg1.ActivePool do
			v_11.ManagedSound.Sound.Parent = arg2
		end
	end
end
module_6_upvr.SoundPool.SetPoolSize = function(arg1, arg2) -- Line 710, Named "SetPoolSize"
	--[[ Upvalues[1]:
		[1]: SoundPoolUpdatePool_upvr (readonly)
	]]
	local maximum_2 = math.max(arg2, 1)
	if maximum_2 ~= arg1.PoolSize then
		arg1.PoolSize = maximum_2
		SoundPoolUpdatePool_upvr(arg1)
	end
end
local function GetPlaylistFadeDuration_upvr(arg1, arg2) -- Line 724, Named "MoveToInactivePool"
	--[[ Upvalues[1]:
		[1]: module_6_upvr (readonly)
	]]
	arg2.EndedConnection:Disconnect()
	local var95 = true
	local table_find_result1_3 = table.find(arg1.ActivePool, arg2)
	if table_find_result1_3 then
		table.remove(arg1.ActivePool, table_find_result1_3)
		if #arg1.InactivePool < arg1.PoolSize then
			var95 = false
			arg1.InactivePool[#arg1.InactivePool] = arg2.ManagedSound
		end
	end
	if var95 then
		module_6_upvr.ManagedSound.Destroy(arg2.ManagedSound, true)
	else
		arg2.ManagedSound.Sound.Parent = nil
	end
end
local function Play(arg1) -- Line 751
	--[[ Upvalues[2]:
		[1]: module_6_upvr (readonly)
		[2]: GetPlaylistFadeDuration_upvr (readonly)
	]]
	local popped = table.remove(arg1.InactivePool)
	if not popped then
		popped = module_6_upvr.ManagedSound.Create(arg1.SoundProperties)
	end
	popped.Sound.Parent = arg1.Parent
	local tbl_upvr = {
		ManagedSound = popped;
		EndedConnection = popped.Ended:Connect(function() -- Line 763
			--[[ Upvalues[3]:
				[1]: GetPlaylistFadeDuration_upvr (copied, readonly)
				[2]: arg1 (readonly)
				[3]: tbl_upvr (readonly)
			]]
			GetPlaylistFadeDuration_upvr(arg1, tbl_upvr)
		end);
	}
	arg1.ActivePool[#arg1.ActivePool] = tbl_upvr
	module_6_upvr.ManagedSound.Play(popped)
end
module_6_upvr.SoundPool.Play = Play
local function Stop(arg1, arg2) -- Line 775
	--[[ Upvalues[1]:
		[1]: GetPlaylistFadeDuration_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 14 start (CF ANALYSIS FAILED)
	if arg2 then
	else
	end
	-- KONSTANTERROR: [0] 1. Error Block 14 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [20] 19. Error Block 9 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [20] 19. Error Block 9 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [10] 10. Error Block 12 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [20.6]
	if nil then
		-- KONSTANTWARNING: GOTO [20] #19
	end
	-- KONSTANTERROR: [10] 10. Error Block 12 end (CF ANALYSIS FAILED)
end
module_6_upvr.SoundPool.Stop = Stop
function GetPlaylistFadeDuration_upvr(arg1, arg2, arg3) -- Line 800, Named "Create"
	--[[ Upvalues[2]:
		[1]: module_6_upvr (readonly)
		[2]: tbl_5_upvr (readonly)
	]]
	local table_create_result1 = table.create(#arg1)
	for _, v_12 in arg1 do
		if type(v_12) == "table" then
			table_create_result1[#table_create_result1 + 1] = module_6_upvr.ManagedSound.Create(v_12)
		elseif typeof(v_12) == "Instance" and v_12:IsA("Sound") then
			local var109 = module_6_upvr
			if arg2 then
				var109 = "Clone"
			else
				var109 = "Wrap"
			end
			table_create_result1[#table_create_result1 + 1] = var109.ManagedSound[var109](v_12)
		end
	end
	if arg3 then
		module_6_upvr.SoundCollection.ApplyProperties(table_create_result1, arg3)
	end
	for _, v_13 in table_create_result1 do
		if v_13.Sound.Parent == nil then
			v_13.Sound.Parent = tbl_5_upvr.Parent
		end
	end
	return table_create_result1
end
module_6_upvr.SoundCollection.Create = GetPlaylistFadeDuration_upvr
function GetPlaylistFadeDuration_upvr(arg1, arg2) -- Line 831, Named "Destroy"
	--[[ Upvalues[1]:
		[1]: module_6_upvr (readonly)
	]]
	for _, v_14 in arg1 do
		module_6_upvr.ManagedSound.Destroy(v_14, arg2)
	end
end
module_6_upvr.SoundCollection.Destroy = GetPlaylistFadeDuration_upvr
function GetPlaylistFadeDuration_upvr(arg1, arg2) -- Line 841, Named "ApplyProperties"
	--[[ Upvalues[1]:
		[1]: module_6_upvr (readonly)
	]]
	for _, v_15 in arg1 do
		module_6_upvr.ManagedSound.ApplyProperties(v_15, arg2)
	end
end
module_6_upvr.SoundCollection.ApplyProperties = GetPlaylistFadeDuration_upvr
function GetPlaylistFadeDuration_upvr(arg1, arg2) -- Line 850, Named "SetVolume"
	--[[ Upvalues[1]:
		[1]: module_6_upvr (readonly)
	]]
	for _, v_16 in arg1 do
		module_6_upvr.ManagedSound.SetVolume(v_16, arg2)
	end
end
module_6_upvr.SoundCollection.SetVolume = GetPlaylistFadeDuration_upvr
function GetPlaylistFadeDuration_upvr(arg1, arg2, arg3) -- Line 859, Named "SetVolumeMod"
	--[[ Upvalues[1]:
		[1]: module_6_upvr (readonly)
	]]
	for _, v_17 in arg1 do
		module_6_upvr.ManagedSound.SetVolumeMod(v_17, arg2, arg3)
	end
end
module_6_upvr.SoundCollection.SetVolumeMod = GetPlaylistFadeDuration_upvr
function GetPlaylistFadeDuration_upvr(arg1, arg2, arg3, arg4, arg5, ...) -- Line 870, Named "FadeToVolume"
	--[[ Upvalues[1]:
		[1]: module_6_upvr (readonly)
	]]
	for _, v_18_upvr in arg1 do
		local var123
		if arg5 then
			function var123(arg1_2) -- Line 886
				--[[ Upvalues[2]:
					[1]: arg5 (readonly)
					[2]: v_18_upvr (readonly)
				]]
				arg5(v_18_upvr, arg1_2)
			end
		else
			var123 = nil
		end
		module_6_upvr.ManagedSound.FadeToVolume(v_18_upvr, arg2, arg3, arg4, var123, ...)
	end
end
module_6_upvr.SoundCollection.FadeToVolume = GetPlaylistFadeDuration_upvr
function GetPlaylistFadeDuration_upvr(arg1, arg2) -- Line 895, Named "Find"
	local var128
	for i_20, v_19 in arg1 do
		if v_19.Sound.SoundId == arg2 then
			var128 = i_20
			return var128
		end
	end
	return var128
end
module_6_upvr.SoundCollection.Find = GetPlaylistFadeDuration_upvr
function GetPlaylistFadeDuration_upvr(arg1) -- Line 912, Named "Play"
	--[[ Upvalues[1]:
		[1]: module_6_upvr (readonly)
	]]
	local var133 = true
	for _, v_20 in arg1 do
		var133 = module_6_upvr.ManagedSound.Play(v_20) and var133
	end
	return var133
end
module_6_upvr.SoundCollection.Play = GetPlaylistFadeDuration_upvr
function GetPlaylistFadeDuration_upvr(arg1) -- Line 925, Named "Resume"
	--[[ Upvalues[1]:
		[1]: module_6_upvr (readonly)
	]]
	local var138 = true
	for _, v_21 in arg1 do
		var138 = module_6_upvr.ManagedSound.Resume(v_21) and var138
	end
	return var138
end
module_6_upvr.SoundCollection.Resume = GetPlaylistFadeDuration_upvr
function GetPlaylistFadeDuration_upvr(arg1) -- Line 938, Named "Pause"
	--[[ Upvalues[1]:
		[1]: module_6_upvr (readonly)
	]]
	local var143 = true
	for _, v_22 in arg1 do
		var143 = module_6_upvr.ManagedSound.Pause(v_22) and var143
	end
	return var143
end
module_6_upvr.SoundCollection.Pause = GetPlaylistFadeDuration_upvr
function GetPlaylistFadeDuration_upvr(arg1) -- Line 951, Named "Stop"
	--[[ Upvalues[1]:
		[1]: module_6_upvr (readonly)
	]]
	local var148 = true
	for _, v_23 in arg1 do
		var148 = module_6_upvr.ManagedSound.Stop(v_23) and var148
	end
	return var148
end
module_6_upvr.SoundCollection.Stop = GetPlaylistFadeDuration_upvr
function GetPlaylistFadeDuration_upvr(arg1, arg2) -- Line 968, Named "GetPlaylistFadeDuration"
	--[[ Upvalues[1]:
		[1]: module_6_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local CurrentSong = arg1.CurrentSong
	if not CurrentSong then
		CurrentSong = arg1.SoundCollection[1]
	end
	if CurrentSong then
	end
	return module_6_upvr.PlaylistFadeDuration * math.abs(arg2 - (CurrentSong.VolumeMods.Fade or 1))
end
local function Create(arg1, arg2, arg3) -- Line 984
	--[[ Upvalues[1]:
		[1]: module_6_upvr (readonly)
	]]
	local any_Create_result1 = module_6_upvr.SoundCollection.Create(arg1, true)
	local module = {
		SoundCollection = any_Create_result1;
	}
	local var156 = false
	module.Playing = var156
	if arg2 ~= true then
		var156 = false
	else
		var156 = true
	end
	module.Shuffle = var156
	module._VolumeMod = 1
	local tbl_4 = {}
	local var158 = arg3
	if not var158 then
		var158 = module_6_upvr.SoundGroup.Music
	end
	tbl_4.SoundGroup = var158
	tbl_4.Looped = false
	module_6_upvr.SoundCollection.ApplyProperties(any_Create_result1, tbl_4)
	for _, v_24 in module.SoundCollection do
		v_24._Ephemeral = true
	end
	if module.Shuffle then
		module_6_upvr.Playlist.Shuffle(module)
	end
	return module
end
module_6_upvr.Playlist.Create = Create
local function Destroy(arg1) -- Line 1018
	--[[ Upvalues[2]:
		[1]: tbl_6_upvr (readonly)
		[2]: module_6_upvr (readonly)
	]]
	if arg1.Playing then
		arg1._Destroying = true
	else
		if tbl_6_upvr.CurrentPlaylist == arg1 then
			tbl_6_upvr.CurrentPlaylist = nil
		end
		if tbl_6_upvr.PendingPlaylist == arg1 then
			tbl_6_upvr.PendingPlaylist = nil
		end
		arg1.CurrentSong = nil
		arg1._ShuffleCollection = nil
		module_6_upvr.SoundCollection.Destroy(arg1.SoundCollection, true)
		table.clear(arg1.SoundCollection)
	end
end
module_6_upvr.Playlist.Destroy = Destroy
module_6_upvr.Playlist.Find = function(arg1, arg2) -- Line 1042, Named "Find"
	--[[ Upvalues[1]:
		[1]: module_6_upvr (readonly)
	]]
	return module_6_upvr.SoundCollection.Find(arg1.SoundCollection, arg2)
end
module_6_upvr.Playlist.PlaySong = function(arg1, arg2) -- Line 1051, Named "PlaySong"
	--[[ Upvalues[1]:
		[1]: module_6_upvr (readonly)
	]]
	local var159
	if arg2 then
		var159 = arg1.SoundCollection[arg2]
		if var159 and module_6_upvr.ManagedSound.Play(var159) then
			if not arg1.Playing then
				module_6_upvr.Playlist.Play(arg1)
			end
			arg1.CurrentSong = var159
			-- KONSTANTWARNING: GOTO [42] #30
		end
	else
		var159 = arg1.CurrentSong
		if var159 then
			var159 = module_6_upvr.ManagedSound.Stop
			var159(arg1.CurrentSong)
			var159 = nil
			arg1.CurrentSong = var159
		end
	end
	if arg1.CurrentSong == nil then
		var159 = false
	else
		var159 = true
	end
	arg1.Playing = var159
	if arg1.CurrentSong == arg1.CurrentSong then
		var159 = false
	else
		var159 = true
	end
	return var159
end
module_6_upvr.Playlist.PlayNext = function(arg1) -- Line 1078, Named "PlayNext"
	--[[ Upvalues[1]:
		[1]: module_6_upvr (readonly)
	]]
	local _ShuffleCollection = arg1._ShuffleCollection
	if not _ShuffleCollection then
		_ShuffleCollection = arg1.SoundCollection
	end
	if #_ShuffleCollection == 0 then
		module_6_upvr.Playlist.Stop(arg1)
		return false
	end
	local var164 = 0
	if arg1.CurrentSong then
		module_6_upvr.ManagedSound.Stop(arg1.CurrentSong)
		var164 = table.find(_ShuffleCollection, arg1.CurrentSong) or 0
	end
	var164 += 1
	if #_ShuffleCollection < var164 then
		var164 = 1
		local var165
		if arg1.Shuffle then
			repeat
				var165 = module_6_upvr.Playlist.Shuffle(arg1)
			until var165[var164] ~= arg1.CurrentSong and 0 + 1 == 10
			var164 = table.find(arg1.SoundCollection, var165[var164])
		end
	end
	return module_6_upvr.Playlist.PlaySong(arg1, var164)
end
module_6_upvr.Playlist.Play = function(arg1) -- Line 1112, Named "Play"
	--[[ Upvalues[1]:
		[1]: tbl_6_upvr (readonly)
	]]
	tbl_6_upvr.PendingPlaylist = arg1
end
module_6_upvr.Playlist.Stop = function(arg1) -- Line 1119, Named "Stop"
	--[[ Upvalues[1]:
		[1]: tbl_6_upvr (readonly)
	]]
	if tbl_6_upvr.PendingPlaylist == arg1 then
		tbl_6_upvr.PendingPlaylist = nil
	end
end
module_6_upvr.Playlist.Shuffle = function(arg1) -- Line 1128, Named "Shuffle"
	if #arg1.SoundCollection == 0 then
		error("Audio: Cannot shuffle destroyed playlist.")
	end
	local clone = table.clone(arg1.SoundCollection)
	local table_create_result1_2 = table.create(#clone)
	while 0 < #clone do
		table_create_result1_2[#table_create_result1_2 + 1] = table.remove(clone[math.random(1, #clone)])
	end
	arg1.Shuffle = true
	arg1._ShuffleCollection = table_create_result1_2
	return table_create_result1_2
end
module_6_upvr.Playlist.DisableShuffle = function(arg1) -- Line 1150, Named "DisableShuffle"
	arg1.Shuffle = false
	arg1._ShuffleCollection = nil
end
module_6_upvr.SubscribedPlaylist.Create = function(arg1, arg2, arg3) -- Line 1170, Named "Create"
	--[[ Upvalues[1]:
		[1]: module_6_upvr (readonly)
	]]
	local any_Create_result1_2 = module_6_upvr.Playlist.Create(arg1, arg2, arg3)
	any_Create_result1_2._Subscriptions = {}
	return any_Create_result1_2
end
module_6_upvr.SubscribedPlaylist.Subscribe = function(arg1) -- Line 1187, Named "Subscribe"
	--[[ Upvalues[1]:
		[1]: module_6_upvr (readonly)
	]]
	local module_4 = {
		Active = true;
	}
	arg1._Subscriptions[#arg1._Subscriptions + 1] = module_4
	module_6_upvr.Playlist.Play(arg1)
	return module_4
end
module_6_upvr.SubscribedPlaylist.Unsubscribe = function(arg1, arg2) -- Line 1201, Named "Unsubscribe"
	--[[ Upvalues[1]:
		[1]: module_6_upvr (readonly)
	]]
	arg2.Active = false
	local table_find_result1 = table.find(arg1._Subscriptions, arg2)
	if table_find_result1 then
		table.remove(arg1._Subscriptions, table_find_result1)
		if #arg1._Subscriptions == 0 then
			module_6_upvr.Playlist.Stop(arg1)
		end
	end
end
module_6_upvr.SubscribedPlaylist.ForceStop = function(arg1) -- Line 1218, Named "ForceStop"
	--[[ Upvalues[1]:
		[1]: module_6_upvr (readonly)
	]]
	for i_26 = #arg1._Subscriptions, 1, -1 do
		module_6_upvr.SubscribedPlaylist.Unsubscribe(arg1, arg1._Subscriptions[i_26])
	end
end
module_6_upvr.SubscribedPlaylist.Destroy = function(arg1) -- Line 1230, Named "Destroy"
	--[[ Upvalues[1]:
		[1]: module_6_upvr (readonly)
	]]
	module_6_upvr.SubscribedPlaylist.ForceStop(arg1)
	module_6_upvr.Playlist.Destroy(arg1)
end
module_6_upvr.SFX.CreateAndPlay = function(arg1, arg2, arg3, arg4) -- Line 1242, Named "CreateAndPlay"
	--[[ Upvalues[3]:
		[1]: module_6_upvr (readonly)
		[2]: SoundService_upvr (readonly)
		[3]: tbl_6_upvr (readonly)
	]]
	local any_Create_result1_3_upvr = module_6_upvr.ManagedSound.Create(arg1, true)
	if arg3 then
		local Sound_4 = any_Create_result1_3_upvr.Sound
		Sound_4.PlaybackSpeed += any_Create_result1_3_upvr.Sound.PlaybackSpeed * arg3 * (0.5 - math.random())
	end
	local function DestroySound() -- Line 1260
		--[[ Upvalues[3]:
			[1]: module_6_upvr (copied, readonly)
			[2]: any_Create_result1_3_upvr (readonly)
			[3]: arg4 (readonly)
		]]
		module_6_upvr.ManagedSound.Destroy(any_Create_result1_3_upvr)
		if arg4 then
			arg4(any_Create_result1_3_upvr)
		end
	end
	any_Create_result1_3_upvr.Ended:Connect(DestroySound)
	any_Create_result1_3_upvr.Stopped:Connect(DestroySound)
	local var178 = arg2
	if not var178 then
		var178 = any_Create_result1_3_upvr.Sound.Parent
		if not var178 then
			var178 = SoundService_upvr
		end
	end
	any_Create_result1_3_upvr.Sound.Parent = var178
	module_6_upvr.ManagedSound.Play(any_Create_result1_3_upvr)
	tbl_6_upvr.ActiveSFX[any_Create_result1_3_upvr] = true
	return any_Create_result1_3_upvr
end
module_6_upvr.SFX.StopAll = function() -- Line 1282, Named "StopAll"
	--[[ Upvalues[2]:
		[1]: tbl_6_upvr (readonly)
		[2]: module_6_upvr (readonly)
	]]
	for i_27 in tbl_6_upvr.ActiveSFX do
		module_6_upvr.ManagedSound.Destroy(i_27)
	end
end
function module_6_upvr.RenderStepped(arg1, arg2) -- Line 1293
	--[[ Upvalues[4]:
		[1]: tbl_6_upvr (readonly)
		[2]: module_6_upvr (readonly)
		[3]: module_3_upvr (readonly)
		[4]: VolumeFadeApply_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 103 start (CF ANALYSIS FAILED)
	tbl_6_upvr.Now = arg2
	local var184
	if not tbl_6_upvr.CurrentPlaylist then
		tbl_6_upvr.CurrentPlaylist = tbl_6_upvr.PendingPlaylist
		tbl_6_upvr.FadingPlaylist = false
	end
	if tbl_6_upvr.CurrentPlaylist then
		local CurrentPlaylist_upvr = tbl_6_upvr.CurrentPlaylist
		if not CurrentPlaylist_upvr.CurrentSong or module_6_upvr.ManagedSound.IsDone(CurrentPlaylist_upvr.CurrentSong) then
			module_6_upvr.Playlist.PlayNext(CurrentPlaylist_upvr)
		end
		if CurrentPlaylist_upvr._Destroying and tbl_6_upvr.PendingPlaylist == CurrentPlaylist_upvr then
			tbl_6_upvr.PendingPlaylist = nil
		end
		if tbl_6_upvr.PendingPlaylist ~= CurrentPlaylist_upvr then
			if not CurrentPlaylist_upvr.CurrentSong then
				tbl_6_upvr.CurrentPlaylist = nil
			elseif not tbl_6_upvr.FadingPlaylist then
				tbl_6_upvr.FadingPlaylist = true
				var184 = 0
				if not CurrentPlaylist_upvr.CurrentSong then
				end
				if CurrentPlaylist_upvr.SoundCollection[1] then
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					var184 = module_6_upvr.PlaylistFadeDuration * math.abs(0 - (CurrentPlaylist_upvr.SoundCollection[1].VolumeMods.Fade or 1))
				end
				var184 = nil
				module_6_upvr.SoundCollection.FadeToVolume(CurrentPlaylist_upvr.SoundCollection, var184, var184, 0, function(arg1_3, arg2_2) -- Line 1324
					--[[ Upvalues[3]:
						[1]: module_6_upvr (copied, readonly)
						[2]: CurrentPlaylist_upvr (readonly)
						[3]: tbl_6_upvr (copied, readonly)
					]]
					if arg2_2 then
						module_6_upvr.SoundCollection.SetVolumeMod(CurrentPlaylist_upvr.SoundCollection, "Fade", 1)
						module_6_upvr.Playlist.PlaySong(CurrentPlaylist_upvr, nil)
						if tbl_6_upvr.CurrentPlaylist == CurrentPlaylist_upvr then
							tbl_6_upvr.CurrentPlaylist = nil
						end
						if CurrentPlaylist_upvr._Destroying then
							module_6_upvr.Playlist.Destroy(CurrentPlaylist_upvr)
						end
					end
				end)
				-- KONSTANTWARNING: GOTO [155] #113
			end
		else
			local var187
			if tbl_6_upvr.FadingPlaylist then
				tbl_6_upvr.FadingPlaylist = false
				var184 = 0
				var187 = CurrentPlaylist_upvr.CurrentSong
				if not var187 then
					var187 = CurrentPlaylist_upvr.SoundCollection[1]
				end
				if var187 then
					var184 = module_6_upvr.PlaylistFadeDuration * math.abs(1 - (var187.VolumeMods.Fade or 1))
				end
				var184 = nil
				module_6_upvr.SoundCollection.FadeToVolume(CurrentPlaylist_upvr.SoundCollection, var184, var184, 1)
			end
		end
	end
	CurrentPlaylist_upvr = tbl_6_upvr.LoadingSounds
	for i_28, v_25 in CurrentPlaylist_upvr do
		local Sound_3 = i_28.Sound
		local IsLoaded = Sound_3.IsLoaded
		if v_25 >= arg2 then
			Sound_3 = false
		else
			Sound_3 = true
		end
		local function INLINED() -- Internal function, doesn't exist in bytecode
			LoadingSounds[i_28] = nil
			local LoadingSounds = tbl_6_upvr.LoadingSounds
			return Sound_3
		end
		local function INLINED_2() -- Internal function, doesn't exist in bytecode
			tbl_6_upvr.FailedSoundIds[LoadingSounds] = true
			LoadingSounds = i_28.Sound.SoundId
			return i_28.Sound.IsPlaying
		end
		if IsLoaded or Sound_3 or INLINED() and not IsLoaded and INLINED_2() then
			i_28.Loaded:Fire(i_28, LoadingSounds, false)
			if i_28.Sound.Looped then
				i_28.DidLoop:Fire(i_28, LoadingSounds, 0, false)
			else
				i_28.Ended:Fire(i_28, LoadingSounds, false)
			end
			i_28.Sound:Stop()
		end
	end
	CurrentPlaylist_upvr = tbl_6_upvr.VolumeFades
	-- KONSTANTERROR: [0] 1. Error Block 103 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [286] 209. Error Block 54 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [286] 209. Error Block 54 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [236] 172. Error Block 96 start (CF ANALYSIS FAILED)
	if IsLoaded then
		if IsLoaded == v_25 then
		end
		if IsLoaded then
		end
		if Sound_3 then
			-- KONSTANTWARNING: GOTO [286] #209
		end
	else
	end
	-- KONSTANTERROR: [236] 172. Error Block 96 end (CF ANALYSIS FAILED)
end
local RunService_upvr = game:GetService("RunService")
local function UpdateSteppingManagement_upvr() -- Line 1412, Named "UpdateSteppingManagement"
	--[[ Upvalues[3]:
		[1]: tbl_6_upvr (readonly)
		[2]: RunService_upvr (readonly)
		[3]: module_6_upvr (readonly)
	]]
	if tbl_6_upvr.SteppingManagedInternally and not tbl_6_upvr.RenderSteppedConnection then
		tbl_6_upvr.RenderSteppedConnection = RunService_upvr.RenderStepped:Connect(function(arg1) -- Line 1414
			--[[ Upvalues[1]:
				[1]: module_6_upvr (copied, readonly)
			]]
			module_6_upvr.RenderStepped(arg1, os.clock())
		end)
	elseif not tbl_6_upvr.SteppingManagedInternally and tbl_6_upvr.RenderSteppedConnection then
		tbl_6_upvr.RenderSteppedConnection:Disconnect()
		tbl_6_upvr.RenderSteppedConnection = nil
	end
end
function module_6_upvr.SetSteppingManagement(arg1) -- Line 1424
	--[[ Upvalues[2]:
		[1]: tbl_6_upvr (readonly)
		[2]: UpdateSteppingManagement_upvr (readonly)
	]]
	tbl_6_upvr.SteppingManagedInternally = not arg1
	UpdateSteppingManagement_upvr()
end
UpdateSteppingManagement_upvr()
return module_6_upvr