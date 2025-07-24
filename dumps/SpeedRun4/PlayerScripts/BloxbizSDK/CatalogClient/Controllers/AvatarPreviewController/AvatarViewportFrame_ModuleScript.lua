-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:41:36
-- Luau version 6, Types version 3
-- Time taken: 0.004295 seconds

local Parent = script.Parent.Parent.Parent.Parent
local Utils = Parent:FindFirstChild("Utils")
local module_upvr = require(Utils:WaitForChild("Fusion"))
local RunService_upvr = game:GetService("RunService")
local module_upvr_2 = require(Parent.CatalogClient.Classes:WaitForChild("AvatarHandler"))
local Value_upvr = module_upvr.Value
local Computed_upvr = module_upvr.Computed
local Observer_upvr = module_upvr.Observer
local mouse_upvr = game:GetService("Players").LocalPlayer:GetMouse()
local var10_upvw
local UserInputService_upvr = game:GetService("UserInputService")
local New_upvr = module_upvr.New
local OnEvent_upvr = module_upvr.OnEvent
local var2_2_upvr = require(Utils)
local Cleanup_upvr = module_upvr.Cleanup
local Children_upvr = module_upvr.Children
return function(arg1) -- Line 36, Named "GetPreviewFrameViewport"
	--[[ Upvalues[14]:
		[1]: RunService_upvr (readonly)
		[2]: module_upvr_2 (readonly)
		[3]: Value_upvr (readonly)
		[4]: Computed_upvr (readonly)
		[5]: Observer_upvr (readonly)
		[6]: mouse_upvr (readonly)
		[7]: var10_upvw (read and write)
		[8]: UserInputService_upvr (readonly)
		[9]: module_upvr (readonly)
		[10]: New_upvr (readonly)
		[11]: OnEvent_upvr (readonly)
		[12]: var2_2_upvr (readonly)
		[13]: Cleanup_upvr (readonly)
		[14]: Children_upvr (readonly)
	]]
	RunService_upvr:UnbindFromRenderStep("AvatarModelRotation")
	local any_GetModel_result1_upvr = module_upvr_2.GetModel()
	local Value_upvr_result1_upvr = Value_upvr(false)
	local Value_upvr_result1_upvr_2 = Value_upvr(false)
	local Value_upvr_result1_upvr_5 = Value_upvr(0)
	local Value_upvr_result1_upvr_4 = Value_upvr(0)
	local var7_result1_upvr = Computed_upvr(function() -- Line 46
		--[[ Upvalues[2]:
			[1]: Value_upvr_result1_upvr_5 (readonly)
			[2]: Value_upvr_result1_upvr_4 (readonly)
		]]
		return {Value_upvr_result1_upvr_5:get(), Value_upvr_result1_upvr_4:get()}
	end)
	local any_GetPivot_result1_upvr = any_GetModel_result1_upvr:GetPivot()
	local X_upvw = mouse_upvr.X
	local Y_upvw = mouse_upvr.Y
	RunService_upvr:BindToRenderStep("AvatarModelRotation", 2000, function(arg1_2) -- Line 65
		--[[ Upvalues[8]:
			[1]: var10_upvw (copied, read and write)
			[2]: UserInputService_upvr (copied, readonly)
			[3]: Value_upvr_result1_upvr (readonly)
			[4]: mouse_upvr (copied, readonly)
			[5]: X_upvw (read and write)
			[6]: Y_upvw (read and write)
			[7]: Value_upvr_result1_upvr_4 (readonly)
			[8]: Value_upvr_result1_upvr_5 (readonly)
		]]
		debug.profilebegin("Avatar Model Rotation")
		var10_upvw = arg1_2
		if UserInputService_upvr.TouchEnabled then
		else
			if Value_upvr_result1_upvr:get() then
				Value_upvr_result1_upvr_4:set((Value_upvr_result1_upvr_4:get()) + (mouse_upvr.X - X_upvw))
				Value_upvr_result1_upvr_5:set(math.clamp(Value_upvr_result1_upvr_5:get() + (mouse_upvr.Y - Y_upvw) / 2, -45, 60))
			end
			X_upvw = mouse_upvr.X
			Y_upvw = mouse_upvr.Y
			debug.profileend()
		end
	end)
	local Value_upvr_result1_upvr_6 = Value_upvr()
	local Value_upvr_result1_upvr_3 = Value_upvr()
	local Value_upvr_result1_upvr_7 = Value_upvr(false)
	local var34_upvw
	local tbl = {
		Name = "ViewportFrame";
		AnchorPoint = Vector2.new(0.5, 0.5);
		BackgroundColor3 = Color3.fromRGB(79, 84, 95);
		BackgroundTransparency = 1;
		Position = UDim2.fromScale(0.5, 0.5);
		Size = UDim2.fromScale(1, 1);
		Visible = false;
		[module_upvr.Ref] = Value_upvr_result1_upvr_3;
		[OnEvent_upvr("AncestryChanged")] = function() -- Line 116
			--[[ Upvalues[3]:
				[1]: Value_upvr_result1_upvr_3 (readonly)
				[2]: var2_2_upvr (copied, readonly)
				[3]: Value_upvr_result1_upvr_6 (readonly)
			]]
			local any_get_result1_2 = Value_upvr_result1_upvr_3:get()
			if any_get_result1_2 then
				local any_findFirstAncestorOfClass_result1 = var2_2_upvr.findFirstAncestorOfClass(any_get_result1_2, "ScreenGui")
				if any_findFirstAncestorOfClass_result1 then
					Value_upvr_result1_upvr_6:set(any_findFirstAncestorOfClass_result1)
				end
			end
		end;
	}
	local any_onChange_result1_upvr = Observer_upvr(var7_result1_upvr):onChange(function() -- Line 49
		--[[ Upvalues[3]:
			[1]: var7_result1_upvr (readonly)
			[2]: any_GetModel_result1_upvr (readonly)
			[3]: any_GetPivot_result1_upvr (readonly)
		]]
		any_GetModel_result1_upvr:PivotTo(any_GetPivot_result1_upvr * CFrame.Angles(-math.rad(var7_result1_upvr:get()[1]), math.rad(var7_result1_upvr:get()[2]), 0))
	end)
	local any_onChange_result1_upvr_2 = module_upvr.Observer(Value_upvr_result1_upvr_6):onChange(function() -- Line 92
		--[[ Upvalues[3]:
			[1]: var34_upvw (read and write)
			[2]: Value_upvr_result1_upvr_6 (readonly)
			[3]: Value_upvr_result1_upvr_7 (readonly)
		]]
		if var34_upvw then
			var34_upvw:Disconnect()
		end
		local any_get_result1_upvr = Value_upvr_result1_upvr_6:get()
		if any_get_result1_upvr then
			var34_upvw = any_get_result1_upvr:GetPropertyChangedSignal("Enabled"):Connect(function() -- Line 99
				--[[ Upvalues[2]:
					[1]: Value_upvr_result1_upvr_7 (copied, readonly)
					[2]: any_get_result1_upvr (readonly)
				]]
				Value_upvr_result1_upvr_7:set(any_get_result1_upvr.Enabled)
			end)
		end
	end)
	tbl[Cleanup_upvr] = function() -- Line 128
		--[[ Upvalues[4]:
			[1]: RunService_upvr (copied, readonly)
			[2]: any_GetModel_result1_upvr (readonly)
			[3]: any_onChange_result1_upvr (readonly)
			[4]: any_onChange_result1_upvr_2 (readonly)
		]]
		RunService_upvr:UnbindFromRenderStep("AvatarModelRotation")
		any_GetModel_result1_upvr:Destroy()
		any_onChange_result1_upvr()
		any_onChange_result1_upvr_2:Disconnect()
	end
	local tbl_3 = {}
	local tbl_2 = {
		Name = "RotateButton";
		Text = "";
		TextColor3 = Color3.fromRGB(0, 0, 0);
		TextSize = 14;
		AnchorPoint = Vector2.new(0.5, 0.5);
		BackgroundColor3 = Color3.fromRGB(255, 255, 255);
		BackgroundTransparency = 1;
		Position = UDim2.fromScale(0.5, 0.5);
		Size = UDim2.fromScale(1, 1);
		[OnEvent_upvr("MouseButton1Down")] = function() -- Line 151
			--[[ Upvalues[1]:
				[1]: Value_upvr_result1_upvr (readonly)
			]]
			Value_upvr_result1_upvr:set(true)
		end;
		[OnEvent_upvr("MouseButton1Up")] = function() -- Line 155
			--[[ Upvalues[1]:
				[1]: Value_upvr_result1_upvr (readonly)
			]]
			Value_upvr_result1_upvr:set(false)
		end;
		[OnEvent_upvr("MouseLeave")] = function() -- Line 159
			--[[ Upvalues[1]:
				[1]: Value_upvr_result1_upvr (readonly)
			]]
			Value_upvr_result1_upvr:set(false)
		end;
		[OnEvent_upvr("MouseWheelForward")] = function() -- Line 163
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			if arg1 then
				arg1:set(math.clamp(arg1:get() * 1.05, 0.4, 2))
			end
		end;
		[OnEvent_upvr("MouseWheelBackward")] = function() -- Line 171
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			if arg1 then
				arg1:set(math.clamp(arg1:get() / 1.05, 0.4, 2))
			end
		end;
		[OnEvent_upvr("TouchPan")] = function(arg1_3, arg2, arg3) -- Line 179
			--[[ Upvalues[4]:
				[1]: Value_upvr_result1_upvr_2 (readonly)
				[2]: var10_upvw (copied, read and write)
				[3]: Value_upvr_result1_upvr_4 (readonly)
				[4]: Value_upvr_result1_upvr_5 (readonly)
			]]
			if Value_upvr_result1_upvr_2:get() then
			else
				Value_upvr_result1_upvr_4:set(Value_upvr_result1_upvr_4:get() + arg3.X * var10_upvw)
				Value_upvr_result1_upvr_5:set(math.clamp(Value_upvr_result1_upvr_5:get() + arg3.Y * var10_upvw / 2, -45, 60))
			end
		end;
	}
	local var56_upvw = 1
	tbl_2[OnEvent_upvr("TouchPinch")] = function(arg1_4, arg2, arg3, arg4) -- Line 190
		--[[ Upvalues[4]:
			[1]: arg1 (readonly)
			[2]: Value_upvr_result1_upvr (readonly)
			[3]: Value_upvr_result1_upvr_2 (readonly)
			[4]: var56_upvw (read and write)
		]]
		if arg1 then
			if arg4 == Enum.UserInputState.Begin then
				Value_upvr_result1_upvr:set(false)
				Value_upvr_result1_upvr_2:set(true)
				var56_upvw = arg1:get() or 1
				return
			end
			if arg4 == Enum.UserInputState.Change then
				Value_upvr_result1_upvr:set(false)
				arg1:set(math.clamp(var56_upvw * arg2, 0.4, 2))
				return
			end
			if arg4 == Enum.UserInputState.End then
				var56_upvw = nil
				Value_upvr_result1_upvr_2:set(false)
			end
		end
	end
	tbl_3[1] = New_upvr("WorldModel")({
		Name = "WorldModel";
	})
	tbl_3[2] = New_upvr("TextButton")(tbl_2)
	tbl[Children_upvr] = tbl_3
	local var57 = New_upvr("ViewportFrame")(tbl)
	module_upvr_2.RenderInViewport(any_GetModel_result1_upvr, var57, false, nil, Value_upvr_result1_upvr_7)
	return {
		Viewport = var57;
		Model = any_GetModel_result1_upvr;
		ResetRotation = function() -- Line 59, Named "ResetRotation"
			--[[ Upvalues[2]:
				[1]: Value_upvr_result1_upvr_5 (readonly)
				[2]: Value_upvr_result1_upvr_4 (readonly)
			]]
			Value_upvr_result1_upvr_5:set(0)
			Value_upvr_result1_upvr_4:set(0)
		end;
	}
end