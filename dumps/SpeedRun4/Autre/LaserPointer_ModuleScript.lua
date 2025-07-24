-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:37:06
-- Luau version 6, Types version 3
-- Time taken: 0.019122 seconds

local VrCommon = script:FindFirstAncestor("VrCommon")
local Players = game:GetService("Players")
local GuiService_upvr = game:GetService("GuiService")
local VRService_upvr = game:GetService("VRService")
local VRUtil_upvr = require(VrCommon.VRUtil)
require(VrCommon.Panel3D)
local var6_upvw
while not var6_upvw do
	Players.Changed:wait()
	var6_upvw = Players.LocalPlayer
end
local function _(arg1) -- Line 32, Named "fromLinearRGB"
	return Color3.new(arg1.r ^ 2.2, arg1.g ^ 2.2, arg1.b ^ 2.2)
end
local function addPartsToGame_upvr(...) -- Line 36, Named "addPartsToGame"
	--[[ Upvalues[1]:
		[1]: GuiService_upvr (readonly)
	]]
	local args_list_upvr = {...}
	local CoreEffectFolder_upvr = GuiService_upvr.CoreEffectFolder
	if not CoreEffectFolder_upvr then
		coroutine.wrap(function() -- Line 42
			--[[ Upvalues[3]:
				[1]: GuiService_upvr (copied, readonly)
				[2]: args_list_upvr (readonly)
				[3]: CoreEffectFolder_upvr (readonly)
			]]
			repeat
			until GuiService_upvr.Changed:wait() == "CoreEffectFolder" and GuiService_upvr.CoreEffectFolder ~= nil
			for _, v in pairs(args_list_upvr) do
				v.Parent = CoreEffectFolder_upvr
				v.CanTouch = false
				v.CanCollide = false
				v.CanQuery = false
			end
		end)()
	else
		for _, v_5 in pairs(args_list_upvr) do
			v_5.Parent = CoreEffectFolder_upvr
			v_5.CanTouch = false
			v_5.CanCollide = false
			v_5.CanQuery = false
		end
	end
end
local function removePartsFromGame_upvr(...) -- Line 63, Named "removePartsFromGame"
	for _, v_2 in pairs({...}) do
		v_2.Parent = nil
	end
end
local function getLocalHumanoid_upvr() -- Line 70, Named "getLocalHumanoid"
	--[[ Upvalues[1]:
		[1]: var6_upvw (read and write)
	]]
	local Character_3 = var6_upvw.Character
	if not Character_3 then
	else
		for _, v_6 in pairs(Character_3:GetChildren()) do
			if v_6:IsA("Humanoid") then
				return v_6
			end
		end
	end
end
local function _(arg1, arg2) -- Line 84, Named "applyExpCurve"
	local var34 = arg1 ^ arg2
	if var34 ~= var34 then
		var34 = math.abs(arg1) ^ arg2
	end
	return var34
end
local tbl_upvr_3 = {
	Disabled = 0;
	Pointer = 1;
	Navigation = 2;
	Hidden = 3;
	DualPointer = 4;
}
local tbl_upvr_2 = {
	Right = 0;
	Left = 1;
}
local tbl_upvr = {
	MODE_ENABLED = true;
}
local Color3_fromRGB_result1_2 = Color3.fromRGB(0, 162, 255)
tbl_upvr.ARC_COLOR_GOOD = Color3.new(Color3_fromRGB_result1_2.r ^ 2.2, Color3_fromRGB_result1_2.g ^ 2.2, Color3_fromRGB_result1_2.b ^ 2.2)
local Color3_fromRGB_result1_3 = Color3.fromRGB(253, 68, 72)
tbl_upvr.ARC_COLOR_BAD = Color3.new(Color3_fromRGB_result1_3.r ^ 2.2, Color3_fromRGB_result1_3.g ^ 2.2, Color3_fromRGB_result1_3.b ^ 2.2)
tbl_upvr.ARC_THICKNESS = 0.0125
tbl_upvr.PLOP_GOOD = "rbxasset://textures/ui/VR/VRPointerDiscBlue.png"
tbl_upvr.PLOP_BAD = "rbxasset://textures/ui/VR/VRPointerDiscRed.png"
tbl_upvr.PLOP_BALL_COLOR_GOOD = BrickColor.new("Bright green")
tbl_upvr.PLOP_BALL_COLOR_BAD = BrickColor.new("Bright red")
tbl_upvr.PLOP_BALL_SIZE = 0.5
tbl_upvr.PLOP_SIZE = 2
tbl_upvr.PLOP_PULSE_MIN_SIZE = 0
tbl_upvr.PLOP_PULSE_MAX_SIZE = 2
tbl_upvr.MAX_VALID_DISTANCE = 100
tbl_upvr.BUTTON_DOWN_THRESHOLD = 0.95
tbl_upvr.BUTTON_UP_THRESHOLD = 0.5
tbl_upvr.MIN_VELOCITY = 10
tbl_upvr.RANGE_T_EXP = 2
tbl_upvr.G = 10
tbl_upvr.PULSE_DURATION = 0.8
tbl_upvr.PULSE_PERIOD = 1
tbl_upvr.PULSE_EXP = 2
tbl_upvr.PULSE_SIZE_0 = 0.25
tbl_upvr.PULSE_SIZE_1 = 2
tbl_upvr.BALL_WAVE_PERIOD = 2
tbl_upvr.BALL_WAVE_AMPLITUDE = 0.5
tbl_upvr.BALL_WAVE_START = 0.25
tbl_upvr.BALL_WAVE_EXP = 0.8
tbl_upvr.FLOOR_OFFSET = 4.5
tbl_upvr.FADE_OUT_DURATION = 0.125
tbl_upvr.FADE_IN_DURATION = 0.125
tbl_upvr.TRANSITION_DURATION = 0.25
local tbl_upvr_4 = {
	MODE_ENABLED = true;
	ARC_COLOR_GOOD = tbl_upvr.ARC_COLOR_GOOD;
	ARC_COLOR_BAD = tbl_upvr.ARC_COLOR_BAD;
}
local Color3_fromRGB_result1 = Color3.fromRGB(0, 255, 162)
tbl_upvr_4.ARC_COLOR_HIT = Color3.new(Color3_fromRGB_result1.r ^ 2.2, Color3_fromRGB_result1.g ^ 2.2, Color3_fromRGB_result1.b ^ 2.2)
tbl_upvr_4.ARC_THICKNESS = 0.01
tbl_upvr_4.MAX_DISTANCE = 50
tbl_upvr_4.G = 0
tbl_upvr_4.SWITCH_AIM_THRESHOLD = 0.2617993877991494
tbl_upvr_4.TRANSITION_DURATION = 0.075
local vector2_upvr_2 = Vector2.new(0, 0)
local vector2_upvr = Vector2.new(1, 1)
local module_upvr = {}
module_upvr.__index = module_upvr
module_upvr.Mode = tbl_upvr_3
local Create_upvr = require(VrCommon.Parent.AppCommonLib).Create
local CoreGui_upvr = game:GetService("CoreGui")
function module_upvr.new(arg1) -- Line 183
	--[[ Upvalues[9]:
		[1]: module_upvr (readonly)
		[2]: VRService_upvr (readonly)
		[3]: tbl_upvr_2 (readonly)
		[4]: Create_upvr (readonly)
		[5]: CoreGui_upvr (readonly)
		[6]: tbl_upvr (readonly)
		[7]: vector2_upvr (readonly)
		[8]: vector2_upvr_2 (readonly)
		[9]: GuiService_upvr (readonly)
	]]
	local setmetatable_result1_upvr = setmetatable({}, module_upvr)
	setmetatable_result1_upvr.laserMaxDistance = VRService_upvr.LaserDistance
	setmetatable_result1_upvr.laserHand = tbl_upvr_2.Right
	setmetatable_result1_upvr.inputUserCFrame = Enum.UserCFrame.RightHand
	setmetatable_result1_upvr.equippedTool = false
	setmetatable_result1_upvr.lastLaserModeHit = tick()
	setmetatable_result1_upvr.guiMenuIsOpen = false
	setmetatable_result1_upvr.externalForcePointer = false
	setmetatable_result1_upvr.forceDotActive = true
	setmetatable_result1_upvr.navHitPoint = Vector3.new(0, 0, 0)
	setmetatable_result1_upvr.navHitNormal = Vector3.new(0, 1, 0)
	setmetatable_result1_upvr.navHitPart = nil
	setmetatable_result1_upvr.navigationIsValid = false
	setmetatable_result1_upvr.lastNavigationValidityChangeTime = tick()
	setmetatable_result1_upvr.plopBallBounceStart = tick()
	setmetatable_result1_upvr.buttonPressStart = 0
	setmetatable_result1_upvr.showPlopBallOnPointer = false
	setmetatable_result1_upvr.parabola = Create_upvr("ParabolaAdornment")({
		Name = "LaserPointerParabola";
		Parent = CoreGui_upvr;
		A = -1;
		B = 2;
		C = 0;
		Color3 = nil;
		Thickness = tbl_upvr.ARC_THICKNESS;
		Visible = false;
	})
	setmetatable_result1_upvr.originPart = Create_upvr("Part")({
		Name = "LaserPointerOrigin";
		Anchored = true;
		CanCollide = false;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		Material = Enum.Material.SmoothPlastic;
		Size = Vector3.new(0.20000, 0.20000, 0.20000);
		Transparency = 1;
	})
	setmetatable_result1_upvr.parabola.Adornee = setmetatable_result1_upvr.originPart
	setmetatable_result1_upvr.parabolaOffhand = Create_upvr("ParabolaAdornment")({
		Name = "LaserPointerparabolaOffhand";
		Parent = CoreGui_upvr;
		A = 0;
		B = 0.000001;
		C = 0;
		Color3 = Color3.new(1, 1, 1);
		Transparency = 0.5;
		Thickness = tbl_upvr.ARC_THICKNESS;
		Visible = false;
	})
	setmetatable_result1_upvr.originPartOffhand = Create_upvr("Part")({
		Name = "LaserPointerOriginOffhand";
		Anchored = true;
		CanCollide = false;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		Material = Enum.Material.SmoothPlastic;
		Size = Vector3.new(0.20000, 0.20000, 0.20000);
		Transparency = 1;
	})
	setmetatable_result1_upvr.parabolaOffhand.Adornee = setmetatable_result1_upvr.originPartOffhand
	setmetatable_result1_upvr.plopPart = Create_upvr("Part")({
		Name = "LaserPointerTeleportPlop";
		Anchored = true;
		CanCollide = false;
		Size = Vector3.new(0.20000, 0.20000, 0.20000);
		Transparency = 1;
	})
	setmetatable_result1_upvr.plopBall = Create_upvr("Part")({
		Name = "LaserPointerTeleportPlopBall";
		Anchored = true;
		CanCollide = false;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		Material = Enum.Material.Neon;
		BrickColor = tbl_upvr.PLOP_BALL_COLOR_GOOD;
		Shape = Enum.PartType.Ball;
		Size = Vector3.new(1, 1, 1) * tbl_upvr.PLOP_BALL_SIZE;
	})
	setmetatable_result1_upvr.plopAdorn = Create_upvr("ImageHandleAdornment")({
		Name = "LaserPointerTeleportPlopAdorn";
		Parent = setmetatable_result1_upvr.plopPart;
		Adornee = setmetatable_result1_upvr.plopPart;
		Size = vector2_upvr * tbl_upvr.PLOP_SIZE;
		Image = tbl_upvr.PLOP_GOOD;
	})
	setmetatable_result1_upvr.plopAdornPulse = Create_upvr("ImageHandleAdornment")({
		Name = "LaserPointerTeleportPlopAdornPulse";
		Parent = setmetatable_result1_upvr.plopPart;
		Adornee = setmetatable_result1_upvr.plopPart;
		Size = vector2_upvr_2;
		Image = tbl_upvr.PLOP_GOOD;
		Transparency = 0.5;
	})
	setmetatable_result1_upvr.cursorPart = Create_upvr("Part")({
		Name = "Cursor";
		CanCollide = false;
		CanQuery = false;
		CanTouch = false;
		Anchored = true;
		Transparency = 1;
	})
	setmetatable_result1_upvr.cursorSurfaceGui = Create_upvr("SurfaceGui")({
		Name = "CursorSurfaceGui";
		Active = false;
		AlwaysOnTop = true;
		Enabled = false;
		ZOffset = 10;
		Parent = setmetatable_result1_upvr.cursorPart;
	})
	setmetatable_result1_upvr.cursorImage = Create_upvr("ImageLabel")({
		Image = "rbxasset://textures/Cursors/Gamepad/Pointer.png";
		ImageColor3 = Color3.new(0, 1, 0);
		BackgroundTransparency = 1;
		Parent = setmetatable_result1_upvr.cursorSurfaceGui;
		AnchorPoint = Vector2.new(0.5, 0.5);
		Position = UDim2.new(0.5, 0, 0.5, 0);
		Size = UDim2.new(1, 0, 1, 0);
	})
	setmetatable_result1_upvr.connections = {}
	table.insert(setmetatable_result1_upvr.connections, VRService_upvr:GetPropertyChangedSignal("LaserPointer"):Connect(function() -- Line 321
		--[[ Upvalues[1]:
			[1]: setmetatable_result1_upvr (readonly)
		]]
		setmetatable_result1_upvr:onModeChanged()
	end))
	setmetatable_result1_upvr:onModeChanged()
	GuiService_upvr.MenuOpened:connect(function() -- Line 328
		--[[ Upvalues[1]:
			[1]: setmetatable_result1_upvr (readonly)
		]]
		setmetatable_result1_upvr.guiMenuIsOpen = true
	end)
	GuiService_upvr.MenuClosed:connect(function() -- Line 331
		--[[ Upvalues[1]:
			[1]: setmetatable_result1_upvr (readonly)
		]]
		setmetatable_result1_upvr.guiMenuIsOpen = false
	end)
	setmetatable_result1_upvr.inputUserCFrame = VRService_upvr.GuiInputUserCFrame
	VRService_upvr.Changed:connect(function(arg1_2) -- Line 336
		--[[ Upvalues[2]:
			[1]: setmetatable_result1_upvr (readonly)
			[2]: VRService_upvr (copied, readonly)
		]]
		if arg1_2 == "GuiInputUserCFrame" then
			setmetatable_result1_upvr.inputUserCFrame = VRService_upvr.GuiInputUserCFrame
		else
			if arg1_2 == "PointerHitCFrame" or arg1_2 == "DidPointerHit" then
				setmetatable_result1_upvr:cursorInputsChanged()
				return
			end
			if arg1_2 == "VRSessionState" and VRService_upvr.VRSessionState == Enum.VRSessionState.Focused then
				setmetatable_result1_upvr:updateInputUserCFrame()
			end
		end
	end)
	VRService_upvr.LaserPointerTriggered:connect(function(arg1_3) -- Line 346
		--[[ Upvalues[2]:
			[1]: setmetatable_result1_upvr (readonly)
			[2]: tbl_upvr_2 (copied, readonly)
		]]
		if game:GetEngineFeature("ImprovedTriggerFire") and arg1_3.UserInputState ~= Enum.UserInputState.End then
		else
			if arg1_3.KeyCode == Enum.KeyCode.ButtonR1 or arg1_3.KeyCode == Enum.KeyCode.ButtonR2 or arg1_3.KeyCode == Enum.KeyCode.ButtonR3 or arg1_3.KeyCode == Enum.KeyCode.ButtonA or arg1_3.KeyCode == Enum.KeyCode.ButtonB or setmetatable_result1_upvr.laserHand ~= tbl_upvr_2.Right then
				setmetatable_result1_upvr.laserHand = tbl_upvr_2.Right
				setmetatable_result1_upvr:updateInputUserCFrame()
				return
			end
			if arg1_3.KeyCode == Enum.KeyCode.ButtonL1 or arg1_3.KeyCode == Enum.KeyCode.ButtonL2 or arg1_3.KeyCode == Enum.KeyCode.ButtonL3 or arg1_3.KeyCode == Enum.KeyCode.ButtonX or arg1_3.KeyCode == Enum.KeyCode.ButtonY then
				if setmetatable_result1_upvr.laserHand ~= tbl_upvr_2.Left then
					setmetatable_result1_upvr.laserHand = tbl_upvr_2.Left
					setmetatable_result1_upvr:updateInputUserCFrame()
				end
			end
		end
	end)
	VRService_upvr.UserCFrameEnabled:Connect(function(arg1_4, arg2) -- Line 375
		--[[ Upvalues[1]:
			[1]: setmetatable_result1_upvr (readonly)
		]]
		setmetatable_result1_upvr:updateInputUserCFrame()
	end)
	setmetatable_result1_upvr:updateInputUserCFrame()
	return setmetatable_result1_upvr
end
function module_upvr.hasAnyHandController() -- Line 384
	--[[ Upvalues[1]:
		[1]: VRService_upvr (readonly)
	]]
	local any_GetUserCFrameEnabled_result1 = VRService_upvr:GetUserCFrameEnabled(Enum.UserCFrame.RightHand)
	if not any_GetUserCFrameEnabled_result1 then
		any_GetUserCFrameEnabled_result1 = VRService_upvr:GetUserCFrameEnabled(Enum.UserCFrame.LeftHand)
	end
	return any_GetUserCFrameEnabled_result1
end
function module_upvr.getModeName(arg1) -- Line 389
	--[[ Upvalues[1]:
		[1]: tbl_upvr_3 (readonly)
	]]
	for i_3, v_3 in pairs(tbl_upvr_3) do
		if arg1 == v_3 then
			return i_3
		end
	end
	return "unknown"
end
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("EnableUserInputCFrameLogging", false)
function module_upvr.updateInputUserCFrame(arg1) -- Line 399
	--[[ Upvalues[3]:
		[1]: game_DefineFastFlag_result1_upvr (readonly)
		[2]: VRService_upvr (readonly)
		[3]: tbl_upvr_2 (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 33 start (CF ANALYSIS FAILED)
	if game_DefineFastFlag_result1_upvr then
	end
	if VRService_upvr:GetUserCFrameEnabled(Enum.UserCFrame.RightHand) and arg1.laserHand == tbl_upvr_2.Right then
		VRService_upvr.GuiInputUserCFrame = Enum.UserCFrame.RightHand
		-- KONSTANTWARNING: GOTO [77] #53
	end
	-- KONSTANTERROR: [0] 1. Error Block 33 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [26] 19. Error Block 30 start (CF ANALYSIS FAILED)
	if VRService_upvr:GetUserCFrameEnabled(Enum.UserCFrame.LeftHand) and arg1.laserHand == tbl_upvr_2.Left then
		VRService_upvr.GuiInputUserCFrame = Enum.UserCFrame.LeftHand
		-- KONSTANTWARNING: GOTO [77] #53
	end
	-- KONSTANTERROR: [26] 19. Error Block 30 end (CF ANALYSIS FAILED)
end
function module_upvr.onModeChanged(arg1, arg2) -- Line 420
	--[[ Upvalues[3]:
		[1]: VRService_upvr (readonly)
		[2]: addPartsToGame_upvr (readonly)
		[3]: removePartsFromGame_upvr (readonly)
	]]
	arg1:updateInputUserCFrame()
	if VRService_upvr.LaserPointer == Enum.VRLaserPointerMode.Disabled then
		addPartsToGame_upvr(arg1.originPart, arg1.cursorPart)
		removePartsFromGame_upvr(arg1.plopPart, arg1.plopBall, arg1.originPartOffhand)
		arg1.forceDotActive = true
		arg1.parabola.Visible = false
		arg1.parabolaOffhand.Visible = false
		arg1:setNavigationActionEnabled(false)
	else
		if VRService_upvr.LaserPointer == Enum.VRLaserPointerMode.Pointer then
			addPartsToGame_upvr(arg1.originPart, arg1.cursorPart)
			removePartsFromGame_upvr(arg1.plopPart, arg1.plopBall, arg1.originPartOffhand)
			arg1.parabola.Visible = true
			arg1.parabolaOffhand.Visible = false
			arg1:setNavigationActionEnabled(false)
			arg1.forceDotActive = false
			return
		end
		if VRService_upvr.LaserPointer == Enum.VRLaserPointerMode.DualPointer then
			addPartsToGame_upvr(arg1.originPart, arg1.originPartOffhand, arg1.cursorPart)
			removePartsFromGame_upvr(arg1.plopPart, arg1.plopBall)
			arg1.parabola.Visible = true
			arg1.parabolaOffhand.Visible = true
			arg1:setNavigationActionEnabled(false)
			arg1.forceDotActive = false
		end
	end
end
function module_upvr.setMode(arg1, arg2) -- Line 454
	--[[ Upvalues[2]:
		[1]: tbl_upvr_3 (readonly)
		[2]: VRService_upvr (readonly)
	]]
	if arg2 == tbl_upvr_3.Disabled or arg2 == tbl_upvr_3.Hidden then
		VRService_upvr.LaserPointer = Enum.VRLaserPointerMode.Disabled
	else
		if arg2 == tbl_upvr_3.Pointer or arg2 == tbl_upvr_3.Navigation then
			VRService_upvr.LaserPointer = Enum.VRLaserPointerMode.Pointer
			return
		end
		if arg2 == tbl_upvr_3.DualPointer then
			VRService_upvr.LaserPointer = Enum.VRLaserPointerMode.DualPointer
		end
	end
end
function module_upvr.setEnableAmbidexterousPointer(arg1, arg2) -- Line 464
end
function module_upvr.calculateLaunchVelocity(arg1, arg2, arg3, arg4) -- Line 468
	return -(math.sqrt(arg2 / 0.7071067811865476) * arg3) / math.sqrt(2 * arg4 * 0.7071067811865476 + 2 * arg3 * 0.7071067811865475)
end
function module_upvr.isHeadMounted(arg1) -- Line 477
	--[[ Upvalues[1]:
		[1]: VRService_upvr (readonly)
	]]
	local var72
	if VRService_upvr.GuiInputUserCFrame ~= Enum.UserCFrame.Head then
		var72 = false
	else
		var72 = true
	end
	return var72
end
function module_upvr.shouldForcePointer(arg1) -- Line 481
	local externalForcePointer = arg1.externalForcePointer
	if not externalForcePointer then
		externalForcePointer = arg1.guiMenuIsOpen
	end
	return externalForcePointer
end
function module_upvr.setForcePointer(arg1, arg2) -- Line 485
	arg1.externalForcePointer = arg2
end
function module_upvr.getNavigationOrigin(arg1) -- Line 489
	--[[ Upvalues[1]:
		[1]: getLocalHumanoid_upvr (readonly)
	]]
	local getLocalHumanoid_result1 = getLocalHumanoid_upvr()
	if not getLocalHumanoid_result1 then return end
	local Torso = getLocalHumanoid_result1.Torso
	if not Torso then return end
	local HipHeight = getLocalHumanoid_result1.HipHeight
	if getLocalHumanoid_result1.RigType == Enum.HumanoidRigType.R6 then
		HipHeight = 2
	end
	return Torso.Position + Vector3.new(0, -(Torso.Size.Y / 2) - HipHeight, 0)
end
function module_upvr.horzDistanceFromCharacter(arg1, arg2) -- Line 508
	--[[ Upvalues[1]:
		[1]: var6_upvw (read and write)
	]]
	local Character_2 = var6_upvw.Character
	if not Character_2 then
		return math.huge
	end
	local HumanoidRootPart = Character_2:FindFirstChild("HumanoidRootPart")
	if not HumanoidRootPart then
		return math.huge
	end
	return ((HumanoidRootPart:GetRenderCFrame().p - arg2) * Vector3.new(1, 0, 1)).magnitude
end
function module_upvr.onNavigateAction(arg1, arg2, arg3, arg4) -- Line 521
	--[[ Upvalues[1]:
		[1]: VRService_upvr (readonly)
	]]
	if arg3 == Enum.UserInputState.Begin then
		VRService_upvr:RequestNavigation(CFrame.new(arg1.navHitPoint, arg1.navHitPoint + arg1.navHitNormal) * CFrame.Angles((math.pi/2), 0, 0), arg1.inputUserCFrame)
	end
end
local ContextActionService_upvr = game:GetService("ContextActionService")
function module_upvr.setNavigationActionEnabled(arg1, arg2) -- Line 530
	--[[ Upvalues[1]:
		[1]: ContextActionService_upvr (readonly)
	]]
	if arg2 then
		ContextActionService_upvr:BindCoreAction("LaserPointerNavigate", function(...) -- Line 532
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1:onNavigateAction(...)
		end, false, Enum.KeyCode.ButtonA)
	else
		ContextActionService_upvr:UnbindCoreAction("LaserPointerNavigate")
	end
end
function module_upvr.setArcLaunchParams(arg1, arg2, arg3, arg4, arg5) -- Line 540
	local var81 = math.cos(arg2) * arg3
	if var81 == 0 then
		var81 = 0.000001
	end
	arg1.parabola.A = (-(0.5 * arg4)) * (1 / var81 ^ 2)
	arg1.parabola.B = math.sin(arg2) * arg3 / var81
	arg1.parabola.C = 0
	arg1.parabola.Range = arg5 * 1.5
end
function module_upvr.renderAsParabola(arg1, arg2, arg3) -- Line 555
	arg1.originPart.CFrame = CFrame.new(arg2, arg2 + arg3 * Vector3.new(1, 0, 1)) * CFrame.Angles(0, (math.pi/2), 0)
end
function module_upvr.renderAsLaser(arg1, arg2, arg3) -- Line 560
	arg1.originPart.CFrame = CFrame.new(arg2, arg3) * CFrame.Angles(0, (math.pi/2), 0)
	arg1.parabola.A = 0
	arg1.parabola.B = 0.000001
	arg1.parabola.C = 0
	arg1.parabola.Range = (arg3 - arg2).magnitude
end
function module_upvr.renderOffhandLaser(arg1, arg2, arg3) -- Line 568
	arg1.originPartOffhand.CFrame = CFrame.new(arg2, arg3) * CFrame.Angles(0, (math.pi/2), 0)
	arg1.parabolaOffhand.Range = (arg3 - arg2).magnitude
end
if not game:DefineFastFlag("VRLaserPointerRaycastChange", false) then
	function module_upvr.getLaserHit(arg1, arg2, arg3, arg4) -- Line 574
		local workspace_FindPartOnRayWithIgnoreList_result1, workspace_FindPartOnRayWithIgnoreList_result2, workspace_FindPartOnRayWithIgnoreList_result3, _ = workspace:FindPartOnRayWithIgnoreList(Ray.new(arg2, arg3 * arg1.laserMaxDistance), arg4)
		return workspace_FindPartOnRayWithIgnoreList_result1, workspace_FindPartOnRayWithIgnoreList_result2, workspace_FindPartOnRayWithIgnoreList_result3, (workspace_FindPartOnRayWithIgnoreList_result2 - arg2).magnitude / math.max(arg1.laserMaxDistance, 0.1)
	end
end
function module_upvr.canNavigateTo(arg1, arg2, arg3, arg4) -- Line 583
	--[[ Upvalues[1]:
		[1]: var6_upvw (read and write)
	]]
	local Character = var6_upvw.Character
	if not Character then
		return false
	end
	if not Character:FindFirstChild("HumanoidRootPart") then
		return false
	end
	if not arg2 then
		return false
	end
	if arg4.Y < -0.000001 then
		return false
	end
	return true
end
function module_upvr.checkHeadMountedMode(arg1, arg2) -- Line 606
	--[[ Upvalues[2]:
		[1]: tbl_upvr_3 (readonly)
		[2]: GuiService_upvr (readonly)
	]]
	if arg1:shouldForcePointer() then
		arg1:setMode(tbl_upvr_3.Pointer)
	else
		if arg2 and arg2:IsDescendantOf(GuiService_upvr.CoreGuiFolder) then
			arg1:setMode(tbl_upvr_3.Pointer)
			return
		end
		arg1:setMode(tbl_upvr_3.Navigation)
	end
end
function module_upvr.setNavigationValidState(arg1, arg2) -- Line 620
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	if arg2 == arg1.navigationIsValid then
	else
		arg1.navigationIsValid = arg2
		arg1.lastNavigationValidityChangeTime = tick()
		if arg2 then
			arg1.plopBallBounceStart = tick()
			arg1.parabola.Color3 = tbl_upvr.ARC_COLOR_GOOD
			arg1.plopAdorn.Visible = true
			arg1.plopAdorn.Image = tbl_upvr.PLOP_GOOD
			arg1.plopAdornPulse.Visible = true
			arg1.plopAdornPulse.Image = tbl_upvr.PLOP_GOOD
			arg1.plopBall.BrickColor = tbl_upvr.PLOP_BALL_COLOR_GOOD
			return
		end
		arg1.parabola.Color3 = tbl_upvr.ARC_COLOR_BAD
		arg1.plopAdorn.Visible = false
		arg1.plopAdorn.Image = tbl_upvr.PLOP_BAD
		arg1.plopAdornPulse.Visible = false
		arg1.plopAdornPulse.Image = tbl_upvr.PLOP_BAD
		arg1.plopBall.BrickColor = tbl_upvr.PLOP_BALL_COLOR_BAD
	end
end
function module_upvr.updateNavPlop(arg1, arg2, arg3) -- Line 645
	--[[ Upvalues[3]:
		[1]: tbl_upvr (readonly)
		[2]: vector2_upvr (readonly)
		[3]: vector2_upvr_2 (readonly)
	]]
	local var87 = tick() - arg1.plopBallBounceStart
	local cframe = CFrame.new(arg2, arg2 + arg3)
	local var89 = 0
	if arg1.navigationIsValid then
		local sine = math.sin(var87 * 2 * math.pi / tbl_upvr.BALL_WAVE_PERIOD)
		local BALL_WAVE_EXP = tbl_upvr.BALL_WAVE_EXP
		local var92 = sine ^ BALL_WAVE_EXP
		if var92 ~= var92 then
			var92 = math.abs(sine) ^ BALL_WAVE_EXP
		end
		var89 = tbl_upvr.BALL_WAVE_START + var92 * tbl_upvr.BALL_WAVE_AMPLITUDE
	end
	arg1.plopPart.CFrame = cframe
	arg1.plopBall.CFrame = cframe * CFrame.new(0, 0, -var89)
	local var93 = var87 % tbl_upvr.PULSE_PERIOD
	if 0 < var93 then
		local var94 = var93 / tbl_upvr.PULSE_DURATION
		if var94 < 1 then
			arg1.plopAdornPulse.Visible = true
			local PULSE_EXP = tbl_upvr.PULSE_EXP
			local var96 = var94 ^ PULSE_EXP
			if var96 ~= var96 then
				var96 = math.abs(var94) ^ PULSE_EXP
			end
			arg1.plopAdornPulse.Size = vector2_upvr * (tbl_upvr.PULSE_SIZE_0 + var96 * (tbl_upvr.PULSE_SIZE_1 - tbl_upvr.PULSE_SIZE_0))
			arg1.plopAdornPulse.Transparency = 0.5 + var94 * 0.5
			return
		end
		arg1.plopAdornPulse.Visible = false
		arg1.plopAdornPulse.Size = vector2_upvr_2
		arg1.pulseStartTime = tick() + tbl_upvr.PULSE_PERIOD
	end
end
function module_upvr.updateNavigationMode(arg1, arg2, arg3, arg4) -- Line 683
	arg1.navHitPoint = arg2
	arg1.navHitNormal = arg3
	arg1.navHitPart = arg4
	arg1:updateNavPlop(arg2, arg3)
	arg1:setNavigationValidState(arg1:canNavigateTo(arg1.navHitPart, arg1.navHitPoint, arg1.navHitNormal))
end
function module_upvr.showHitBallOnLaserPointer(arg1, arg2) -- Line 692
	--[[ Upvalues[2]:
		[1]: addPartsToGame_upvr (readonly)
		[2]: removePartsFromGame_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [4] 4. Error Block 3 start (CF ANALYSIS FAILED)
	arg1.showPlopBallOnPointer = true
	addPartsToGame_upvr(arg1.plopBall)
	do
		return
	end
	-- KONSTANTERROR: [4] 4. Error Block 3 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [12] 10. Error Block 7 start (CF ANALYSIS FAILED)
	if arg1.showPlopBallOnPointer then
		removePartsFromGame_upvr(arg1.plopBall)
		arg1.showPlopBallOnPointer = false
	end
	-- KONSTANTERROR: [12] 10. Error Block 7 end (CF ANALYSIS FAILED)
end
function module_upvr.cursorInputsChanged(arg1) -- Line 706
	--[[ Upvalues[2]:
		[1]: VRService_upvr (readonly)
		[2]: VRUtil_upvr (readonly)
	]]
	local DidPointerHit = VRService_upvr.DidPointerHit
	arg1.cursorSurfaceGui.Enabled = DidPointerHit
	if DidPointerHit then
		local PointerHitCFrame = VRService_upvr.PointerHitCFrame
		local var99 = 1
		local var100 = (VRUtil_upvr.GetUserCFrameWorldSpace(Enum.UserCFrame.Head).Position - PointerHitCFrame.Position).magnitude * 0.01
		if var100 < 0.05 then
			var99 = var100 / 0.05
			var100 = 0.05
		end
		arg1.cursorPart.Size = Vector3.new(var100, var100, var100)
		arg1.cursorPart.CFrame = PointerHitCFrame * CFrame.new(0, 0, var100 * 0.5)
		arg1.cursorImage.Size = UDim2.new(var99, 0, var99, 0)
	end
end
function module_upvr.updateCursor_DEPRECATED(arg1) -- Line 731
	--[[ Upvalues[2]:
		[1]: VRService_upvr (readonly)
		[2]: VRUtil_upvr (readonly)
	]]
	local var101
	if var101 then
		var101 = VRService_upvr.PointerHitCFrame
		local any_GetUserCFrameWorldSpace_result1_7 = VRUtil_upvr.GetUserCFrameWorldSpace(arg1.inputUserCFrame)
		if arg1:isHeadMounted() then
			any_GetUserCFrameWorldSpace_result1_7 = VRUtil_upvr.GetUserCFrameWorldSpace(Enum.UserCFrame.Head)
		end
		local p_3 = any_GetUserCFrameWorldSpace_result1_7.p
		local lookVector = any_GetUserCFrameWorldSpace_result1_7.lookVector
		local lookVector_2 = var101.lookVector
		local any_Dot_result1 = lookVector_2:Dot(lookVector)
		if 0.001 < math.abs(any_Dot_result1) then
			var101 = (var101.Rotation) + (p_3 + var101.Position - p_3:Dot(lookVector_2) / any_Dot_result1 * lookVector)
		end
		local var107 = 1
		local var108 = (workspace.CurrentCamera.CFrame.Position - var101.Position).magnitude * 0.01
		if var108 < 0.05 then
			var107 = var108 / 0.05
			var108 = 0.05
		end
		arg1.cursorPart.Size = Vector3.new(var108, var108, var108)
		arg1.cursorPart.CFrame = var101 * CFrame.new(0, 0, var108 * 0.5)
		arg1.cursorImage.Size = UDim2.new(var107, 0, var107, 0)
	end
	arg1.cursorSurfaceGui.Enabled = VRService_upvr.DidPointerHit
end
function module_upvr.disableComponent(arg1) -- Line 773
	--[[ Upvalues[1]:
		[1]: removePartsFromGame_upvr (readonly)
	]]
	removePartsFromGame_upvr(arg1.parabola, arg1.parabolaOffhand, arg1.originPart, arg1.originPartOffhand, arg1.plopPart, arg1.plopBall, arg1.cursorPart)
	arg1:setNavigationActionEnabled(false)
	for _, v_4 in pairs(arg1.connections) do
		v_4:Disconnect()
	end
	arg1.connections = {}
end
function module_upvr.update(arg1, arg2) -- Line 790
	--[[ Upvalues[4]:
		[1]: VRService_upvr (readonly)
		[2]: tbl_upvr_4 (readonly)
		[3]: var6_upvw (read and write)
		[4]: VRUtil_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var126
	if VRService_upvr.LaserPointer == var126 then
	else
		var126 = tbl_upvr_4.ARC_THICKNESS * workspace.CurrentCamera.HeadScale
		arg1.parabola.Thickness = var126
		var126 = tbl_upvr_4.ARC_THICKNESS * workspace.CurrentCamera.HeadScale
		arg1.parabolaOffhand.Thickness = var126
		if var6_upvw then
			var126 = var6_upvw
			if var126.Character then
				var126 = var6_upvw
				if var126.Character:FindFirstChildOfClass("Tool") then
					var126 = tbl_upvr_4.ARC_COLOR_BAD
					arg1.parabola.Color3 = var126
					-- KONSTANTWARNING: GOTO [73] #48
				end
			end
		end
		local function INLINED_3() -- Internal function, doesn't exist in bytecode
			var126 = tbl_upvr_4.ARC_COLOR_HIT
			return var126
		end
		if not VRService_upvr.DidPointerHit or not INLINED_3() then
			var126 = tbl_upvr_4.ARC_COLOR_GOOD
		end
		arg1.parabola.Color3 = var126
		var126 = VRUtil_upvr
		var126 = arg1.inputUserCFrame
		local any_GetUserCFrameWorldSpace_result1 = var126.GetUserCFrameWorldSpace(var126)
		var126 = any_GetUserCFrameWorldSpace_result1.p
		if VRService_upvr.DidPointerHit then
		else
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		end
		if arg1:isHeadMounted() then
			arg1.parabola.Visible = false
		else
			arg1.parabola.Visible = true
			arg1:renderAsLaser(var126, var126 + any_GetUserCFrameWorldSpace_result1.lookVector * arg1.laserMaxDistance)
		end
		if VRService_upvr.LaserPointer == Enum.VRLaserPointerMode.DualPointer then
			if arg1:isHeadMounted() then
				arg1.parabolaOffhand.Visible = false
				return
			end
			local parabolaOffhand_2 = arg1.parabolaOffhand
			parabolaOffhand_2.Visible = true
			if arg1.inputUserCFrame == Enum.UserCFrame.RightHand then
				parabolaOffhand_2 = Enum.UserCFrame.LeftHand
			else
				parabolaOffhand_2 = Enum.UserCFrame.RightHand
			end
			local any_GetUserCFrameWorldSpace_result1_2 = VRUtil_upvr.GetUserCFrameWorldSpace(parabolaOffhand_2)
			local p_5 = any_GetUserCFrameWorldSpace_result1_2.p
			arg1:renderOffhandLaser(p_5, p_5 + any_GetUserCFrameWorldSpace_result1_2.lookVector * 3)
		end
	end
end
return module_upvr