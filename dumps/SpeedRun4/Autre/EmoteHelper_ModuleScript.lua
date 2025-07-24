-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:52:44
-- Luau version 6, Types version 3
-- Time taken: 0.002982 seconds

local module_upvr = {
	EMOTE_LOOP_TRANSITION_WAIT_TIME = 0.3;
	EMOTE_LOOP_WAIT_TIMEOUT = 5;
	LegacyDefaultEmotes = {
		wave = true;
		point = true;
		dance = true;
		dance2 = true;
		dance3 = true;
		laugh = true;
		cheer = true;
	};
}
local function _(arg1) -- Line 21, Named "clearConnection"
	if arg1 then
		arg1:Disconnect()
	end
end
function module_upvr.getAnyActiveDefaultChatTriggeredEmoteTrack(arg1) -- Line 30
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	if not arg1.Character then
		return nil
	end
	local class_Humanoid = arg1.Character:FindFirstChildOfClass("Humanoid")
	if not class_Humanoid then
		return nil
	end
	local class_Animator = class_Humanoid:FindFirstChildOfClass("Animator")
	if not class_Animator then
		return nil
	end
	for _, v in pairs(class_Animator:GetPlayingAnimationTracks()) do
		if v.Animation and v.Animation.Parent and v:IsA("AnimationTrack") and module_upvr.LegacyDefaultEmotes[v.Animation.Parent.Name] and v.IsPlaying then
			return v
		end
	end
	return nil
end
local any_new_result1_upvr = require(game:GetService("CorePackages").Workspace.Packages.CoreScriptsInitializer).CoreLogger:new(script.Name)
local function waitForEmoteEventInternal_upvr(arg1, arg2, arg3, arg4) -- Line 63, Named "waitForEmoteEventInternal"
	--[[ Upvalues[3]:
		[1]: any_new_result1_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: waitForEmoteEventInternal_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 19 start (CF ANALYSIS FAILED)
	local BindableEvent_upvr_2 = Instance.new("BindableEvent")
	local os_clock_result1_upvw = os.clock()
	local var13_upvw = true
	local function _() -- Line 72
		--[[ Upvalues[2]:
			[1]: var13_upvw (read and write)
			[2]: BindableEvent_upvr_2 (readonly)
		]]
		if var13_upvw and BindableEvent_upvr_2 then
			var13_upvw = false
			BindableEvent_upvr_2:Fire()
		end
	end
	local any_Connect_result1 = arg2.Stopped:Connect(function() -- Line 80
		--[[ Upvalues[3]:
			[1]: any_new_result1_upvr (copied, readonly)
			[2]: var13_upvw (read and write)
			[3]: BindableEvent_upvr_2 (readonly)
		]]
		any_new_result1_upvr:trace("EmoteHelper.waitForEmoteEventInternal: Stopped")
		if var13_upvw and BindableEvent_upvr_2 then
			var13_upvw = false
			BindableEvent_upvr_2:Fire()
		end
	end)
	local any_Connect_result1_2 = arg2.KeyframeReached:Connect(function(arg1_2) -- Line 90
		--[[ Upvalues[6]:
			[1]: arg2 (readonly)
			[2]: arg3 (readonly)
			[3]: any_new_result1_upvr (copied, readonly)
			[4]: var13_upvw (read and write)
			[5]: BindableEvent_upvr_2 (readonly)
			[6]: os_clock_result1_upvw (read and write)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [6] 5. Error Block 3 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [6] 5. Error Block 3 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [17] 15. Error Block 7 start (CF ANALYSIS FAILED)
		var13_upvw = false
		BindableEvent_upvr_2:Fire()
		do
			return
		end
		-- KONSTANTERROR: [17] 15. Error Block 7 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [24] 21. Error Block 8 start (CF ANALYSIS FAILED)
		os_clock_result1_upvw = os.clock()
		-- KONSTANTERROR: [24] 21. Error Block 8 end (CF ANALYSIS FAILED)
	end)
	task.spawn(function() -- Line 101
		--[[ Upvalues[5]:
			[1]: os_clock_result1_upvw (read and write)
			[2]: var13_upvw (read and write)
			[3]: module_upvr (copied, readonly)
			[4]: any_new_result1_upvr (copied, readonly)
			[5]: BindableEvent_upvr_2 (readonly)
		]]
		local var21 = os.clock() - os_clock_result1_upvw
		while var13_upvw and var21 < module_upvr.EMOTE_LOOP_WAIT_TIMEOUT do
			wait(module_upvr.EMOTE_LOOP_WAIT_TIMEOUT - var21)
		end
		if var13_upvw then
			any_new_result1_upvr:trace("EmoteHelper.waitForEmoteEventInternal: Timeout!")
			if var13_upvw and BindableEvent_upvr_2 then
				var13_upvw = false
				BindableEvent_upvr_2:Fire()
			end
		end
	end)
	BindableEvent_upvr_2.Event:Wait()
	BindableEvent_upvr_2:Destroy()
	if any_Connect_result1 then
		any_Connect_result1:Disconnect()
	end
	if any_Connect_result1_2 then
		any_Connect_result1_2:Disconnect()
	end
	if arg3 then
		wait(module_upvr.EMOTE_LOOP_TRANSITION_WAIT_TIME)
		local any_getAnyActiveDefaultChatTriggeredEmoteTrack_result1 = module_upvr.getAnyActiveDefaultChatTriggeredEmoteTrack(arg1)
		if any_getAnyActiveDefaultChatTriggeredEmoteTrack_result1 then
			waitForEmoteEventInternal_upvr(arg1, any_getAnyActiveDefaultChatTriggeredEmoteTrack_result1, arg3, arg4)
		elseif arg4 then
			arg4()
			-- KONSTANTWARNING: GOTO [84] #70
		end
	elseif arg4 then
		arg4()
	end
	-- KONSTANTERROR: [0] 1. Error Block 19 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [84] 70. Error Block 12 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [84] 70. Error Block 12 end (CF ANALYSIS FAILED)
end
function module_upvr.createEmoteFinishEvent(arg1, arg2, arg3) -- Line 139
	--[[ Upvalues[1]:
		[1]: waitForEmoteEventInternal_upvr (readonly)
	]]
	local BindableEvent_upvr = Instance.new("BindableEvent")
	task.spawn(waitForEmoteEventInternal_upvr, arg1, arg2, arg3, function() -- Line 144
		--[[ Upvalues[1]:
			[1]: BindableEvent_upvr (readonly)
		]]
		BindableEvent_upvr:Fire()
		BindableEvent_upvr:Destroy()
	end)
	return BindableEvent_upvr.Event
end
return module_upvr