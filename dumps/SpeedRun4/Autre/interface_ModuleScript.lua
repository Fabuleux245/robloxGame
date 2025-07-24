-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:43:08
-- Luau version 6, Types version 3
-- Time taken: 0.003860 seconds

local Parent = script.Parent
local TweenService_upvr = game:GetService("TweenService")
local CoreGui_upvr = game:GetService("CoreGui")
local Properties_upvr = require(Parent.Properties)
local var5_upvr = require(Parent.getFFlagPointAndClickCursor)()
local module_upvr = {}
local tbl_3_upvr = {
	Default = "rbxasset://textures/ui/VirtualCursor/cursorDefault.png";
	Hover = "rbxasset://textures/ui/VirtualCursor/cursorHover.png";
	Pressed = "rbxasset://textures/ui/VirtualCursor/cursorPressed.png";
	Arrow = "rbxasset://textures/ui/VirtualCursor/cursorArrow.png";
}
local var8_upvw
local var9_upvw
local var10_upvw
local tbl_upvr = {
	Default = 2;
	Activated = 1.7;
}
local function getCursorSize_upvr(arg1) -- Line 47, Named "getCursorSize"
	--[[ Upvalues[2]:
		[1]: tbl_upvr (readonly)
		[2]: Properties_upvr (readonly)
	]]
	local var12 = tbl_upvr[arg1] * Properties_upvr.CursorRadius
	return UDim2.fromOffset(var12, var12)
end
local function _(arg1) -- Line 52, Named "setCursorHighlight"
	--[[ Upvalues[2]:
		[1]: var8_upvw (read and write)
		[2]: tbl_3_upvr (readonly)
	]]
	if arg1 then
		var8_upvw.Image = tbl_3_upvr.Hover
	else
		var8_upvw.Image = tbl_3_upvr.Default
	end
end
local function _(arg1) -- Line 60, Named "setCursorPosition"
	--[[ Upvalues[1]:
		[1]: var8_upvw (read and write)
	]]
	var8_upvw.Position = UDim2.fromOffset(arg1.x, arg1.y)
end
local var13_upvw
local function getOrCreateVirtualCursorContainer_upvr() -- Line 64, Named "getOrCreateVirtualCursorContainer"
	--[[ Upvalues[10]:
		[1]: var13_upvw (read and write)
		[2]: var8_upvw (read and write)
		[3]: tbl_upvr (readonly)
		[4]: Properties_upvr (readonly)
		[5]: tbl_3_upvr (readonly)
		[6]: var5_upvr (readonly)
		[7]: CoreGui_upvr (readonly)
		[8]: var9_upvw (read and write)
		[9]: TweenService_upvr (readonly)
		[10]: var10_upvw (read and write)
	]]
	if var13_upvw == nil then
		var13_upvw = Instance.new("ScreenGui")
		var13_upvw.Enabled = false
		var13_upvw.IgnoreGuiInset = true
		var13_upvw.DisplayOrder = 100
		var13_upvw.Name = "VirtualCursorGui"
		var8_upvw = Instance.new("ImageLabel")
		var8_upvw.Active = false
		var8_upvw.AnchorPoint = Vector2.new(0.5, 0.5)
		local var14 = tbl_upvr.Default * Properties_upvr.CursorRadius
		var8_upvw.Size = UDim2.fromOffset(var14, var14)
		var8_upvw.Image = tbl_3_upvr.Default
		var8_upvw.Visible = false
		var8_upvw.BackgroundTransparency = 1
		if var5_upvr then
			var8_upvw.Transparency = 1
		end
		var8_upvw.Parent = var13_upvw
		var13_upvw.Parent = CoreGui_upvr
		local TweenInfo_new_result1 = TweenInfo.new(0.15, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0)
		local tbl = {}
		local var17 = tbl_upvr.Activated * Properties_upvr.CursorRadius
		tbl.Size = UDim2.fromOffset(var17, var17)
		var9_upvw = TweenService_upvr:Create(var8_upvw, TweenInfo_new_result1, tbl)
		local tbl_4 = {}
		local var19 = tbl_upvr.Default * Properties_upvr.CursorRadius
		tbl_4.Size = UDim2.fromOffset(var19, var19)
		var10_upvw = TweenService_upvr:Create(var8_upvw, TweenInfo_new_result1, tbl_4)
	end
	return var13_upvw
end
local var20_upvw
local var21_upvw
local function tweenCursorOpacity_upvr(arg1) -- Line 95, Named "tweenCursorOpacity"
	--[[ Upvalues[6]:
		[1]: var5_upvr (readonly)
		[2]: var20_upvw (read and write)
		[3]: var21_upvw (read and write)
		[4]: TweenService_upvr (readonly)
		[5]: var8_upvw (read and write)
		[6]: getOrCreateVirtualCursorContainer_upvr (readonly)
	]]
	assert(var5_upvr, "tweenCursorOpacity should only be called when FFlagPointAndClickCursor is true")
	if var20_upvw then
		var20_upvw:Disconnect()
		var20_upvw = nil
	end
	local var22 = 0
	local tbl_2 = {}
	if arg1 then
		var22 = 0
	else
		var22 = 1
	end
	tbl_2.ImageTransparency = var22
	var21_upvw = TweenService_upvr:Create(var8_upvw, TweenInfo.new(0.15, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, var22), tbl_2)
	var20_upvw = var21_upvw.Completed:Connect(function() -- Line 106
		--[[ Upvalues[3]:
			[1]: var8_upvw (copied, read and write)
			[2]: arg1 (readonly)
			[3]: getOrCreateVirtualCursorContainer_upvr (copied, readonly)
		]]
		var8_upvw.Visible = arg1
		getOrCreateVirtualCursorContainer_upvr().Enabled = arg1
	end)
	var21_upvw:Play()
end
local var25_upvw
local function tweenCursorPosition_upvr(arg1) -- Line 114, Named "tweenCursorPosition"
	--[[ Upvalues[4]:
		[1]: var5_upvr (readonly)
		[2]: var25_upvw (read and write)
		[3]: TweenService_upvr (readonly)
		[4]: var8_upvw (read and write)
	]]
	assert(var5_upvr, "tweenCursorPosition should only be called when FFlagPointAndClickCursor is true")
	var25_upvw = TweenService_upvr:Create(var8_upvw, TweenInfo.new(0.15, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0), {
		Position = UDim2.fromOffset(arg1.x, arg1.y);
	})
	var25_upvw:Play()
end
function module_upvr.GetCursorSize(arg1, arg2) -- Line 123
	--[[ Upvalues[1]:
		[1]: getCursorSize_upvr (readonly)
	]]
	return getCursorSize_upvr(arg2)
end
function module_upvr.PlayCursorTweenActivate(arg1) -- Line 127
	--[[ Upvalues[1]:
		[1]: var9_upvw (read and write)
	]]
	var9_upvw:Play()
end
function module_upvr.PlayCursorTweenDefault(arg1) -- Line 131
	--[[ Upvalues[1]:
		[1]: var10_upvw (read and write)
	]]
	var10_upvw:Play()
end
function module_upvr.SetCursorHighlight(arg1, arg2) -- Line 135
	--[[ Upvalues[2]:
		[1]: var8_upvw (read and write)
		[2]: tbl_3_upvr (readonly)
	]]
	if arg2 then
		var8_upvw.Image = tbl_3_upvr.Hover
	else
		var8_upvw.Image = tbl_3_upvr.Default
	end
end
function module_upvr.SetCursorPosition(arg1, arg2) -- Line 139
	--[[ Upvalues[1]:
		[1]: var8_upvw (read and write)
	]]
	var8_upvw.Position = UDim2.fromOffset(arg2.x, arg2.y)
end
function module_upvr.TweenCursorPosition(arg1, arg2) -- Line 143
	--[[ Upvalues[2]:
		[1]: var5_upvr (readonly)
		[2]: tweenCursorPosition_upvr (readonly)
	]]
	assert(var5_upvr, "TweenCursorPosition should only be called when FFlagPointAndClickCursor is true")
	tweenCursorPosition_upvr(arg2)
end
function module_upvr.TweenCursorOpacity(arg1, arg2) -- Line 149
	--[[ Upvalues[2]:
		[1]: var5_upvr (readonly)
		[2]: tweenCursorOpacity_upvr (readonly)
	]]
	assert(var5_upvr, "TweenCursorPosition should only be called when FFlagPointAndClickCursor is true")
	tweenCursorOpacity_upvr(arg2)
end
function module_upvr.SetArrow(arg1, arg2, arg3) -- Line 155
	--[[ Upvalues[2]:
		[1]: var8_upvw (read and write)
		[2]: tbl_3_upvr (readonly)
	]]
	if arg2 == -1 and arg3 == 0 then
		var8_upvw.Rotation = 90
	elseif arg3 == 0 then
		var8_upvw.Rotation = 270
	end
	if arg2 == 0 and arg3 == 1 then
		var8_upvw.Rotation = 0
	elseif arg2 == 0 then
		var8_upvw.Rotation = 180
	end
	var8_upvw.Image = tbl_3_upvr.Arrow
end
local VRService_upvr = game:GetService("VRService")
function module_upvr.EnableUI(arg1, arg2) -- Line 171
	--[[ Upvalues[7]:
		[1]: VRService_upvr (readonly)
		[2]: getOrCreateVirtualCursorContainer_upvr (readonly)
		[3]: var8_upvw (read and write)
		[4]: tbl_upvr (readonly)
		[5]: Properties_upvr (readonly)
		[6]: var5_upvr (readonly)
		[7]: module_upvr (readonly)
	]]
	local var28 = not VRService_upvr.VREnabled
	getOrCreateVirtualCursorContainer_upvr().Enabled = var28
	local var29 = tbl_upvr.Default * Properties_upvr.CursorRadius
	var8_upvw.Size = UDim2.fromOffset(var29, var29)
	var8_upvw.Position = UDim2.fromOffset(arg2.x, arg2.y)
	var8_upvw.Visible = var28
	if var5_upvr then
		module_upvr:TweenCursorOpacity(true)
	end
end
function module_upvr.DisableUI(arg1) -- Line 184
	--[[ Upvalues[5]:
		[1]: var8_upvw (read and write)
		[2]: tbl_3_upvr (readonly)
		[3]: var5_upvr (readonly)
		[4]: module_upvr (readonly)
		[5]: getOrCreateVirtualCursorContainer_upvr (readonly)
	]]
	var8_upvw.Image = tbl_3_upvr.Default
	if var5_upvr then
		module_upvr:TweenCursorOpacity(false)
	else
		getOrCreateVirtualCursorContainer_upvr().Enabled = false
		var8_upvw.Visible = false
	end
end
return module_upvr