-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:14:31
-- Luau version 6, Types version 3
-- Time taken: 0.015449 seconds

local Parent_2 = script.Parent
local Parent = Parent_2.Parent.Parent
local function GetUserCFrameWorldSpace_upvr(arg1, arg2) -- Line 13, Named "GetUserCFrameWorldSpace"
	local any_GetUserCFrame_result1 = arg2:GetUserCFrame(arg1)
	local CurrentCamera = workspace.CurrentCamera
	if not CurrentCamera.HeadLocked then
		any_GetUserCFrame_result1 = arg2:GetUserCFrame(Enum.UserCFrame.Head):Inverse() * any_GetUserCFrame_result1
	end
	return (CurrentCamera.CFrame) * (CFrame.new(any_GetUserCFrame_result1.p * CurrentCamera.HeadScale) * (any_GetUserCFrame_result1 - any_GetUserCFrame_result1.p))
end
local UIBloxConfig_upvr = require(Parent.UIBloxConfig)
local Constants_upvr = require(Parent_2.Constants)
local React_upvr = require(Parent.Parent.React)
return function(arg1, arg2) -- Line 25, Named "usePanel3DRenderStep"
	--[[ Upvalues[4]:
		[1]: UIBloxConfig_upvr (readonly)
		[2]: Constants_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: GetUserCFrameWorldSpace_upvr (readonly)
	]]
	local var8
	local var9_upvw
	local var10
	local var11_upvw
	if UIBloxConfig_upvr.enablePanelManagedAnchoring and arg1.anchoring == Constants_upvr.AnchoringTypes.PanelManaged and arg1.connectPanelManagerFunction then
		return var8, var10
	end
	if UIBloxConfig_upvr.refactorPanel3D then
		local any_useBinding_result1_2, any_useBinding_result2 = React_upvr.useBinding(Vector3.new(arg1.partSize.X, arg1.partSize.Y, 0.05))
		var8 = any_useBinding_result1_2
		var9_upvw = any_useBinding_result2
		local any_useBinding_result1, any_useBinding_result2_2 = React_upvr.useBinding(arg1.offset * CFrame.Angles(math.rad(arg1.tilt), 0, 0))
		var10 = any_useBinding_result1
		var11_upvw = any_useBinding_result2_2
	end
	local any_useRef_result1_upvr_2 = React_upvr.useRef(arg1.offset)
	React_upvr.useEffect(function() -- Line 46
		--[[ Upvalues[2]:
			[1]: any_useRef_result1_upvr_2 (readonly)
			[2]: arg1 (readonly)
		]]
		any_useRef_result1_upvr_2.current = arg1.offset
	end, {})
	local vrService_upvr = arg1.vrService
	local any_useRef_result1_upvr_3 = React_upvr.useRef(nil)
	local any_useRef_result1_upvr = React_upvr.useRef(false)
	local any_useCallback_result1_upvr = React_upvr.useCallback(function(arg1_2) -- Line 50
		--[[ Upvalues[11]:
			[1]: arg1 (readonly)
			[2]: Constants_upvr (copied, readonly)
			[3]: vrService_upvr (readonly)
			[4]: GetUserCFrameWorldSpace_upvr (copied, readonly)
			[5]: any_useRef_result1_upvr_3 (readonly)
			[6]: any_useRef_result1_upvr (readonly)
			[7]: any_useRef_result1_upvr_2 (readonly)
			[8]: UIBloxConfig_upvr (copied, readonly)
			[9]: var11_upvw (read and write)
			[10]: var9_upvw (read and write)
			[11]: arg2 (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local CurrentCamera_3 = workspace.CurrentCamera
		local HeadScale = CurrentCamera_3.HeadScale
		local var52
		local var53
		if arg1.anchoring == Constants_upvr.AnchoringTypes.Head then
			var53 = Enum.UserCFrame.Head
			var52 = vrService_upvr:GetUserCFrame(var53)
			var53 = vrService_upvr
			local GetUserCFrameWorldSpace_result1 = GetUserCFrameWorldSpace_upvr(Enum.UserCFrame.Head, var53)
			var53 = any_useRef_result1_upvr_3
			if var53.current == nil then
				any_useRef_result1_upvr_3.current = GetUserCFrameWorldSpace_result1
			end
			if any_useRef_result1_upvr_3.current == nil then
				var53 = false
			else
				var53 = true
			end
			assert(var53, "lastLookCFrame should not be nil.")
			var53 = any_useRef_result1_upvr_3.current
			var53 = 0.85
			if var53.LookVector:Dot(GetUserCFrameWorldSpace_result1.LookVector) < var53 then
				var53 = true
				any_useRef_result1_upvr.current = var53
			else
				var53 = any_useRef_result1_upvr_3.current
				var53 = 0.99
				if var53 < var53.LookVector:Dot(GetUserCFrameWorldSpace_result1.LookVector) then
					var53 = false
					any_useRef_result1_upvr.current = var53
				end
			end
			var53 = any_useRef_result1_upvr
			if var53.current then
				var53 = any_useRef_result1_upvr_3.current:Lerp(GetUserCFrameWorldSpace_result1, 7.2 * arg1_2)
				any_useRef_result1_upvr_3.current = var53
			end
			var53 = any_useRef_result1_upvr_3.current.LookVector * HeadScale * 2
			local _ = GetUserCFrameWorldSpace_result1.Position + var53
			var53 = _.X
			var53 = arg1
			local alignedPanel_3 = var53.alignedPanel
			if alignedPanel_3 then
				var53 = alignedPanel_3:GetPart()
				local var57 = var53
				if var57 then
					var57 = alignedPanel_3:IsPositionLockedType()
					if var57 then
						var57 = alignedPanel_3:IsVisible()
						if not var57 then
							var57 = alignedPanel_3.alwaysUpdatePosition
						end
					end
				end
				if var57 then
					-- KONSTANTWARNING: GOTO [234] #161
				end
				-- KONSTANTWARNING: GOTO [234] #161
			end
		else
			var53 = Constants_upvr.AnchoringTypes
			if arg1.anchoring == var53.Wrist then
				var53 = Enum.UserCFrame.RightHand
				if vrService_upvr:GetUserCFrameEnabled(var53) and vrService_upvr.GuiInputUserCFrame == Enum.UserCFrame.LeftHand then
					var53 = Enum.UserCFrame.RightHand
					var52 = vrService_upvr:GetUserCFrame(var53)
				else
					var53 = Enum.UserCFrame.LeftHand
					if vrService_upvr:GetUserCFrameEnabled(var53) then
						var53 = Enum.UserCFrame.LeftHand
						var52 = vrService_upvr:GetUserCFrame(var53)
					end
				end
				if not var52 then
					var53 = Enum.UserCFrame.Head
					var52 = vrService_upvr:GetUserCFrame(var53)
				end
				var53 = CFrame.new(var52.Position * HeadScale)
			else
				return
			end
		end
		if arg1.offsetCallback then
			local tbl = {
				finalPosition = (CurrentCamera_3.CFrame * var53).Position;
				cameraHeadScale = HeadScale;
			}
		end
		if arg1.lerp and any_useRef_result1_upvr_2.current ~= nil then
			var53 = any_useRef_result1_upvr_2
			any_useRef_result1_upvr_2.current = var53.current:Lerp(arg1.offset, 7.2 * arg1_2)
		else
			var53 = arg1
			any_useRef_result1_upvr_2.current = var53.offset
		end
		var53 = any_useRef_result1_upvr_2
		if var53.current ~= nil then
			var53 = arg1
			if var53.faceCamera then
				var53 = Enum.UserCFrame.Head
				var53 = CFrame.new(arg1.offsetCallback(tbl) + any_useRef_result1_upvr_2.current.Position * HeadScale, GetUserCFrameWorldSpace_upvr(var53, vrService_upvr).Position)
			else
				local any_ToOrientation_result1, any_ToOrientation_result2, any_ToOrientation_result3_2 = var52:ToOrientation()
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			end
		end
		if arg1.tiltCallback then
			local any_tiltCallback_result1 = arg1.tiltCallback({
				panelCFrame = CFrame.new(arg1.offsetCallback(tbl)) * CFrame.Angles(-any_ToOrientation_result1, any_ToOrientation_result2, -any_ToOrientation_result3_2) * CFrame.new(any_useRef_result1_upvr_2.current.Position * HeadScale);
				cameraHeadScale = HeadScale;
			})
		end
		if UIBloxConfig_upvr.refactorPanel3D then
			var11_upvw(any_tiltCallback_result1)
			var9_upvw(Vector3.new(arg1.partSize.X * HeadScale, arg1.partSize.Y * HeadScale, 0.05))
		elseif arg2.current ~= nil then
			arg2.current.CFrame = any_tiltCallback_result1
			arg2.current.Size = Vector3.new(arg1.partSize.X * HeadScale, arg1.partSize.Y * HeadScale, 0.05)
		end
	end, {arg1.anchoring, arg1.faceCamera, arg1.lerp, arg1.offset, arg1.partSize, arg1.alignedPanel, arg1.offsetCallback, arg1.tiltCallback})
	React_upvr.useEffect(function() -- Line 180
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: Constants_upvr (copied, readonly)
			[3]: any_useCallback_result1_upvr (readonly)
		]]
		if arg1.anchoring ~= Constants_upvr.AnchoringTypes.World then
			local var76_upvw
			local var77_upvw
			local function onCurrentCameraChanged() -- Line 185
				--[[ Upvalues[2]:
					[1]: var76_upvw (read and write)
					[2]: any_useCallback_result1_upvr (copied, readonly)
				]]
				if var76_upvw then
					var76_upvw:Disconnect()
				end
				if workspace.CurrentCamera then
					var76_upvw = workspace.CurrentCamera:GetPropertyChangedSignal("CFrame"):Connect(function() -- Line 192
						--[[ Upvalues[1]:
							[1]: any_useCallback_result1_upvr (copied, readonly)
						]]
						any_useCallback_result1_upvr(0)
					end)
				end
			end
			onCurrentCameraChanged()
			if arg1.alignedPanel then
				local any_GetPart_result1 = arg1.alignedPanel:GetPart()
				if any_GetPart_result1 then
					var77_upvw = any_GetPart_result1:GetPropertyChangedSignal("CFrame"):Connect(function() -- Line 205
						--[[ Upvalues[1]:
							[1]: any_useCallback_result1_upvr (copied, readonly)
						]]
						any_useCallback_result1_upvr(0)
					end)
				end
			end
			local any_Connect_result1_upvr_2 = arg1.movementUpdateEvent:Connect(any_useCallback_result1_upvr)
			local any_Connect_result1_upvw = workspace:GetPropertyChangedSignal("CurrentCamera"):Connect(onCurrentCameraChanged)
			return function() -- Line 213
				--[[ Upvalues[4]:
					[1]: any_Connect_result1_upvr_2 (readonly)
					[2]: any_Connect_result1_upvw (read and write)
					[3]: var76_upvw (read and write)
					[4]: var77_upvw (read and write)
				]]
				any_Connect_result1_upvr_2:Disconnect()
				any_Connect_result1_upvw:Disconnect()
				if var76_upvw then
					var76_upvw:Disconnect()
				end
				if var77_upvw then
					var77_upvw:Disconnect()
				end
			end
		end
		return function() -- Line 224
		end
	end, {arg1.anchoring, any_useCallback_result1_upvr})
	return var8, var10
end