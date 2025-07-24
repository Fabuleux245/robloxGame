-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:06:23
-- Luau version 6, Types version 3
-- Time taken: 0.070814 seconds

local module_23_upvr = {}
local GuiService_upvr_2 = game:GetService("GuiService")
local ReplicatedStorage_2 = game:GetService("ReplicatedStorage")
local StarterGui_upvr = game:GetService("StarterGui")
local UserInputService_upvr = game:GetService("UserInputService")
local LocalPlayer = game:GetService("Players").LocalPlayer
local mouse_upvr = LocalPlayer:GetMouse()
local PlayerGui_upvr_2 = LocalPlayer:WaitForChild("PlayerGui")
local module_16_upvr = require(ReplicatedStorage_2:WaitForChild("Settings"))
local module_upvr = require(ReplicatedStorage_2:WaitForChild("Theme"))
local Modules_2 = ReplicatedStorage_2:WaitForChild("Modules")
local module_2_upvr = require(Modules_2:WaitForChild("InputMode"))
local module_5_upvr = require(Modules_2:WaitForChild("Utility"))
local tbl_18_upvr = {
	CachedCornerDims = {};
	LastCursorProfile = nil;
	MouseCursorUIsPendingDestroy = {};
}
local ScreenGui_upvr = Instance.new("ScreenGui")
ScreenGui_upvr.Name = "UIShared_DeviceGui"
ScreenGui_upvr.DisplayOrder = -2147483648
ScreenGui_upvr.Enabled = true
ScreenGui_upvr.ResetOnSpawn = false
ScreenGui_upvr.ScreenInsets = Enum.ScreenInsets.None
ScreenGui_upvr.Parent = PlayerGui_upvr_2
local any_IsTenFootInterface_result1_upvr_4 = GuiService_upvr_2:IsTenFootInterface()
local var363_upvr = not any_IsTenFootInterface_result1_upvr_4
local CurrentCamera_4 = workspace.CurrentCamera
if not CurrentCamera_4 then
	CurrentCamera_4 = Instance.new("Camera")
end
module_23_upvr.Camera = CurrentCamera_4
module_23_upvr.CameraDirty = true
module_23_upvr.CursorProfileDirty = false
module_23_upvr.DeviceDirty = false
module_23_upvr.DeviceSize = Vector2.zero
module_23_upvr.DevicePosition = Vector2.zero
module_23_upvr.DeviceInsetTopLeft = Vector2.zero
module_23_upvr.DeviceInsetBottomRight = Vector2.zero
module_23_upvr.EmSize = module_16_upvr.UIMaxEmSize
module_23_upvr.EmSizeDirty = false
module_23_upvr.IsSmallScreen = false
module_23_upvr.IsSmallTouchScreen = false
module_23_upvr.ScreenSize = Vector2.zero
module_23_upvr.ScreenInsetTopLeft = Vector2.zero
module_23_upvr.ScreenInsetBottomRight = Vector2.zero
module_23_upvr.SmallScreenSize = 500
module_23_upvr.TopbarInset = Rect.new()
module_23_upvr.ViewportSize = Vector2.zero
module_23_upvr.ViewportSizeDirty = false
module_23_upvr.ViewportSizeWasDirty = false
module_23_upvr.PlayerGui = PlayerGui_upvr_2
module_23_upvr.FirstOrderProperties = {
	BackpackInset = 0;
	BackpackInsetDirty = false;
	BloxBizInset = 0;
	BloxBizInsetDirty = false;
	PlayerListInset = 0;
	PlayerListInsetDirty = false;
}
module_23_upvr.SecondOrderProperties = {
	DropInset = 0;
	DropInsetDirty = false;
	SidebarLeftInset = 0;
	SidebarLeftInsetDirty = false;
	SidebarRightInset = 0;
	SidebarRightInsetDirty = false;
	TopbarUIInset = 0;
	TopbarUIInsetDirty = false;
	TopbarEnergyPosX = 0;
	TopbarEnergyPosY = 0;
}
module_23_upvr.ThirdOrderProperties = {
	LevelPurchaseInset = 0;
	LevelPurchaseInsetDirty = false;
}
local tbl_24 = {
	LayerCollector = {
		ResetOnSpawn = false;
		SelectionGroup = true;
		ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
	};
	ScrollingFrame = {
		AutomaticCanvasSize = Enum.AutomaticSize.None;
		BackgroundTransparency = 1;
		BorderSizePixel = 0;
		ElasticBehavior = Enum.ElasticBehavior.WhenScrollable;
	};
	Text = {
		BackgroundTransparency = 1;
		Text = "";
		TextWrapped = true;
		TextXAlignment = Enum.TextXAlignment.Center;
		TextYAlignment = Enum.TextYAlignment.Center;
	};
}
local any_TableMerge_result1_2 = module_5_upvr.TableMerge(tbl_24.LayerCollector, {
	AlwaysOnTop = false;
	Brightness = 1;
	LightInfluence = 0;
})
module_23_upvr.Properties = {
	Button = {
		Active = true;
		AutoButtonColor = false;
		BorderSizePixel = 0;
		Selectable = true;
		Text = "";
		TextTransparency = 1;
	};
	Centered = {
		AnchorPoint = Vector2.one * 0.5;
		Position = UDim2.fromScale(0.5, 0.5);
	};
	Image = {
		BackgroundTransparency = 1;
		BorderSizePixel = 0;
		Image = "";
		ScaleType = Enum.ScaleType.Fit;
	};
	LayerCollector = tbl_24.LayerCollector;
	ScreenGui = module_5_upvr.TableMerge(tbl_24.LayerCollector, {
		ClipToDeviceSafeArea = false;
		SafeAreaCompatibility = Enum.SafeAreaCompatibility.None;
		ScreenInsets = Enum.ScreenInsets.DeviceSafeInsets;
	});
	ScreenGui_Legacy = module_5_upvr.TableMerge(tbl_24.LayerCollector, {
		SafeAreaCompatibility = Enum.SafeAreaCompatibility.None;
		ScreenInsets = Enum.ScreenInsets.CoreUISafeInsets;
	});
	ScrollingFrame_Horizontal = module_5_upvr.TableMerge(tbl_24.ScrollingFrame, {
		HorizontalScrollBarInset = Enum.ScrollBarInset.Always;
		ScrollingDirection = Enum.ScrollingDirection.X;
		VerticalScrollBarInset = Enum.ScrollBarInset.None;
	});
	ScrollingFrame_Vertical = module_5_upvr.TableMerge(tbl_24.ScrollingFrame, {
		HorizontalScrollBarInset = Enum.ScrollBarInset.None;
		ScrollingDirection = Enum.ScrollingDirection.Y;
		VerticalScrollBarInset = Enum.ScrollBarInset.Always;
	});
	StrokeBorder = {
		ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
		LineJoinMode = Enum.LineJoinMode.Round;
	};
	StrokeText = {
		ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual;
		LineJoinMode = Enum.LineJoinMode.Miter;
	};
	SurfaceGui_FullBright = any_TableMerge_result1_2;
	SurfaceGui_Billboard = module_5_upvr.TableMerge(any_TableMerge_result1_2, {
		ClipsDescendants = false;
		MaxDistance = 0;
		PixelsPerStud = 24;
		SizingMode = Enum.SurfaceGuiSizingMode.PixelsPerStud;
	});
	Text = module_5_upvr.TableMerge(tbl_24.Text, {
		TextScaled = false;
	});
	Text_Scaled = module_5_upvr.TableMerge(tbl_24.Text, {
		TextScaled = true;
	});
}
module_5_upvr.TableFreezeAll(module_23_upvr.Properties)
module_23_upvr.UIExclusivityGroup = {}
module_23_upvr.UIExclusivityMember = {}
module_23_upvr.ExclusiveMode = false
module_23_upvr.ExclusiveModeDisabledCoreGui = {}
local tbl_7_upvr = {}
local tbl_29_upvr = {
	ChatActiveOnSuppression = false;
	ChatToggledWhileSuppressed = false;
	DisabledCoreGui = {};
	DisabledCoreGuiDirty = false;
	DisabledCoreGuiStacks = {};
	InternallyDisabledDirty = false;
	InternallyDisabledGui = {};
}
function module_23_upvr.CoreGuiDisable(arg1) -- Line 286
	--[[ Upvalues[1]:
		[1]: tbl_29_upvr (readonly)
	]]
	local module_9 = {}
	module_9.Type = arg1
	local var390 = tbl_29_upvr.DisabledCoreGuiStacks[arg1]
	if not var390 then
		var390 = {}
		tbl_29_upvr.DisabledCoreGuiStacks[arg1] = var390
		tbl_29_upvr.DisabledCoreGuiDirty = true
	end
	var390[#var390 + 1] = module_9
	return module_9
end
function module_23_upvr.CoreGuiEnable(arg1) -- Line 306
	--[[ Upvalues[1]:
		[1]: tbl_29_upvr (readonly)
	]]
	local Type_2 = arg1.Type
	local var392 = tbl_29_upvr.DisabledCoreGuiStacks[Type_2]
	if var392 then
		local table_find_result1 = table.find(var392, arg1)
		if table_find_result1 then
			table.remove(var392, table_find_result1)
		end
		if #var392 == 0 then
			tbl_29_upvr.DisabledCoreGuiStacks[Type_2] = nil
			tbl_29_upvr.DisabledCoreGuiDirty = true
		end
	end
end
local function var394_upvw() -- Line 327
	--[[ Upvalues[5]:
		[1]: tbl_29_upvr (readonly)
		[2]: StarterGui_upvr (readonly)
		[3]: module_23_upvr (readonly)
		[4]: tbl_7_upvr (readonly)
		[5]: any_IsTenFootInterface_result1_upvr_4 (readonly)
	]]
	if tbl_29_upvr.InternallyDisabledGui[Enum.CoreGuiType.Chat] then
		local pcall_result1_4, pcall_result2_2 = pcall(StarterGui_upvr.GetCore, StarterGui_upvr, "ChatActive")
		if pcall_result1_4 and pcall_result2_2 then
			tbl_29_upvr.ChatToggledWhileSuppressed = true
		end
	end
	if tbl_29_upvr.InternallyDisabledDirty then
		local ExclusiveModeDisabledCoreGui = module_23_upvr.ExclusiveModeDisabledCoreGui
		table.clear(ExclusiveModeDisabledCoreGui)
		for i in tbl_7_upvr do
			if i.SuppressedCoreGui then
				for _, v in i.SuppressedCoreGui do
					ExclusiveModeDisabledCoreGui[v] = true
				end
			end
		end
		local var412 = ExclusiveModeDisabledCoreGui[Enum.CoreGuiType.Chat]
		local var413 = tbl_29_upvr.InternallyDisabledGui[Enum.CoreGuiType.Chat]
		if var412 and not var413 then
			local pcall_result1_3, pcall_result2_3 = pcall(StarterGui_upvr.GetCore, StarterGui_upvr, "ChatActive")
			if pcall_result1_3 then
				tbl_29_upvr.ChatActiveOnSuppression = pcall_result2_3
			end
			pcall(StarterGui_upvr.SetCore, StarterGui_upvr, "ChatActive", false)
			tbl_29_upvr.InternallyDisabledGui[Enum.CoreGuiType.Chat] = true
		elseif not var412 and var413 then
			if tbl_29_upvr.ChatActiveOnSuppression and not tbl_29_upvr.ChatToggledWhileSuppressed then
				pcall(StarterGui_upvr.SetCore, StarterGui_upvr, "ChatActive", true)
			end
			tbl_29_upvr.ChatActiveOnSuppression = false
			tbl_29_upvr.ChatToggledWhileSuppressed = false
			tbl_29_upvr.InternallyDisabledGui[Enum.CoreGuiType.Chat] = nil
		end
		for i_3 in tbl_29_upvr.InternallyDisabledGui do
			if i_3 ~= Enum.CoreGuiType.Chat then
				if not ExclusiveModeDisabledCoreGui[i_3] then
					local var416 = tbl_29_upvr.InternallyDisabledGui[i_3]
					if var416 then
						tbl_29_upvr.InternallyDisabledGui[i_3] = nil
						module_23_upvr.CoreGuiEnable(var416)
					end
				end
			end
		end
		for i_4 in ExclusiveModeDisabledCoreGui do
			if i_4 ~= Enum.CoreGuiType.Chat and not tbl_29_upvr.InternallyDisabledGui[i_4] then
				tbl_29_upvr.InternallyDisabledGui[i_4] = module_23_upvr.CoreGuiDisable(i_4)
			end
		end
		tbl_29_upvr.InternallyDisabledDirty = false
	end
	if tbl_29_upvr.DisabledCoreGuiDirty then
		for i_5 in tbl_29_upvr.DisabledCoreGui do
			if not tbl_29_upvr.DisabledCoreGuiStacks[i_5] then
				StarterGui_upvr:SetCoreGuiEnabled(i_5, true)
				tbl_29_upvr.DisabledCoreGui[i_5] = nil
			end
		end
		for i_6 in tbl_29_upvr.DisabledCoreGuiStacks do
			if not tbl_29_upvr.DisabledCoreGui[i_6] then
				StarterGui_upvr:SetCoreGuiEnabled(i_6, false)
				tbl_29_upvr.DisabledCoreGui[i_6] = true
			end
		end
		tbl_29_upvr.DisabledCoreGuiDirty = false
	end
	if any_IsTenFootInterface_result1_upvr_4 then
		StarterGui_upvr:SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList, false)
	end
end
local function ResolveMouseIconState_upvr(arg1) -- Line 452, Named "ResolveExclusivity"
	--[[ Upvalues[3]:
		[1]: tbl_7_upvr (readonly)
		[2]: module_23_upvr (readonly)
		[3]: tbl_29_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 22 start (CF ANALYSIS FAILED)
	local var417
	if arg1._ResolveSuppressed then
	else
		var417 = arg1._ActiveMembers
		if next(var417) ~= nil then
			var417 = true
			tbl_7_upvr[arg1] = var417
			arg1.Active = true
			var417 = true
			module_23_upvr.ExclusiveMode = var417
			-- KONSTANTWARNING: GOTO [41] #31
		end
		-- KONSTANTERROR: [0] 1. Error Block 22 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [24] 18. Error Block 23 start (CF ANALYSIS FAILED)
		var417 = nil
		tbl_7_upvr[arg1] = var417
		arg1.Active = false
		if next(tbl_7_upvr) == nil then
			var417 = false
		else
			var417 = true
		end
		module_23_upvr.ExclusiveMode = var417
		if arg1.Active ~= arg1.Active and arg1.SuppressedCoreGui then
			var417 = true
			tbl_29_upvr.InternallyDisabledDirty = var417
		end
		-- KONSTANTERROR: [24] 18. Error Block 23 end (CF ANALYSIS FAILED)
	end
end
local function Create() -- Line 479
	return {
		_ActiveMembers = {};
		Active = false;
		Members = {};
	}
end
module_23_upvr.UIExclusivityGroup.Create = Create
local function Destroy(arg1) -- Line 490
	--[[ Upvalues[2]:
		[1]: tbl_7_upvr (readonly)
		[2]: ResolveMouseIconState_upvr (readonly)
	]]
	tbl_7_upvr[arg1] = nil
	for i_7 in arg1.Members do
		i_7.Groups[arg1] = nil
	end
	ResolveMouseIconState_upvr(arg1)
end
module_23_upvr.UIExclusivityGroup.Destroy = Destroy
module_23_upvr.UIExclusivityGroup.Deactivate = function(arg1) -- Line 503, Named "Deactivate"
	--[[ Upvalues[3]:
		[1]: tbl_7_upvr (readonly)
		[2]: module_23_upvr (readonly)
		[3]: ResolveMouseIconState_upvr (readonly)
	]]
	if tbl_7_upvr[arg1] then
		arg1._ResolveSuppressed = true
		for i_8 in arg1._ActiveMembers do
			module_23_upvr.UIExclusivityMember.SetActive(i_8, false)
		end
		arg1._ResolveSuppressed = false
		ResolveMouseIconState_upvr(arg1)
	end
end
local function HasExclusivity(arg1, arg2) -- Line 520
	--[[ Upvalues[1]:
		[1]: tbl_7_upvr (readonly)
	]]
	local var424
	if not var424 then
		if tbl_7_upvr[arg1] ~= true then
			var424 = false
		else
			var424 = true
		end
	end
	if var424 then
		local IgnoredGroups_5 = arg1.IgnoredGroups
		for i_9 in tbl_7_upvr do
			if i_9 ~= arg1 and (not IgnoredGroups_5 or not IgnoredGroups_5[i_9]) then
				var424 = false
				return var424
			end
		end
	end
	return var424
end
module_23_upvr.UIExclusivityGroup.HasExclusivity = HasExclusivity
module_23_upvr.UIExclusivityGroup.IgnoredGroupManage = function(arg1, arg2, arg3) -- Line 549, Named "IgnoredGroupManage"
	if arg3 then
		local IgnoredGroups_4 = arg1.IgnoredGroups
		if not IgnoredGroups_4 then
			IgnoredGroups_4 = {}
			arg1.IgnoredGroups = IgnoredGroups_4
		end
		assert(IgnoredGroups_4)[arg2] = true
	elseif arg1.IgnoredGroups then
		arg1.IgnoredGroups[arg2] = nil
		if next(arg1.IgnoredGroups) == nil then
			arg1.IgnoredGroups = nil
		end
	end
end
local function Create(...) -- Line 578
	--[[ Upvalues[1]:
		[1]: module_23_upvr (readonly)
	]]
	local module_7 = {
		Active = false;
		Groups = {};
	}
	for _, v_2 in {...} do
		module_23_upvr.UIExclusivityMember.Assign(module_7, v_2)
	end
	return module_7
end
module_23_upvr.UIExclusivityMember.Create = Create
local function Destroy(arg1) -- Line 596
	--[[ Upvalues[1]:
		[1]: module_23_upvr (readonly)
	]]
	module_23_upvr.UIExclusivityMember.SetActive(arg1, false)
	for i_11 in arg1.Groups do
		i_11.Members[arg1] = nil
	end
end
module_23_upvr.UIExclusivityMember.Destroy = Destroy
local function GetMouseIconEnabled_upvr(arg1, arg2) -- Line 607, Named "UIExclusivityMember_ActivateGroup"
	--[[ Upvalues[2]:
		[1]: module_23_upvr (readonly)
		[2]: ResolveMouseIconState_upvr (readonly)
	]]
	if not arg2._ActiveMembers[arg1] then
		if arg2.MemberExclusivity then
			module_23_upvr.UIExclusivityGroup.Deactivate(arg2)
		end
		arg2._ActiveMembers[arg1] = true
		ResolveMouseIconState_upvr(arg2)
	end
end
local function UIExclusivityMember_DectivateGroup_upvr(arg1, arg2) -- Line 623, Named "UIExclusivityMember_DectivateGroup"
	--[[ Upvalues[1]:
		[1]: ResolveMouseIconState_upvr (readonly)
	]]
	if arg2._ActiveMembers[arg1] then
		arg2._ActiveMembers[arg1] = nil
		ResolveMouseIconState_upvr(arg2)
	end
end
module_23_upvr.UIExclusivityMember.Assign = function(arg1, arg2) -- Line 634, Named "Assign"
	--[[ Upvalues[2]:
		[1]: module_23_upvr (readonly)
		[2]: ResolveMouseIconState_upvr (readonly)
	]]
	arg1.Groups[arg2] = true
	if not arg2.Members[arg1] then
		arg2.Members[arg1] = true
		if arg1.Active and not arg2._ActiveMembers[arg1] then
			if arg2.MemberExclusivity then
				module_23_upvr.UIExclusivityGroup.Deactivate(arg2)
			end
			arg2._ActiveMembers[arg1] = true
			ResolveMouseIconState_upvr(arg2)
		end
	end
end
module_23_upvr.UIExclusivityMember.Unassign = function(arg1, arg2) -- Line 650, Named "Unassign"
	--[[ Upvalues[1]:
		[1]: ResolveMouseIconState_upvr (readonly)
	]]
	arg1.Groups[arg2] = nil
	if arg2.Members[arg1] then
		arg2.Members[arg1] = nil
		if arg2._ActiveMembers[arg1] then
			arg2._ActiveMembers[arg1] = nil
			ResolveMouseIconState_upvr(arg2)
		end
	end
end
local function SetActive(arg1, arg2) -- Line 664
	--[[ Upvalues[2]:
		[1]: GetMouseIconEnabled_upvr (readonly)
		[2]: UIExclusivityMember_DectivateGroup_upvr (readonly)
	]]
	local var436
	if arg2 ~= var436 then
		arg1.Active = arg2
		if arg2 then
			var436 = GetMouseIconEnabled_upvr
		else
			var436 = UIExclusivityMember_DectivateGroup_upvr
		end
		for i_12 in arg1.Groups do
			var436(arg1, i_12)
		end
	end
end
module_23_upvr.UIExclusivityMember.SetActive = SetActive
module_23_upvr.UIExclusivityMember.AnyExclusive = function(arg1) -- Line 684, Named "AnyExclusive"
	--[[ Upvalues[1]:
		[1]: module_23_upvr (readonly)
	]]
	local var439
	for i_13 in arg1.Groups do
		if module_23_upvr.UIExclusivityGroup.HasExclusivity(i_13) then
			var439 = true
			return var439
		end
	end
	return var439
end
module_23_upvr.UIExclusivityMember.HasExclusivity = function(arg1) -- Line 700, Named "HasExclusivity"
	--[[ Upvalues[1]:
		[1]: module_23_upvr (readonly)
	]]
	local var442
	for i_14 in arg1.Groups do
		if not module_23_upvr.UIExclusivityGroup.HasExclusivity(i_14) then
			var442 = false
			return var442
		end
	end
	return var442
end
tbl_7_upvr = {}
module_23_upvr.MouseIconState = tbl_7_upvr
tbl_7_upvr = {}
local DeviceToViewport_upvr = tbl_7_upvr
tbl_29_upvr = false
DeviceToViewport_upvr.Dirty = tbl_29_upvr
tbl_29_upvr = nil
DeviceToViewport_upvr.IconConnection = tbl_29_upvr
tbl_29_upvr = nil
DeviceToViewport_upvr.CurrentCursor = tbl_29_upvr
tbl_29_upvr = true
DeviceToViewport_upvr.MouseIconEnabled = tbl_29_upvr
tbl_29_upvr = {}
DeviceToViewport_upvr.StateStack = tbl_29_upvr
function tbl_29_upvr(arg1) -- Line 751, Named "Create"
	local module_14 = {
		Active = false;
		DisablesIcon = false;
	}
	module_14.Profile = arg1
	return module_14
end
ResolveMouseIconState_upvr = module_23_upvr.MouseIconState
ResolveMouseIconState_upvr.Create = tbl_29_upvr
function tbl_29_upvr(arg1, arg2) -- Line 764, Named "SetActive"
	--[[ Upvalues[1]:
		[1]: DeviceToViewport_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 15 start (CF ANALYSIS FAILED)
	if arg2 ~= true then
	else
	end
	local Active_2 = arg1.Active
	-- KONSTANTERROR: [0] 1. Error Block 15 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [22] 16. Error Block 7 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [22] 16. Error Block 7 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [34] 25. Error Block 12 start (CF ANALYSIS FAILED)
	if Active_2 then
		table.remove(DeviceToViewport_upvr.StateStack, Active_2)
	end
	-- KONSTANTERROR: [34] 25. Error Block 12 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [42] 31. Error Block 11 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [42] 31. Error Block 11 end (CF ANALYSIS FAILED)
end
ResolveMouseIconState_upvr = module_23_upvr.MouseIconState
ResolveMouseIconState_upvr.SetActive = tbl_29_upvr
function tbl_29_upvr(arg1, arg2) -- Line 792, Named "SetDisablesIcon"
	--[[ Upvalues[1]:
		[1]: DeviceToViewport_upvr (readonly)
	]]
	if arg2 ~= true then
		local _ = false
		-- KONSTANTWARNING: Skipped task `defvar` above
	else
	end
	if arg1.DisablesIcon ~= true then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		arg1.DisablesIcon = true
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if true ~= DeviceToViewport_upvr.MouseIconEnabled then
			DeviceToViewport_upvr.Dirty = true
		end
	end
end
ResolveMouseIconState_upvr = module_23_upvr.MouseIconState
ResolveMouseIconState_upvr.SetDisablesIcon = tbl_29_upvr
function tbl_29_upvr(arg1, arg2) -- Line 809, Named "SetProfile"
	--[[ Upvalues[1]:
		[1]: DeviceToViewport_upvr (readonly)
	]]
	if arg1.Profile ~= arg2 then
		if DeviceToViewport_upvr.CurrentCursor == arg1.Profile then
			DeviceToViewport_upvr.Dirty = true
		end
		arg1.Profile = arg2
	end
end
ResolveMouseIconState_upvr = module_23_upvr.MouseIconState
ResolveMouseIconState_upvr.SetProfile = tbl_29_upvr
function tbl_29_upvr() -- Line 824, Named "MonitorMouseIcon"
	--[[ Upvalues[1]:
		[1]: DeviceToViewport_upvr (readonly)
	]]
	DeviceToViewport_upvr.Dirty = true
end
local var447_upvr = tbl_29_upvr
UIExclusivityMember_DectivateGroup_upvr = "Icon"
ResolveMouseIconState_upvr = mouse_upvr:GetPropertyChangedSignal(UIExclusivityMember_DectivateGroup_upvr)
UIExclusivityMember_DectivateGroup_upvr = var447_upvr
ResolveMouseIconState_upvr = ResolveMouseIconState_upvr:Connect(UIExclusivityMember_DectivateGroup_upvr)
DeviceToViewport_upvr.IconConnection = ResolveMouseIconState_upvr
function ResolveMouseIconState_upvr() -- Line 830, Named "ResolveMouseIconState"
	--[[ Upvalues[4]:
		[1]: DeviceToViewport_upvr (readonly)
		[2]: mouse_upvr (readonly)
		[3]: var447_upvr (readonly)
		[4]: UserInputService_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var453
	if var453 then
		var453 = DeviceToViewport_upvr.IconConnection
		if var453 then
			var453 = DeviceToViewport_upvr.IconConnection:Disconnect
			var453()
		end
		var453 = nil
		for i_15 = #DeviceToViewport_upvr.StateStack, 1, -1 do
			local var454 = DeviceToViewport_upvr.StateStack[i_15]
			local var455 = var453
			if not var455 then
				var455 = var454.Profile
			end
			var453 = var455
			var455 = true
			local var456 = var455
			if var456 then
				var456 = not var454.DisablesIcon
			end
		end
		if DeviceToViewport_upvr.CurrentCursor == var453 then
		else
		end
		DeviceToViewport_upvr.CurrentCursor = var453
		DeviceToViewport_upvr.MouseIconEnabled = var456
		if var453 then
		else
		end
		mouse_upvr.Icon = ""
		DeviceToViewport_upvr.IconConnection = mouse_upvr:GetPropertyChangedSignal("Icon"):Connect(var447_upvr)
		DeviceToViewport_upvr.Dirty = false
	end
	if UserInputService_upvr.MouseIconEnabled ~= DeviceToViewport_upvr.MouseIconEnabled then
		UserInputService_upvr.MouseIconEnabled = DeviceToViewport_upvr.MouseIconEnabled
	end
end
local CachedTextBoundsAnyPending_upvr = ResolveMouseIconState_upvr
function GetMouseIconEnabled_upvr() -- Line 866, Named "GetCurrentCursor"
	--[[ Upvalues[2]:
		[1]: DeviceToViewport_upvr (readonly)
		[2]: CachedTextBoundsAnyPending_upvr (readonly)
	]]
	if DeviceToViewport_upvr.Dirty then
		CachedTextBoundsAnyPending_upvr()
	end
	return DeviceToViewport_upvr.CurrentCursor
end
UIExclusivityMember_DectivateGroup_upvr = module_23_upvr.MouseIconState
UIExclusivityMember_DectivateGroup_upvr.GetCurrentCursor = GetMouseIconEnabled_upvr
function GetMouseIconEnabled_upvr() -- Line 875, Named "GetMouseIconEnabled"
	--[[ Upvalues[2]:
		[1]: DeviceToViewport_upvr (readonly)
		[2]: CachedTextBoundsAnyPending_upvr (readonly)
	]]
	if DeviceToViewport_upvr.Dirty then
		CachedTextBoundsAnyPending_upvr()
	end
	return DeviceToViewport_upvr.MouseIconEnabled
end
UIExclusivityMember_DectivateGroup_upvr = module_23_upvr.MouseIconState
UIExclusivityMember_DectivateGroup_upvr.GetMouseIconEnabled = GetMouseIconEnabled_upvr
GetMouseIconEnabled_upvr = module_16_upvr.UISpoofDefaultCursor
local DeferredSetCursorProfile
if GetMouseIconEnabled_upvr then
	GetMouseIconEnabled_upvr = require
	UIExclusivityMember_DectivateGroup_upvr = Modules_2:WaitForChild("ClientData")
	GetMouseIconEnabled_upvr = GetMouseIconEnabled_upvr(UIExclusivityMember_DectivateGroup_upvr)
	local MakeBoundsQuery_upvr = GetMouseIconEnabled_upvr
	UIExclusivityMember_DectivateGroup_upvr = module_23_upvr.MouseIconState.Create()
	local MakeLabelQuery_upvr = UIExclusivityMember_DectivateGroup_upvr
	module_23_upvr.MouseIconState.SetActive(MakeLabelQuery_upvr, true)
	local tbl_8_upvr = {
		Connections = {};
		ToolEquipped = false;
		UseGamepadIcons = true;
		UpdateIdle = true;
	}
	local any_IsTenFootInterface_result1_upvr_2 = GuiService_upvr_2:IsTenFootInterface()
	local function SetCursorProfile_upvr() -- Line 907, Named "SetCursorProfile"
		--[[ Upvalues[6]:
			[1]: tbl_8_upvr (readonly)
			[2]: MakeBoundsQuery_upvr (readonly)
			[3]: module_upvr (readonly)
			[4]: any_IsTenFootInterface_result1_upvr_2 (readonly)
			[5]: module_23_upvr (readonly)
			[6]: MakeLabelQuery_upvr (readonly)
		]]
		tbl_8_upvr.UpdateIdle = true
		local var462
		if MakeBoundsQuery_upvr.Flags.MouseLockActive then
			var462 = module_upvr.Cursors.Mouse_ShiftLock
		elseif tbl_8_upvr.UseGamepadIcons then
			if any_IsTenFootInterface_result1_upvr_2 then
				if tbl_8_upvr.ToolEquipped then
					var462 = module_upvr.Cursors.Gamepad_Circle2x
				else
					var462 = module_upvr.Cursors.Gamepad_Dot2x
				end
			elseif tbl_8_upvr.ToolEquipped then
				var462 = module_upvr.Cursors.Gamepad_Circle
			else
				var462 = module_upvr.Cursors.Gamepad_Dot
			end
		elseif tbl_8_upvr.ToolEquipped then
			var462 = module_upvr.Cursors.Mouse_Pointer
		else
			var462 = module_upvr.Cursors.Mouse_Cursor
		end
		module_23_upvr.MouseIconState.SetProfile(MakeLabelQuery_upvr, var462)
	end
	function DeferredSetCursorProfile() -- Line 939
		--[[ Upvalues[2]:
			[1]: tbl_8_upvr (readonly)
			[2]: SetCursorProfile_upvr (readonly)
		]]
		if tbl_8_upvr.UpdateIdle then
			tbl_8_upvr.UpdateIdle = false
			task.defer(SetCursorProfile_upvr)
		end
	end
	MakeBoundsQuery_upvr.Signals.MouseLockActiveChanged:Connect(DeferredSetCursorProfile)
	module_2_upvr.ModeChanged:Connect(function(arg1) -- Line 948, Named "SetUseGamepadIcons"
		--[[ Upvalues[3]:
			[1]: module_2_upvr (readonly)
			[2]: tbl_8_upvr (readonly)
			[3]: SetCursorProfile_upvr (readonly)
		]]
		local var463
		if arg1 ~= module_2_upvr.Gamepad then
			var463 = false
		else
			var463 = true
		end
		if tbl_8_upvr.UseGamepadIcons ~= var463 then
			tbl_8_upvr.UseGamepadIcons = var463
			if tbl_8_upvr.UpdateIdle then
				tbl_8_upvr.UpdateIdle = false
				task.defer(SetCursorProfile_upvr)
			end
		end
	end)
	if module_2_upvr.Mode ~= module_2_upvr.Gamepad then
		DeferredSetCursorProfile = false
	else
		DeferredSetCursorProfile = true
	end
	if tbl_8_upvr.UseGamepadIcons ~= DeferredSetCursorProfile then
		tbl_8_upvr.UseGamepadIcons = DeferredSetCursorProfile
		if tbl_8_upvr.UpdateIdle then
			tbl_8_upvr.UpdateIdle = false
			task.defer(SetCursorProfile_upvr)
		end
	end
	local function CharacterAdded(arg1) -- Line 962
		--[[ Upvalues[2]:
			[1]: tbl_8_upvr (readonly)
			[2]: SetCursorProfile_upvr (readonly)
		]]
		local _
		for _, v_3 in tbl_8_upvr.Connections do
			v_3:Disconnect()
		end
		table.clear(tbl_8_upvr.Connections)
		local var469_upvw = true
		local function SetToolEquipped_upvr() -- Line 971, Named "SetToolEquipped"
			--[[ Upvalues[4]:
				[1]: var469_upvw (read and write)
				[2]: arg1 (readonly)
				[3]: tbl_8_upvr (copied, readonly)
				[4]: SetCursorProfile_upvr (copied, readonly)
			]]
			local var470 = true
			var469_upvw = var470
			if arg1:FindFirstChildWhichIsA("Tool") == nil then
				var470 = false
			else
				var470 = true
			end
			if tbl_8_upvr.ToolEquipped ~= var470 then
				tbl_8_upvr.ToolEquipped = var470
				if tbl_8_upvr.UpdateIdle then
					tbl_8_upvr.UpdateIdle = false
					task.defer(SetCursorProfile_upvr)
				end
			end
		end
		local function DeferredSetToolEquipped() -- Line 983
			--[[ Upvalues[2]:
				[1]: var469_upvw (read and write)
				[2]: SetToolEquipped_upvr (readonly)
			]]
			if var469_upvw then
				var469_upvw = false
				task.defer(SetToolEquipped_upvr)
			end
		end
		tbl_8_upvr.Connections[#tbl_8_upvr.Connections + 1] = arg1.ChildAdded:Connect(DeferredSetToolEquipped)
		tbl_8_upvr.Connections[#tbl_8_upvr.Connections + 1] = arg1.ChildRemoved:Connect(DeferredSetToolEquipped)
		var469_upvw = true
		if arg1:FindFirstChildWhichIsA("Tool") == nil then
		else
		end
		if tbl_8_upvr.ToolEquipped ~= true then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			tbl_8_upvr.ToolEquipped = true
			if tbl_8_upvr.UpdateIdle then
				tbl_8_upvr.UpdateIdle = false
				task.defer(SetCursorProfile_upvr)
			end
		end
	end
	DeferredSetCursorProfile = LocalPlayer.CharacterAdded:Connect
	DeferredSetCursorProfile(CharacterAdded)
	DeferredSetCursorProfile = LocalPlayer.Character
	if DeferredSetCursorProfile then
		DeferredSetCursorProfile = CharacterAdded
		DeferredSetCursorProfile(LocalPlayer.Character)
	end
end
DeviceToViewport_upvr = {}
module_23_upvr.MouseIconUI = DeviceToViewport_upvr
function DeviceToViewport_upvr() -- Line 1017, Named "Create"
	--[[ Upvalues[3]:
		[1]: module_5_upvr (readonly)
		[2]: module_23_upvr (readonly)
		[3]: PlayerGui_upvr_2 (readonly)
	]]
	local module_24 = {
		Dirty = true;
		ScreenGui = module_5_upvr.I("ScreenGui", module_23_upvr.Properties.ScreenGui, {
			Name = "MouseIconUI";
			DisplayOrder = 2147483647;
			Parent = PlayerGui_upvr_2;
		});
		Icon = module_5_upvr.I("ImageLabel", {
			Parent = module_24.ScreenGui;
		});
	}
	module_23_upvr.MouseIconUI.Update(module_24)
	return module_24
end
var447_upvr = module_23_upvr.MouseIconUI
var447_upvr.Create = DeviceToViewport_upvr
function DeviceToViewport_upvr(arg1) -- Line 1038, Named "Destroy"
	--[[ Upvalues[1]:
		[1]: tbl_18_upvr (readonly)
	]]
	tbl_18_upvr.MouseCursorUIsPendingDestroy[#tbl_18_upvr.MouseCursorUIsPendingDestroy + 1] = arg1
end
var447_upvr = module_23_upvr.MouseIconUI
var447_upvr.Destroy = DeviceToViewport_upvr
function DeviceToViewport_upvr(arg1) -- Line 1049, Named "Update"
	--[[ Upvalues[4]:
		[1]: module_2_upvr (readonly)
		[2]: module_23_upvr (readonly)
		[3]: tbl_18_upvr (readonly)
		[4]: module_upvr (readonly)
	]]
	local any_GetViewportMouse_result1 = module_2_upvr.GetViewportMouse()
	arg1.Icon.Position = UDim2.fromOffset(math.round(any_GetViewportMouse_result1.X), math.round(any_GetViewportMouse_result1.Y))
	if module_23_upvr.CursorProfileDirty or arg1.Dirty then
		if tbl_18_upvr.LastCursorProfile then
			module_upvr.ApplyCursorProfile(arg1.Icon, tbl_18_upvr.LastCursorProfile)
		else
			arg1.Icon.Visible = false
		end
		arg1.Dirty = false
	end
end
var447_upvr = module_23_upvr.MouseIconUI
var447_upvr.Update = DeviceToViewport_upvr
function DeviceToViewport_upvr() -- Line 1079, Named "PlayerListIsEnabled"
	--[[ Upvalues[3]:
		[1]: module_23_upvr (readonly)
		[2]: var363_upvr (readonly)
		[3]: StarterGui_upvr (readonly)
	]]
	local var475 = not module_23_upvr.IsSmallTouchScreen
	if var475 then
		var475 = var363_upvr
		if var475 then
			var475 = StarterGui_upvr:GetCoreGuiEnabled(Enum.CoreGuiType.PlayerList)
		end
	end
	return var475
end
module_23_upvr.PlayerListIsEnabled = DeviceToViewport_upvr
DeviceToViewport_upvr = {}
module_23_upvr.Convert = DeviceToViewport_upvr
function DeviceToViewport_upvr(arg1) -- Line 1095, Named "ScreenToViewport"
	--[[ Upvalues[1]:
		[1]: module_23_upvr (readonly)
	]]
	return arg1 + module_23_upvr.ScreenInsetTopLeft
end
var447_upvr = module_23_upvr.Convert
var447_upvr.ScreenToViewport = DeviceToViewport_upvr
function DeviceToViewport_upvr(arg1) -- Line 1099, Named "ScreenToDevice"
	--[[ Upvalues[1]:
		[1]: module_23_upvr (readonly)
	]]
	return arg1 - module_23_upvr.DevicePosition
end
var447_upvr = module_23_upvr.Convert
var447_upvr.ScreenToDevice = DeviceToViewport_upvr
function DeviceToViewport_upvr(arg1) -- Line 1103, Named "ViewportToScreen"
	--[[ Upvalues[1]:
		[1]: module_23_upvr (readonly)
	]]
	return arg1 - module_23_upvr.ScreenInsetTopLeft
end
var447_upvr = module_23_upvr.Convert
var447_upvr.ViewportToScreen = DeviceToViewport_upvr
function DeviceToViewport_upvr(arg1) -- Line 1107, Named "ViewportToDevice"
	--[[ Upvalues[1]:
		[1]: module_23_upvr (readonly)
	]]
	return arg1 - module_23_upvr.DeviceInsetTopLeft
end
var447_upvr = module_23_upvr.Convert
var447_upvr.ViewportToDevice = DeviceToViewport_upvr
function DeviceToViewport_upvr(arg1) -- Line 1111, Named "DeviceToScreen"
	--[[ Upvalues[1]:
		[1]: module_23_upvr (readonly)
	]]
	return arg1 + module_23_upvr.DevicePosition
end
var447_upvr = module_23_upvr.Convert
var447_upvr.DeviceToScreen = DeviceToViewport_upvr
function DeviceToViewport_upvr(arg1) -- Line 1115, Named "DeviceToViewport"
	--[[ Upvalues[1]:
		[1]: module_23_upvr (readonly)
	]]
	return arg1 + module_23_upvr.DeviceInsetTopLeft
end
var447_upvr = module_23_upvr.Convert
var447_upvr.DeviceToViewport = DeviceToViewport_upvr
DeviceToViewport_upvr = Instance.new
var447_upvr = "TextLabel"
DeviceToViewport_upvr = DeviceToViewport_upvr(var447_upvr)
local var512_upvr = DeviceToViewport_upvr
var447_upvr = Vector2.one
var512_upvr.AnchorPoint = var447_upvr
var447_upvr = UDim2.fromScale
CachedTextBoundsAnyPending_upvr = -1
MakeBoundsQuery_upvr = -1
var447_upvr = var447_upvr(CachedTextBoundsAnyPending_upvr, MakeBoundsQuery_upvr)
var512_upvr.Position = var447_upvr
var447_upvr = true
var512_upvr.RichText = var447_upvr
var447_upvr = false
var512_upvr.TextScaled = var447_upvr
var447_upvr = true
var512_upvr.TextWrapped = var447_upvr
var512_upvr.Parent = ScreenGui_upvr
var447_upvr = var512_upvr:Clone()
local var477_upvr = var447_upvr
CachedTextBoundsAnyPending_upvr = false
var477_upvr.RichText = CachedTextBoundsAnyPending_upvr
var477_upvr.Parent = ScreenGui_upvr
function CachedTextBoundsAnyPending_upvr(arg1, arg2, arg3) -- Line 1159, Named "CachedTextBoundsCreate"
	--[[ Upvalues[1]:
		[1]: var477_upvr (readonly)
	]]
	local var478 = false
	local var479
	if typeof(arg1) == "Font" then
		var477_upvr.FontFace = arg1
		if var477_upvr.Font ~= Enum.Font.Unknown then
			var478 = false
		else
			var478 = true
		end
		var479 = arg1
	else
		var479 = Font.fromEnum(arg1)
	end
	local module = {
		Font = var479;
		LineHeight = arg3 or 1;
	}
	local var481 = var478
	if not var481 then
		if arg2 ~= true then
			var481 = false
		else
			var481 = true
		end
	end
	module.RichText = var481
	module.TextSize = 0
	module.Text = ""
	module.Width = math.huge
	module.X = 0
	module.Y = 0
	return module
end
module_23_upvr.CachedTextBoundsCreate = CachedTextBoundsAnyPending_upvr
function CachedTextBoundsAnyPending_upvr(arg1) -- Line 1192, Named "CachedTextBounds_FromBounds"
	--[[ Upvalues[1]:
		[1]: module_23_upvr (readonly)
	]]
	return module_23_upvr.CachedTextBoundsCreate(arg1.Font, arg1.RichText, arg1.LineHeight)
end
module_23_upvr.CachedTextBounds_FromBounds = CachedTextBoundsAnyPending_upvr
function CachedTextBoundsAnyPending_upvr(arg1) -- Line 1202, Named "CachedTextBounds_FromLabel"
	--[[ Upvalues[1]:
		[1]: module_23_upvr (readonly)
	]]
	local Font = arg1.Font
	if Font == Enum.Font.Unknown then
		Font = arg1.FontFace
	end
	return module_23_upvr.CachedTextBoundsCreate(Font, arg1.RichText, arg1.LineHeight)
end
module_23_upvr.CachedTextBounds_FromLabel = CachedTextBoundsAnyPending_upvr
function CachedTextBoundsAnyPending_upvr(...) -- Line 1214, Named "CachedTextBoundsAnyPending"
	local var488
	for _, v_4 in {...} do
		if v_4._QueryBounds then
			var488 = true
			return var488
		end
	end
	return var488
end
module_23_upvr.CachedTextBoundsAnyPending = CachedTextBoundsAnyPending_upvr
CachedTextBoundsAnyPending_upvr = Instance.new
MakeBoundsQuery_upvr = "GetTextBoundsParams"
CachedTextBoundsAnyPending_upvr = CachedTextBoundsAnyPending_upvr(MakeBoundsQuery_upvr)
local TextService_upvr_2 = game:GetService("TextService")
function MakeBoundsQuery_upvr(arg1) -- Line 1232, Named "MakeBoundsQuery"
	--[[ Upvalues[2]:
		[1]: CachedTextBoundsAnyPending_upvr (readonly)
		[2]: TextService_upvr_2 (readonly)
	]]
	local tbl_52 = {}
	arg1._QueryToken = tbl_52
	arg1._QueryProcessed = true
	CachedTextBoundsAnyPending_upvr.Font = arg1.Font
	CachedTextBoundsAnyPending_upvr.RichText = arg1.RichText
	CachedTextBoundsAnyPending_upvr.Size = arg1.TextSize
	CachedTextBoundsAnyPending_upvr.Text = arg1.Text
	CachedTextBoundsAnyPending_upvr.Width = arg1.Width
	if arg1._QueryToken == tbl_52 then
		arg1._QueryToken = nil
		arg1._QueryBounds = TextService_upvr_2:GetTextBoundsAsync(CachedTextBoundsAnyPending_upvr)
		if not arg1._QueryProcessed and arg1.Flag then
			arg1.Flag.Dirty = true
		end
	end
end
function MakeLabelQuery_upvr(arg1, arg2) -- Line 1262, Named "MakeLabelQuery"
	arg2.FontFace = arg1.Font
	arg2.Size = UDim2.fromOffset(arg1.Width, 2147483647)
	arg2.Text = arg1.Text
	arg2.TextSize = arg1.TextSize
	arg1._QueryBounds = arg2.TextBounds
end
function tbl_8_upvr(arg1, arg2, arg3, arg4) -- Line 1276, Named "CachedTextBoundsUpdate"
	--[[ Upvalues[4]:
		[1]: module_5_upvr (readonly)
		[2]: MakeBoundsQuery_upvr (readonly)
		[3]: var512_upvr (readonly)
		[4]: var477_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	if arg2 and arg2 ~= arg1.Text then
		arg1.Text = arg2
		local var491
	end
	if arg3 and arg3 ~= arg1.TextSize then
		var491 = true
		arg1.TextSize = arg3 // 1
	end
	if arg4 then
		if arg4 ~= arg1.Width then
			local clamped_2 = math.clamp(arg4, 0, 2147483647)
			local var493 = var491
			if not var493 then
				if arg1.Width == clamped_2 then
					var493 = false
				else
					var493 = true
				end
			end
			var491 = var493
			arg1.Width = clamped_2
		end
	end
	if var491 then
		arg1._QueryBounds = nil
		arg1._QueryToken = nil
		module_5_upvr.RunFunction(MakeBoundsQuery_upvr, arg1)
		arg1._QueryProcessed = nil
		local _QueryBounds_6 = arg1._QueryBounds
		if _QueryBounds_6 == nil then
			if arg1.RichText then
				_QueryBounds_6 = var512_upvr
			else
				_QueryBounds_6 = var477_upvr
			end
			_QueryBounds_6.FontFace = arg1.Font
			_QueryBounds_6.Size = UDim2.fromOffset(arg1.Width, 2147483647)
			_QueryBounds_6.Text = arg1.Text
			_QueryBounds_6.TextSize = arg1.TextSize
			arg1._QueryBounds = _QueryBounds_6.TextBounds
		end
	end
	local _QueryBounds_2 = arg1._QueryBounds
	if _QueryBounds_2 then
		arg1._QueryBounds = nil
		local ceiled_2 = math.ceil(_QueryBounds_2.X)
		local var497
		if arg1.LineHeight ~= 1 and var497 ~= arg1.TextSize then
			var497 = arg1.TextSize + arg1.TextSize * arg1.LineHeight // 1 * (var497 // arg1.TextSize - 1)
		end
		local var498 = true
		if arg1.X == ceiled_2 then
			if arg1.Y == var497 then
				var498 = false
			else
				var498 = true
			end
		end
		local var499 = var498
		if var499 then
			arg1.X = ceiled_2
			arg1.Y = var497
		end
	end
	return var499
end
module_23_upvr.CachedTextBoundsUpdate = tbl_8_upvr
function tbl_8_upvr(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 1361, Named "CachedTextBoundsConform"
	--[[ Upvalues[1]:
		[1]: module_23_upvr (readonly)
	]]
	local any_CachedTextBoundsUpdate_result1_2 = module_23_upvr.CachedTextBoundsUpdate(arg1, arg3, arg4, arg5)
	if any_CachedTextBoundsUpdate_result1_2 then
		local Y_4 = arg1.Y
		if arg6 then
			local var502 = false
			local var503 = arg1.TextSize + arg1.TextSize * arg1.LineHeight // 1 * math.max(arg6 - 1, 0)
			if var503 < Y_4 then
				var502 = true
				Y_4 = var503
			end
			arg2.TextScaled = var502
			arg1.Y = Y_4
		end
		arg2.TextSize = arg1.TextSize
		arg2.Size = UDim2.fromOffset(arg1.X, Y_4)
	end
	return any_CachedTextBoundsUpdate_result1_2
end
module_23_upvr.CachedTextBoundsConform = tbl_8_upvr
function tbl_8_upvr(...) -- Line 1409, Named "TextBoundsFlagCreate"
	local module_19 = {
		Dirty = true;
	}
	for _, v_5 in {...} do
		v_5.Flag = module_19
		if v_5._QueryBounds then
			module_19.Dirty = true
		end
	end
	return module_19
end
module_23_upvr.TextBoundsFlagCreate = tbl_8_upvr
function tbl_8_upvr(arg1) -- Line 1436, Named "TextBoundsFlagCheck"
	arg1.Dirty = false
	return arg1.Dirty
end
module_23_upvr.TextBoundsFlagCheck = tbl_8_upvr
function var512_upvr(arg1) -- Line 1456, Named "ComputeCornerDims"
	--[[ Upvalues[2]:
		[1]: module_23_upvr (readonly)
		[2]: tbl_18_upvr (readonly)
	]]
	local var508 = module_23_upvr.EmSize * arg1
	local var509 = tbl_18_upvr.CachedCornerDims[arg1]
	if not var509 then
		var509 = {
			Radius = var508;
			RadiusUDim = UDim.new(0, var508);
		}
		tbl_18_upvr.CachedCornerDims[arg1] = var509
	end
	return var509
end
module_23_upvr.ComputeCornerDims = var512_upvr
var512_upvr = nil
var477_upvr = {}
local var521_upvr = var477_upvr
CachedTextBoundsAnyPending_upvr = module_upvr.CornerRadiusBackground
var521_upvr.Background = CachedTextBoundsAnyPending_upvr
CachedTextBoundsAnyPending_upvr = module_upvr.CornerRadiusBackgroundWide
var521_upvr.BackgroundWide = CachedTextBoundsAnyPending_upvr
CachedTextBoundsAnyPending_upvr = module_upvr.CornerRadiusButton
var521_upvr.Button = CachedTextBoundsAnyPending_upvr
function var512_upvr() -- Line 1489
	--[[ Upvalues[3]:
		[1]: tbl_18_upvr (readonly)
		[2]: var521_upvr (readonly)
		[3]: module_23_upvr (readonly)
	]]
	table.clear(tbl_18_upvr.CachedCornerDims)
	local tbl_33 = {}
	for i_19, v_6 in var521_upvr do
		tbl_33[i_19] = module_23_upvr.ComputeCornerDims(v_6)
	end
	module_23_upvr.CornerDims = tbl_33
end
local var513_upvw = var512_upvr
CachedTextBoundsAnyPending_upvr = var513_upvw
CachedTextBoundsAnyPending_upvr()
function var521_upvr(arg1) -- Line 1509, Named "ComputeSize"
	--[[ Upvalues[1]:
		[1]: module_23_upvr (readonly)
	]]
	return module_23_upvr.EmSize * arg1
end
module_23_upvr.ComputeSize = var521_upvr
var521_upvr = nil
CachedTextBoundsAnyPending_upvr = {}
local RenderStepped_upvr = CachedTextBoundsAnyPending_upvr
MakeBoundsQuery_upvr = module_upvr.ScaledSizeButtonFancyBorder
RenderStepped_upvr.ButtonFancyBorder = MakeBoundsQuery_upvr
MakeBoundsQuery_upvr = module_upvr.ScaledSizeButtonFancyTextStroke
RenderStepped_upvr.ButtonFancyTextStroke = MakeBoundsQuery_upvr
MakeBoundsQuery_upvr = module_upvr.ScaledSizeButtonFancyTextStrokeMinimal
RenderStepped_upvr.ButtonFancyTextStrokeMinimal = MakeBoundsQuery_upvr
MakeBoundsQuery_upvr = module_upvr.ScaledSizeStrokeMedium
RenderStepped_upvr.StrokeMedium = MakeBoundsQuery_upvr
MakeBoundsQuery_upvr = module_upvr.ScaledSizeStrokeThin
RenderStepped_upvr.StrokeThin = MakeBoundsQuery_upvr
MakeBoundsQuery_upvr = module_upvr.ScaledSizeStrokeVeryThin
RenderStepped_upvr.StrokeVeryThin = MakeBoundsQuery_upvr
MakeBoundsQuery_upvr = module_upvr.ScaledSizeStrokeUltraThin
RenderStepped_upvr.StrokeUltraThin = MakeBoundsQuery_upvr
MakeBoundsQuery_upvr = {}
local IsInputBlocked_upvr = MakeBoundsQuery_upvr
MakeLabelQuery_upvr = module_upvr.SteppedSizeButtonFancyText
IsInputBlocked_upvr.ButtonFancyText = MakeLabelQuery_upvr
MakeLabelQuery_upvr = module_upvr.SteppedSizeButtonFancyX
IsInputBlocked_upvr.ButtonFancyX = MakeLabelQuery_upvr
MakeLabelQuery_upvr = module_upvr.SteppedSizeButtonFancyY
IsInputBlocked_upvr.ButtonFancyY = MakeLabelQuery_upvr
MakeLabelQuery_upvr = module_upvr.SteppedSizeCloseButtonX
IsInputBlocked_upvr.CloseButtonX = MakeLabelQuery_upvr
MakeLabelQuery_upvr = module_upvr.SteppedSizeCloseButtonY
IsInputBlocked_upvr.CloseButtonY = MakeLabelQuery_upvr
MakeLabelQuery_upvr = module_upvr.SteppedSizeScrollBar
IsInputBlocked_upvr.ScrollBar = MakeLabelQuery_upvr
MakeLabelQuery_upvr = module_upvr.SteppedSizeScrollBarThin
IsInputBlocked_upvr.ScrollBarThin = MakeLabelQuery_upvr
MakeLabelQuery_upvr = module_upvr.SteppedSizeTimerThin
IsInputBlocked_upvr.TimerThin = MakeLabelQuery_upvr
function var521_upvr() -- Line 1558
	--[[ Upvalues[3]:
		[1]: RenderStepped_upvr (readonly)
		[2]: module_23_upvr (readonly)
		[3]: IsInputBlocked_upvr (readonly)
	]]
	local tbl_32 = {}
	local tbl_31 = {}
	for i_20, v_7 in RenderStepped_upvr do
		tbl_32[i_20] = module_23_upvr.ComputeSize(v_7)
	end
	for i_21, v_8 in IsInputBlocked_upvr do
		tbl_31[i_21] = math.ceil(module_23_upvr.ComputeSize(v_8))
	end
	module_23_upvr.ScaledSize = tbl_32
	module_23_upvr.SteppedSize = tbl_31
end
local var522_upvw = var521_upvr
MakeLabelQuery_upvr = var522_upvw
MakeLabelQuery_upvr()
function RenderStepped_upvr() -- Line 1602, Named "DimTrackerCreate"
	return {
		Scale = 0;
		Offset = 0;
		TrackedDims = {};
		_Order = {};
	}
end
module_23_upvr.DimTrackerCreate = RenderStepped_upvr
function RenderStepped_upvr(arg1, arg2, arg3, arg4) -- Line 1611, Named "DimTrackerAdd"
	--[[ Upvalues[1]:
		[1]: module_23_upvr (readonly)
	]]
	if arg1.TrackedDims[arg2] then
		error("DimTracker: Object already tracked.", 2)
	end
	arg1.TrackedDims[arg2] = {
		Size = UDim.new(math.abs(arg3), math.abs(arg4));
		Position = UDim.new(arg1.Scale, arg1.Offset);
	}
	module_23_upvr.DimTrackerPad(arg1, arg3, arg4)
	arg1._Order[#arg1._Order].Elements[1] = arg2
end
module_23_upvr.DimTrackerAdd = RenderStepped_upvr
function RenderStepped_upvr(arg1, arg2, arg3) -- Line 1631, Named "DimTrackerAttach"
	if arg1.TrackedDims[arg2] then
		error("DimTracker: Attached object already tracked.", 2)
	end
	if not arg1.TrackedDims[arg3] then
		error("DimTracker: Tracked object not tracked.", 2)
	end
	arg1.TrackedDims[arg2] = arg1.TrackedDims[arg3]
	for _, v_9 in arg1._Order do
		if table.find(v_9.Elements, arg3) then
			v_9.Elements[#v_9.Elements + 1] = arg2
			return
		end
	end
end
module_23_upvr.DimTrackerAttach = RenderStepped_upvr
function RenderStepped_upvr(arg1, arg2, arg3) -- Line 1649, Named "DimTrackerPad"
	arg1.Scale += arg2
	arg1.Offset += arg3
	local tbl_12 = {}
	tbl_12[1] = arg2
	tbl_12[2] = arg3
	tbl_12.Elements = {}
	arg1._Order[#arg1._Order + 1] = tbl_12
end
module_23_upvr.DimTrackerPad = RenderStepped_upvr
function RenderStepped_upvr(arg1, arg2, arg3) -- Line 1659, Named "DimTrackerApply"
	--[[ Upvalues[1]:
		[1]: module_23_upvr (readonly)
	]]
	local var538 = module_23_upvr
	local var539
	if arg3 then
		var538 = arg2
	else
		var538 = arg1.TrackedDims
	end
	if arg3 then
		var539 = arg1.TrackedDims
	else
		var539 = arg2
	end
	var538.TrackedDimsApply(var538, var539)
end
module_23_upvr.DimTrackerApply = RenderStepped_upvr
function RenderStepped_upvr(arg1) -- Line 1666, Named "DimTrackerReset"
	table.clear(arg1.TrackedDims)
	table.clear(arg1._Order)
	arg1.Scale = 0
	arg1.Offset = 0
end
module_23_upvr.DimTrackerReset = RenderStepped_upvr
function RenderStepped_upvr(arg1, arg2, arg3) -- Line 1673, Named "DimTrackerScale"
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var556 = 0
	table.clear(arg1.TrackedDims)
	local var557
	for _, v_10 in arg1._Order do
		local var558 = v_10[1] * arg2
		if arg3 then
			var558 //= 1
			local var559 = v_10[2] * arg2 // 1
		end
		if 0 < #v_10.Elements then
			for _, v_11 in v_10.Elements do
				arg1.TrackedDims[v_11] = {
					Size = UDim.new(math.abs(var558), math.abs(var559));
					Position = UDim.new(var557, var556);
				}
				local _
			end
		end
		var557 += var558
	end
	arg1.Scale = var557
	arg1.Offset = var556 + var559
end
module_23_upvr.DimTrackerScale = RenderStepped_upvr
function RenderStepped_upvr(arg1, arg2) -- Line 1707, Named "TrackedDimsApply"
	for i_25, v_12 in arg1 do
		local var566
		local var567
		local var568 = arg2[i_25]
		if var568 then
			var566 = var568.Size
			var567 = var568.Position
		end
		local Size = v_12.Size
		if not Size then
			Size = i_25.Size.X
		end
		local var570 = var566
		if not var570 then
			var570 = i_25.Size.Y
		end
		i_25.Size = UDim2.new(Size, var570)
		Size = v_12.Position
		local var571 = Size
		if not var571 then
			var571 = i_25.Position.X
		end
		local var572 = var567
		if not var572 then
			var572 = i_25.Position.Y
		end
		i_25.Position = UDim2.new(var571, var572)
	end
end
module_23_upvr.TrackedDimsApply = RenderStepped_upvr
function RenderStepped_upvr(arg1) -- Line 1735, Named "GuiCanBlockInput"
	-- KONSTANTERROR: [0] 1. Error Block 22 start (CF ANALYSIS FAILED)
	local const_number_2 = 1
	local var574
	if arg1.BackgroundTransparency >= const_number_2 then
		var574 = false
	else
		var574 = true
	end
	-- KONSTANTERROR: [0] 1. Error Block 22 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [10] 9. Error Block 7 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [10] 9. Error Block 7 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [34] 28. Error Block 15 start (CF ANALYSIS FAILED)
	do
		return var574, nil
	end
	-- KONSTANTERROR: [34] 28. Error Block 15 end (CF ANALYSIS FAILED)
end
function IsInputBlocked_upvr(arg1, arg2, arg3) -- Line 1765, Named "IsInputBlocked"
	--[[ Upvalues[2]:
		[1]: PlayerGui_upvr_2 (readonly)
		[2]: RenderStepped_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 76 start (CF ANALYSIS FAILED)
	local any_GetGuiObjectsAtPosition_result1 = PlayerGui_upvr_2:GetGuiObjectsAtPosition(arg1.X, arg1.Y)
	local var584 = arg2
	if var584 then
		var584 = arg2:FindFirstAncestorWhichIsA("ScreenGui")
		local var585
	end
	if not arg2 or not var584 then
		var585 = false
		for _, v_13 in any_GetGuiObjectsAtPosition_result1 do
			if v_13 ~= arg2 and RenderStepped_upvr(v_13) and (not arg3 or not arg2 or not v_13:IsDescendantOf(arg2)) then
				var585 = true
				return var585
			end
		end
		return var585
	end
	-- KONSTANTERROR: [0] 1. Error Block 76 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [145] 116. Error Block 54 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [145] 116. Error Block 54 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [56] 47. Error Block 17 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	-- KONSTANTERROR: [56] 47. Error Block 17 end (CF ANALYSIS FAILED)
end
module_23_upvr.IsInputBlocked = IsInputBlocked_upvr
function RenderStepped_upvr(arg1, arg2, arg3, arg4) -- Line 1910, Named "ColorSequenceCreate"
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	if 20 < arg4 or arg4 < 1 then
		error("Keypoints not within range [1, 20].", 2)
	end
	local table_create_result1_2 = table.create(arg4)
	for i_27 = 1, arg4 do
		local var591 = (i_27 - 1) / (arg4 - 1)
		table_create_result1_2[i_27] = ColorSequenceKeypoint.new(var591, arg1:Lerp(arg2, arg3(var591)))
		local _
	end
	return ColorSequence.new(table_create_result1_2)
end
module_23_upvr.ColorSequenceCreate = RenderStepped_upvr
function RenderStepped_upvr(arg1, arg2) -- Line 1941, Named "ComputeEmSizeFromScreenSize"
	--[[ Upvalues[3]:
		[1]: var363_upvr (readonly)
		[2]: module_23_upvr (readonly)
		[3]: module_16_upvr (readonly)
	]]
	local var593
	if var363_upvr then
		if module_23_upvr.IsSmallScreen then
			var593 = module_16_upvr.UIScreenScalingSmall
		else
			var593 = module_16_upvr.UIScreenScalingLarge
		end
	else
		var593 = module_16_upvr.UIScreenScalingConsole
	end
	return math.min(math.min(arg1, arg2) * 0.98 * var593, module_16_upvr.UIMaxEmSize) // 1
end
module_23_upvr.ComputeEmSizeFromScreenSize = RenderStepped_upvr
function RenderStepped_upvr(arg1, arg2, arg3) -- Line 1966, Named "ComputeEvenlySpacedSize"
	local var594 = (arg1 - arg3 * (arg2 - 1)) / arg2
	return var594, var594 + arg3
end
module_23_upvr.ComputeEvenlySpacedSize = RenderStepped_upvr
function RenderStepped_upvr(arg1, arg2, arg3, arg4) -- Line 1978, Named "ComputeEvenlySpacedPosition"
	--[[ Upvalues[1]:
		[1]: module_23_upvr (readonly)
	]]
	if arg4 then
		local any_ComputeEvenlySpacedSize_result1_2 = module_23_upvr.ComputeEvenlySpacedSize(arg1, arg2, 0)
		return any_ComputeEvenlySpacedSize_result1_2, any_ComputeEvenlySpacedSize_result1_2 * 0.5 - arg3 * 0.5
	end
	return arg3 + (arg1 - arg3 * arg2) / (arg2 - 1), 0
end
module_23_upvr.ComputeEvenlySpacedPosition = RenderStepped_upvr
function RenderStepped_upvr(arg1, arg2, arg3, arg4) -- Line 2004, Named "GetConstrainedSizes"
	if not arg2 and not arg3 then
		return 0, 0
	end
	local minimum_2 = math.min(arg2 or math.huge, (arg3 or math.huge) * arg1)
	local var597 = minimum_2 / arg1
	if arg4 then
		minimum_2 = math.round(minimum_2)
		var597 = math.round(var597)
	end
	return minimum_2, var597
end
module_23_upvr.GetConstrainedSizes = RenderStepped_upvr
function RenderStepped_upvr(arg1, arg2, arg3, arg4) -- Line 2029, Named "SimpleImageShadowConvert"
	--[[ Upvalues[2]:
		[1]: module_5_upvr (readonly)
		[2]: module_upvr (readonly)
	]]
	local udim2_2 = UDim2.fromScale(0.5, 0.5)
	if arg4 then
		udim2_2 += arg4
	end
	local module_12 = {
		AnchorPoint = Vector2.one * 0.5;
		BackgroundTransparency = 1;
		Position = udim2_2;
		Size = UDim2.fromScale(arg2, arg2);
	}
	module_12.Parent = arg1
	local tbl_38 = {
		ImageColor3 = module_upvr.Black;
	}
	tbl_38.ImageTransparency = arg3
	module_5_upvr.PropsApply(arg1, tbl_38)
	return module_5_upvr.C(arg1, module_12)
end
module_23_upvr.SimpleImageShadowConvert = RenderStepped_upvr
function RenderStepped_upvr(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 2063, Named "TextBoundsLabelCreate"
	--[[ Upvalues[3]:
		[1]: module_5_upvr (readonly)
		[2]: module_23_upvr (readonly)
		[3]: module_upvr (readonly)
	]]
	local tbl_25 = {}
	local var602 = arg4
	if not var602 then
		var602 = module_upvr.FontFaceNormal
	end
	tbl_25.FontFace = var602
	tbl_25.LineHeight = arg6
	tbl_25.Text = arg2
	var602 = arg5
	local var603 = var602
	if not var603 then
		var603 = module_upvr.TextColor1
	end
	tbl_25.TextColor3 = var603
	tbl_25.Parent = arg1
	local any_I_result1 = module_5_upvr.I("TextLabel", module_23_upvr.Properties.Text, tbl_25)
	local any_CachedTextBounds_FromLabel_result1_2 = module_23_upvr.CachedTextBounds_FromLabel(any_I_result1)
	any_CachedTextBounds_FromLabel_result1_2.Flag = arg3
	return any_I_result1, any_CachedTextBounds_FromLabel_result1_2
end
module_23_upvr.TextBoundsLabelCreate = RenderStepped_upvr
function RenderStepped_upvr(arg1, arg2) -- Line 2090, Named "RenderStepped"
	--[[ Upvalues[8]:
		[1]: module_23_upvr (readonly)
		[2]: GuiService_upvr_2 (readonly)
		[3]: ScreenGui_upvr (readonly)
		[4]: UserInputService_upvr (readonly)
		[5]: var513_upvw (read and write)
		[6]: var522_upvw (read and write)
		[7]: var394_upvw (read and write)
		[8]: tbl_18_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local CurrentCamera_5 = workspace.CurrentCamera
	local var615
	if CurrentCamera_5 then
		if module_23_upvr.Camera == CurrentCamera_5 then
			var615 = false
		else
			var615 = true
		end
		module_23_upvr.CameraDirty = var615
		module_23_upvr.Camera = CurrentCamera_5
		local ViewportSize_3 = CurrentCamera_5.ViewportSize
		var615 = ViewportSize_3.X
		local Y_3 = ViewportSize_3.Y
		local any_GetGuiInset_result1_3, any_GetGuiInset_result2 = GuiService_upvr_2:GetGuiInset()
		module_23_upvr.ScreenInsetTopLeft = any_GetGuiInset_result1_3
		module_23_upvr.ScreenInsetBottomRight = any_GetGuiInset_result2
		module_23_upvr.ViewportSizeWasDirty = module_23_upvr.ViewportSizeDirty
		if module_23_upvr.ViewportSize == ViewportSize_3 then
		else
		end
		module_23_upvr.ViewportSizeDirty = true
		if module_23_upvr.ViewportSizeDirty then
			module_23_upvr.ViewportSize = ViewportSize_3
			module_23_upvr.ScreenSize = ViewportSize_3 - any_GetGuiInset_result1_3 - any_GetGuiInset_result2
		end
		local AbsoluteSize = ScreenGui_upvr.AbsoluteSize
		local AbsolutePosition_3 = ScreenGui_upvr.AbsolutePosition
		local var622 = true
		if module_23_upvr.DeviceSize == AbsoluteSize then
			if module_23_upvr.DevicePosition == AbsolutePosition_3 then
				var622 = false
			else
				var622 = true
			end
		end
		module_23_upvr.DeviceDirty = var622
		if module_23_upvr.DeviceDirty then
			module_23_upvr.DeviceSize = AbsoluteSize
			module_23_upvr.DevicePosition = AbsolutePosition_3
			module_23_upvr.DeviceInsetTopLeft = AbsolutePosition_3 + module_23_upvr.ScreenInsetTopLeft
			module_23_upvr.DeviceInsetBottomRight = AbsoluteSize - ViewportSize_3 - module_23_upvr.DeviceInsetTopLeft
		end
		if math.min(var615, Y_3) >= module_23_upvr.SmallScreenSize then
		else
		end
		module_23_upvr.IsSmallScreen = true
		if UserInputService_upvr.TouchEnabled then
			if var615 >= 700 then
				if Y_3 >= 500 then
				else
				end
			end
		end
		module_23_upvr.IsSmallTouchScreen = true
		if GuiService_upvr_2.TopbarInset == Rect.new() then
			local Rect_new_result1_2 = Rect.new(any_GetGuiInset_result1_3.X, 0, var615 - any_GetGuiInset_result2.X, any_GetGuiInset_result1_3.Y)
		end
		if module_23_upvr.TopbarInset == Rect_new_result1_2 then
		else
		end
		module_23_upvr.TopbarInsetDirty = true
		if module_23_upvr.TopbarInsetDirty then
			module_23_upvr.TopbarInset = Rect_new_result1_2
		end
		local var624 = Y_3 - Rect_new_result1_2.Height
		local any_ComputeEmSizeFromScreenSize_result1 = module_23_upvr.ComputeEmSizeFromScreenSize(var615, var624)
		if module_23_upvr.EmSize == any_ComputeEmSizeFromScreenSize_result1 then
			var624 = false
		else
			var624 = true
		end
		module_23_upvr.EmSizeDirty = var624
		module_23_upvr.EmSize = any_ComputeEmSizeFromScreenSize_result1
		if module_23_upvr.EmSizeDirty then
			var513_upvw()
			var522_upvw()
		end
	end
	var394_upvw()
	Y_3 = module_23_upvr
	local var626 = Y_3
	local any_GetCurrentCursor_result1_3 = var626.MouseIconState.GetCurrentCursor()
	if tbl_18_upvr.LastCursorProfile == any_GetCurrentCursor_result1_3 then
		var626 = false
	else
		var626 = true
	end
	module_23_upvr.CursorProfileDirty = var626
	tbl_18_upvr.LastCursorProfile = any_GetCurrentCursor_result1_3
	if 0 < #tbl_18_upvr.MouseCursorUIsPendingDestroy then
		for _, v_14 in tbl_18_upvr.MouseCursorUIsPendingDestroy do
			v_14.ScreenGui:Destroy()
		end
		table.clear(tbl_18_upvr.MouseCursorUIsPendingDestroy)
	end
end
module_23_upvr.RenderStepped = RenderStepped_upvr
RenderStepped_upvr = module_23_upvr.RenderStepped
IsInputBlocked_upvr = 0
MakeLabelQuery_upvr = os.clock()
RenderStepped_upvr(IsInputBlocked_upvr, MakeLabelQuery_upvr)
return module_23_upvr