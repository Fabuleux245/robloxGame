-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:45:26
-- Luau version 6, Types version 3
-- Time taken: 0.005958 seconds

local CorePackages = game:GetService("CorePackages")
local UserInputService_upvr = game:GetService("UserInputService")
local Roact_upvr = require(CorePackages.Packages.Roact)
local ShareGame = game:GetService("CoreGui").RobloxGui.Modules.Settings.Pages.ShareGame
local Constants_upvr = require(ShareGame.Constants)
local any_extend_result1 = Roact_upvr.Component:extend("LayoutProvider")
function any_extend_result1.didMount(arg1) -- Line 22
	if workspace.CurrentCamera then
		arg1:setObservedCamera(workspace.CurrentCamera)
	end
	arg1.cameraChangedListener = workspace:GetPropertyChangedSignal("CurrentCamera"):Connect(function() -- Line 27
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if workspace.CurrentCamera then
			arg1:setObservedCamera(workspace.CurrentCamera)
		end
	end)
end
function any_extend_result1.willUnmount(arg1) -- Line 34
	if arg1.cameraChangedListener then
		arg1.cameraChangedListener:Disconnect()
	end
	if arg1.viewportSizeListener then
		arg1.viewportSizeListener:Disconnect()
	end
end
function any_extend_result1.setObservedCamera(arg1, arg2) -- Line 44
	if arg1.viewportSizeListener then
		arg1.viewportSizeListener:Disconnect()
	end
	arg1:checkAllDeviceInfo(arg2.ViewportSize)
	arg1.viewportSizeListener = arg2:GetPropertyChangedSignal("ViewportSize"):Connect(function() -- Line 51
		--[[ Upvalues[2]:
			[1]: arg2 (readonly)
			[2]: arg1 (readonly)
		]]
		local ViewportSize = arg2.ViewportSize
		if ViewportSize.X <= 1 or ViewportSize.Y <= 1 then
		else
			arg1:checkAllDeviceInfo(ViewportSize)
		end
	end)
end
function any_extend_result1.checkDeviceOrientation(arg1, arg2) -- Line 63
	--[[ Upvalues[1]:
		[1]: Constants_upvr (readonly)
	]]
	local var10
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var10 = Constants_upvr.DeviceOrientation.LANDSCAPE
		return var10
	end
	if arg2.Y >= arg2.X or not INLINED() then
		var10 = Constants_upvr.DeviceOrientation.PORTRAIT
	end
	if arg1._deviceOrientation ~= var10 then
		arg1._deviceOrientation = var10
		arg1.props.setDeviceOrientation(var10)
	end
end
function any_extend_result1.checkDeviceIsSmallTouchScreen(arg1, arg2) -- Line 73
	--[[ Upvalues[1]:
		[1]: UserInputService_upvr (readonly)
	]]
	local TouchEnabled = UserInputService_upvr.TouchEnabled
	if TouchEnabled then
		TouchEnabled = true
		if arg2.X >= 700 then
			if arg2.Y >= 500 then
				TouchEnabled = false
			else
				TouchEnabled = true
			end
		end
	end
	if arg1._isSmallTouchScreen ~= TouchEnabled then
		arg1._isSmallTouchScreen = TouchEnabled
		arg1.props.setIsSmallTouchScreen(arg1._isSmallTouchScreen)
	end
end
function any_extend_result1.checkDeviceLayout(arg1) -- Line 83
	--[[ Upvalues[2]:
		[1]: Constants_upvr (readonly)
		[2]: UserInputService_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 26 start (CF ANALYSIS FAILED)
	local var14
	if arg1._isSmallTouchScreen then
		if arg1._deviceOrientation == Constants_upvr.DeviceOrientation.LANDSCAPE then
			var14 = Constants_upvr.DeviceLayout.PHONE_LANDSCAPE
		else
			var14 = Constants_upvr.DeviceLayout.PHONE_PORTRAIT
		end
		-- KONSTANTWARNING: GOTO [55] #36
	end
	-- KONSTANTERROR: [0] 1. Error Block 26 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [25] 17. Error Block 27 start (CF ANALYSIS FAILED)
	if UserInputService_upvr.TouchEnabled then
		if arg1._deviceOrientation == Constants_upvr.DeviceOrientation.LANDSCAPE then
			var14 = Constants_upvr.DeviceLayout.TABLET_LANDSCAPE
		else
			var14 = Constants_upvr.DeviceLayout.TABLET_PORTRAIT
		end
	else
		var14 = Constants_upvr.DeviceLayout.DESKTOP
	end
	if arg1._deviceLayout ~= var14 then
		arg1._deviceLayout = var14
		arg1.props.setDeviceLayout(arg1._deviceLayout)
	end
	-- KONSTANTERROR: [25] 17. Error Block 27 end (CF ANALYSIS FAILED)
end
function any_extend_result1.checkAllDeviceInfo(arg1, arg2) -- Line 108
	arg1:checkDeviceOrientation(arg2)
	arg1:checkDeviceIsSmallTouchScreen(arg2)
	arg1:checkDeviceLayout()
end
function any_extend_result1.render(arg1) -- Line 114
	--[[ Upvalues[1]:
		[1]: Roact_upvr (readonly)
	]]
	return Roact_upvr.oneChild(arg1.props[Roact_upvr.Children])
end
local SetDeviceOrientation_upvr = require(CorePackages.Workspace.Packages.DeviceOrientationRodux).Actions.SetDeviceOrientation
local SetIsSmallTouchScreen_upvr = require(ShareGame.Actions.SetIsSmallTouchScreen)
local SetDeviceLayout_upvr = require(ShareGame.Actions.SetDeviceLayout)
return require(CorePackages.Packages.RoactRodux).UNSTABLE_connect2(nil, function(arg1) -- Line 118
	--[[ Upvalues[3]:
		[1]: SetDeviceOrientation_upvr (readonly)
		[2]: SetIsSmallTouchScreen_upvr (readonly)
		[3]: SetDeviceLayout_upvr (readonly)
	]]
	return {
		setDeviceOrientation = function(arg1_2) -- Line 120, Named "setDeviceOrientation"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: SetDeviceOrientation_upvr (copied, readonly)
			]]
			return arg1(SetDeviceOrientation_upvr(arg1_2))
		end;
		setIsSmallTouchScreen = function(arg1_3) -- Line 123, Named "setIsSmallTouchScreen"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: SetIsSmallTouchScreen_upvr (copied, readonly)
			]]
			return arg1(SetIsSmallTouchScreen_upvr(arg1_3))
		end;
		setDeviceLayout = function(arg1_4) -- Line 126, Named "setDeviceLayout"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: SetDeviceLayout_upvr (copied, readonly)
			]]
			return arg1(SetDeviceLayout_upvr(arg1_4))
		end;
	}
end)(any_extend_result1)