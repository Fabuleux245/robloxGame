-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:01:19
-- Luau version 6, Types version 3
-- Time taken: 0.003747 seconds

local dependencies = require(script:FindFirstAncestor("CrossExperienceVoice").dependencies)
local SharedFlags = dependencies.SharedFlags
local any_GetFFlagEnableVoiceChatMuteForVideoCaptures_result1_upvr = SharedFlags.GetFFlagEnableVoiceChatMuteForVideoCaptures()
local var4_upvr
if any_GetFFlagEnableVoiceChatMuteForVideoCaptures_result1_upvr then
	var4_upvr = game:GetService("CaptureService")
else
	var4_upvr = nil
end
local React_upvr = dependencies.React
local function useIsCapturingVideo_upvr() -- Line 18, Named "useIsCapturingVideo"
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: var4_upvr (readonly)
	]]
	local var6 = var4_upvr
	if var6 then
		var6 = var4_upvr:IsCapturingVideo()
	end
	local any_useState_result1, any_useState_result2_upvr_3 = React_upvr.useState(var6)
	React_upvr.useEffect(function() -- Line 21
		--[[ Upvalues[2]:
			[1]: var4_upvr (copied, readonly)
			[2]: any_useState_result2_upvr_3 (readonly)
		]]
		if not var4_upvr then return end
		local any_Connect_result1_upvr_3 = var4_upvr.VideoCaptureInProgress:Connect(function(arg1) -- Line 26
			--[[ Upvalues[1]:
				[1]: any_useState_result2_upvr_3 (copied, readonly)
			]]
			any_useState_result2_upvr_3(arg1)
		end)
		return function() -- Line 30
			--[[ Upvalues[2]:
				[1]: var4_upvr (copied, readonly)
				[2]: any_Connect_result1_upvr_3 (readonly)
			]]
			if var4_upvr then
				any_Connect_result1_upvr_3:Disconnect()
			end
		end
	end, {})
	return any_useState_result1
end
local any_GetFFlagEnableCrossExperienceVoiceCaptureMute_result1_upvr = SharedFlags.GetFFlagEnableCrossExperienceVoiceCaptureMute()
local Cryo_upvr = dependencies.Cryo
local game_GetEngineFeature_result1_upvr = game:GetEngineFeature("AudioFocusManagement")
return function() -- Line 40, Named "useEnableAudioFocusToggle"
	--[[ Upvalues[6]:
		[1]: React_upvr (readonly)
		[2]: any_GetFFlagEnableCrossExperienceVoiceCaptureMute_result1_upvr (readonly)
		[3]: any_GetFFlagEnableVoiceChatMuteForVideoCaptures_result1_upvr (readonly)
		[4]: useIsCapturingVideo_upvr (readonly)
		[5]: Cryo_upvr (readonly)
		[6]: game_GetEngineFeature_result1_upvr (readonly)
	]]
	local any_useState_result1_upvr, any_useState_result2_upvr_2 = React_upvr.useState({})
	local var46
	if any_GetFFlagEnableCrossExperienceVoiceCaptureMute_result1_upvr and any_GetFFlagEnableVoiceChatMuteForVideoCaptures_result1_upvr then
		var46 = useIsCapturingVideo_upvr()
	end
	local any_useCallback_result1_upvr = React_upvr.useCallback(function(arg1) -- Line 48
		--[[ Upvalues[3]:
			[1]: any_useState_result1_upvr (readonly)
			[2]: Cryo_upvr (copied, readonly)
			[3]: any_useState_result2_upvr_2 (readonly)
		]]
		if not any_useState_result1_upvr[arg1] then
			any_useState_result2_upvr_2(Cryo_upvr.Dictionary.join(any_useState_result1_upvr, {
				[arg1] = true;
			}))
		end
	end, {any_useState_result1_upvr})
	local any_useCallback_result1_upvr_4 = React_upvr.useCallback(function(arg1) -- Line 57
		--[[ Upvalues[3]:
			[1]: any_useState_result1_upvr (readonly)
			[2]: Cryo_upvr (copied, readonly)
			[3]: any_useState_result2_upvr_2 (readonly)
		]]
		if any_useState_result1_upvr[arg1] then
			any_useState_result2_upvr_2(Cryo_upvr.Dictionary.join(any_useState_result1_upvr, {
				[arg1] = nil;
			}))
		end
	end, {any_useState_result1_upvr})
	React_upvr.useEffect(function() -- Line 66
		--[[ Upvalues[4]:
			[1]: game_GetEngineFeature_result1_upvr (copied, readonly)
			[2]: any_useState_result2_upvr_2 (readonly)
			[3]: any_useCallback_result1_upvr (readonly)
			[4]: any_useCallback_result1_upvr_4 (readonly)
		]]
		if not game_GetEngineFeature_result1_upvr then return end
		local pcall_result1, pcall_result2 = pcall(function() -- Line 71
			return game:GetService("AudioFocusService")
		end)
		if not pcall_result1 or not pcall_result2 then return end
		for i, _ in pairs(pcall_result2:GetRegisteredContexts()) do
			({})[i] = true
			local var67
		end
		any_useState_result2_upvr_2(var67)
		local any_Connect_result1_upvr_4 = pcall_result2.OnContextRegistered:Connect(any_useCallback_result1_upvr)
		local any_Connect_result1_upvr = pcall_result2.OnContextUnregistered:Connect(any_useCallback_result1_upvr_4)
		return function() -- Line 88
			--[[ Upvalues[2]:
				[1]: any_Connect_result1_upvr_4 (readonly)
				[2]: any_Connect_result1_upvr (readonly)
			]]
			if any_Connect_result1_upvr_4 then
				any_Connect_result1_upvr_4:Disconnect()
			end
			if any_Connect_result1_upvr then
				any_Connect_result1_upvr:Disconnect()
			end
		end
	end, {})
	local _1 = any_useState_result1_upvr[1]
	if _1 then
		_1 = any_useState_result1_upvr[2]
		if _1 then
			_1 = not var46
		end
	end
	return _1
end