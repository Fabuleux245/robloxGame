-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:37:03
-- Luau version 6, Types version 3
-- Time taken: 0.009064 seconds

local VrCommon = script:FindFirstAncestor("VrCommon")
local tbl_upvr_2 = {
	[Enum.UserCFrame.RightHand] = {
		Body = {
			meshId = "rbxassetid://12954883737";
			textureId = "rbxassetid://12954905146";
			offset = CFrame.new(0, 0, 0) * CFrame.Angles(0, math.pi, 0);
		};
		Grip = {
			meshId = "rbxassetid://12954884971";
			textureId = "rbxassetid://12954905146";
			offset = CFrame.new(0.015, -0.078, 0.005) * CFrame.Angles(0, math.pi, 0);
			moveOffset = CFrame.new(-0.01, 0.005, 0) * CFrame.Angles(0, 0, -0.12217304763960307);
		};
		Stick = {
			meshId = "rbxassetid://12954884012";
			textureId = "rbxassetid://12954905146";
			offset = CFrame.new(0.056, 0.027, -0.074) * CFrame.Angles(0, math.pi, 0);
			moveOffset = CFrame.new(0, -0.001, 0);
		};
		Trigger = {
			meshId = "rbxassetid://12954885295";
			textureId = "rbxassetid://12954905146";
			offset = CFrame.new(0.014, -0.049, -0.131) * CFrame.Angles(0, math.pi, 0);
		};
		MenuButton = {
			meshId = "rbxassetid://12954884231";
			textureId = "rbxassetid://12954905146";
			offset = CFrame.new(0.07, 0.017, -0.017) * CFrame.Angles(0, math.pi, 0);
			moveOffset = CFrame.new(0, -0.001, 0);
		};
		ButtonA = {
			meshId = "rbxassetid://12954884749";
			textureId = "rbxassetid://12954905146";
			offset = CFrame.new(0.011, 0.014, -0.026) * CFrame.Angles(0, math.pi, 0);
			moveOffset = CFrame.new(0, -0.005, 0);
		};
		ButtonB = {
			meshId = "rbxassetid://12954884464";
			textureId = "rbxassetid://12954905146";
			offset = CFrame.new(-0.013, 0.015, -0.07) * CFrame.Angles(0, math.pi, 0);
			moveOffset = CFrame.new(0, -0.005, 0);
		};
	};
	[Enum.UserCFrame.LeftHand] = {
		Body = {
			meshId = "rbxassetid://12954878407";
			textureId = "rbxassetid://12954905425";
			offset = CFrame.new(0, 0, 0) * CFrame.Angles(0, math.pi, 0);
		};
		Grip = {
			meshId = "rbxassetid://12954878772";
			textureId = "rbxassetid://12954905425";
			offset = CFrame.new(-0.015, -0.078, 0.005) * CFrame.Angles(0, math.pi, 0);
			moveOffset = CFrame.new(0.0125, 0.005, 0.001);
		};
		Stick = {
			meshId = "rbxassetid://12954879211";
			textureId = "rbxassetid://12954905425";
			offset = CFrame.new(-0.056, 0.027, -0.074) * CFrame.Angles(0, math.pi, 0);
			moveOffset = CFrame.new(0, -0.001, 0);
		};
		Trigger = {
			meshId = "rbxassetid://12954878599";
			textureId = "rbxassetid://12954905425";
			offset = CFrame.new(-0.014, -0.049, -0.131) * CFrame.Angles(0, math.pi, 0);
		};
		MenuButton = {
			meshId = "rbxassetid://12954879390";
			textureId = "rbxassetid://12954905425";
			offset = CFrame.new(-0.07, 0.017, -0.017) * CFrame.Angles(0, math.pi, 0);
			moveOffset = CFrame.new(0, -0.001, 0);
		};
		ButtonX = {
			meshId = "rbxassetid://12954879064";
			textureId = "rbxassetid://12954905425";
			offset = CFrame.new(-0.011, 0.013, -0.026) * CFrame.Angles(0, math.pi, 0);
			moveOffset = CFrame.new(0, -0.005, 0);
		};
		ButtonY = {
			meshId = "rbxassetid://12954878913";
			textureId = "rbxassetid://12954905425";
			offset = CFrame.new(0.013, 0.015, -0.07) * CFrame.Angles(0, math.pi, 0);
			moveOffset = CFrame.new(0, -0.005, 0);
		};
	};
}
local tbl_upvr = {
	[Enum.KeyCode.ButtonL1] = "Grip";
	[Enum.KeyCode.ButtonL2] = "Trigger";
	[Enum.KeyCode.ButtonL3] = "Stick";
	[Enum.KeyCode.ButtonR1] = "Grip";
	[Enum.KeyCode.ButtonR2] = "Trigger";
	[Enum.KeyCode.ButtonR3] = "Stick";
	[Enum.KeyCode.Thumbstick1] = "Stick";
	[Enum.KeyCode.Thumbstick2] = "Stick";
	[Enum.KeyCode.ButtonSelect] = "MenuButton";
	[Enum.KeyCode.ButtonStart] = "MenuButton";
	[Enum.KeyCode.ButtonA] = "ButtonA";
	[Enum.KeyCode.ButtonB] = "ButtonB";
	[Enum.KeyCode.ButtonX] = "ButtonX";
	[Enum.KeyCode.ButtonY] = "ButtonY";
}
local module_upvr = {}
module_upvr.__index = module_upvr
local Create_upvr = require(VrCommon.Parent.AppCommonLib).Create
local Granite_upvr = Enum.Material.Granite
local FIntVRTouchControllerTransparency_upvr = require(VrCommon.Flags.FIntVRTouchControllerTransparency)
function module_upvr.new(arg1) -- Line 119
	--[[ Upvalues[5]:
		[1]: module_upvr (readonly)
		[2]: Create_upvr (readonly)
		[3]: tbl_upvr_2 (readonly)
		[4]: Granite_upvr (readonly)
		[5]: FIntVRTouchControllerTransparency_upvr (readonly)
	]]
	local setmetatable_result1 = setmetatable({}, module_upvr)
	setmetatable_result1.userCFrame = arg1
	setmetatable_result1.model = Create_upvr("Model")({
		Name = "TouchController";
		Archivable = false;
	})
	setmetatable_result1.origin = Create_upvr("Part")({
		Parent = setmetatable_result1.model;
		Name = "Origin";
		Anchored = true;
		Transparency = 1;
		Size = Vector3.new(0.05000, 0.05000, 0.05000);
		CanCollide = false;
		CanQuery = false;
		CanTouch = false;
	})
	setmetatable_result1.scale = 1
	setmetatable_result1.parts = {}
	for i, v in pairs(tbl_upvr_2[arg1]) do
		local var34 = Vector3.new(0.03200, 0.03200, 0.03200)
		if v.scale then
			var34 *= v.scale
		end
		local var36 = Create_upvr("Part")({
			Parent = setmetatable_result1.model;
			Name = i;
			Anchored = true;
			Material = Granite_upvr;
			Size = v.size or Vector3.new(0.05000, 0.05000, 0.05000);
			CFrame = setmetatable_result1.origin.CFrame * v.offset;
			CanCollide = false;
			CanQuery = false;
			CanTouch = false;
			Transparency = FIntVRTouchControllerTransparency_upvr / 100;
		})
		local _ = {
			Parent = var36;
			Name = "Mesh";
			MeshId = v.meshId;
			TextureId = v.textureId;
			Scale = var34;
		}
		local _ = {
			Parent = var36;
			Name = "Weld";
			Part0 = setmetatable_result1.origin;
			Part1 = var36;
			C0 = v.offset;
		}
		setmetatable_result1.parts[i] = var36
	end
	setmetatable_result1.model.PrimaryPart = setmetatable_result1.origin
	return setmetatable_result1
end
function module_upvr.setCFrame(arg1, arg2) -- Line 183
	if arg1.userCFrame == Enum.UserCFrame.RightHand then
		arg1.model:SetPrimaryPartCFrame(arg2 * CFrame.Angles(0.3490658503988659, 0, 0) * CFrame.new(-0.03, 0.08, -0.06))
	else
		arg1.model:SetPrimaryPartCFrame(arg2 * CFrame.Angles(0.3490658503988659, 0, 0) * CFrame.new(0.03, 0.08, -0.06))
	end
end
function module_upvr.setCFrameAndScale(arg1, arg2, arg3) -- Line 191
	--[[ Upvalues[1]:
		[1]: tbl_upvr_2 (readonly)
	]]
	local var43
	if arg1.userCFrame == Enum.UserCFrame.RightHand then
		var43 = 1
	else
		var43 = -1
	end
	arg1.model:SetPrimaryPartCFrame(arg2 * CFrame.Angles(0.3490658503988659, 0, 0) * CFrame.new(-0.03 * arg3 * var43, 0.08 * arg3, -0.06 * arg3))
	if arg1.scale ~= arg3 then
		arg1.scale = arg3
		for i_2, v_2 in pairs(tbl_upvr_2[arg1.userCFrame]) do
			local var47 = arg1.parts[i_2]
			local var48
			if var47 then
				var48 = Vector3.new(0.03200, 0.03200, 0.03200)
				if v_2.scale then
					var48 *= v_2.scale
				end
				local Mesh = var47:FindFirstChild("Mesh")
				local Weld_3 = var47:FindFirstChild("Weld")
				local offset_3 = v_2.offset
				local var52 = CFrame.new(offset_3.p * arg1.scale) * (offset_3 - offset_3.p)
				var47.CFrame = arg1.origin.CFrame * var52
				if Mesh then
					Mesh.Scale = var48 * arg1.scale
				end
				if Weld_3 then
					Weld_3.C0 = var52
				end
			end
		end
	end
end
function module_upvr.setButtonState(arg1, arg2, arg3) -- Line 224
	--[[ Upvalues[1]:
		[1]: tbl_upvr_2 (readonly)
	]]
	local var61 = tbl_upvr_2[arg1.userCFrame][arg2]
	if not var61 then
	else
		local offset_2 = var61.offset
		local moveOffset = var61.moveOffset
		if offset_2 and moveOffset then
			local var64 = CFrame.new(offset_2.p * arg1.scale) * (offset_2 - offset_2.p)
			local var65 = CFrame.new(moveOffset.p * arg1.scale) * (moveOffset - moveOffset.p)
			local var66 = arg1.parts[arg2]
			if var66 then
				local Mesh_3 = var66:FindFirstChild("Mesh")
				local Weld_5 = var66:FindFirstChild("Weld")
				if Weld_5 then
					if arg3 then
						var66.CFrame = arg1.origin.CFrame * var64 * var65
						Weld_5.C0 = var64 * var65
					else
						var66.CFrame = arg1.origin.CFrame * var64
						Weld_5.C0 = var64
					end
				end
				if Mesh_3 then
					if arg3 then
						Mesh_3.VertexColor = Vector3.new(0.5, 0.5, 0.5)
						return
					end
					Mesh_3.VertexColor = Vector3.new(1, 1, 1)
				end
			end
		end
	end
end
function module_upvr.setTriggerState(arg1, arg2) -- Line 261
	--[[ Upvalues[1]:
		[1]: tbl_upvr_2 (readonly)
	]]
	local offset_5 = tbl_upvr_2[arg1.userCFrame].Trigger.offset
	local Trigger = arg1.parts.Trigger
	local Weld_4 = Trigger:FindFirstChild("Weld")
	if Weld_4 then
		local var72 = Vector3.new(0, 0.05000, 0.02500) * arg1.scale
		local var73 = CFrame.new(offset_5.p * arg1.scale) * (offset_5 - offset_5.p) * CFrame.new(var72) * CFrame.Angles(arg2 * 0.3490658503988659 + 0, 0, 0) * CFrame.new(-var72)
		Trigger.CFrame = arg1.origin.CFrame * var73
		Weld_4.C0 = var73
	end
end
function module_upvr.setStickState(arg1, arg2) -- Line 278
	--[[ Upvalues[1]:
		[1]: tbl_upvr_2 (readonly)
	]]
	local offset_4 = tbl_upvr_2[arg1.userCFrame].Stick.offset
	local Stick = arg1.parts.Stick
	local Weld_2 = Stick:FindFirstChild("Weld")
	if Weld_2 then
		local var77 = Vector3.new(-0.0007, -0.0269, 0.00130) * arg1.scale
		local var78 = CFrame.new(offset_4.p * arg1.scale) * (offset_4 - offset_4.p) * CFrame.new(var77) * CFrame.Angles(arg2.Y * 0.3490658503988659 + 0, 0, arg2.X * 0.3490658503988659 + 0) * CFrame.new(-var77)
		Stick.CFrame = arg1.origin.CFrame * var78
		Weld_2.C0 = var78
	end
end
function module_upvr.onInputPositionChanged(arg1, arg2) -- Line 296
	if arg1.userCFrame == Enum.UserCFrame.RightHand and arg2.KeyCode == Enum.KeyCode.ButtonR2 or arg1.userCFrame == Enum.UserCFrame.LeftHand and arg2.KeyCode == Enum.KeyCode.ButtonL2 then
		arg1:setTriggerState(arg2.Position.Z)
	elseif arg1.userCFrame == Enum.UserCFrame.RightHand and arg2.KeyCode == Enum.KeyCode.Thumbstick2 or arg1.userCFrame == Enum.UserCFrame.LeftHand and arg2.KeyCode == Enum.KeyCode.Thumbstick1 then
		arg1:setStickState(arg2.Position)
		return
	end
end
function module_upvr.onButtonInputChanged(arg1, arg2, arg3) -- Line 314
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	if arg1.userCFrame ~= Enum.UserCFrame.LeftHand or arg2.KeyCode ~= Enum.KeyCode.ButtonL1 or arg1.userCFrame ~= Enum.UserCFrame.RightHand or arg2.KeyCode ~= Enum.KeyCode.ButtonR1 or arg1.userCFrame ~= Enum.UserCFrame.LeftHand or arg2.KeyCode ~= Enum.KeyCode.ButtonL3 or arg1.userCFrame ~= Enum.UserCFrame.RightHand or arg2.KeyCode ~= Enum.KeyCode.ButtonR3 or arg1.userCFrame ~= Enum.UserCFrame.LeftHand or arg2.KeyCode ~= Enum.KeyCode.ButtonSelect or arg1.userCFrame == Enum.UserCFrame.RightHand and arg2.KeyCode == Enum.KeyCode.ButtonStart or arg2.KeyCode == Enum.KeyCode.ButtonA or arg2.KeyCode == Enum.KeyCode.ButtonB or arg2.KeyCode == Enum.KeyCode.ButtonX or arg2.KeyCode == Enum.KeyCode.ButtonY then
		arg1:setButtonState(tbl_upvr[arg2.KeyCode], arg3)
	end
end
function module_upvr.onInputBegan(arg1, arg2) -- Line 335
	arg1:onButtonInputChanged(arg2, true)
end
function module_upvr.onInputChanged(arg1, arg2) -- Line 339
	arg1:onInputPositionChanged(arg2)
end
function module_upvr.onInputEnded(arg1, arg2) -- Line 343
	arg1:onInputPositionChanged(arg2)
	arg1:onButtonInputChanged(arg2, false)
end
function module_upvr.onTouchpadModeChanged(arg1, arg2, arg3) -- Line 348
end
function module_upvr.destroy(arg1) -- Line 350
	arg1.model:Destroy()
end
function module_upvr.getButtonPart(arg1, arg2) -- Line 354
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	local var79 = tbl_upvr[arg2]
	if var79 then
		return arg1.parts[var79]
	end
	return nil
end
return module_upvr