-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:40:18
-- Luau version 6, Types version 3
-- Time taken: 0.010401 seconds

local ContentProvider_upvr = game:GetService("ContentProvider")
local RunService_upvr = game:GetService("RunService")
local module_upvr = {
	FRAME_SIZE_X = 512;
	FRAME_SIZE_Y = 256;
	allAssetsLoadedSuccessfuly = function(arg1) -- Line 11, Named "allAssetsLoadedSuccessfuly"
		local var11
		for _, v in pairs(arg1.assetLoadedDict) do
			if v == false then
				var11 = false
				return var11
			end
		end
		return var11
	end;
	onAssetLoaded = function(arg1, arg2, arg3) -- Line 24, Named "onAssetLoaded"
		--[[ Upvalues[1]:
			[1]: ContentProvider_upvr (readonly)
		]]
		if arg3 ~= Enum.AssetFetchStatus.Success then
			if arg1.loadFailCount[arg2] and 3 < arg1.loadFailCount[arg2] then
				arg1.loadingFailed = true
			else
				arg1.loadFailCount[arg2] = (arg1.loadFailCount[arg2] or 0) + 1
				task.wait(0.5)
				local tbl = {}
				tbl[1] = arg2
				ContentProvider_upvr:PreloadAsync(tbl, function(arg1_2, arg2_2) -- Line 34
					--[[ Upvalues[2]:
						[1]: arg1 (readonly)
						[2]: arg2 (readonly)
					]]
					arg1:onAssetLoaded(arg2, arg2_2)
				end)
			end
		end
		arg1.assetLoadedDict[arg2] = true
		if arg1:allAssetsLoadedSuccessfuly() and arg1.running == false and arg1 and not arg1.cleanedUp then
			arg1.running = true
			arg1:run()
		end
	end;
	cleanup = function(arg1) -- Line 52, Named "cleanup"
		arg1.cleanedUp = true
		if arg1.renderFunc then
			arg1.renderFunc:Disconnect()
		end
		arg1.mainLabel.ImageRectOffset = Vector2.new()
		arg1.mainLabel.ImageRectSize = Vector2.new()
		for i_2 = 1, #arg1.imageLabel do
			arg1.imageLabel[i_2]:Destroy()
		end
		if arg1.sound then
			arg1.sound:Destroy()
		end
	end;
	setRunDataFromTimePosition = function(arg1, arg2) -- Line 72, Named "setRunDataFromTimePosition"
		local var15
		if arg1.frameCount < var15 then
			var15 = 1
		end
		while arg1.runData.currentFrame ~= var15 do
			arg1:nextFrame()
		end
	end;
	setVolume = function(arg1, arg2) -- Line 88, Named "setVolume"
		arg1.sound.Volume = arg2
	end;
	pause = function(arg1, arg2) -- Line 92, Named "pause"
		local var16 = arg2 or arg1.runData.currentFrame / arg1.framerate
		arg1.paused = true
		arg1:setRunDataFromTimePosition(var16)
		if arg1.sound then
			arg1.sound.Playing = false
			arg1.sound.TimePosition = var16
		end
	end;
	resume = function(arg1, arg2) -- Line 105, Named "resume"
		local var17 = arg2 or arg1.runData.currentFrame / arg1.framerate
		arg1.paused = false
		arg1:setRunDataFromTimePosition(var17)
		if arg1.sound then
			arg1.sound.Playing = true
			arg1.sound.TimePosition = var17
		end
	end;
	getFrameInfo = function(arg1, arg2) -- Line 118, Named "getFrameInfo"
		if arg1.version == 1 then
			return arg2, 0, 0
		end
		local ceiled = math.ceil(arg2 / arg1.framesPerSheet)
		if arg2 % 2 == 0 then
			ceiled = 1
		else
			ceiled = 0
		end
		return ceiled, ceiled, math.floor((arg2 - 1) / 2) % 4
	end;
	updateImgLabel = function(arg1, arg2, arg3, arg4) -- Line 134, Named "updateImgLabel"
		arg2.Image = arg1.imgUrls[arg3]
		if arg1.version ~= 1 then
			local _, any_getFrameInfo_result2, any_getFrameInfo_result3 = arg1:getFrameInfo(arg4)
			local vector2 = Vector2.new(any_getFrameInfo_result2 * arg1.FRAME_SIZE_X, any_getFrameInfo_result3 * arg1.FRAME_SIZE_Y)
			local vector2_2 = Vector2.new(arg1.FRAME_SIZE_X, arg1.FRAME_SIZE_Y)
			arg2.ImageRectOffset = vector2
			arg2.ImageRectSize = vector2_2
			arg1.mainLabel.ImageRectOffset = vector2
			arg1.mainLabel.ImageRectSize = vector2_2
		end
	end;
	nextFrame = function(arg1) -- Line 151, Named "nextFrame"
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var32 = arg1.runData.currentImgLabelIndex - 1
		if var32 == 0 then
			var32 = arg1.runData.numFramesPreloaded
		end
		local var33 = arg1.imageLabel[arg1.runData.currentImgLabelIndex]
		local var34 = arg1.imageLabel[var32]
		var33.ZIndex = 9
		var34.ZIndex = 0
		local var35 = arg1.runData.currentFrame + arg1.runData.numFramesPreloaded - 1
		if arg1.frameCount < var35 then
			var35 -= arg1.frameCount
		end
		arg1:updateImgLabel(var34, arg1:getFrameInfo(var35), var35)
		arg1.mainLabel.Image = var33.Image
		local runData_6 = arg1.runData
		runData_6.currentFrame += 1
		local runData_4 = arg1.runData
		runData_4.currentImgLabelIndex += 1
		runData_4 = true
		local var38 = runData_4
		if arg1.runData.currentFrame % arg1.framesPerSheet ~= 1 then
			if arg1.framesPerSheet ~= 1 then
				var38 = false
			else
				var38 = true
			end
		end
		if var38 then
			local runData_7 = arg1.runData
			runData_7.currentImgIndex += 1
		end
		if arg1.frameCount >= arg1.runData.currentFrame then
		else
		end
		if true then
			arg1.runData.currentFrame = 1
			arg1.runData.currentImgIndex = 1
			if arg1.sound then
				arg1.sound.Playing = true
				arg1.sound.TimePosition = 0
			end
		end
		if arg1.runData.numFramesPreloaded < arg1.runData.currentImgLabelIndex then
			arg1.runData.currentImgLabelIndex = 1
		end
	end;
	run = function(arg1) -- Line 203, Named "run"
		--[[ Upvalues[1]:
			[1]: RunService_upvr (readonly)
		]]
		if arg1.sound then
			arg1.sound.Playing = true
			arg1.sound.TimePosition = 0
		end
		local var41_upvw = 0
		local var42_upvr = 1 / arg1.framerate
		arg1.renderFunc = RunService_upvr.Heartbeat:Connect(function(arg1_3) -- Line 212
			--[[ Upvalues[3]:
				[1]: var41_upvw (read and write)
				[2]: var42_upvr (readonly)
				[3]: arg1 (readonly)
			]]
			var41_upvw += arg1_3
			if var42_upvr < var41_upvw then
				var41_upvw -= var42_upvr
				if arg1.paused then return end
				arg1:nextFrame()
				if arg1.sound and arg1.sound.Playing and 0 < arg1.sound.Volume then
					local runData_5 = arg1.runData
					runData_5.audioActiveSumFrames += 1
				end
			end
			if arg1.runData.currentFrame == arg1.frameCount and arg1.finishedCallback then
				arg1.finishedCallback()
			end
		end)
	end;
	loadInitialFrame = function(arg1) -- Line 235, Named "loadInitialFrame"
		for i_3 = 1, arg1.runData.numFramesPreloaded do
			local clone = arg1.mainLabel:Clone()
			clone.Name = "GIFRenderImage-"..tostring(i_3)
			clone.ZIndex = 0
			clone.Parent = arg1.mainLabel.Parent
			if arg1.version == 1 then
				clone.Image = arg1.imgUrls[i_3]
				clone.ImageRectOffset = Vector2.new()
				clone.ImageRectSize = Vector2.new()
			else
				arg1:updateImgLabel(clone, 1, i_3)
			end
			table.insert(arg1.imageLabel, clone)
		end
		arg1.mainLabel.Image = arg1.imgUrls[1]
		arg1.mainLabel.ImageRectOffset = Vector2.new()
	end;
	loadAssets = function(arg1) -- Line 257, Named "loadAssets"
		--[[ Upvalues[1]:
			[1]: ContentProvider_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		if arg1.version ~= 1 then
			arg1.framesPerSheet = arg1.imgUrls[1].frames_per_sheet
			arg1.frameCount = (#arg1.imgUrls - 1) * arg1.framesPerSheet + arg1.imgUrls[#arg1.imgUrls].frames_per_sheet
			for _, v_2 in ipairs(arg1.imgUrls) do
				table.insert({}, v_2.ad_url)
				local var62
			end
			arg1.imgUrls = var62
		end
		for i_5 = 1, #arg1.imgUrls do
			arg1.assetLoadedDict[arg1.imgUrls[i_5]] = false
		end
		arg1:loadInitialFrame()
		if arg1.sound then
			i_5 = arg1.sound
			i_5 = false
			arg1.assetLoadedDict[i_5.SoundId] = i_5
			i_5 = {}
			i_5[1] = arg1.sound
			ContentProvider_upvr:PreloadAsync(i_5, function(arg1_4, arg2) -- Line 281
				--[[ Upvalues[1]:
					[1]: arg1 (readonly)
				]]
				arg1:onAssetLoaded(arg1_4, arg2)
			end)
		end
		ContentProvider_upvr:PreloadAsync(arg1.imgUrls, function(arg1_5, arg2) -- Line 286
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1:onAssetLoaded(arg1_5, arg2)
		end)
	end;
}
function module_upvr.init(arg1, arg2, arg3, arg4, arg5, arg6, arg7) -- Line 291
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: RunService_upvr (readonly)
	]]
	local setmetatable_result1_upvr = setmetatable({}, {
		__index = module_upvr;
	})
	setmetatable_result1_upvr.imgUrls = arg2
	setmetatable_result1_upvr.sound = nil
	setmetatable_result1_upvr.framerate = arg3
	setmetatable_result1_upvr.mainLabel = arg4.AdSurfaceGui.ImageLabel
	setmetatable_result1_upvr.version = arg5
	setmetatable_result1_upvr.framesPerSheet = 1
	setmetatable_result1_upvr.frameCount = #arg2
	setmetatable_result1_upvr.assetLoadedDict = {}
	setmetatable_result1_upvr.imageLabel = {}
	setmetatable_result1_upvr.numLoaded = 0
	setmetatable_result1_upvr.loadingFailed = false
	setmetatable_result1_upvr.running = false
	setmetatable_result1_upvr.paused = false
	setmetatable_result1_upvr.renderFunc = nil
	setmetatable_result1_upvr.loadFailCount = {}
	setmetatable_result1_upvr.cleanedUp = false
	setmetatable_result1_upvr.runData = {}
	setmetatable_result1_upvr.runData.numFramesPreloaded = math.min(8, setmetatable_result1_upvr.imgUrls[1].frames_per_sheet)
	setmetatable_result1_upvr.runData.currentFrame = 1
	setmetatable_result1_upvr.runData.currentImgIndex = 1
	setmetatable_result1_upvr.runData.currentImgLabelIndex = 1
	setmetatable_result1_upvr.runData.audioActiveSumFrames = 0
	setmetatable_result1_upvr.finishedCallback = nil
	if arg6 then
		local Sound = Instance.new("Sound")
		Sound.Name = arg6
		Sound.SoundId = arg6
		Sound.Volume = arg7 or 1
		Sound.Parent = arg4
		setmetatable_result1_upvr.sound = Sound
	end
	task.spawn(function() -- Line 331
		--[[ Upvalues[1]:
			[1]: setmetatable_result1_upvr (readonly)
		]]
		setmetatable_result1_upvr:loadAssets()
	end)
	local var69 = true
	if setmetatable_result1_upvr.loadingFailed ~= true then
		if setmetatable_result1_upvr.running ~= true then
			var69 = false
		else
			var69 = true
		end
	end
	repeat
		if var69 then break end
		RunService_upvr.Heartbeat:Wait()
		local var70 = true
		if setmetatable_result1_upvr.loadingFailed ~= true then
			if setmetatable_result1_upvr.running ~= true then
				var70 = false
			else
				var70 = true
			end
		end
		var69 = var70
	until var69
	return setmetatable_result1_upvr
end
return module_upvr