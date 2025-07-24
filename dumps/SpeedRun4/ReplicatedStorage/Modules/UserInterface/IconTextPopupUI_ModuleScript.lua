-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:07:14
-- Luau version 6, Types version 3
-- Time taken: 0.014547 seconds

local module_upvr_2 = {}
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local module_5_upvr = require(ReplicatedStorage:WaitForChild("Theme"))
local Modules = ReplicatedStorage:WaitForChild("Modules")
local module_3_upvr = require(Modules:WaitForChild("Transparency"))
local module_upvr = require(Modules:WaitForChild("Tweens"))
local module_2_upvr = require(Modules:WaitForChild("UIShared"))
local module_6_upvr = require(Modules:WaitForChild("Utility"))
module_upvr_2.PopupQueueType = table.freeze({
	ScreenGui = 1;
	SurfaceGui = 2;
})
local tbl_3_upvr = {
	IconSizeEm = 4.5;
	PaddingEm = 1.25;
	SizeXEm = 29.5;
	TextSizeEm = 1.125;
	TextSizeEm_SurfaceGui = 1.25;
}
local tbl_5_upvr = {
	PopupQueues_ByType = {};
	InternalQueue_ByType = {};
}
local tbl_2 = {}
for i, v in module_upvr_2.PopupQueueType do
	tbl_2[v] = i
	tbl_5_upvr.PopupQueues_ByType[v] = {}
end
module_upvr_2.Popup = {}
module_upvr_2.PopupQueue = {}
module_upvr_2.PopupQueue.ScreenGui = {}
module_upvr_2.PopupQueue.SurfaceGui = {}
local tbl_4_upvr = {}
local table_freeze_result1_upvr = table.freeze({
	Font = module_5_upvr.FontFaceNormal;
	Text = "";
	TextColor = module_5_upvr.TextColor1;
})
module_upvr_2.Popup.DefaultSpecs = table_freeze_result1_upvr
local function _(arg1) -- Line 136, Named "GetIconVisible"
	local var20 = false
	if arg1.Image ~= nil then
		if arg1.Image == "" then
			var20 = false
		else
			var20 = true
		end
	end
	return var20
end
local function _(arg1) -- Line 143, Named "GetStrokeEnabled"
	local var21 = false
	if arg1.StrokeEm ~= nil then
		if arg1.StrokeEm == 0 then
			var21 = false
		else
			var21 = true
		end
	end
	return var21
end
local function _(arg1) -- Line 150, Named "GetTextAlignment"
	local var22 = false
	if arg1.Image ~= nil then
		if arg1.Image == "" then
			var22 = false
		else
			var22 = true
		end
	end
	if var22 then
		return Enum.TextXAlignment.Left
	end
	return Enum.TextXAlignment.Center
end
local function PopupQueueCreate_upvr(arg1) -- Line 159, Named "PopupQueueCreate"
	--[[ Upvalues[5]:
		[1]: tbl_5_upvr (readonly)
		[2]: table_freeze_result1_upvr (readonly)
		[3]: module_6_upvr (readonly)
		[4]: module_2_upvr (readonly)
		[5]: module_5_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local assert_result1 = assert(tbl_5_upvr.PopupQueues_ByType[arg1], "Invalid PopupQueueType")
	local module_4 = {}
	module_4.Type = arg1
	module_4.DisplayedSpecs = table.clone(table_freeze_result1_upvr)
	module_4.Popups = {}
	module_4.Frame = module_6_upvr.I("Frame", module_2_upvr.Properties.Centered, {
		BackgroundColor3 = module_5_upvr.BackgroundColor1;
		BackgroundTransparency = module_5_upvr.BackgroundTransparency1;
		BorderSizePixel = 0;
	})
	local tbl = {}
	local DisplayedSpecs_5 = module_4.DisplayedSpecs
	local var28 = false
	if DisplayedSpecs_5.StrokeEm ~= nil then
		if DisplayedSpecs_5.StrokeEm == 0 then
			var28 = false
		else
			var28 = true
		end
	end
	tbl.Enabled = var28
	var28 = module_4.Frame
	tbl.Parent = var28
	module_4.Stroke = module_6_upvr.I("UIStroke", module_2_upvr.Properties.StrokeBorder, tbl)
	module_4.Corner = module_6_upvr.I("UICorner", {
		Parent = module_4.Frame;
	})
	var28 = module_2_upvr
	local tbl_7 = {}
	local DisplayedSpecs = module_4.DisplayedSpecs
	var28 = false
	if DisplayedSpecs.Image ~= nil then
		if DisplayedSpecs.Image == "" then
			var28 = false
		else
			var28 = true
		end
	end
	tbl_7.Visible = var28
	var28 = 1
	tbl_7.ZIndex = var28
	var28 = module_4.Frame
	tbl_7.Parent = var28
	module_4.Icon = module_6_upvr.I("ImageLabel", var28.Properties.Image, tbl_7)
	var28 = module_2_upvr
	local tbl_8 = {}
	var28 = module_4.DisplayedSpecs.Font
	tbl_8.FontFace = var28
	var28 = module_4.DisplayedSpecs.Text
	tbl_8.Text = var28
	var28 = module_4.DisplayedSpecs.TextColor
	tbl_8.TextColor3 = var28
	local DisplayedSpecs_4 = module_4.DisplayedSpecs
	if DisplayedSpecs_4.Image ~= nil then
		if DisplayedSpecs_4.Image == "" then
		else
		end
	end
	if true then
		var28 = Enum.TextXAlignment.Left
	else
		var28 = Enum.TextXAlignment.Center
	end
	tbl_8.TextXAlignment = var28
	var28 = 2
	tbl_8.ZIndex = var28
	var28 = module_4.Frame
	tbl_8.Parent = var28
	module_4.Label = module_6_upvr.I("TextLabel", var28.Properties.Text, tbl_8)
	module_4.Bounds = module_2_upvr.CachedTextBounds_FromLabel(module_4.Label)
	module_4.Flag = module_2_upvr.TextBoundsFlagCreate(module_4.Bounds)
	assert_result1[#assert_result1 + 1] = module_4
	return module_4
end
local function PopupQueueDestroy_upvr(arg1) -- Line 212, Named "PopupQueueDestroy"
	--[[ Upvalues[2]:
		[1]: tbl_5_upvr (readonly)
		[2]: module_upvr_2 (readonly)
	]]
	local var35 = tbl_5_upvr.PopupQueues_ByType[arg1.Type]
	local table_find_result1_2 = table.find(var35, arg1)
	if table_find_result1_2 then
		table.remove(var35, table_find_result1_2)
	end
	arg1.Frame:Destroy()
	for i_2 = #arg1.Popups, 1, -1 do
		module_upvr_2.Popup.Remove(arg1.Popups[i_2])
	end
	if tbl_5_upvr.InternalQueue_ByType[arg1.Type] == arg1 then
		tbl_5_upvr.InternalQueue_ByType[arg1.Type] = nil
	end
end
local tbl_6_upvr = {
	Font = function(arg1, arg2) -- Line 250
		arg1.Flag.Dirty = true
		arg1.Label.FontFace = arg2
		arg1.Bounds.Font = arg2
	end;
	Image = function(arg1, arg2) -- Line 259
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		if arg2 then
			arg1.Icon.Image = arg2
		end
		local DisplayedSpecs_8 = arg1.DisplayedSpecs
		local var42 = false
		if DisplayedSpecs_8.Image ~= nil then
			if DisplayedSpecs_8.Image == "" then
				var42 = false
			else
				var42 = true
			end
		end
		local var43
		if var43.Visible ~= var42 then
			var43 = true
			arg1.Flag.Dirty = var43
			arg1.Icon.Visible = var42
			local DisplayedSpecs_3 = arg1.DisplayedSpecs
			local var45 = false
			if DisplayedSpecs_3.Image ~= nil then
				if DisplayedSpecs_3.Image == "" then
					var45 = false
				else
					var45 = true
				end
			end
			if var45 then
				var43 = Enum.TextXAlignment.Left
			else
				var43 = Enum.TextXAlignment.Center
			end
			arg1.Label.TextXAlignment = var43
		end
	end;
	ImageColor = function(arg1, arg2) -- Line 275
		--[[ Upvalues[1]:
			[1]: module_5_upvr (readonly)
		]]
		local var47 = arg2
		if not var47 then
			var47 = module_5_upvr.White
		end
		arg1.Icon.ImageColor3 = var47
	end;
	StrokeEm = function(arg1, arg2) -- Line 281
		arg1.Flag.Dirty = true
		local DisplayedSpecs_2 = arg1.DisplayedSpecs
		local var50 = false
		if DisplayedSpecs_2.StrokeEm ~= nil then
			if DisplayedSpecs_2.StrokeEm == 0 then
				var50 = false
			else
				var50 = true
			end
		end
		arg1.Stroke.Enabled = var50
	end;
	StrokeColor = function(arg1, arg2) -- Line 288
		--[[ Upvalues[1]:
			[1]: module_5_upvr (readonly)
		]]
		local var52 = arg2
		if not var52 then
			var52 = module_5_upvr.White
		end
		arg1.Stroke.Color = var52
	end;
	Text = function(arg1, arg2) -- Line 294
		arg1.Flag.Dirty = true
		arg1.Label.Text = arg2
	end;
	TextColor = function(arg1, arg2) -- Line 301
		arg1.Label.TextColor3 = arg2
	end;
}
local function PopupQueueUpdate_upvr(arg1, arg2, arg3) -- Line 309, Named "PopupQueueUpdate"
	--[[ Upvalues[1]:
		[1]: tbl_6_upvr (readonly)
	]]
	local _1_2 = arg1.Popups[1]
	local var68
	if arg1.Popup ~= _1_2 then
		arg1.Flag.Dirty = true
		arg1.Popup = _1_2
		if _1_2 then
			_1_2.ExpiresAt = arg3 + _1_2.Lifetime
		end
	end
	if _1_2 then
		local DisplayedSpecs_6 = arg1.DisplayedSpecs
		for i_3, v_2 in tbl_6_upvr do
			local var70 = _1_2.Specs[i_3]
			if DisplayedSpecs_6[i_3] ~= var70 then
				DisplayedSpecs_6[i_3] = var70
				v_2(arg1, var70)
			end
		end
		if _1_2.ExpiresAt > arg3 then
			var68 = false
		else
			var68 = true
		end
	end
	return var68
end
local function PopupQueueResize_upvr(arg1, arg2, arg3) -- Line 350, Named "PopupQueueResize"
	--[[ Upvalues[3]:
		[1]: tbl_3_upvr (readonly)
		[2]: module_2_upvr (readonly)
		[3]: module_5_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var72 = false
	local var73
	if var73 ~= nil then
		var73 = arg1.DisplayedSpecs.Image
		if var73 == "" then
			var72 = false
		else
			var72 = true
		end
	end
	var73 = arg1.DisplayedSpecs
	if var73.StrokeEm ~= nil then
		if var73.StrokeEm == 0 then
		else
		end
	end
	if var72 then
		var73 = arg2 * tbl_3_upvr.IconSizeEm // 1
	else
		var73 = 0
	end
	local var74 = arg2 * tbl_3_upvr.PaddingEm // 1
	local var75 = arg2 * tbl_3_upvr.SizeXEm // 1
	local var76 = arg2 * arg3 // 1
	if var72 then
		-- KONSTANTWARNING: GOTO [55] #43
	end
	if module_2_upvr.CachedTextBoundsUpdate(arg1.Bounds, arg1.DisplayedSpecs.Text, var76, var75 - 2 * var74) then
		arg1.Label.TextSize = var76
		arg1.Label.Size = UDim2.fromOffset(arg1.Bounds.X, arg1.Bounds.Y)
	end
	local var77 = 2 * var74 + math.max(var73, arg1.Bounds.Y)
	if var72 then
		arg1.Icon.Position = UDim2.fromOffset(var74, (var77 * 0.5 - var73 * 0.5) // 1)
		arg1.Icon.Size = UDim2.fromOffset(var73, var73)
	else
	end
	arg1.Label.Position = UDim2.fromOffset(var75 * 0.5 - arg1.Bounds.X * 0.5 // 1, (var77 * 0.5 - arg1.Bounds.Y * 0.5) // 1)
	arg1.Corner.CornerRadius = UDim.new(0, arg2 * module_5_upvr.CornerRadiusBackgroundWide)
	local StrokeEm = arg1.DisplayedSpecs.StrokeEm
	if StrokeEm and 0 < StrokeEm then
		arg1.Stroke.Thickness = arg2 * StrokeEm
	end
	return var75, var77
end
module_upvr_2.PopupQueue.Fetch = function(arg1) -- Line 424, Named "Fetch"
	--[[ Upvalues[2]:
		[1]: tbl_4_upvr (readonly)
		[2]: tbl_5_upvr (readonly)
	]]
	local var79 = tbl_5_upvr.InternalQueue_ByType[arg1]
	if not var79 then
		var79 = assert(tbl_4_upvr[arg1], "Invalid PopupQueueType").Create()
		tbl_5_upvr.InternalQueue_ByType[arg1] = var79
	end
	return var79
end
local function Create() -- Line 441
	--[[ Upvalues[7]:
		[1]: PopupQueueCreate_upvr (readonly)
		[2]: module_upvr_2 (readonly)
		[3]: module_upvr (readonly)
		[4]: module_6_upvr (readonly)
		[5]: module_2_upvr (readonly)
		[6]: module_5_upvr (readonly)
		[7]: module_3_upvr (readonly)
	]]
	local PopupQueueCreate_upvr_result1_2_upvr = PopupQueueCreate_upvr(module_upvr_2.PopupQueueType.ScreenGui)
	PopupQueueCreate_upvr_result1_2_upvr.FadeTween = module_upvr.new(1, 0.375, Enum.EasingStyle.Quad)
	PopupQueueCreate_upvr_result1_2_upvr.SizeTween = module_upvr.new(UDim2.new(), 0.625, Enum.EasingStyle.Quart)
	PopupQueueCreate_upvr_result1_2_upvr.ScreenGui = module_6_upvr.I("ScreenGui", module_2_upvr.Properties.ScreenGui, {
		Name = "IconTextPopupUI";
		DisplayOrder = module_5_upvr.DisplayOrder_IconTextPopupUI;
		Parent = module_2_upvr.PlayerGui;
	})
	module_6_upvr.PropsApply(PopupQueueCreate_upvr_result1_2_upvr.Frame, {
		ClipsDescendants = true;
		Position = UDim2.fromScale(0.5, 0.275);
		Parent = PopupQueueCreate_upvr_result1_2_upvr.ScreenGui;
	})
	PopupQueueCreate_upvr_result1_2_upvr.Button = module_6_upvr.I("TextButton", module_2_upvr.Properties.Button, module_2_upvr.Properties.Centered, {
		BackgroundTransparency = 1;
		Parent = PopupQueueCreate_upvr_result1_2_upvr.Frame;
	})
	PopupQueueCreate_upvr_result1_2_upvr.Icon.Parent = PopupQueueCreate_upvr_result1_2_upvr.Button
	PopupQueueCreate_upvr_result1_2_upvr.Label.Parent = PopupQueueCreate_upvr_result1_2_upvr.Button
	PopupQueueCreate_upvr_result1_2_upvr.Button.Activated:Connect(function() -- Line 477
		--[[ Upvalues[1]:
			[1]: PopupQueueCreate_upvr_result1_2_upvr (readonly)
		]]
		if 0.25 < PopupQueueCreate_upvr_result1_2_upvr.FadeTween.Value then
		else
			local Popup = PopupQueueCreate_upvr_result1_2_upvr.Popup
			if Popup then
				Popup.ExpiresAt = 0
			end
		end
	end)
	PopupQueueCreate_upvr_result1_2_upvr.CachedOpacities = module_3_upvr.Create(PopupQueueCreate_upvr_result1_2_upvr.Button)
	return PopupQueueCreate_upvr_result1_2_upvr
end
module_upvr_2.PopupQueue.ScreenGui.Create = Create
local function Destroy(arg1) -- Line 495
	--[[ Upvalues[1]:
		[1]: PopupQueueDestroy_upvr (readonly)
	]]
	PopupQueueDestroy_upvr(arg1)
	arg1.ScreenGui:Destroy()
end
module_upvr_2.PopupQueue.ScreenGui.Destroy = Destroy
module_upvr_2.PopupQueue.ScreenGui.IsIdle = function(arg1) -- Line 504, Named "IsIdle"
	local var86 = false
	if arg1.Popup == nil then
		if #arg1.Popups ~= 0 then
			var86 = false
		else
			var86 = true
		end
	end
	if var86 then
		if arg1.SizeTween.Value.X.Offset ~= 0 then
			var86 = false
		else
			var86 = true
		end
	end
	return var86
end
local function Update(arg1, arg2, arg3) -- Line 511
	--[[ Upvalues[7]:
		[1]: PopupQueueUpdate_upvr (readonly)
		[2]: module_2_upvr (readonly)
		[3]: PopupQueueResize_upvr (readonly)
		[4]: tbl_3_upvr (readonly)
		[5]: module_upvr (readonly)
		[6]: module_3_upvr (readonly)
		[7]: module_upvr_2 (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local PopupQueueUpdate_result1 = PopupQueueUpdate_upvr(arg1, arg2, arg3)
	local var92
	if module_2_upvr.TextBoundsFlagCheck(arg1.Flag) or module_2_upvr.EmSizeDirty then
		var92 = module_2_upvr.EmSize
		local PopupQueueResize_upvr_result1_2, PopupQueueResize_upvr_result2_2 = PopupQueueResize_upvr(arg1, var92, tbl_3_upvr.TextSizeEm)
		arg1.TargetSizeX = PopupQueueResize_upvr_result1_2
		arg1.TargetSizeY = PopupQueueResize_upvr_result2_2
		var92 = arg1.TargetSizeX
		arg1.Button.Size = UDim2.fromOffset(var92, arg1.TargetSizeY)
	end
	if arg1.Popup then
		var92 = 1
	else
		var92 = 0
	end
	var92 = module_upvr
	var92 = arg1.SizeTween
	var92.Tween(var92, arg3, UDim2.fromOffset(arg1.TargetSizeX * var92, arg1.TargetSizeY))
	var92 = module_upvr
	var92 = arg1.FadeTween
	if PopupQueueUpdate_result1 then
	else
	end
	var92.Tween(var92, arg3, 0)
	var92 = arg1.SizeTween
	if var92.Dirty then
		var92 = arg1.SizeTween.Value
		arg1.Frame.Size = var92
	end
	var92 = arg1.FadeTween
	if var92.Dirty then
		var92 = module_3_upvr
		var92 = arg1.CachedOpacities
		var92.Apply(var92, arg1.FadeTween.Value)
	end
	if PopupQueueUpdate_result1 and arg1.Popup then
		var92 = module_upvr
		var92 = arg1.FadeTween
		if var92.IsAtTarget(var92, 1) then
			var92 = module_upvr_2.Popup
			var92 = arg1.Popup
			var92.Remove(var92)
		end
	end
end
module_upvr_2.PopupQueue.ScreenGui.Update = Update
tbl_4_upvr[module_upvr_2.PopupQueueType.ScreenGui] = module_upvr_2.PopupQueue.ScreenGui
module_upvr_2.PopupQueue.SurfaceGui.Create = function() -- Line 561, Named "Create"
	--[[ Upvalues[4]:
		[1]: PopupQueueCreate_upvr (readonly)
		[2]: module_upvr_2 (readonly)
		[3]: module_6_upvr (readonly)
		[4]: module_2_upvr (readonly)
	]]
	local PopupQueueCreate_upvr_result1 = PopupQueueCreate_upvr(module_upvr_2.PopupQueueType.SurfaceGui)
	PopupQueueCreate_upvr_result1.AbsoluteSize = Vector2.zero
	PopupQueueCreate_upvr_result1.SurfaceGui = module_6_upvr.I("SurfaceGui", module_2_upvr.Properties.SurfaceGui_Billboard, {
		Parent = module_2_upvr.PlayerGui;
	})
	PopupQueueCreate_upvr_result1.Frame.Parent = PopupQueueCreate_upvr_result1.SurfaceGui
	return PopupQueueCreate_upvr_result1
end
module_upvr_2.PopupQueue.SurfaceGui.Destroy = function(arg1) -- Line 577, Named "Destroy"
	--[[ Upvalues[1]:
		[1]: PopupQueueDestroy_upvr (readonly)
	]]
	PopupQueueDestroy_upvr(arg1)
	arg1.SurfaceGui:Destroy()
end
module_upvr_2.PopupQueue.SurfaceGui.IsIdle = function(arg1) -- Line 236, Named "PopupQueueIsIdle"
	local var37 = false
	if arg1.Popup == nil then
		if #arg1.Popups ~= 0 then
			var37 = false
		else
			var37 = true
		end
	end
	return var37
end
module_upvr_2.PopupQueue.SurfaceGui.Update = function(arg1, arg2, arg3) -- Line 588, Named "Update"
	--[[ Upvalues[5]:
		[1]: module_2_upvr (readonly)
		[2]: tbl_3_upvr (readonly)
		[3]: PopupQueueResize_upvr (readonly)
		[4]: PopupQueueUpdate_upvr (readonly)
		[5]: module_upvr_2 (readonly)
	]]
	local SurfaceGui = arg1.SurfaceGui
	local AbsoluteSize = SurfaceGui.AbsoluteSize
	if arg1.AbsoluteSize == AbsoluteSize then
		SurfaceGui = false
	else
		SurfaceGui = true
	end
	arg1.AbsoluteSize = AbsoluteSize
	if module_2_upvr.TextBoundsFlagCheck(arg1.Flag) or SurfaceGui then
		local PopupQueueResize_upvr_result1_3, PopupQueueResize_upvr_result2 = PopupQueueResize_upvr(arg1, AbsoluteSize.X / tbl_3_upvr.SizeXEm // 1, tbl_3_upvr.TextSizeEm_SurfaceGui)
		arg1.Frame.Size = UDim2.fromOffset(PopupQueueResize_upvr_result1_3, PopupQueueResize_upvr_result2)
	end
	if PopupQueueUpdate_upvr(arg1, arg2, arg3) and arg1.Popup then
		module_upvr_2.Popup.Remove(arg1.Popup)
	end
end
tbl_4_upvr[module_upvr_2.PopupQueueType.SurfaceGui] = module_upvr_2.PopupQueue.SurfaceGui
module_upvr_2.Popup.Add = function(arg1, arg2, arg3) -- Line 623, Named "Add"
	local module = {}
	module.Queue = arg1
	module.Specs = arg2
	module.ExpiresAt = 0
	module.Lifetime = arg3
	arg1.Popups[#arg1.Popups + 1] = module
	return module
end
module_upvr_2.Popup.Remove = function(arg1) -- Line 642, Named "Remove"
	local Queue = arg1.Queue
	if Queue then
		arg1.Queue = nil
		local table_find_result1 = table.find(Queue.Popups, arg1)
		if table_find_result1 then
			table.remove(Queue.Popups, table_find_result1)
		end
		if Queue.Popup == arg1 then
			Queue.Popup = nil
		end
	end
end
function module_upvr_2.RenderStepped(arg1, arg2) -- Line 667
	--[[ Upvalues[2]:
		[1]: tbl_5_upvr (readonly)
		[2]: tbl_4_upvr (readonly)
	]]
	debug.profilebegin("CFR_IconTextPopupUI")
	for i_4, v_3 in tbl_5_upvr.InternalQueue_ByType do
		local var106 = tbl_4_upvr[i_4]
		if not var106.IsIdle(v_3) then
			var106.Update(v_3, arg1, arg2)
		else
			var106.Destroy(v_3)
		end
	end
	debug.profileend()
end
return module_upvr_2