-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:07:36
-- Luau version 6, Types version 3
-- Time taken: 0.007206 seconds

local BillboardInputHelper_upvr = require(script.Parent.BillboardInputHelper)
local module_upvr = {
	lastAudioData = {};
}
function module_upvr.saveAudioToggle(arg1) -- Line 27
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	module_upvr.lastAudioData[arg1.adPart] = {
		bloxbizAdId = arg1.bloxbizAdId;
		isAudioOn = arg1.isAudioOn;
	}
end
function module_upvr.loadAudioIfSameVideoAd(arg1) -- Line 34
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local adPart = arg1.adPart
	local var8 = module_upvr.lastAudioData[adPart]
	local var9
	if var8 then
		if arg1.bloxbizAdId ~= var8.bloxbizAdId then
			adPart = false
		else
			adPart = true
		end
		local isAudioOn = var8.isAudioOn
		if adPart then
			if isAudioOn then
				arg1:turnAudioOn()
				arg1.videoFrame.AudioLabel.ImageTransparency = 1
				var9 = true
			elseif not isAudioOn then
				arg1:turnAudioOff()
				var9 = false
			end
		end
	end
	arg1.audioToggleDataLoaded = true
	return var9
end
function module_upvr.pausePlayer(arg1, arg2) -- Line 59
	arg1.GIF:pause(arg2)
	local frameNumOnLastResume = arg1.analyticsData.frameNumOnLastResume
	if frameNumOnLastResume == nil then
	else
		local var12 = (arg1.GIF.runData.currentFrame - frameNumOnLastResume + 1) / arg1.GIF.Framerate
		if arg1.analyticsData.maxContinuousPlaytime < var12 then
			arg1.analyticsData.maxContinuousPlaytime = var12
		end
	end
end
function module_upvr.resumePlayer(arg1, arg2) -- Line 79
	arg1.GIF:resume(arg2)
	local analyticsData = arg1.analyticsData
	analyticsData.numResumes += 1
	arg1.analyticsData.frameNumOnLastResume = arg1.GIF.runData.currentFrame
end
function module_upvr.getAnalytics(arg1) -- Line 86
	return {
		playEndPercentage = arg1.GIF.runData.currentFrame / arg1.GIF.FrameCount;
		playEndSeconds = arg1.GIF.runData.currentFrame / arg1.GIF.Framerate;
		numResumes = arg1.analyticsData.numResumes;
		audioActiveSeconds = arg1.GIF.runData.audioActiveSumFrames / arg1.GIF.Framerate;
		maxContinuousPlaytime = arg1.analyticsData.maxContinuousPlaytime;
	}
end
local HttpService_upvr = game:GetService("HttpService")
local VideoPlayedEvent_upvr = game:GetService("ReplicatedStorage"):WaitForChild("BloxbizRemotes"):WaitForChild("VideoPlayedEvent")
function module_upvr.sendAnalytics(arg1) -- Line 96
	--[[ Upvalues[2]:
		[1]: HttpService_upvr (readonly)
		[2]: VideoPlayedEvent_upvr (readonly)
	]]
	if arg1.analyticsData.analyticsSent then
	else
		arg1.analyticsData.analyticsSent = true
		VideoPlayedEvent_upvr:FireServer(arg1:getAnalytics(), arg1.adClient:get_client_player_stats(), arg1.bloxbizAdId, arg1.adPart, HttpService_upvr:GenerateGUID(false), arg1.billType)
	end
end
function module_upvr.cleanup(arg1) -- Line 110
	--[[ Upvalues[1]:
		[1]: BillboardInputHelper_upvr (readonly)
	]]
	local var21
	if var21 then
		var21 = true
		arg1.cleanupAfterLoading = var21
	else
		var21 = arg1.videoFrame
		if var21 then
			var21 = arg1.videoFrame:Destroy
			var21()
		end
		if arg1.analyticsData.frameNumOnLastResume == nil then
			var21 = false
		else
			var21 = true
		end
		if var21 then
			arg1:pausePlayer()
			arg1:sendAnalytics()
		end
		arg1.GIF:Cleanup()
		if arg1.viewabilityConnection then
			arg1.viewabilityConnection:Disconnect()
		end
		if arg1.audioToggleDataLoaded then
			arg1:saveAudioToggle()
		end
		for _, v in pairs(arg1.inputConnections) do
			v:Disconnect()
		end
		BillboardInputHelper_upvr:removeBillboard(arg1.adPart)
	end
end
function module_upvr.turnAudioOn(arg1) -- Line 143
	arg1.isAudioOn = true
	arg1.GIF:setVolume(1)
	arg1.videoFrame.AudioLabel.Image = "http://www.roblox.com/asset/?id=10647668132"
end
function module_upvr.turnAudioOff(arg1) -- Line 150
	arg1.isAudioOn = false
	arg1.GIF:setVolume(0)
	arg1.videoFrame.AudioLabel.Image = "http://www.roblox.com/asset/?id=10647669422"
end
local VideoFrame_upvr = require(script.VideoFrame)
local TweenService_upvr = game:GetService("TweenService")
local LocalPlayer_upvr = game.Players.LocalPlayer
function module_upvr.setupAudioControls(arg1) -- Line 157
	--[[ Upvalues[4]:
		[1]: VideoFrame_upvr (readonly)
		[2]: TweenService_upvr (readonly)
		[3]: LocalPlayer_upvr (readonly)
		[4]: BillboardInputHelper_upvr (readonly)
	]]
	local var25_result1 = VideoFrame_upvr()
	var25_result1.Parent = arg1.adPart.AdSurfaceGui
	local AudioLabel_upvr = var25_result1.AudioLabel
	local var30_upvw = "Leaving"
	local var31_upvw
	local function tweenIconTransparency_upvr(arg1_2) -- Line 166, Named "tweenIconTransparency"
		--[[ Upvalues[3]:
			[1]: AudioLabel_upvr (readonly)
			[2]: var31_upvw (read and write)
			[3]: TweenService_upvr (copied, readonly)
		]]
		if AudioLabel_upvr.ImageTransparency == arg1_2 then
		else
			if var31_upvw then
				var31_upvw:Cancel()
			end
			local tbl_2 = {}
			tbl_2.ImageTransparency = arg1_2
			var31_upvw = TweenService_upvr:Create(AudioLabel_upvr, TweenInfo.new(0.5, Enum.EasingStyle.Sine), tbl_2)
			var31_upvw:Play()
		end
	end
	local function tweenIconSize_upvr(arg1_3) -- Line 180, Named "tweenIconSize"
		--[[ Upvalues[2]:
			[1]: AudioLabel_upvr (readonly)
			[2]: TweenService_upvr (copied, readonly)
		]]
		if AudioLabel_upvr.Size == arg1_3 then
		else
			local tbl = {}
			tbl.Size = arg1_3
			TweenService_upvr:Create(AudioLabel_upvr, TweenInfo.new(0.5, Enum.EasingStyle.Sine), tbl):Play()
		end
	end
	local function var34_upvw() -- Line 193
		--[[ Upvalues[2]:
			[1]: var30_upvw (read and write)
			[2]: arg1 (readonly)
		]]
		var30_upvw = "Clicked"
		if arg1.isAudioOn then
			arg1:turnAudioOff()
		else
			arg1:turnAudioOn()
		end
	end
	local function var35_upvw() -- Line 203
		--[[ Upvalues[4]:
			[1]: var30_upvw (read and write)
			[2]: tweenIconTransparency_upvr (readonly)
			[3]: arg1 (readonly)
			[4]: tweenIconSize_upvr (readonly)
		]]
		local var36
		if var30_upvw ~= "Moved" then
			var36 = false
		else
			var36 = true
		end
		if var36 then
		else
			var30_upvw = "Moved"
			tweenIconTransparency_upvr(0)
			if arg1.isAudioOn then
				tweenIconSize_upvr(UDim2.new(0.10526315789473684, 0, 0.10526315789473684, 0))
				return
			end
			tweenIconSize_upvr(UDim2.new(0.13157894736842105, 0, 0.13157894736842105, 0))
		end
	end
	local function var37_upvw() -- Line 220
		--[[ Upvalues[5]:
			[1]: LocalPlayer_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: var30_upvw (read and write)
			[4]: tweenIconSize_upvr (readonly)
			[5]: tweenIconTransparency_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var38
		if LocalPlayer_upvr:GetMouse().Target ~= arg1.adPart then
			var38 = false
		else
			var38 = true
		end
		if var30_upvw ~= "Leaving" then
		else
		end
		if var38 or true then
		else
			var30_upvw = "Leaving"
			tweenIconSize_upvr(UDim2.new(0.10526315789473684, 0, 0.10526315789473684, 0))
			if arg1.isAudioOn then
				tweenIconTransparency_upvr(1)
				return
			end
			tweenIconTransparency_upvr(0)
		end
	end
	var25_result1.AudioBtn.MouseEnter:Connect(var35_upvw)
	var25_result1.AudioBtn.MouseMoved:Connect(var35_upvw)
	var25_result1.AudioBtn.MouseLeave:Connect(var37_upvw)
	table.insert(arg1.inputConnections, BillboardInputHelper_upvr.mouseClick.Event:Connect(function(arg1_4) -- Line 240
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: var34_upvw (read and write)
		]]
		if arg1_4 == arg1.adPart then
			var34_upvw()
		end
	end))
	table.insert(arg1.inputConnections, BillboardInputHelper_upvr.mouseEntered.Event:Connect(function(arg1_5) -- Line 250
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: var35_upvw (read and write)
		]]
		if arg1_5 == arg1.adPart then
			var35_upvw()
		end
	end))
	table.insert(arg1.inputConnections, BillboardInputHelper_upvr.mouseLeft.Event:Connect(function(arg1_6) -- Line 256
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: var37_upvw (read and write)
		]]
		if arg1_6 == arg1.adPart then
			var37_upvw()
		end
	end))
	arg1.videoFrame = var25_result1
end
function module_upvr.setupViewabilityCriteria(arg1) -- Line 269
	local var43_upvw = false
	arg1.viewabilityConnection = arg1.adClient.viewabilityMetEvent.Event:Connect(function(arg1_7, arg2, arg3) -- Line 272
		--[[ Upvalues[2]:
			[1]: var43_upvw (read and write)
			[2]: arg1 (readonly)
		]]
		local var46 = arg1_7
		if var46 then
			var46 = false
			if 1.5 <= arg2 then
				if arg3 > 55 then
					var46 = false
				else
					var46 = true
				end
			end
		end
		if var46 == var43_upvw then
		else
			var43_upvw = var46
			if var46 then
				arg1:resumePlayer()
				return
			end
			arg1:pausePlayer()
		end
	end)
end
local GIF_upvr = require(script.Parent.Parent.GIF)
function module_upvr.init(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9) -- Line 289
	--[[ Upvalues[3]:
		[1]: module_upvr (readonly)
		[2]: GIF_upvr (readonly)
		[3]: BillboardInputHelper_upvr (readonly)
	]]
	local setmetatable_result1_upvr = setmetatable({}, {
		__index = module_upvr;
	})
	setmetatable_result1_upvr.GIF = nil
	setmetatable_result1_upvr.isLoading = true
	setmetatable_result1_upvr.cleanupAfterLoading = false
	setmetatable_result1_upvr.adClient = arg2
	setmetatable_result1_upvr.adPart = arg5
	setmetatable_result1_upvr.bloxbizAdId = arg8
	setmetatable_result1_upvr.billType = arg9 or "video_plays_cpm"
	setmetatable_result1_upvr.videoFrame = nil
	setmetatable_result1_upvr.audioToggleDataLoaded = false
	setmetatable_result1_upvr.isAudioOn = false
	setmetatable_result1_upvr.viewabilityConnection = nil
	setmetatable_result1_upvr.inputConnections = {}
	setmetatable_result1_upvr.analyticsData = {}
	setmetatable_result1_upvr.analyticsData.analyticsSent = false
	setmetatable_result1_upvr.analyticsData.numResumes = -1
	setmetatable_result1_upvr.analyticsData.maxContinuousPlaytime = 0
	setmetatable_result1_upvr.analyticsData.frameNumOnLastResume = nil
	task.spawn(function() -- Line 311
		--[[ Upvalues[8]:
			[1]: setmetatable_result1_upvr (readonly)
			[2]: GIF_upvr (copied, readonly)
			[3]: arg3 (readonly)
			[4]: arg4 (readonly)
			[5]: arg5 (readonly)
			[6]: arg6 (readonly)
			[7]: arg7 (readonly)
			[8]: BillboardInputHelper_upvr (copied, readonly)
		]]
		setmetatable_result1_upvr.GIF = GIF_upvr:init(arg3, arg4, arg5, arg6, arg7, 0)
		setmetatable_result1_upvr.isLoading = false
		if setmetatable_result1_upvr.GIF.LoadingFailed then
			setmetatable_result1_upvr:cleanup()
			setmetatable_result1_upvr.adClient:requestAdRotation()
		else
			if setmetatable_result1_upvr.cleanupAfterLoading then
				setmetatable_result1_upvr:cleanup()
				return
			end
			setmetatable_result1_upvr:pausePlayer(0)
			setmetatable_result1_upvr:setupAudioControls()
			setmetatable_result1_upvr:setupViewabilityCriteria()
			setmetatable_result1_upvr:turnAudioOff()
			BillboardInputHelper_upvr:addBillboard(setmetatable_result1_upvr.adPart)
			if setmetatable_result1_upvr:loadAudioIfSameVideoAd() then
				setmetatable_result1_upvr.GIF.runData.audioActiveSumFrames = 1
			end
			setmetatable_result1_upvr.GIF.finishedCallback = function() -- Line 336
				--[[ Upvalues[1]:
					[1]: setmetatable_result1_upvr (copied, readonly)
				]]
				setmetatable_result1_upvr:pausePlayer()
				setmetatable_result1_upvr:sendAnalytics()
				setmetatable_result1_upvr:cleanup()
				setmetatable_result1_upvr.adClient:requestAdRotation()
			end
		end
	end)
	return setmetatable_result1_upvr
end
return module_upvr