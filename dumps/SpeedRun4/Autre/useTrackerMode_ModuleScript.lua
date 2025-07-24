-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:05:11
-- Luau version 6, Types version 3
-- Time taken: 0.001995 seconds

local FaceChatUtils_upvr = require(script.Parent.Parent.Utils.FaceChatUtils)
local TrackerMode_upvr = Enum.TrackerMode
local any_getTrackerMode_result1 = FaceChatUtils_upvr.getTrackerMode()
local var4_upvw = true
if any_getTrackerMode_result1 ~= TrackerMode_upvr.Video then
	if any_getTrackerMode_result1 ~= TrackerMode_upvr.AudioVideo then
		var4_upvw = false
	else
		var4_upvw = true
	end
end
local var5_upvw = true
if any_getTrackerMode_result1 ~= TrackerMode_upvr.Audio then
	if any_getTrackerMode_result1 ~= TrackerMode_upvr.AudioVideo then
		var5_upvw = false
	else
		var5_upvw = true
	end
end
local React_upvr = require(game:GetService("CorePackages").Packages.React)
local any_new_result1_upvr = require(game:GetService("CoreGui"):WaitForChild("RobloxGui").Modules.SelfView.Analytics).new()
local VideoCaptureService_upvr = game:GetService("VideoCaptureService")
local FaceAnimatorService_upvr = game:GetService("FaceAnimatorService")
return function() -- Line 23
	--[[ Upvalues[8]:
		[1]: React_upvr (readonly)
		[2]: TrackerMode_upvr (readonly)
		[3]: FaceChatUtils_upvr (readonly)
		[4]: var4_upvw (read and write)
		[5]: any_new_result1_upvr (readonly)
		[6]: var5_upvw (read and write)
		[7]: VideoCaptureService_upvr (readonly)
		[8]: FaceAnimatorService_upvr (readonly)
	]]
	local any_useState_result1, any_useState_result2_upvr = React_upvr.useState(TrackerMode_upvr.None)
	local any_useCallback_result1_upvr = React_upvr.useCallback(function() -- Line 26
		--[[ Upvalues[6]:
			[1]: FaceChatUtils_upvr (copied, readonly)
			[2]: TrackerMode_upvr (copied, readonly)
			[3]: var4_upvw (copied, read and write)
			[4]: any_new_result1_upvr (copied, readonly)
			[5]: var5_upvw (copied, read and write)
			[6]: any_useState_result2_upvr (readonly)
		]]
		local any_getTrackerMode_result1_2 = FaceChatUtils_upvr.getTrackerMode()
		local var15 = true
		if any_getTrackerMode_result1_2 ~= TrackerMode_upvr.Video then
			if any_getTrackerMode_result1_2 ~= TrackerMode_upvr.AudioVideo then
				var15 = false
			else
				var15 = true
			end
		end
		if var15 ~= var4_upvw then
			any_new_result1_upvr:reportCamState(var15)
			var4_upvw = var15
		end
		local var16 = true
		if any_getTrackerMode_result1_2 ~= TrackerMode_upvr.Audio then
			if any_getTrackerMode_result1_2 ~= TrackerMode_upvr.AudioVideo then
				var16 = false
			else
				var16 = true
			end
		end
		if var16 ~= var5_upvw then
			any_new_result1_upvr:reportMicState(var16)
			var5_upvw = var16
		end
		any_useState_result2_upvr(any_getTrackerMode_result1_2)
	end)
	React_upvr.useEffect(function() -- Line 45
		--[[ Upvalues[3]:
			[1]: VideoCaptureService_upvr (copied, readonly)
			[2]: any_useCallback_result1_upvr (readonly)
			[3]: FaceAnimatorService_upvr (copied, readonly)
		]]
		if VideoCaptureService_upvr then
			any_useCallback_result1_upvr()
			local any_Connect_result1_upvr_4 = VideoCaptureService_upvr.Started:Connect(any_useCallback_result1_upvr)
			local any_Connect_result1_upvr_2 = VideoCaptureService_upvr.Stopped:Connect(any_useCallback_result1_upvr)
			local any_Connect_result1_upvr = VideoCaptureService_upvr.DevicesChanged:Connect(any_useCallback_result1_upvr)
			local any_Connect_result1_upvr_5 = FaceAnimatorService_upvr:GetPropertyChangedSignal("VideoAnimationEnabled"):Connect(any_useCallback_result1_upvr)
			local any_Connect_result1_upvr_3 = FaceAnimatorService_upvr:GetPropertyChangedSignal("AudioAnimationEnabled"):Connect(any_useCallback_result1_upvr)
			return function() -- Line 55
				--[[ Upvalues[5]:
					[1]: any_Connect_result1_upvr_4 (readonly)
					[2]: any_Connect_result1_upvr_2 (readonly)
					[3]: any_Connect_result1_upvr (readonly)
					[4]: any_Connect_result1_upvr_5 (readonly)
					[5]: any_Connect_result1_upvr_3 (readonly)
				]]
				any_Connect_result1_upvr_4:Disconnect()
				any_Connect_result1_upvr_2:Disconnect()
				any_Connect_result1_upvr:Disconnect()
				any_Connect_result1_upvr_5:Disconnect()
				any_Connect_result1_upvr_3:Disconnect()
			end
		end
		function any_Connect_result1_upvr_4() -- Line 63
		end
		return any_Connect_result1_upvr_4
	end, {})
	return any_useState_result1
end