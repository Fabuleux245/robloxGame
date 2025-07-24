-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:45:56
-- Luau version 6, Types version 3
-- Time taken: 0.004425 seconds

local RunService_upvr = game:GetService("RunService")
local VideoUtils = script:FindFirstAncestor("VideoUtils")
local Parent = VideoUtils.Parent
local ArgCheck_upvr = require(Parent.ArgCheck)
local module_upvr = {}
module_upvr.__index = module_upvr
local Signal_upvr = require(Parent.AppCommonLib).Signal
function module_upvr.new() -- Line 57
	--[[ Upvalues[2]:
		[1]: Signal_upvr (readonly)
		[2]: module_upvr (readonly)
	]]
	local module = {
		changed = Signal_upvr.new();
		playingVideoKey = nil;
		currentPlaybackSessionId = nil;
		currentplaybackSessionStartTime = nil;
		videoAnalytics = nil;
		playingVideoItemIndex = nil;
		videoDwellTaskHandles = {};
		preferredFramerateThrottling = true;
	}
	setmetatable(module, module_upvr)
	return module
end
local FFlagLuaAppEdpMediaGalleryFullScreen_upvr = require(Parent.SharedFlags).FFlagLuaAppEdpMediaGalleryFullScreen
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("LuaAppUseAreaSizeForVideoVisibility", false)
local getIsInstanceVisible_upvr = require(VideoUtils.getIsInstanceVisible)
function module_upvr.isPlaybackCandidate(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 74
	--[[ Upvalues[4]:
		[1]: FFlagLuaAppEdpMediaGalleryFullScreen_upvr (readonly)
		[2]: game_DefineFastFlag_result1_upvr (readonly)
		[3]: getIsInstanceVisible_upvr (readonly)
		[4]: ArgCheck_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var11
	if FFlagLuaAppEdpMediaGalleryFullScreen_upvr and arg3 or not arg2 then
		return false
	end
	if game_DefineFastFlag_result1_upvr then
		return getIsInstanceVisible_upvr(arg4.current, arg5, arg6)
	end
	local current = arg4.current
	local var13 = ArgCheck_upvr
	if current == nil then
		var13 = false
	else
		var13 = true
	end
	var13.assert(var13)
	if current ~= nil then
		local AbsoluteSize = current.AbsoluteSize
		local AbsolutePosition = current.AbsolutePosition
		local var16 = AbsolutePosition + AbsoluteSize
		var11 = arg5.max
		local X = var11.X
		var11 = AbsoluteSize.X
		if 0 < var11 then
			var11 = AbsoluteSize.X
			X = (math.min(var16.X, X) - math.max(AbsolutePosition.X, arg5.min.X)) / var11
		else
			X = 0
		end
		if arg6 > X * 100 then
			var11 = false
		else
			var11 = true
		end
		if arg5.min.Y <= AbsolutePosition.Y then
			if var16.Y > arg5.max.Y then
			else
			end
		end
		return var11 and true
	end
	return false
end
function module_upvr.requestPlayback(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 113
	if arg1.playingVideoKey == arg2 then
	else
		if arg1.videoDwellTaskHandles[arg2] ~= nil then return end
		if arg3 then
			arg1.videoDwellTaskHandles[arg2] = task.delay(arg4, function() -- Line 132
				--[[ Upvalues[4]:
					[1]: arg1 (readonly)
					[2]: arg2 (readonly)
					[3]: arg5 (readonly)
					[4]: arg6 (readonly)
				]]
				arg1.videoDwellTaskHandles[arg2] = nil
				arg1:__startPlayback(arg2, arg5, arg6)
			end)
			return
		end
		arg1:__startPlayback(arg2, arg5, arg6)
	end
end
local HttpService_upvr = game:GetService("HttpService")
function module_upvr.__startPlayback(arg1, arg2, arg3, arg4) -- Line 143
	--[[ Upvalues[2]:
		[1]: RunService_upvr (readonly)
		[2]: HttpService_upvr (readonly)
	]]
	RunService_upvr:setThrottleFramerateEnabled(false)
	arg1.playingVideoKey = arg2
	arg1.currentPlaybackSessionId = HttpService_upvr:GenerateGUID(false)
	arg1.currentPlaybackSessionStartTime = tick()
	arg1.videoAnalytics = arg4
	arg1.playingVideoItemIndex = arg3
	if arg4 then
		arg4.reportVideoPlay(arg3, arg1.currentPlaybackSessionId)
	end
	arg1.changed:fire(arg2)
end
function module_upvr.cancelPlayback(arg1, arg2, arg3, arg4, arg5) -- Line 165
	--[[ Upvalues[1]:
		[1]: RunService_upvr (readonly)
	]]
	if arg1.playingVideoKey == arg2 then
		arg1:__cancelCurrentPlayback(arg3, arg4, nil, arg5)
	elseif arg1.videoDwellTaskHandles[arg2] ~= nil then
		task.cancel(arg1.videoDwellTaskHandles[arg2])
		arg1.videoDwellTaskHandles[arg2] = nil
	end
	if arg1.playingVideoKey == nil then
		RunService_upvr:setThrottleFramerateEnabled(arg1.preferredFramerateThrottling)
	end
end
function module_upvr.reset(arg1, arg2, arg3, arg4, arg5) -- Line 187
	--[[ Upvalues[1]:
		[1]: RunService_upvr (readonly)
	]]
	if arg1.playingVideoKey ~= nil then
		arg1:__cancelCurrentPlayback(arg2, arg1.playingVideoItemIndex, arg4, arg1.videoAnalytics)
	end
	for _, v in arg1.videoDwellTaskHandles do
		if v ~= nil then
			task.cancel(v)
		end
	end
	arg1.videoDwellTaskHandles = {}
	RunService_upvr:setThrottleFramerateEnabled(arg1.preferredFramerateThrottling)
end
function module_upvr.__cancelCurrentPlayback(arg1, arg2, arg3, arg4, arg5) -- Line 210
	--[[ Upvalues[1]:
		[1]: ArgCheck_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [20] 15. Error Block 18 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [22.5]
	if arg1.currentPlaybackSessionStartTime <= nil then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	else
		-- KONSTANTERROR: [28] 20. Error Block 10 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [28] 20. Error Block 10 end (CF ANALYSIS FAILED)
	end
	arg5.reportVideoEnd(arg3, arg2, arg1.currentPlaybackSessionId, -1, arg4)
	-- KONSTANTERROR: [20] 15. Error Block 18 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [38] 28. Error Block 13 start (CF ANALYSIS FAILED)
	arg1.playingVideoKey = nil
	arg1.currentPlaybackSessionId = nil
	arg1.currentPlaybackSessionStartTime = nil
	arg1.videoAnalytics = nil
	arg1.playingVideoItemIndex = nil
	arg1.changed:fire(nil)
	-- KONSTANTERROR: [38] 28. Error Block 13 end (CF ANALYSIS FAILED)
end
function module_upvr.setPreferredFramerateThrottling(arg1, arg2) -- Line 237
	arg1.preferredFramerateThrottling = arg2
end
module_upvr.default = module_upvr.new()
return module_upvr