-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:42:19
-- Luau version 6, Types version 3
-- Time taken: 0.008614 seconds

local TweenService_upvr = game:GetService("TweenService")
local ConfigReader_upvr = require(script.Parent.Parent.ConfigReader)
local BillboardInputHelper_upvr = require(script.Parent.BillboardInputHelper)
local CurrentCamera_upvr = workspace.CurrentCamera
local LocalPlayer_upvr = game.Players.LocalPlayer
local module_upvr = {
	lastAudioData = {};
}
function module_upvr.saveAudioToggle(arg1) -- Line 31
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	module_upvr.lastAudioData[arg1.adPart] = {
		bloxbizAdId = arg1.bloxbizAdId;
		isAudioOn = arg1.isAudioOn;
	}
end
function module_upvr.loadAudioIfSameVideoAd(arg1) -- Line 38
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local adPart = arg1.adPart
	local var12 = module_upvr.lastAudioData[adPart]
	local var13
	if var12 then
		if arg1.bloxbizAdId ~= var12.bloxbizAdId then
			adPart = false
		else
			adPart = true
		end
		local isAudioOn_2 = var12.isAudioOn
		if adPart then
			if isAudioOn_2 then
				arg1:turnAudioOn()
				arg1.videoFrame.AudioLabel.ImageTransparency = 1
				var13 = true
			elseif not isAudioOn_2 then
				arg1:turnAudioOff()
				var13 = false
			end
		end
	end
	arg1.audioToggleDataLoaded = true
	return var13
end
function module_upvr.pausePlayer(arg1, arg2) -- Line 63
	arg1.GIF:pause(arg2)
	local frameNumOnLastResume = arg1.analyticsData.frameNumOnLastResume
	if frameNumOnLastResume == nil then
	else
		local var16 = (arg1.GIF.runData.currentFrame - frameNumOnLastResume + 1) / arg1.GIF.framerate
		if arg1.analyticsData.maxContinuousPlaytime < var16 then
			arg1.analyticsData.maxContinuousPlaytime = var16
		end
	end
end
function module_upvr.resumePlayer(arg1, arg2) -- Line 83
	arg1.GIF:resume(arg2)
	local analyticsData = arg1.analyticsData
	analyticsData.numResumes += 1
	arg1.analyticsData.frameNumOnLastResume = arg1.GIF.runData.currentFrame
end
function module_upvr.getAnalytics(arg1) -- Line 90
	return {
		playEndPercentage = arg1.GIF.runData.currentFrame / arg1.GIF.frameCount;
		playEndSeconds = arg1.GIF.runData.currentFrame / arg1.GIF.framerate;
		numResumes = arg1.analyticsData.numResumes;
		audioActiveSeconds = arg1.GIF.runData.audioActiveSumFrames / arg1.GIF.framerate;
		maxContinuousPlaytime = arg1.analyticsData.maxContinuousPlaytime;
	}
end
local AdRequestStats_upvr = require(script.Parent.Parent.AdRequestStats)
local HttpService_upvr = game:GetService("HttpService")
local VideoPlayedEvent_upvr = game:GetService("ReplicatedStorage"):WaitForChild("BloxbizRemotes"):WaitForChild("VideoPlayedEvent")
function module_upvr.sendAnalytics(arg1) -- Line 100
	--[[ Upvalues[4]:
		[1]: AdRequestStats_upvr (readonly)
		[2]: LocalPlayer_upvr (readonly)
		[3]: HttpService_upvr (readonly)
		[4]: VideoPlayedEvent_upvr (readonly)
	]]
	if arg1.analyticsData.analyticsSent then
	else
		arg1.analyticsData.analyticsSent = true
		VideoPlayedEvent_upvr:FireServer(arg1:getAnalytics(), AdRequestStats_upvr:getClientPlayerStats(LocalPlayer_upvr), arg1.bloxbizAdId, arg1.adPart, HttpService_upvr:GenerateGUID(false), arg1.billType)
	end
end
function module_upvr.cleanup(arg1) -- Line 114
	--[[ Upvalues[1]:
		[1]: BillboardInputHelper_upvr (readonly)
	]]
	local var26
	if var26 then
		var26 = true
		arg1.cleanupAfterLoading = var26
	else
		var26 = arg1.videoFrame
		if var26 then
			var26 = arg1.videoFrame:Destroy
			var26()
		end
		if arg1.analyticsData.frameNumOnLastResume == nil then
			var26 = false
		else
			var26 = true
		end
		if var26 then
			arg1:pausePlayer()
			arg1:sendAnalytics()
		end
		arg1.GIF:cleanup()
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
function module_upvr.turnAudioOn(arg1) -- Line 147
	arg1.isAudioOn = true
	arg1.GIF:setVolume(1)
	arg1.videoFrame.AudioLabel.Image = "http://www.roblox.com/asset/?id=10647668132"
end
function module_upvr.turnAudioOff(arg1) -- Line 154
	arg1.isAudioOn = false
	arg1.GIF:setVolume(0)
	arg1.videoFrame.AudioLabel.Image = "http://www.roblox.com/asset/?id=10647669422"
end
local function _(arg1, arg2) -- Line 161, Named "getCameraCframe"
	--[[ Upvalues[1]:
		[1]: CurrentCamera_upvr (readonly)
	]]
	local CFrame_2 = arg1.CFrame
	local var31 = arg1.Size.Y / 2 / math.tan(CurrentCamera_upvr.FieldOfView / 2)
	if arg2 then
		var31 *= arg2
	end
	return (CFrame_2 + CFrame_2.LookVector * var31) * CFrame.Angles(0, math.pi, 0)
end
local var32_upvw
function module_upvr.zoomIn(arg1) -- Line 177
	--[[ Upvalues[4]:
		[1]: ConfigReader_upvr (readonly)
		[2]: var32_upvw (read and write)
		[3]: CurrentCamera_upvr (readonly)
		[4]: TweenService_upvr (readonly)
	]]
	if not ConfigReader_upvr:read("VideoZoomEnabled") then
	else
		arg1.isZoomed = true
		var32_upvw = CurrentCamera_upvr.CFrame
		local adPart_2 = arg1.adPart
		local CFrame = adPart_2.CFrame
		CurrentCamera_upvr.CameraType = Enum.CameraType.Scriptable
		TweenService_upvr:Create(CurrentCamera_upvr, TweenInfo.new(0.3), {
			CFrame = (CFrame + (CFrame.LookVector) * (adPart_2.Size.Y / 2 / math.tan(CurrentCamera_upvr.FieldOfView / 2))) * CFrame.Angles(0, math.pi, 0);
		}):Play()
	end
end
function module_upvr.zoomOut(arg1) -- Line 192
	--[[ Upvalues[4]:
		[1]: ConfigReader_upvr (readonly)
		[2]: TweenService_upvr (readonly)
		[3]: CurrentCamera_upvr (readonly)
		[4]: var32_upvw (read and write)
	]]
	if not ConfigReader_upvr:read("VideoZoomEnabled") then
	else
		arg1.isZoomed = false
		TweenService_upvr:Create(CurrentCamera_upvr, TweenInfo.new(0.3), {
			CFrame = var32_upvw;
		}):Play()
		task.wait(0.3)
		CurrentCamera_upvr.CameraType = Enum.CameraType.Custom
	end
end
local VideoFrame_upvr = require(script.VideoFrame)
local UserInputService_upvr = game:GetService("UserInputService")
function module_upvr.setupAudioControls(arg1) -- Line 206
	--[[ Upvalues[5]:
		[1]: VideoFrame_upvr (readonly)
		[2]: TweenService_upvr (readonly)
		[3]: UserInputService_upvr (readonly)
		[4]: LocalPlayer_upvr (readonly)
		[5]: BillboardInputHelper_upvr (readonly)
	]]
	local VideoFrame_upvr_result1 = VideoFrame_upvr()
	VideoFrame_upvr_result1.Parent = arg1.adPart.AdSurfaceGui
	local AudioLabel_upvr = VideoFrame_upvr_result1.AudioLabel
	local var41_upvw = "Leaving"
	local var42_upvw
	local function tweenIconTransparency_upvr(arg1_2) -- Line 215, Named "tweenIconTransparency"
		--[[ Upvalues[3]:
			[1]: AudioLabel_upvr (readonly)
			[2]: var42_upvw (read and write)
			[3]: TweenService_upvr (copied, readonly)
		]]
		if AudioLabel_upvr.ImageTransparency == arg1_2 then
		else
			if var42_upvw then
				var42_upvw:Cancel()
			end
			local tbl_2 = {}
			tbl_2.ImageTransparency = arg1_2
			var42_upvw = TweenService_upvr:Create(AudioLabel_upvr, TweenInfo.new(0.5, Enum.EasingStyle.Sine), tbl_2)
			var42_upvw:Play()
		end
	end
	local function tweenIconSize_upvr(arg1_3) -- Line 229, Named "tweenIconSize"
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
	local function var45_upvw() -- Line 242
		--[[ Upvalues[2]:
			[1]: var41_upvw (read and write)
			[2]: arg1 (readonly)
		]]
		var41_upvw = "Clicked"
		if arg1.isAudioOn then
			arg1:turnAudioOff()
			arg1:zoomOut()
		else
			arg1:turnAudioOn()
			arg1:zoomIn()
		end
	end
	local function var46_upvw() -- Line 254
		--[[ Upvalues[5]:
			[1]: var41_upvw (read and write)
			[2]: UserInputService_upvr (copied, readonly)
			[3]: tweenIconTransparency_upvr (readonly)
			[4]: arg1 (readonly)
			[5]: tweenIconSize_upvr (readonly)
		]]
		local var47
		if var41_upvw ~= "Moved" then
			var47 = false
		else
			var47 = true
		end
		if var47 then
		else
			var41_upvw = "Moved"
			UserInputService_upvr.MouseIcon = "rbxassetid://15936897912"
			tweenIconTransparency_upvr(0)
			if arg1.isAudioOn then
				tweenIconSize_upvr(UDim2.new(0.10526315789473684, 0, 0.10526315789473684, 0))
				return
			end
			tweenIconSize_upvr(UDim2.new(0.13157894736842105, 0, 0.13157894736842105, 0))
		end
	end
	local function var48_upvw() -- Line 273
		--[[ Upvalues[6]:
			[1]: LocalPlayer_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: var41_upvw (read and write)
			[4]: UserInputService_upvr (copied, readonly)
			[5]: tweenIconSize_upvr (readonly)
			[6]: tweenIconTransparency_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var49
		if LocalPlayer_upvr:GetMouse().Target ~= arg1.adPart then
			var49 = false
		else
			var49 = true
		end
		if var41_upvw ~= "Leaving" then
		else
		end
		if var49 or true then
		else
			var41_upvw = "Leaving"
			UserInputService_upvr.MouseIcon = ""
			tweenIconSize_upvr(UDim2.new(0.10526315789473684, 0, 0.10526315789473684, 0))
			if arg1.isAudioOn then
				tweenIconTransparency_upvr(1)
				return
			end
			tweenIconTransparency_upvr(0)
		end
	end
	VideoFrame_upvr_result1.AudioBtn.MouseEnter:Connect(var46_upvw)
	VideoFrame_upvr_result1.AudioBtn.MouseMoved:Connect(var46_upvw)
	VideoFrame_upvr_result1.AudioBtn.MouseLeave:Connect(var48_upvw)
	table.insert(arg1.inputConnections, BillboardInputHelper_upvr.mouseClick.Event:Connect(function(arg1_4) -- Line 295
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: var45_upvw (read and write)
		]]
		if arg1_4 == arg1.adPart then
			var45_upvw()
		end
	end))
	table.insert(arg1.inputConnections, BillboardInputHelper_upvr.mouseEntered.Event:Connect(function(arg1_5) -- Line 305
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: var46_upvw (read and write)
		]]
		if arg1_5 == arg1.adPart then
			var46_upvw()
		end
	end))
	table.insert(arg1.inputConnections, BillboardInputHelper_upvr.mouseLeft.Event:Connect(function(arg1_6) -- Line 311
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: var48_upvw (read and write)
		]]
		if arg1_6 == arg1.adPart then
			var48_upvw()
		end
	end))
	arg1.videoFrame = VideoFrame_upvr_result1
end
function module_upvr.setupViewabilityCriteria(arg1) -- Line 324
	local var54_upvw = false
	arg1.viewabilityConnection = arg1.billboardClient.viewabilityMetEvent.Event:Connect(function(arg1_7, arg2, arg3) -- Line 327
		--[[ Upvalues[2]:
			[1]: var54_upvw (read and write)
			[2]: arg1 (readonly)
		]]
		local var57 = arg1_7
		if var57 then
			var57 = false
			if 1.5 <= arg2 then
				if arg3 > 55 then
					var57 = false
				else
					var57 = true
				end
			end
		end
		if var57 == var54_upvw then
		else
			var54_upvw = var57
			if var57 then
				arg1:resumePlayer()
				return
			end
			arg1:pausePlayer()
		end
	end)
end
local GIF_upvr = require(script.Parent.Parent.GIF)
function module_upvr.init(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9) -- Line 344
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
	setmetatable_result1_upvr.billboardClient = arg2
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
	task.spawn(function() -- Line 366
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
		if setmetatable_result1_upvr.GIF.loadingFailed then
			setmetatable_result1_upvr:cleanup()
			setmetatable_result1_upvr.billboardClient:requestAdRotation()
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
			setmetatable_result1_upvr.GIF.finishedCallback = function() -- Line 391
				--[[ Upvalues[1]:
					[1]: setmetatable_result1_upvr (copied, readonly)
				]]
				setmetatable_result1_upvr:pausePlayer()
				setmetatable_result1_upvr:sendAnalytics()
				setmetatable_result1_upvr:cleanup()
				setmetatable_result1_upvr.billboardClient:requestAdRotation()
			end
		end
	end)
	return setmetatable_result1_upvr
end
return module_upvr