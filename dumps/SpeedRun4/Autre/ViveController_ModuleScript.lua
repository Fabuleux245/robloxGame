-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:37:04
-- Luau version 6, Types version 3
-- Time taken: 0.009104 seconds

local tbl_upvr_3 = {
	Body = {
		size = Vector3.new(0.39100, 0.27700, 0.73100);
		meshId = "rbxassetid://433286977";
		textureId = "rbxassetid://433287000";
		offset = CFrame.new(0, -0.115, 0.213);
	};
	RightGrip = {
		meshId = "rbxassetid://433290663";
		textureId = "rbxassetid://433290688";
		offset = CFrame.new(0.057, -0.047, 0.29);
		moveOffset = CFrame.new(-0.005, 0, 0);
	};
	LeftGrip = {
		meshId = "rbxassetid://433289821";
		textureId = "rbxassetid://433289832";
		offset = CFrame.new(-0.057, -0.047, 0.29);
		moveOffset = CFrame.new(0.005, 0, 0);
	};
	SystemButton = {
		meshId = "rbxassetid://433291265";
		textureId = "rbxassetid://433291278";
		offset = CFrame.new(0, 0.005, 0.294);
		moveOffset = CFrame.new(Vector3.new(-0, -0.0009, -0.0000));
	};
	MenuButton = {
		meshId = "rbxassetid://433288124";
		textureId = "rbxassetid://433288134";
		offset = CFrame.new(0, 0.016, 0.068);
		moveOffset = CFrame.new(Vector3.new(-0, -0.0009, 0.00001));
	};
	Trackpad = {
		meshId = "rbxassetid://433288821";
		textureId = "rbxassetid://433288836";
		offset = CFrame.new(0, 0, 0.163);
		moveOffset = CFrame.new(Vector3.new(-0, -0.0009, -0.0001));
	};
	Trigger = {
		meshId = "rbxassetid://433288767";
		textureId = "rbxassetid://433288775";
		offset = CFrame.new(0, -0.093, 0.163);
	};
	LED = {
		meshId = "rbxassetid://433293218";
		textureId = "rbxassetid://433293231";
		offset = CFrame.new(0, 0.007, 0.32);
	};
	ButtonA = {
		meshId = "rbxassetid://922444331";
		textureId = "rbxasset://textures/ui/VR/ButtonA.png";
		offset = CFrame.new(-0, 0.0115499999, 0.197307006) * CFrame.Angles(0, math.pi, 0);
		moveOffset = CFrame.new(0, -0.005, 0);
	};
	ButtonB = {
		meshId = "rbxassetid://922454202";
		textureId = "rbxasset://textures/ui/VR/ButtonB.png";
		offset = CFrame.new(0.0391042456, 0.0154935224, 0.161779419) * CFrame.Angles(0, math.pi, 0);
		moveOffset = CFrame.new(0, -0.005, 0);
	};
	ButtonX = {
		meshId = "rbxassetid://922453111";
		textureId = "rbxasset://textures/ui/VR/ButtonX.png";
		offset = CFrame.new(-0.0390719995, 0.0154770007, 0.161733001) * CFrame.Angles(0, math.pi, 0);
		moveOffset = CFrame.new(0, -0.005, 0);
	};
	ButtonY = {
		meshId = "rbxassetid://922455502";
		textureId = "rbxasset://textures/ui/VR/ButtonY.png";
		offset = CFrame.new(0, 0.0197229274, 0.126810834) * CFrame.Angles(0, math.pi, 0);
		moveOffset = CFrame.new(0, -0.005, 0);
	};
}
local tbl_upvr_2 = {
	[Enum.KeyCode.ButtonL1] = "LeftGrip";
	[Enum.KeyCode.ButtonL2] = "Trigger";
	[Enum.KeyCode.ButtonL3] = "Trackpad";
	[Enum.KeyCode.ButtonR1] = "RightGrip";
	[Enum.KeyCode.ButtonR2] = "Trigger";
	[Enum.KeyCode.ButtonR3] = "Trackpad";
	[Enum.KeyCode.Thumbstick1] = "Trackpad";
	[Enum.KeyCode.Thumbstick2] = "Trackpad";
	[Enum.KeyCode.ButtonSelect] = "MenuButton";
	[Enum.KeyCode.ButtonStart] = "MenuButton";
	[Enum.KeyCode.ButtonA] = "ButtonA";
	[Enum.KeyCode.ButtonB] = "ButtonB";
	[Enum.KeyCode.ButtonX] = "ButtonX";
	[Enum.KeyCode.ButtonY] = "ButtonY";
}
local module_upvr = {}
module_upvr.__index = module_upvr
local tbl_upvr = {
	[Enum.UserCFrame.LeftHand] = Enum.VRTouchpad.Left;
	[Enum.UserCFrame.RightHand] = Enum.VRTouchpad.Right;
}
local VRService_upvr = game:GetService("VRService")
local Create_upvr = require(script:FindFirstAncestor("VrCommon").Parent.AppCommonLib).Create
local Granite_upvr = Enum.Material.Granite
function module_upvr.new(arg1) -- Line 109
	--[[ Upvalues[6]:
		[1]: module_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: VRService_upvr (readonly)
		[4]: Create_upvr (readonly)
		[5]: tbl_upvr_3 (readonly)
		[6]: Granite_upvr (readonly)
	]]
	local setmetatable_result1_upvr = setmetatable({}, module_upvr)
	setmetatable_result1_upvr.userCFrame = arg1
	setmetatable_result1_upvr.touchpad = tbl_upvr[setmetatable_result1_upvr.userCFrame]
	setmetatable_result1_upvr.touchpadMode = VRService_upvr:GetTouchpadMode(setmetatable_result1_upvr.touchpad)
	setmetatable_result1_upvr.onTouchpadModeChangedConn = VRService_upvr.TouchpadModeChanged:connect(function(...) -- Line 114
		--[[ Upvalues[1]:
			[1]: setmetatable_result1_upvr (readonly)
		]]
		setmetatable_result1_upvr:onTouchpadModeChanged(...)
	end)
	setmetatable_result1_upvr.model = Create_upvr("Model")({
		Name = "ViveController";
		Archivable = false;
	})
	setmetatable_result1_upvr.origin = Create_upvr("Part")({
		Parent = setmetatable_result1_upvr.model;
		Name = "Origin";
		Anchored = true;
		Transparency = 1;
		Size = Vector3.new(0.05000, 0.05000, 0.05000);
		CanCollide = false;
		CanQuery = false;
		CanTouch = false;
	})
	setmetatable_result1_upvr.scale = 1
	setmetatable_result1_upvr.parts = {}
	for i, v in pairs(tbl_upvr_3) do
		local var31 = Vector3.new(0.03299, 0.03299, 0.03299)
		if v.scale then
			var31 *= v.scale
		end
		local var33 = Create_upvr("Part")({
			Parent = setmetatable_result1_upvr.model;
			Name = i;
			Anchored = true;
			Material = Granite_upvr;
			Size = v.size or Vector3.new(0.05000, 0.05000, 0.05000);
			CFrame = setmetatable_result1_upvr.origin.CFrame * v.offset;
			CanCollide = false;
			CanQuery = false;
			CanTouch = false;
		})
		local _ = {
			Parent = var33;
			Name = "Mesh";
			MeshId = v.meshId;
			TextureId = v.textureId;
			Scale = var31;
		}
		local _ = {
			Parent = var33;
			Name = "Weld";
			Part0 = setmetatable_result1_upvr.origin;
			Part1 = var33;
			C0 = v.offset;
		}
		setmetatable_result1_upvr.parts[i] = var33
	end
	local var37 = Create_upvr("Part")({
		Parent = setmetatable_result1_upvr.model;
		Name = "TrackpadIndicator";
		Material = Enum.Material.Neon;
		BrickColor = BrickColor.new("Institutional white");
		Shape = Enum.PartType.Ball;
		Anchored = true;
		Transparency = 1;
		Size = Vector3.new(0.05000, 0.05000, 0.05000);
		CanCollide = false;
		CanQuery = false;
		CanTouch = false;
	})
	Create_upvr("Weld")({
		Parent = var37;
		Name = "Weld";
		Part0 = setmetatable_result1_upvr.origin;
		Part1 = var37;
		C0 = tbl_upvr_3.Trackpad.offset;
	})
	setmetatable_result1_upvr.parts.TrackpadIndicator = var37
	setmetatable_result1_upvr.model.PrimaryPart = setmetatable_result1_upvr.origin
	setmetatable_result1_upvr:onTouchpadModeChanged(setmetatable_result1_upvr.touchpad, VRService_upvr:GetTouchpadMode(setmetatable_result1_upvr.touchpad))
	return setmetatable_result1_upvr
end
function module_upvr.setPartVisible(arg1, arg2, arg3) -- Line 200
	local parts = arg1.parts
	local var40 = parts[arg2]
	if var40 then
		if arg3 then
			parts = 0
		else
			parts = 1
		end
		var40.Transparency = parts
	end
end
function module_upvr.setABXYEnabled(arg1, arg2) -- Line 207
	arg1:setPartVisible("ButtonA", arg2)
	arg1:setPartVisible("ButtonB", arg2)
	arg1:setPartVisible("ButtonX", arg2)
	arg1:setPartVisible("ButtonY", arg2)
end
function module_upvr.setCFrame(arg1, arg2) -- Line 214
	arg1.model:SetPrimaryPartCFrame(arg2)
end
function module_upvr.setCFrameAndScale(arg1, arg2, arg3) -- Line 218
	--[[ Upvalues[1]:
		[1]: tbl_upvr_3 (readonly)
	]]
	arg1.model:SetPrimaryPartCFrame(arg2)
	if arg1.scale ~= arg3 then
		arg1.scale = arg3
		for i_2, v_2 in pairs(tbl_upvr_3) do
			local var48 = arg1.parts[i_2]
			local var49
			if var48 then
				var49 = Vector3.new(0.03299, 0.03299, 0.03299)
				if v_2.scale then
					var49 *= v_2.scale
				end
				local Mesh_3 = var48:FindFirstChild("Mesh")
				local Weld_2 = var48:FindFirstChild("Weld")
				local var52 = CFrame.new(v_2.offset.p * arg1.scale) * (v_2.offset - v_2.offset.p)
				var48.CFrame = arg2 * var52
				if Mesh_3 then
					Mesh_3.Scale = var49 * arg1.scale
				end
				if Weld_2 then
					Weld_2.C0 = var52
				end
			end
		end
	end
end
function module_upvr.setButtonState(arg1, arg2, arg3) -- Line 247
	--[[ Upvalues[1]:
		[1]: tbl_upvr_3 (readonly)
	]]
	local var61 = tbl_upvr_3[arg2]
	if not var61 then
	else
		local offset_2 = var61.offset
		local moveOffset = var61.moveOffset
		if offset_2 and moveOffset then
			local var64 = CFrame.new(offset_2.p * arg1.scale) * (offset_2 - offset_2.p)
			local var65 = CFrame.new(moveOffset.p * arg1.scale) * (moveOffset - moveOffset.p)
			local var66 = arg1.parts[arg2]
			if var66 then
				local Mesh_2 = var66:FindFirstChild("Mesh")
				local Weld_4 = var66:FindFirstChild("Weld")
				if Weld_4 then
					if arg3 then
						var66.CFrame = arg1.origin.CFrame * var64 * var65
						Weld_4.C0 = var64 * var65
					else
						var66.CFrame = arg1.origin.CFrame * var64
						Weld_4.C0 = var64
					end
				end
				if Mesh_2 then
					if arg3 then
						Mesh_2.VertexColor = Vector3.new(0.5, 0.5, 0.5)
						return
					end
					Mesh_2.VertexColor = Vector3.new(1, 1, 1)
				end
			end
		end
	end
end
function module_upvr.setTriggerState(arg1, arg2) -- Line 284
	--[[ Upvalues[1]:
		[1]: tbl_upvr_3 (readonly)
	]]
	local offset_4 = tbl_upvr_3.Trigger.offset
	local Trigger = arg1.parts.Trigger
	local Weld_3 = Trigger:FindFirstChild("Weld")
	if Weld_3 then
		local vector3 = Vector3.new(0, 0.05 * arg1.scale, -0.025 * arg1.scale)
		local var73 = CFrame.new(offset_4.p * arg1.scale) * (offset_4 - offset_4.p) * CFrame.new(vector3) * CFrame.Angles(arg2 * -0.3490658503988659 + 0, 0, 0) * CFrame.new(-vector3)
		Trigger.CFrame = arg1.origin.CFrame * var73
		Weld_3.C0 = var73
	end
end
function module_upvr.setTrackpadState(arg1, arg2) -- Line 302
	--[[ Upvalues[1]:
		[1]: tbl_upvr_3 (readonly)
	]]
	local TrackpadIndicator = arg1.parts.TrackpadIndicator
	local Weld_5 = TrackpadIndicator:FindFirstChild("Weld")
	local offset_3 = tbl_upvr_3.Trackpad.offset
	if Weld_5 then
		local var77 = CFrame.new(offset_3.p * arg1.scale) * (offset_3 - offset_3.p) * CFrame.new(0, 0.01 * arg1.scale, 0) * CFrame.Angles(0.11344640137963143, 0, 0) * CFrame.new(0, 0.002 * arg1.scale * arg2.magnitude ^ 3, 0):toWorldSpace(CFrame.new(Vector3.new(arg2.X, 0, -arg2.Y) * 0.055))
		TrackpadIndicator.CFrame = arg1.origin.CFrame * var77
		Weld_5.C0 = var77
	end
end
function module_upvr.onButtonInputChanged(arg1, arg2, arg3) -- Line 318
	if arg1.userCFrame == Enum.UserCFrame.RightHand and arg2.KeyCode == Enum.KeyCode.ButtonR3 or arg1.userCFrame == Enum.UserCFrame.LeftHand and arg2.KeyCode == Enum.KeyCode.ButtonL3 then
		arg1:setButtonState("Trackpad", arg3)
	else
		if arg1.userCFrame == Enum.UserCFrame.RightHand and arg2.KeyCode == Enum.KeyCode.ButtonR1 or arg1.userCFrame == Enum.UserCFrame.LeftHand and arg2.KeyCode == Enum.KeyCode.ButtonL1 then
			arg1:setButtonState("LeftGrip", arg3)
			arg1:setButtonState("RightGrip", arg3)
			return
		end
		if arg1.userCFrame == Enum.UserCFrame.RightHand and arg2.KeyCode == Enum.KeyCode.ButtonStart or arg1.userCFrame == Enum.UserCFrame.LeftHand and arg2.KeyCode == Enum.KeyCode.ButtonSelect then
			arg1:setButtonState("MenuButton", arg3)
			return
		end
		if arg1.touchpadMode == Enum.VRTouchpadMode.ABXY then
			if arg2.KeyCode == Enum.KeyCode.ButtonA then
				arg1:setButtonState("ButtonA", arg3)
				return
			end
			if arg2.KeyCode == Enum.KeyCode.ButtonB then
				arg1:setButtonState("ButtonB", arg3)
				return
			end
			if arg2.KeyCode == Enum.KeyCode.ButtonX then
				arg1:setButtonState("ButtonX", arg3)
				return
			end
			if arg2.KeyCode == Enum.KeyCode.ButtonY then
				arg1:setButtonState("ButtonY", arg3)
				return
			end
		end
	end
end
function module_upvr.onInputBegan(arg1, arg2) -- Line 368
	arg1:onButtonInputChanged(arg2, true)
	if arg1.userCFrame == Enum.UserCFrame.RightHand and arg2.KeyCode == Enum.KeyCode.Thumbstick2 or arg1.userCFrame == Enum.UserCFrame.LeftHand and arg2.KeyCode == Enum.KeyCode.Thumbstick1 then
		arg1:setPartVisible("TrackpadIndicator", true)
	end
end
function module_upvr.onInputChanged(arg1, arg2) -- Line 378
	if arg1.userCFrame == Enum.UserCFrame.RightHand and arg2.KeyCode == Enum.KeyCode.ButtonR2 or arg1.userCFrame == Enum.UserCFrame.LeftHand and arg2.KeyCode == Enum.KeyCode.ButtonL2 then
		arg1:setTriggerState(arg2.Position.Z)
	end
	if arg1.userCFrame == Enum.UserCFrame.RightHand and arg2.KeyCode == Enum.KeyCode.Thumbstick2 or arg1.userCFrame == Enum.UserCFrame.LeftHand and arg2.KeyCode == Enum.KeyCode.Thumbstick1 then
		arg1:setTrackpadState(arg2.Position)
	end
end
function module_upvr.onInputEnded(arg1, arg2) -- Line 393
	arg1:onButtonInputChanged(arg2, false)
	if arg1.userCFrame == Enum.UserCFrame.RightHand and arg2.KeyCode == Enum.KeyCode.Thumbstick2 or arg1.userCFrame == Enum.UserCFrame.LeftHand and arg2.KeyCode == Enum.KeyCode.Thumbstick1 then
		arg1:setPartVisible("TrackpadIndicator", false)
	end
end
function module_upvr.onTouchpadModeChanged(arg1, arg2, arg3) -- Line 403
	if arg2 ~= arg1.touchpad then
	else
		arg1.touchpadMode = arg3
		if arg3 == Enum.VRTouchpadMode.ABXY then
			arg1:setABXYEnabled(true)
			return
		end
		arg1:setABXYEnabled(false)
	end
end
function module_upvr.destroy(arg1) -- Line 417
	if arg1.onTouchpadModeChangedConn then
		arg1.onTouchpadModeChangedConn:disconnect()
		arg1.onTouchpadModeChangedConn = nil
	end
	arg1.model:Destroy()
end
function module_upvr.getButtonPart(arg1, arg2) -- Line 425
	--[[ Upvalues[1]:
		[1]: tbl_upvr_2 (readonly)
	]]
	local var78 = tbl_upvr_2[arg2]
	if var78 then
		return arg1.parts[var78]
	end
	return nil
end
return module_upvr