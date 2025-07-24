-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:32:35
-- Luau version 6, Types version 3
-- Time taken: 0.003323 seconds

local Parent = script.Parent.Parent.Parent
local UIBlox = require(Parent.UIBlox)
local React_upvr = require(Parent.React)
local GuiService_upvr = game:GetService("GuiService")
local VRConstants_upvr = require(Parent.VrCompatibility).VRConstants
local GetFFlagAdjustVRFloor_upvr = require(Parent.SharedFlags).GetFFlagAdjustVRFloor
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("RepositionInExperienceVRToasts", false)
local Constants_upvr = UIBlox.Core.VR.Constants
local Panel3D_upvr = UIBlox.Core.VR.Panel3D
return function(arg1) -- Line 30
	--[[ Upvalues[7]:
		[1]: React_upvr (readonly)
		[2]: GuiService_upvr (readonly)
		[3]: VRConstants_upvr (readonly)
		[4]: GetFFlagAdjustVRFloor_upvr (readonly)
		[5]: game_DefineFastFlag_result1_upvr (readonly)
		[6]: Constants_upvr (readonly)
		[7]: Panel3D_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local isToastOpen = arg1.isToastOpen
	local var12
	if GuiService_upvr.CoreGuiFolder then
		var12 = VRConstants_upvr
	end
	if GuiService_upvr.CoreGuiFolder:FindFirstChild(var12.PositionLockedPanelName) then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		React_upvr.useRef(nil).current = GuiService_upvr.CoreGuiFolder:FindFirstChild(var12.PositionLockedPanelName)
	else
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		local current_upvw = React_upvr.useRef(nil).current
	end
	if current_upvw then
		local Y = current_upvw.Size.Y
	else
	end
	local tbl = {}
	var12 = VRConstants_upvr.ToastSize
	tbl.partSize = var12
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var12 = VRConstants_upvr.ToastPosition
		return var12
	end
	if not GetFFlagAdjustVRFloor_upvr() or not INLINED() then
		var12 = CFrame.lookAt(VRConstants_upvr.ToastPosition, VRConstants_upvr.DefaultCameraPosition)
	end
	tbl.offset = var12
	var12 = VRConstants_upvr.ToastResolution
	tbl.virtualScreenSize = var12
	var12 = VRConstants_upvr.ToastCurvature
	tbl.curvature = var12
	var12 = "ToastNotifications"
	tbl.panelName = var12
	var12 = not isToastOpen
	tbl.hidden = var12
	if arg1.isCoreScript then
		var12 = React_upvr.useCallback
		local var17_upvr = 2.45
		local tbl_2 = {current_upvw, var17_upvr}
		var12 = var12(function(arg1_2) -- Line 65
			--[[ Upvalues[3]:
				[1]: current_upvw (read and write)
				[2]: game_DefineFastFlag_result1_upvr (copied, readonly)
				[3]: var17_upvr (readonly)
			]]
			if current_upvw then
				if game_DefineFastFlag_result1_upvr then
					return current_upvw.CFrame * CFrame.new(0, var17_upvr * -0.53, var17_upvr * -0.15) * CFrame.Angles(0.25, 0, 0)
				end
				return current_upvw.CFrame * CFrame.new(0, var17_upvr * -0.45, var17_upvr * -0.15) * CFrame.Angles(0.2, 0, 0)
			end
			return arg1_2.panelCFrame
		end, tbl_2)
		local tbl_3 = {}
		tbl_2 = "ToastNotifications"
		local var20 = tbl_2
		tbl_3.panelName = var20
		if game_DefineFastFlag_result1_upvr then
			var20 = Vector3.new(1, 0.5, 0)
		else
			var20 = Vector3.new(1.20000, 0.60000, 0)
		end
		tbl_3.partSize = var20
		tbl_3.virtualScreenSize = Vector2.new(300, 150)
		tbl_3.lerp = false
		tbl_3.tilt = 0
		tbl_3.anchoring = Constants_upvr.AnchoringTypes.Head
		tbl_3.faceCamera = true
		tbl_3.curvature = 0
		tbl_3.alwaysOnTop = true
		tbl_3.parent = GuiService_upvr.CoreGuiFolder
		tbl_3.hidden = not isToastOpen
		tbl_3.tiltCallback = var12
	end
	var12 = React_upvr.useCallback
	var12 = var12(function(arg1_3) -- Line 96
		--[[ Upvalues[1]:
			[1]: current_upvw (read and write)
		]]
		if current_upvw then
			return current_upvw.CFrame * CFrame.new(0, 0, -0.1)
		end
		return arg1_3.panelCFrame
	end, {current_upvw})
	return React_upvr.createElement(React_upvr.Fragment, nil, {React_upvr.createElement(Panel3D_upvr, tbl_3, {
		Toast = arg1.ToastComponent;
	}), React_upvr.createElement(Panel3D_upvr, {
		panelName = "ConfirmationModal";
		partSize = Vector3.new(3, 3, 0);
		virtualScreenSize = Vector2.new(600, 600);
		lerp = false;
		tilt = 0;
		anchoring = Constants_upvr.AnchoringTypes.Head;
		faceCamera = true;
		curvature = 0;
		alwaysOnTop = true;
		parent = GuiService_upvr.CoreGuiFolder;
		hidden = not arg1.isConfirmModalOpen;
		tiltCallback = var12;
	}, {
		DeeplinkConfirmationModal = arg1.ConfirmationModalComponent;
	})})
end