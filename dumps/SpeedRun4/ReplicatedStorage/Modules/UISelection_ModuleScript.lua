-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:06:18
-- Luau version 6, Types version 3
-- Time taken: 0.006998 seconds

local module_upvr_3 = {}
local GuiService_upvr = game:GetService("GuiService")
local Modules = game:GetService("ReplicatedStorage"):WaitForChild("Modules")
module_upvr_3.IgnoreSelectionTag = "UIS_Ignore"
local tbl_upvr_3 = {
	ScrollingFrame = "UISelection_SELECTION_FRAME_CONTROL";
}
local tbl_upvr_2 = {
	KeyboardScrollingFrame = Enum.KeyCode.Equals;
}
local tbl_upvr = {
	ScrollingFrames = {};
	ScrollingFramesBound = false;
	ScrollingFramesConnection = nil;
	SelectedFrame = nil;
}
local function IsInterfaceSelected_upvr() -- Line 57, Named "MonitorSelectedObject"
	--[[ Upvalues[3]:
		[1]: GuiService_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: module_upvr_3 (readonly)
	]]
	local SelectedObject_2 = GuiService_upvr.SelectedObject
	if tbl_upvr.SelectedFrame and SelectedObject_2 ~= tbl_upvr.SelectedFrame then
		tbl_upvr.SelectedFrame.Selectable = false
		tbl_upvr.SelectedFrame = nil
	end
	if SelectedObject_2 then
		if tbl_upvr.ScrollingFrames[SelectedObject_2] then
			tbl_upvr.SelectedFrame = SelectedObject_2
			return
		end
		if not SelectedObject_2:HasTag(module_upvr_3.IgnoreSelectionTag) then
			local class_ScrollingFrame = SelectedObject_2:FindFirstAncestorWhichIsA("ScrollingFrame")
			if class_ScrollingFrame then
				local var15
				if var15 then
					var15 = SelectedObject_2
					while var15.Parent ~= class_ScrollingFrame do
						var15 = var15.Parent
					end
					local Y_2 = class_ScrollingFrame.AbsoluteWindowSize.Y
					local var17 = var15.AbsolutePosition.Y - class_ScrollingFrame.AbsolutePosition.Y
					local Y_3 = var15.AbsoluteSize.Y
					if var17 < 0 then
						class_ScrollingFrame.CanvasPosition += Vector2.yAxis * var17
						return
					end
					if Y_2 < var17 + Y_3 then
						class_ScrollingFrame.CanvasPosition += Vector2.yAxis * math.min(var17, var17 + Y_3 - Y_2)
					end
				end
			end
		end
	end
end
local function ProcessInput_upvr(arg1, arg2, arg3) -- Line 99, Named "ProcessInput"
	--[[ Upvalues[2]:
		[1]: GuiService_upvr (readonly)
		[2]: tbl_upvr (readonly)
	]]
	local Pass = Enum.ContextActionResult.Pass
	local var23
	if var23 ~= nil then
		local function INLINED_2() -- Internal function, doesn't exist in bytecode
			var23 = true
			return 0.25 >= arg3.Position.Magnitude
		end
		if arg3.KeyCode ~= Enum.KeyCode.Thumbstick2 or arg3.UserInputType ~= Enum.UserInputType.Gamepad1 or INLINED_2() then
			if arg2 ~= Enum.UserInputState.Begin then
				var23 = false
			else
				var23 = true
			end
		end
		if var23 then
			local class_ScrollingFrame_2 = GuiService_upvr.SelectedObject:FindFirstAncestorWhichIsA("ScrollingFrame")
			if class_ScrollingFrame_2 and tbl_upvr.ScrollingFrames[class_ScrollingFrame_2] then
				Pass = Enum.ContextActionResult.Sink
				class_ScrollingFrame_2.Selectable = true
				GuiService_upvr.SelectedObject = class_ScrollingFrame_2
			end
		end
	end
	return Pass
end
local ContextActionService_upvr = game:GetService("ContextActionService")
local function UpdateScrollingFrameMonitors_upvr() -- Line 130, Named "UpdateScrollingFrameMonitors"
	--[[ Upvalues[7]:
		[1]: tbl_upvr (readonly)
		[2]: ContextActionService_upvr (readonly)
		[3]: tbl_upvr_3 (readonly)
		[4]: ProcessInput_upvr (readonly)
		[5]: tbl_upvr_2 (readonly)
		[6]: GuiService_upvr (readonly)
		[7]: IsInterfaceSelected_upvr (readonly)
	]]
	local var27
	if next(tbl_upvr.ScrollingFrames) == nil then
		var27 = false
	else
		var27 = true
	end
	if var27 and not tbl_upvr.ScrollingFramesBound then
		tbl_upvr.ScrollingFramesBound = true
		ContextActionService_upvr:BindActionAtPriority(tbl_upvr_3.ScrollingFrame, ProcessInput_upvr, false, 2147483647, Enum.KeyCode.Thumbstick2, tbl_upvr_2.KeyboardScrollingFrame)
		tbl_upvr.ScrollingFramesConnection = GuiService_upvr:GetPropertyChangedSignal("SelectedObject"):Connect(IsInterfaceSelected_upvr)
		IsInterfaceSelected_upvr()
	elseif not var27 and tbl_upvr.ScrollingFramesBound then
		tbl_upvr.ScrollingFramesBound = false
		ContextActionService_upvr:UnbindAction(tbl_upvr_3.ScrollingFrame)
		if tbl_upvr.ScrollingFramesConnection then
			tbl_upvr.ScrollingFramesConnection:Disconnect()
			tbl_upvr.ScrollingFramesConnection = nil
		end
	end
end
function module_upvr_3.UnregisterScrollingFrame(arg1) -- Line 161
	--[[ Upvalues[2]:
		[1]: tbl_upvr (readonly)
		[2]: UpdateScrollingFrameMonitors_upvr (readonly)
	]]
	local var28 = tbl_upvr.ScrollingFrames[arg1]
	if var28 then
		tbl_upvr.ScrollingFrames[arg1] = nil
		if tbl_upvr.SelectedFrame == arg1 then
			tbl_upvr.SelectedFrame = nil
		end
		arg1.Selectable = var28.Selectable
		var28.DestroyingConnection:Disconnect()
		UpdateScrollingFrameMonitors_upvr()
	end
end
function module_upvr_3.RegisterScrollingFrame(arg1) -- Line 178
	--[[ Upvalues[3]:
		[1]: tbl_upvr (readonly)
		[2]: module_upvr_3 (readonly)
		[3]: UpdateScrollingFrameMonitors_upvr (readonly)
	]]
	if not tbl_upvr.ScrollingFrames[arg1] then
		arg1.Selectable = false
		tbl_upvr.ScrollingFrames[arg1] = {
			Selectable = arg1.Selectable;
			DestroyingConnection = arg1.Destroying:Connect(function() -- Line 183
				--[[ Upvalues[2]:
					[1]: module_upvr_3 (copied, readonly)
					[2]: arg1 (readonly)
				]]
				module_upvr_3.UnregisterScrollingFrame(arg1)
			end);
		}
		UpdateScrollingFrameMonitors_upvr()
	end
end
local module_upvr_2 = require(Modules:WaitForChild("Utility"))
function IsInterfaceSelected_upvr(...) -- Line 197, Named "CreateAndRegisterScrollingFrame"
	--[[ Upvalues[2]:
		[1]: module_upvr_2 (readonly)
		[2]: module_upvr_3 (readonly)
	]]
	local any_I_result1 = module_upvr_2.I("ScrollingFrame", ...)
	module_upvr_3.RegisterScrollingFrame(any_I_result1)
	return any_I_result1
end
module_upvr_3.CreateAndRegisterScrollingFrame = IsInterfaceSelected_upvr
local module_upvr = require(Modules:WaitForChild("InputMode"))
local UserInputService_upvr = game:GetService("UserInputService")
function IsInterfaceSelected_upvr() -- Line 206, Named "InSelectionContext"
	--[[ Upvalues[3]:
		[1]: GuiService_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: UserInputService_upvr (readonly)
	]]
	local var37 = true
	if GuiService_upvr.SelectedObject == nil then
		var37 = true
		if module_upvr.Mode ~= module_upvr.Gamepad then
			var37 = false
			if module_upvr.Mode == module_upvr.Keyboard then
				var37 = not UserInputService_upvr.MouseEnabled
			end
		end
	end
	return var37
end
module_upvr_3.InSelectionContext = IsInterfaceSelected_upvr
function IsInterfaceSelected_upvr(arg1, arg2) -- Line 219, Named "SetSelectedObjectInContext"
	--[[ Upvalues[2]:
		[1]: module_upvr_3 (readonly)
		[2]: GuiService_upvr (readonly)
	]]
	if arg1 == nil or module_upvr_3.InSelectionContext() then
		if arg2 and arg1 then
			GuiService_upvr:Select(arg1)
		else
			GuiService_upvr.SelectedObject = arg1
		end
	end
	return GuiService_upvr.SelectedObject
end
module_upvr_3.SetSelectedObjectInContext = IsInterfaceSelected_upvr
function IsInterfaceSelected_upvr(arg1) -- Line 234, Named "IsInterfaceSelected"
	--[[ Upvalues[1]:
		[1]: GuiService_upvr (readonly)
	]]
	local SelectedObject = GuiService_upvr.SelectedObject
	if SelectedObject then
		SelectedObject = GuiService_upvr.SelectedObject:IsDescendantOf(arg1)
	end
	return SelectedObject
end
module_upvr_3.IsInterfaceSelected = IsInterfaceSelected_upvr
return module_upvr_3