-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:09:47
-- Luau version 6, Types version 3
-- Time taken: 0.004349 seconds

local module_upvr = {}
module_upvr.__index = module_upvr
function module_upvr.new(arg1, arg2, arg3) -- Line 14
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local var2 = false
	if 0 < arg2 then
		if arg2 > 120 then
			var2 = false
		else
			var2 = true
		end
	end
	assert(var2)
	var2 = false
	if 0 < arg3.X then
		if 0 >= arg3.Y then
			var2 = false
		else
			var2 = true
		end
	end
	assert(var2)
	local module = {}
	if arg1 then
		var2 = 1
	else
		var2 = 2
	end
	module.mode = var2
	module.imgSize = arg3
	module.cameraFov = arg2
	var2 = setmetatable
	var2(module, module_upvr)
	return module
end
function module_upvr.setImgSize(arg1, arg2) -- Line 28
	arg1.imgSize = arg2
end
local function _(arg1) -- Line 32, Named "setUpViewportFrameCover"
	arg1.AnchorPoint = Vector2.new(0, 0)
	arg1.Position = UDim2.new(1, -1, 1, -1)
end
function module_upvr.setupViewportFrame(arg1) -- Line 38
	assert(arg1.screenGui)
	assert(arg1.worldModel)
	assert(arg1.vpfs)
	assert(arg1.camera)
	local ViewportFrame = Instance.new("ViewportFrame", arg1.screenGui)
	ViewportFrame.BackgroundTransparency = 1
	ViewportFrame.BorderSizePixel = 0
	ViewportFrame.Size = UDim2.fromOffset(arg1.imgSize.X, arg1.imgSize.Y)
	ViewportFrame.AnchorPoint = Vector2.new(0, 0)
	ViewportFrame.Position = UDim2.new(1, -1, 1, -1)
	arg1.worldModel.Parent = ViewportFrame
	if arg1.cameraOptions.cameraTransform then
		arg1:setCameraTransform(arg1.cameraOptions.cameraTransform)
	else
		arg1:setCamera(arg1.cameraOptions.fill, arg1.cameraOptions.maxDim, arg1.cameraOptions.dir)
	end
	local camera = arg1.camera
	camera.Parent = ViewportFrame
	ViewportFrame.CurrentCamera = camera
	table.insert(arg1.vpfs, ViewportFrame)
end
function module_upvr.setupScreenGui(arg1) -- Line 67
	arg1.screenGui = Instance.new("ScreenGui", game:GetService("CoreGui"))
	arg1.worldModel = Instance.new("WorldModel")
	arg1.vpfs = {}
end
function module_upvr.init(arg1, arg2) -- Line 76
	-- KONSTANTERROR: [0] 1. Error Block 17 start (CF ANALYSIS FAILED)
	arg1.target = arg2
	local class_Model = arg2:FindFirstAncestorWhichIsA("Model")
	local class_Folder = arg2:FindFirstAncestorWhichIsA("Folder")
	local var8
	if class_Model then
		var8 = class_Model
		arg1.ancestor = var8
		-- KONSTANTWARNING: GOTO [22] #18
	end
	-- KONSTANTERROR: [0] 1. Error Block 17 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [16] 13. Error Block 18 start (CF ANALYSIS FAILED)
	if class_Folder then
		var8 = class_Folder
		arg1.ancestor = var8
	else
		var8 = arg2
	end
	if arg1.mode == 2 then
		arg1:setupScreenGui()
		var8.Parent = arg1.worldModel
	else
		if arg1.mode == 1 then
			var8.Parent = workspace
		end
		-- KONSTANTERROR: [16] 13. Error Block 18 end (CF ANALYSIS FAILED)
	end
end
function module_upvr.setCameraTransform(arg1, arg2) -- Line 101
	if not arg1.camera then
		arg1.camera = Instance.new("Camera")
		arg1.camera.FieldOfView = arg1.cameraFov
		if arg1.mode == 1 then
			arg1.camera.Name = "ThumbnailCamera"
			arg1.camera.Parent = workspace:GetChildren()[1]
		end
	end
	arg1.camera.CFrame = arg2
	local tbl_3 = {}
	tbl_3.cameraTransform = arg2
	arg1.cameraOptions = tbl_3
end
function module_upvr.setCamera(arg1, arg2, arg3, arg4) -- Line 119
	assert(arg1.target)
	local cameraFov = arg1.cameraFov
	local target = arg1.target
	if not arg1.camera then
		local Camera = Instance.new("Camera")
		Camera.FieldOfView = cameraFov
		if arg1.mode == 1 then
			Camera.Name = "ThumbnailCamera"
			Camera.Parent = workspace:GetChildren()[1]
		end
		arg1.camera = Camera
	end
	local Position = target.CFrame.Position
	Camera.CFrame = CFrame.lookAt(Position + (arg4) * ((arg3) / (arg2 * 2 * math.tan(math.rad(cameraFov / 2)))) + arg4 * target.Size / 2, Position)
	local tbl_2 = {}
	tbl_2.fill = arg2
	tbl_2.maxDim = arg3
	tbl_2.dir = arg4
	arg1.cameraOptions = tbl_2
end
function module_upvr.cleanup(arg1) -- Line 150
	if arg1.screenGui then
		arg1.screenGui:Destroy()
		arg1.screenGui = nil
		arg1.vpfs = nil
	end
	if arg1.cameraOptions then
		arg1.cameraOptions = nil
	end
	if arg1.target then
		arg1.target:Destroy()
		arg1.target = nil
	end
	if arg1.ancestor then
		arg1.ancestor:Destroy()
		arg1.ancestor = nil
	end
	if arg1.camera then
		arg1.camera:Destroy()
		arg1.camera = nil
	end
end
local Analytics_upvr = require(script.Parent.Parent.Analytics)
function module_upvr.takeSnapshot(arg1) -- Line 177
	--[[ Upvalues[1]:
		[1]: Analytics_upvr (readonly)
	]]
	local var17
	local var18
	if arg1.mode == 1 then
		local ThumbnailGenerator_upvr = game:GetService("ThumbnailGenerator")
		local pcall_result1, pcall_result2 = pcall(function() -- Line 183
			--[[ Upvalues[2]:
				[1]: ThumbnailGenerator_upvr (readonly)
				[2]: arg1 (readonly)
			]]
			return ThumbnailGenerator_upvr:Click("Png", arg1.imgSize.X, arg1.imgSize.Y, true)
		end)
		var17 = pcall_result1
		var18 = pcall_result2
	else
		ThumbnailGenerator_upvr = arg1:setupViewportFrame
		ThumbnailGenerator_upvr()
		ThumbnailGenerator_upvr = pcall
		local function var23() -- Line 188
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			task.wait(1)
			return arg1.vpfs[#arg1.vpfs]:CaptureSnapshotAsync()
		end
		ThumbnailGenerator_upvr = ThumbnailGenerator_upvr(var23)
		local var20_result1, ThumbnailGenerator_upvr_result2 = ThumbnailGenerator_upvr(var23)
		var17 = var20_result1
		var18 = ThumbnailGenerator_upvr_result2
	end
	var20_result1 = os.clock()
	Analytics_upvr.reportThumbnailing(var20_result1 - os.clock())
	return var17, var18
end
return module_upvr