-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:40:23
-- Luau version 6, Types version 3
-- Time taken: 0.007972 seconds

local module_3_upvr = {
	animationKeyframes = {};
	animationTracks = {};
}
local Animate_upvr = require(script.Animate)
local RenderStepped_upvr = game:GetService("RunService").RenderStepped
task.spawn(function() -- Line 32
	--[[ Upvalues[3]:
		[1]: module_3_upvr (readonly)
		[2]: Animate_upvr (readonly)
		[3]: RenderStepped_upvr (readonly)
	]]
	while true do
		for i, v in pairs(module_3_upvr.animationTracks) do
			for _, v_2 in ipairs(v) do
				if not v_2.playing then
				elseif v_2.playing and Animate_upvr(i, v_2) then
					module_3_upvr.markAllTransitioning(v, v_2)
				end
			end
		end
		RenderStepped_upvr:Wait()
	end
end)
function module_3_upvr.markAllTransitioning(arg1, arg2) -- Line 52
	for _, v_3 in ipairs(arg1) do
		if v_3.playing then
			v_3.transitionStart(arg2)
		end
	end
end
function module_3_upvr.formatKeyframeData(arg1) -- Line 60
	local module_4 = {}
	for i_4, v_4 in pairs(arg1) do
		table.insert(module_4, {
			Time = i_4;
			Keyframe = v_4;
		})
	end
	table.sort(module_4, function(arg1_2, arg2) -- Line 72
		if tonumber(arg2.Time) < tonumber(arg1_2.Time) then
			return false
		end
		return true
	end)
	return module_4
end
function module_3_upvr.loadKeyframes(arg1, arg2) -- Line 90
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local module = {}
	local tbl_upvr = {}
	for _, v_5 in pairs(arg1:GetDescendants()) do
		if v_5.ClassName == "Motor6D" then
			table.insert(tbl_upvr, v_5)
		end
	end
	local function _(arg1_3) -- Line 100, Named "getMotor6DForPart"
		--[[ Upvalues[1]:
			[1]: tbl_upvr (readonly)
		]]
		for _, v_6 in pairs(tbl_upvr) do
			if v_6.Part1 == arg1_3 then
				return v_6
			end
		end
	end
	local function var56_upvw(arg1_4, arg2_2, arg3) -- Line 109
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: tbl_upvr (readonly)
			[3]: var56_upvw (read and write)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [2] 3. Error Block 2 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [2] 3. Error Block 2 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [4] 4. Error Block 3 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [4] 4. Error Block 3 end (CF ANALYSIS FAILED)
	end
	for _, v_7 in ipairs(arg2) do
		table.insert(module, {
			Time = v_7.Time;
			Keyframe = var56_upvw(v_7.Keyframe);
		})
		local _
	end
	return module
end
function module_3_upvr.searchForTrack(arg1, arg2) -- Line 138
	--[[ Upvalues[1]:
		[1]: module_3_upvr (readonly)
	]]
	for _, v_8 in pairs(module_3_upvr.animationTracks[arg1]) do
		if v_8.name == arg2 then
			return v_8
		end
	end
	return false
end
function module_3_upvr.highestPlayingTrack(arg1) -- Line 148
	--[[ Upvalues[1]:
		[1]: module_3_upvr (readonly)
	]]
	for i_9 = 1, #module_3_upvr.animationTracks[arg1] do
		local var68 = module_3_upvr.animationTracks[arg1][i_9]
		if var68.playing then
			return var68
		end
	end
end
function module_3_upvr.loadAnimation(arg1, arg2, arg3) -- Line 157
	--[[ Upvalues[1]:
		[1]: module_3_upvr (readonly)
	]]
	if not module_3_upvr.animationTracks[arg1] then
		module_3_upvr.animationTracks[arg1] = {}
	end
	if module_3_upvr.searchForTrack(arg1, arg2) then
		return module_3_upvr.searchForTrack(arg1, arg2)
	end
	if not module_3_upvr.animationKeyframes[arg2] then
		module_3_upvr.animationKeyframes[arg2] = module_3_upvr.formatKeyframeData(arg3.Keyframes)
	end
	local var69 = module_3_upvr.animationKeyframes[arg2]
	local module_2_upvr = {}
	module_2_upvr.name = arg2
	module_2_upvr.looping = arg3.Properties.Looping
	module_2_upvr.priority = arg3.Properties.Priority
	module_2_upvr.loadedKeyframes = module_3_upvr.loadKeyframes(arg1, var69)
	module_2_upvr.playing = false
	module_2_upvr.length = nil
	module_2_upvr.lastTick = nil
	module_2_upvr.progress = 0
	module_2_upvr.transitioning = false
	module_2_upvr.transitionStartTime = nil
	module_2_upvr.previousKeyframe = nil
	module_2_upvr.length = var69[#var69].Time
	function module_2_upvr.reset() -- Line 191
		--[[ Upvalues[1]:
			[1]: module_2_upvr (readonly)
		]]
		module_2_upvr.lastTick = tick()
		module_2_upvr.progress = 0
		module_2_upvr.playing = tick()
	end
	function module_2_upvr.stop() -- Line 197
		--[[ Upvalues[1]:
			[1]: module_2_upvr (readonly)
		]]
		module_2_upvr.lastTick = nil
		module_2_upvr.progress = 0
		module_2_upvr.playing = false
		module_2_upvr.transitionEnd()
	end
	function module_2_upvr.transitionStart(arg1_5) -- Line 204
		--[[ Upvalues[1]:
			[1]: module_2_upvr (readonly)
		]]
		module_2_upvr.transitioning = true
		module_2_upvr.transitionStartTime = tick()
		module_2_upvr.previousKeyframe = arg1_5.loadedKeyframes[#arg1_5.loadedKeyframes]
	end
	function module_2_upvr.transitionEnd() -- Line 210
		--[[ Upvalues[1]:
			[1]: module_2_upvr (readonly)
		]]
		module_2_upvr.transitioning = false
		module_2_upvr.transitionStartTime = nil
		module_2_upvr.previousKeyframe = nil
	end
	table.insert(module_3_upvr.animationTracks[arg1], module_2_upvr)
	local tbl_upvr_2 = {
		Core = 1;
		Idle = 2;
		Movement = 3;
		Action = 4;
	}
	table.sort(module_3_upvr.animationTracks[arg1], function(arg1_6, arg2_3) -- Line 225
		--[[ Upvalues[1]:
			[1]: tbl_upvr_2 (readonly)
		]]
		if tbl_upvr_2[arg2_3.priority.Name] < tbl_upvr_2[arg1_6.priority.Name] then
			return false
		end
		if tbl_upvr_2[arg1_6.priority.Name] < tbl_upvr_2[arg2_3.priority.Name] then
			return true
		end
		local var73
		if var73 == tbl_upvr_2[arg2_3.priority.Name] then
			var73 = arg1_6.looping
			if var73 then
				var73 = true
				return var73
			end
			var73 = arg2_3.looping
			if var73 then
				var73 = false
				return var73
			end
			if arg1_6.length >= arg2_3.length then
				var73 = false
			else
				var73 = true
			end
			return var73
		end
	end)
	return module_2_upvr
end
function module_3_upvr.playAnimation(arg1, arg2) -- Line 244
	--[[ Upvalues[1]:
		[1]: module_3_upvr (readonly)
	]]
	if not module_3_upvr.animationTracks[arg1] then
		module_3_upvr.animationTracks[arg1] = {}
	end
	local any_searchForTrack_result1_2 = module_3_upvr.searchForTrack(arg1, arg2)
	if any_searchForTrack_result1_2 then
		local any_highestPlayingTrack_result1 = module_3_upvr.highestPlayingTrack(arg1)
		if any_highestPlayingTrack_result1 then
			any_searchForTrack_result1_2.transitionStart(any_highestPlayingTrack_result1)
		end
		any_searchForTrack_result1_2.reset()
	end
	return any_searchForTrack_result1_2
end
function module_3_upvr.stopAnimation(arg1, arg2) -- Line 264
	--[[ Upvalues[1]:
		[1]: module_3_upvr (readonly)
	]]
	if not module_3_upvr.animationTracks[arg1] then
		module_3_upvr.animationTracks[arg1] = {}
	end
	local any_searchForTrack_result1 = module_3_upvr.searchForTrack(arg1, arg2)
	if any_searchForTrack_result1 then
		any_searchForTrack_result1.stop()
	end
	return any_searchForTrack_result1
end
return module_3_upvr