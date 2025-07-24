-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:30:08
-- Luau version 6, Types version 3
-- Time taken: 0.003217 seconds

local Songbird = script:FindFirstAncestor("Songbird")
local React = require(Songbird.Parent.React)
local function _(arg1) -- Line 19, Named "assetIdAsContent"
	if typeof(arg1) == "string" and arg1:find("^rbxassetid://") then
		return arg1
	end
	return `rbxassetid://{arg1}`
end
local tbl_2_upvr = {
	elapsedTimeUpdateFreq = 0.0625;
}
local Cryo_upvr = require(Songbird.Parent.Cryo)
local useToggleState_upvr = require(Songbird.Parent.ReactUtils).useToggleState
local useRef_upvr = React.useRef
local useState_upvr = React.useState
local useBinding_upvr = React.useBinding
local useCallback_upvr = React.useCallback
local useMemo_upvr = React.useMemo
local useLazyFmod_upvr = require(Songbird.Parent.MediaPlayback).useLazyFmod
local useEffect_upvr = React.useEffect
local CoreGui_upvr = game:GetService("CoreGui")
local useTimer_upvr = require(Songbird.Hooks.useTimer)
return function(arg1, arg2) -- Line 40, Named "useAudioPlayback"
	--[[ Upvalues[12]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_2_upvr (readonly)
		[3]: useToggleState_upvr (readonly)
		[4]: useRef_upvr (readonly)
		[5]: useState_upvr (readonly)
		[6]: useBinding_upvr (readonly)
		[7]: useCallback_upvr (readonly)
		[8]: useMemo_upvr (readonly)
		[9]: useLazyFmod_upvr (readonly)
		[10]: useEffect_upvr (readonly)
		[11]: CoreGui_upvr (readonly)
		[12]: useTimer_upvr (readonly)
	]]
	local var15 = arg2
	if not var15 then
		var15 = {}
	end
	local any_join_result1_upvr = Cryo_upvr.Dictionary.join(tbl_2_upvr, var15)
	local var5_result1_upvr = useToggleState_upvr(false)
	local useRef_upvr_result1_upvr = useRef_upvr(nil)
	local var7_result1_upvr, var7_result2_upvr = useState_upvr(0)
	local var8_result1, var8_result2_upvr = useBinding_upvr(0)
	local tbl = {}
	tbl[1] = arg1
	arg1 = useMemo_upvr(function() -- Line 61
		--[[ Upvalues[1]:
			[1]: arg1 (read and write)
		]]
		local var28 = arg1
		if typeof(var28) == "string" and var28:find("^rbxassetid://") then
			return var28
		end
		return `rbxassetid://{var28}`
	end, tbl)
	local var30_upvw = arg1
	useLazyFmod_upvr()
	useEffect_upvr(function() -- Line 68
		--[[ Upvalues[5]:
			[1]: var30_upvw (read and write)
			[2]: any_join_result1_upvr (readonly)
			[3]: var7_result2_upvr (readonly)
			[4]: useRef_upvr_result1_upvr (readonly)
			[5]: CoreGui_upvr (copied, readonly)
		]]
		local Folder_upvr = Instance.new("Folder")
		Folder_upvr.Name = "AudioPlayback"
		local AudioPlayer_upvr = Instance.new("AudioPlayer")
		AudioPlayer_upvr.Asset = var30_upvw
		if any_join_result1_upvr.playbackRegion then
			AudioPlayer_upvr.PlaybackRegion = any_join_result1_upvr.playbackRegion
		end
		AudioPlayer_upvr.Parent = Folder_upvr
		local function updateDuration() -- Line 79
			--[[ Upvalues[3]:
				[1]: any_join_result1_upvr (copied, readonly)
				[2]: AudioPlayer_upvr (readonly)
				[3]: var7_result2_upvr (copied, readonly)
			]]
			if any_join_result1_upvr.playbackRegion then
				var7_result2_upvr(math.min(AudioPlayer_upvr.PlaybackRegion.Max - AudioPlayer_upvr.PlaybackRegion.Min, AudioPlayer_upvr.TimeLength))
			else
				var7_result2_upvr(AudioPlayer_upvr.TimeLength)
			end
		end
		if any_join_result1_upvr.playbackRegion then
			AudioPlayer_upvr:GetPropertyChangedSignal("PlaybackRegion"):Connect(updateDuration)
		end
		AudioPlayer_upvr:GetPropertyChangedSignal("TimeLength"):Connect(updateDuration)
		if any_join_result1_upvr.onElapsed then
			AudioPlayer_upvr.Ended:Connect(any_join_result1_upvr.onElapsed)
		end
		if any_join_result1_upvr.playbackRegion then
			var7_result2_upvr(math.min(AudioPlayer_upvr.PlaybackRegion.Max - AudioPlayer_upvr.PlaybackRegion.Min, AudioPlayer_upvr.TimeLength))
		else
			var7_result2_upvr(AudioPlayer_upvr.TimeLength)
		end
		local AudioDeviceOutput = Instance.new("AudioDeviceOutput")
		AudioDeviceOutput.Parent = Folder_upvr
		local Wire = Instance.new("Wire")
		Wire.SourceInstance = AudioPlayer_upvr
		Wire.TargetInstance = AudioDeviceOutput
		Wire.Parent = Folder_upvr
		useRef_upvr_result1_upvr.current = AudioPlayer_upvr
		Folder_upvr.Parent = CoreGui_upvr
		return function() -- Line 110
			--[[ Upvalues[1]:
				[1]: Folder_upvr (readonly)
			]]
			Folder_upvr:Destroy()
		end
	end, {var30_upvw, any_join_result1_upvr.playbackRegion, any_join_result1_upvr.onElapsed})
	useEffect_upvr(function() -- Line 121
		--[[ Upvalues[2]:
			[1]: useRef_upvr_result1_upvr (readonly)
			[2]: var5_result1_upvr (readonly)
		]]
		local current_3 = useRef_upvr_result1_upvr.current
		if current_3 then
			if var5_result1_upvr.enabled then
				if not current_3.IsPlaying then
					current_3:Play()
				end
				current_3.PlaybackSpeed = 1
				return
			end
			current_3.PlaybackSpeed = 0
		end
	end, {var5_result1_upvr.enabled})
	useTimer_upvr(any_join_result1_upvr.elapsedTimeUpdateFreq, function() -- Line 151
		--[[ Upvalues[3]:
			[1]: useRef_upvr_result1_upvr (readonly)
			[2]: var5_result1_upvr (readonly)
			[3]: var8_result2_upvr (readonly)
		]]
		local current_2 = useRef_upvr_result1_upvr.current
		if var5_result1_upvr.enabled and current_2 then
			var8_result2_upvr(current_2.TimePosition)
			if not current_2.IsPlaying then
				var5_result1_upvr.disable()
			end
		end
	end, {var5_result1_upvr.enabled, var5_result1_upvr.disable})
	return {
		play = var5_result1_upvr.enable;
		pause = var5_result1_upvr.disable;
		toggle = var5_result1_upvr.toggle;
		elapsed = var8_result1;
		duration = var7_result1_upvr;
		seek = useCallback_upvr(function(arg1_2) -- Line 49
			--[[ Upvalues[3]:
				[1]: useRef_upvr_result1_upvr (readonly)
				[2]: var7_result1_upvr (readonly)
				[3]: var8_result2_upvr (readonly)
			]]
			local current_4 = useRef_upvr_result1_upvr.current
			if current_4 then
				local clamped = math.clamp(arg1_2, 0, var7_result1_upvr)
				var8_result2_upvr(clamped)
				current_4.TimePosition = clamped
			end
		end, {var5_result1_upvr.disable, var7_result1_upvr});
		isPlaying = var5_result1_upvr.enabled;
	}
end