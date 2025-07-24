-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:51:45
-- Luau version 6, Types version 3
-- Time taken: 0.007620 seconds

local CorePackages = game:GetService("CorePackages")
local ContextActionService_upvr = game:GetService("ContextActionService")
local UserInputService_upvr = game:GetService("UserInputService")
local Parent = script.Parent.Parent
local Roact_upvr = require(CorePackages.Packages.Roact)
local any_extend_result1_upvr = Roact_upvr.PureComponent:extend("AvatarViewport")
function any_extend_result1_upvr.init(arg1) -- Line 22
	--[[ Upvalues[1]:
		[1]: Roact_upvr (readonly)
	]]
	arg1.viewportFrameRef = Roact_upvr.createRef()
	arg1.worldModelRef = Roact_upvr.createRef()
	arg1.connections = {}
	arg1.xRotation = 0
	arg1.yRotation = 0
	arg1.rotationDeltaX = 0
	arg1.rotationDeltaY = 0
	arg1.mouseOrTouchDown = false
	arg1.delta = 0
	arg1.keys = {}
	arg1.lastPosition = Vector3.new(0, 0, 0)
	arg1.viewportCamera = Instance.new("Camera")
	arg1.viewportCamera.CameraType = Enum.CameraType.Scriptable
	arg1.model = arg1.props.model
	arg1.lastInputTime = 2
	local var7
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var7 = arg1.props.model.HumanoidRootPart.Position
		return var7
	end
	if arg1.props.model == nil or not INLINED() then
		var7 = nil
	end
	arg1.initialHrpPosition = var7
end
local CharacterModelPool_upvr = require(Parent.CharacterModelPool)
function any_extend_result1_upvr.didMount(arg1) -- Line 41
	--[[ Upvalues[1]:
		[1]: CharacterModelPool_upvr (readonly)
	]]
	if arg1.props.humanoidDescription and arg1.model then
		arg1.viewportCamera.Parent = arg1.viewportFrameRef.current
		arg1.viewportFrameRef.current.CurrentCamera = arg1.viewportCamera
		arg1:setRotation()
		arg1.characterModelPool = CharacterModelPool_upvr.new(arg1.worldModelRef, arg1.initialHrpPosition, arg1.model.Humanoid.RigType)
	end
	arg1.isMounted = true
	arg1:handleSpin()
	arg1:setUpGamepad()
end
function any_extend_result1_upvr.didUpdate(arg1, arg2, arg3) -- Line 56
	if arg1.props.visible and arg1.props.humanoidDescription ~= arg2.humanoidDescription and arg1.model then
		coroutine.wrap(function() -- Line 58
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1.characterModelPool:maybeUpdateCharacter(arg1.props.humanoidDescription)
		end)()
	end
	arg1.gamepadRotating = false
	arg1.viewportCamera.Parent = arg1.viewportFrameRef.current
	arg1.viewportFrameRef.current.CurrentCamera = arg1.viewportCamera
	if arg1.props.gamepadEnabled ~= arg2.gamepadEnabled then
		if arg1.props.gamepadEnabled then
			arg1:setUpGamepad()
			return
		end
		arg1:unbindActions()
	end
end
function any_extend_result1_upvr.setRotation(arg1) -- Line 77
	local model = arg1.model
	local var11 = arg1.props.views[arg1.props.view]
	if model then
		local initialHrpPosition = arg1.initialHrpPosition
		if not initialHrpPosition then
			initialHrpPosition = model.HumanoidRootPart.Position
		end
		local DefaultCameraOffset = var11.DefaultCameraOffset
		if arg1.model:FindFirstChildOfClass("Tool") then
			DefaultCameraOffset = var11.ToolOffset
		end
		arg1.viewportCamera.CFrame = CFrame.new((CFrame.new(initialHrpPosition) * CFrame.Angles(0, -arg1.yRotation, 0) * CFrame.Angles(arg1.xRotation, 0, 0) * DefaultCameraOffset).p, initialHrpPosition)
	end
end
local Colors_upvr = require(Parent.Colors)
local function render(arg1) -- Line 103
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: Colors_upvr (readonly)
		[3]: UserInputService_upvr (readonly)
	]]
	local module_2 = {
		AnchorPoint = Vector2.new(0.5, 0.5);
		Position = arg1.props.position;
		Size = arg1.props.size;
		BackgroundTransparency = arg1.props.backgroundTransparency;
		BackgroundColor3 = Colors_upvr.Graphite;
		BorderSizePixel = 0;
		Active = true;
		Visible = arg1.props.visible;
		[Roact_upvr.Ref] = arg1.viewportFrameRef;
	}
	local setScrollingEnabled_upvr = arg1.props.setScrollingEnabled
	module_2[Roact_upvr.Event.InputBegan] = function(arg1_2, arg2) -- Line 120
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: setScrollingEnabled_upvr (readonly)
			[3]: UserInputService_upvr (copied, readonly)
		]]
		if arg2.UserInputState == Enum.UserInputState.Begin then
			arg1.mouseOrTouchDown = true
			arg1.lastPosition = arg2.Position
			setScrollingEnabled_upvr(false)
			table.insert(arg1.connections, UserInputService_upvr.InputChanged:connect(function(arg1_3, arg2_2) -- Line 126
				--[[ Upvalues[1]:
					[1]: arg1 (copied, readonly)
				]]
				if arg1_3.UserInputType == Enum.UserInputType.MouseMovement and arg1.mouseOrTouchDown or arg1_3.UserInputType == Enum.UserInputType.Touch then
					local var19 = arg1_3.Position - arg1.lastPosition
					arg1.lastPosition = arg1_3.Position
					arg1.yRotation += var19.x * 0.0065
					arg1.xRotation += var19.y * 0.0065
					arg1.lastInputTime = tick()
				end
			end))
			table.insert(arg1.connections, UserInputService_upvr.InputEnded:connect(function(arg1_4, arg2_3) -- Line 139
				--[[ Upvalues[2]:
					[1]: arg1 (copied, readonly)
					[2]: setScrollingEnabled_upvr (copied, readonly)
				]]
				if arg1_4.UserInputType == Enum.UserInputType.MouseButton1 or arg1_4.UserInputType == Enum.UserInputType.Touch then
					if arg1.mouseOrTouchDown then
						arg1.mouseOrTouchDown = false
						arg1.lastInputTime = tick()
						arg1:removeConnections()
					end
					setScrollingEnabled_upvr(true)
				end
			end))
		end
	end
	return Roact_upvr.createElement("ViewportFrame", module_2, {
		WorldModel = Roact_upvr.createElement("WorldModel", {
			[Roact_upvr.Ref] = arg1.worldModelRef;
		});
	})
end
any_extend_result1_upvr.render = render
local RunService_upvr = game:GetService("RunService")
function any_extend_result1_upvr.handleSpin(arg1) -- Line 166
	--[[ Upvalues[1]:
		[1]: RunService_upvr (readonly)
	]]
	local var25_upvw = false
	spawn(function() -- Line 168
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: var25_upvw (read and write)
			[3]: RunService_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [94] 73. Error Block 23 start (CF ANALYSIS FAILED)
		arg1:setRotation()
		arg1.delta = RunService_upvr.RenderStepped:wait()
		-- KONSTANTERROR: [94] 73. Error Block 23 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 39 start (CF ANALYSIS FAILED)
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [107.0]
		if nil then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [107.65666]
			if arg1 < nil then
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
				if not nil and not nil then
					-- KONSTANTWARNING: GOTO [27] #22
				end
			end
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			if arg1 then
				-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [107.4]
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				if nil < RunService_upvr then
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
					if nil < RunService_upvr then
						-- KONSTANTWARNING: GOTO [52] #43
					end
					-- KONSTANTWARNING: GOTO [51] #42
				end
				-- KONSTANTWARNING: GOTO [45] #37
			end
			-- KONSTANTWARNING: GOTO [62] #50
		end
		-- KONSTANTERROR: [0] 1. Error Block 39 end (CF ANALYSIS FAILED)
	end)
end
function any_extend_result1_upvr.setUpGamepad(arg1) -- Line 211
	--[[ Upvalues[2]:
		[1]: UserInputService_upvr (readonly)
		[2]: ContextActionService_upvr (readonly)
	]]
	if UserInputService_upvr.GamepadEnabled then
		ContextActionService_upvr:UnbindCoreAction("RotateModel")
		local vector2_upvw = Vector2.new(0, 0)
		ContextActionService_upvr:BindCoreAction("RotateModel", function(arg1_5, arg2, arg3) -- Line 216
			--[[ Upvalues[2]:
				[1]: vector2_upvw (read and write)
				[2]: arg1 (readonly)
			]]
			if arg2 == Enum.UserInputState.Change then
				local Position = arg3.Position
				if not Position then
					Position = vector2_upvw
				end
				vector2_upvw = Position
				vector2_upvw = Vector2.new(vector2_upvw.X, vector2_upvw.Y)
				if 0.2 < math.abs(vector2_upvw.X) or 0.2 < math.abs(vector2_upvw.Y) then
					arg1.lastInputTime = tick()
					arg1.gamepadRotating = true
					arg1.rotationDeltaY = 3 * vector2_upvw.X
					arg1.rotationDeltaX = 3 * vector2_upvw.Y
				else
					arg1.gamepadRotating = false
				end
			end
			return Enum.ContextActionResult.Sink
		end, false, Enum.KeyCode.Thumbstick2, Enum.KeyCode.ButtonA)
	end
end
function any_extend_result1_upvr.unbindActions(arg1) -- Line 235
	--[[ Upvalues[1]:
		[1]: ContextActionService_upvr (readonly)
	]]
	ContextActionService_upvr:UnbindCoreAction("RotateModel")
end
function any_extend_result1_upvr.removeConnections(arg1) -- Line 239
	for _, v in pairs(arg1.connections) do
		v:disconnect()
	end
end
function any_extend_result1_upvr.willUnmount(arg1) -- Line 245
	arg1.isMounted = false
	if arg1.characterModelPool then
		arg1.characterModelPool:onDestroy()
	end
	arg1:unbindActions()
	arg1:removeConnections()
end
local InspectAndBuyContext_upvr = require(Parent.Components.InspectAndBuyContext)
local Cryo_upvr = require(CorePackages.Packages.Cryo)
return require(CorePackages.Packages.RoactRodux).UNSTABLE_connect2(function(arg1, arg2) -- Line 264
	return {
		view = arg1.view;
		tryingOnInfo = arg1.tryingOnInfo;
		gamepadEnabled = arg1.gamepadEnabled;
	}
end)(function(arg1) -- Line 255, Named "AvatarViewportWrapper"
	--[[ Upvalues[4]:
		[1]: Roact_upvr (readonly)
		[2]: InspectAndBuyContext_upvr (readonly)
		[3]: Cryo_upvr (readonly)
		[4]: any_extend_result1_upvr (readonly)
	]]
	return Roact_upvr.createElement(InspectAndBuyContext_upvr.Consumer, {
		render = function(arg1_6) -- Line 257, Named "render"
			--[[ Upvalues[4]:
				[1]: Cryo_upvr (copied, readonly)
				[2]: arg1 (readonly)
				[3]: Roact_upvr (copied, readonly)
				[4]: any_extend_result1_upvr (copied, readonly)
			]]
			local module = {}
			module.views = arg1_6
			return Roact_upvr.createElement(any_extend_result1_upvr, Cryo_upvr.Dictionary.join(arg1, module))
		end;
	})
end)