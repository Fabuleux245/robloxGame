-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:07:04
-- Luau version 6, Types version 3
-- Time taken: 0.027522 seconds

-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
local module_5_upvr = {}
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local module_8_upvr = require(ReplicatedStorage:WaitForChild("Theme"))
local Modules = ReplicatedStorage:WaitForChild("Modules")
local module_10_upvr = require(Modules:WaitForChild("Transparency"))
local module_6_upvr = require(Modules:WaitForChild("Tweens"))
local module_2_upvr = require(Modules:WaitForChild("UIShared"))
local module_11_upvr = require(Modules:WaitForChild("Utility"))
local tbl_3_upvr = {
	FadingIn = 1;
	Displaying = 2;
	FadingOut = 3;
	Completed = 4;
}
module_5_upvr.Popup = {}
module_5_upvr.Popup.Type = table.freeze({
	FullScreenText = 1;
	Topbar = 2;
	Timed = 3;
	UpperScreenText = 4;
})
local tbl_13_upvr = {
	Popups_ByType = {};
	ScreenGuiState = {
		RegisteredTypes = {};
		ScreenGui = nil;
	};
}
for _, v in module_5_upvr.Popup.Type do
	tbl_13_upvr.Popups_ByType[v] = {
		Queue = {};
		Completed = {};
		UI = nil;
	}
end
module_5_upvr.Popup.Specs = {
	Default = {
		Color = module_8_upvr.TextColor1;
		Font = module_8_upvr.FontFaceItalic;
		StrokeColor = module_8_upvr.TextStrokeColor1;
		TextScale = 1;
	};
	Bold = {
		Color = module_8_upvr.TextColor1;
		Font = module_8_upvr.FontFaceBoldItalic;
		StrokeColor = module_8_upvr.TextStrokeColor1;
		TextScale = 1;
	};
}
module_5_upvr.Popup.DefaultTimes_ByType = {
	[module_5_upvr.Popup.Type.FullScreenText] = {
		Fade = 2;
		Display = 8;
	};
	[module_5_upvr.Popup.Type.Topbar] = {
		Fade = 1;
		Display = 6;
	};
	[module_5_upvr.Popup.Type.Timed] = {
		Fade = 0.375;
		Display = 6;
	};
	[module_5_upvr.Popup.Type.UpperScreenText] = {
		Fade = 2;
		Display = 5;
	};
}
local tbl_8 = {}
for _, v_2 in module_5_upvr.Popup.Type do
	tbl_8[#tbl_8 + 1] = v_2
	local var39_upvr
end
table.sort(var39_upvr)
local function _(arg1) -- Line 144, Named "UnqueuePopup"
	--[[ Upvalues[1]:
		[1]: tbl_13_upvr (readonly)
	]]
	local var42 = tbl_13_upvr.Popups_ByType[arg1.Type]
	if var42 then
		local table_find_result1_11 = table.find(var42.Queue, arg1)
		if table_find_result1_11 then
			table.remove(var42.Queue, table_find_result1_11)
			var42.Completed[#var42.Completed + 1] = arg1
		end
	end
end
local module_3_upvr = require(ReplicatedStorage:WaitForChild("CommonData"))
module_5_upvr.Popup.Create = function(arg1, arg2, arg3, arg4, arg5) -- Line 157, Named "Create"
	--[[ Upvalues[3]:
		[1]: module_11_upvr (readonly)
		[2]: module_5_upvr (readonly)
		[3]: module_3_upvr (readonly)
	]]
	if module_11_upvr.TableGetKeyFromValue(module_5_upvr.Popup.Type, arg1) == nil then
		error(module_3_upvr.FormatOutput("Received invalid PopupType '%s'", "NotificationsUI", nil, tostring(arg1)), 2)
	end
	local var45 = module_5_upvr.Popup.DefaultTimes_ByType[arg1]
	local module_9 = {
		Expedited = false;
	}
	module_9.Type = arg1
	local var47 = arg4
	if not var47 then
		var47 = var45.Display
	end
	module_9.DisplayTime = var47
	var47 = arg5
	local var48 = var47
	if not var48 then
		var48 = var45.Fade
	end
	module_9.FadeTime = var48
	var48 = arg3
	local var49 = var48
	if not var49 then
		var49 = module_5_upvr.Popup.Specs.Default
	end
	module_9.Specs = var49
	module_9.Text = arg2 or ""
	module_9.PlaybackState = Enum.PlaybackState.Begin
	return module_9
end
module_5_upvr.Popup.Cancel = function(arg1) -- Line 187, Named "Cancel"
	--[[ Upvalues[1]:
		[1]: tbl_13_upvr (readonly)
	]]
	arg1.PlaybackState = Enum.PlaybackState.Cancelled
	local var52 = tbl_13_upvr.Popups_ByType[arg1.Type]
	if var52 then
		local table_find_result1_2 = table.find(var52.Queue, arg1)
		if table_find_result1_2 then
			table.remove(var52.Queue, table_find_result1_2)
			var52.Completed[#var52.Completed + 1] = arg1
		end
	end
end
module_5_upvr.Popup.QueueFirst = function(arg1) -- Line 193, Named "QueueFirst"
	--[[ Upvalues[1]:
		[1]: tbl_13_upvr (readonly)
	]]
	if arg1.PlaybackState ~= Enum.PlaybackState.Playing then
		local var54 = tbl_13_upvr.Popups_ByType[arg1.Type]
		if not var54 then return end
		local _1_2 = var54.Queue[1]
		if _1_2 ~= arg1 then
			if _1_2 == nil then
				var54.Queue[1] = arg1
				return
			end
			local table_find_result1_6 = table.find(var54.Queue, arg1)
			if table_find_result1_6 then
				table.remove(var54.Queue, table_find_result1_6)
			end
			table.insert(var54.Queue, 2, arg1)
			if var54.UI then
				var54.UI.TimeDisplayed = math.huge
			end
		end
	end
end
module_5_upvr.Popup.Refresh = function(arg1) -- Line 225, Named "Refresh"
	--[[ Upvalues[2]:
		[1]: tbl_13_upvr (readonly)
		[2]: tbl_3_upvr (readonly)
	]]
	arg1.Expedited = false
	if arg1.PlaybackState == Enum.PlaybackState.Playing then
		local var57 = tbl_13_upvr.Popups_ByType[arg1.Type]
		if not var57 then return end
		if var57.Queue[1] == arg1 and var57.UI then
			if var57.UI.State == tbl_3_upvr.Displaying then
				var57.UI.TimeDisplayed = 0
				return
			end
			var57.UI.State = tbl_3_upvr.FadingIn
		end
	end
end
module_5_upvr.Popup.ExpediteQueue = function(arg1) -- Line 248, Named "ExpediteQueue"
	--[[ Upvalues[1]:
		[1]: tbl_13_upvr (readonly)
	]]
	local var60 = tbl_13_upvr.Popups_ByType[arg1]
	if not var60 then
	else
		for _, var59 in var60.Queue do
			var59.Expedited = true
		end
	end
end
module_5_upvr.Popup.FadeOut = function(arg1) -- Line 260, Named "FadeOut"
	--[[ Upvalues[3]:
		[1]: tbl_13_upvr (readonly)
		[2]: module_5_upvr (readonly)
		[3]: tbl_3_upvr (readonly)
	]]
	local var61 = tbl_13_upvr.Popups_ByType[arg1.Type]
	if not var61 then
	else
		if arg1.PlaybackState == Enum.PlaybackState.Begin then
			module_5_upvr.Popup.Cancel(arg1)
			return
		end
		if arg1.PlaybackState == Enum.PlaybackState.Playing and var61.Queue[1] == arg1 and var61.UI then
			var61.UI.TimeDisplayed = math.huge
			var61.UI.State = tbl_3_upvr.FadingOut
		end
	end
end
module_5_upvr.Popup.PurgeQueue = function(arg1, arg2) -- Line 280, Named "PurgeQueue"
	--[[ Upvalues[2]:
		[1]: tbl_13_upvr (readonly)
		[2]: module_5_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var66 = tbl_13_upvr.Popups_ByType[arg1]
	local var67
	if not var66 then
	else
		if arg2 then
			var67 = module_5_upvr.Popup.FadeOut
		else
			var67 = module_5_upvr.Popup.Cancel
		end
		for i_10 = #var66.Queue, 1, -1 do
			var67(var66.Queue[i_10])
		end
	end
end
module_5_upvr.Popup.Queue = function(arg1) -- Line 299, Named "Queue"
	--[[ Upvalues[1]:
		[1]: tbl_13_upvr (readonly)
	]]
	local var68 = tbl_13_upvr.Popups_ByType[arg1.Type]
	if not var68 then
	elseif not table.find(var68.Queue, arg1) then
		var68.Queue[#var68.Queue + 1] = arg1
	end
end
local tbl_7_upvr = {}
local function LabelObjectProcessPopupState_upvr(arg1, arg2, arg3, arg4) -- Line 348, Named "LabelObjectProcessPopupState"
	--[[ Upvalues[2]:
		[1]: tbl_3_upvr (readonly)
		[2]: module_6_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var71
	repeat
		local var72 = false
		if arg1.State == tbl_3_upvr.Displaying then
			arg1.TimeDisplayed += arg3
			if not arg2.Expedited then
				if arg2.DisplayTime > arg1.TimeDisplayed then
				else
				end
			end
			var72 = true
		else
			if arg1.State == tbl_3_upvr.FadingIn then
				local _ = 0
			else
			end
			module_6_upvr.Tween(arg1.Tween, arg4, 1)
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			var72 = module_6_upvr.IsAtTarget(arg1.Tween, 1)
		end
		if var72 then
			var71 = true
			arg1.State += 1
			if arg1.State == tbl_3_upvr.Completed then
				arg2.PlaybackState = Enum.PlaybackState.Completed
				break
			end
		end
	until not var72
	if arg1.State ~= tbl_3_upvr.Completed then
	else
	end
	return var71, true
end
local function LabelObjectRedraw_upvr(arg1, arg2, arg3) -- Line 396, Named "LabelObjectRedraw"
	--[[ Upvalues[3]:
		[1]: module_2_upvr (readonly)
		[2]: tbl_3_upvr (readonly)
		[3]: module_10_upvr (readonly)
	]]
	local Popup = arg1.Popup
	local module_12 = {}
	if Popup.Specs.Color ~= arg1.Color then
		module_12.Color = true
		arg1.Color = Popup.Specs.Color
		arg1.Label.TextColor3 = arg1.Color
	end
	if Popup.Specs.Font ~= arg1.Font then
		module_12.Font = true
		arg1.Font = Popup.Specs.Font
		arg1.Label.FontFace = arg1.Font
	end
	if Popup.Specs.StrokeColor and arg1.Stroke and arg3 then
		if Popup.Specs.StrokeColor ~= arg1.StrokeColor then
			module_12.StrokeColor = true
			arg1.StrokeColor = Popup.Specs.StrokeColor
			arg1.Stroke.Color = arg1.StrokeColor
		end
		if module_2_upvr.EmSizeDirty then
			arg1.Stroke.Thickness = arg3
		end
	end
	if Popup.Text ~= arg1.Text then
		module_12.Text = true
		arg1.Text = Popup.Text
		arg1.Label.Text = arg1.Text
	end
	if arg1.State ~= tbl_3_upvr.Displaying then
		module_10_upvr.Apply(arg1.CachedOpacities, arg1.Tween.Value)
		return module_12
	end
	if arg2 then
		module_10_upvr.Apply(arg1.CachedOpacities, 0)
	end
	return module_12
end
local function StateObjectCreate_upvr(arg1) -- Line 451, Named "StateObjectCreate"
	--[[ Upvalues[1]:
		[1]: tbl_3_upvr (readonly)
	]]
	local module = {}
	module.Popup = arg1
	module.Color = arg1.Specs.Color
	module.Font = arg1.Specs.Font
	module.StrokeColor = arg1.Specs.StrokeColor
	module.Text = arg1.Text
	module.TextScale = arg1.Specs.TextScale or 1
	module.State = tbl_3_upvr.FadingIn
	module.TimeDisplayed = 0
	return module
end
local function _(arg1, arg2, arg3, arg4, arg5) -- Line 471, Named "StateObjectProcessPopup"
	--[[ Upvalues[2]:
		[1]: tbl_3_upvr (readonly)
		[2]: module_6_upvr (readonly)
	]]
	arg2.PlaybackState = Enum.PlaybackState.Playing
	if arg1.Popup ~= arg2 then
		arg1.Popup = arg2
		arg1.TimeDisplayed = 0
		arg1.State = tbl_3_upvr.FadingIn
		if arg3 and arg5 then
			module_6_upvr.Reset(arg3, arg5, arg4)
			arg3.Rate = arg2.FadeTime
		end
	end
end
local function SetScreenGuiState_upvr(arg1, arg2) -- Line 494, Named "SetScreenGuiState"
	--[[ Upvalues[4]:
		[1]: tbl_13_upvr (readonly)
		[2]: module_11_upvr (readonly)
		[3]: module_2_upvr (readonly)
		[4]: module_8_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local RegisteredTypes_2 = tbl_13_upvr.ScreenGuiState.RegisteredTypes
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [21] 17. Error Block 4 start (CF ANALYSIS FAILED)
	tbl_13_upvr.ScreenGuiState.ScreenGui = module_11_upvr.I("ScreenGui", module_2_upvr.Properties.ScreenGui, {
		Name = "NotificationsUI_Popup";
		DisplayOrder = module_8_upvr.DisplayOrder_NotificationsUI_Popup;
		Parent = module_2_upvr.PlayerGui;
	})
	do
		return
	end
	-- KONSTANTERROR: [21] 17. Error Block 4 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [51] 37. Error Block 11 start (CF ANALYSIS FAILED)
	local table_find_result1_5 = table.find(RegisteredTypes_2, arg1)
	if table_find_result1_5 then
		table.remove(RegisteredTypes_2, table_find_result1_5)
		if #RegisteredTypes_2 == 0 and tbl_13_upvr.ScreenGuiState.ScreenGui then
			tbl_13_upvr.ScreenGuiState.ScreenGui:Destroy()
			tbl_13_upvr.ScreenGuiState.ScreenGui = nil
		end
	end
	-- KONSTANTERROR: [51] 37. Error Block 11 end (CF ANALYSIS FAILED)
end
local function RenderStepped_upvr(arg1) -- Line 535, Named "PopupFullScreenTextUICreate"
	--[[ Upvalues[8]:
		[1]: StateObjectCreate_upvr (readonly)
		[2]: module_6_upvr (readonly)
		[3]: SetScreenGuiState_upvr (readonly)
		[4]: module_5_upvr (readonly)
		[5]: module_11_upvr (readonly)
		[6]: module_2_upvr (readonly)
		[7]: tbl_13_upvr (readonly)
		[8]: module_10_upvr (readonly)
	]]
	local StateObjectCreate_upvr_result1_3 = StateObjectCreate_upvr(arg1)
	local module_4 = {
		Tween = module_6_upvr.new(1, arg1.FadeTime, Enum.EasingStyle.Sine);
	}
	SetScreenGuiState_upvr(module_5_upvr.Popup.Type.FullScreenText, true)
	module_4.Label = module_11_upvr.I("TextLabel", module_2_upvr.Properties.Text_Scaled, {
		Name = "FullScreenText";
		AnchorPoint = Vector2.one * 0.5;
		FontFace = StateObjectCreate_upvr_result1_3.Font;
		Position = UDim2.fromScale(0.5, 0.5);
		Size = UDim2.fromScale(0.45, 0.35);
		Text = StateObjectCreate_upvr_result1_3.Text;
		TextColor3 = StateObjectCreate_upvr_result1_3.Color;
		Parent = tbl_13_upvr.ScreenGuiState.ScreenGui;
	})
	module_4.Stroke = module_11_upvr.I("UIStroke", module_2_upvr.Properties.StrokeText, {
		Color = StateObjectCreate_upvr_result1_3.StrokeColor;
		Thickness = module_2_upvr.ScaledSize.StrokeThin;
		Parent = module_4.Label;
	})
	module_4.CachedOpacities = module_10_upvr.Create(module_4.Label)
	return module_11_upvr.TableMerge(module_4, StateObjectCreate_upvr_result1_3)
end
local function _(arg1) -- Line 571, Named "PopupFullScreenTextUIDestroy"
	--[[ Upvalues[2]:
		[1]: SetScreenGuiState_upvr (readonly)
		[2]: module_5_upvr (readonly)
	]]
	arg1.Label:Destroy()
	SetScreenGuiState_upvr(module_5_upvr.Popup.Type.FullScreenText, false)
end
tbl_7_upvr[module_5_upvr.Popup.Type.FullScreenText] = function(arg1, arg2, arg3) -- Line 579
	--[[ Upvalues[9]:
		[1]: RenderStepped_upvr (readonly)
		[2]: SetScreenGuiState_upvr (readonly)
		[3]: module_5_upvr (readonly)
		[4]: tbl_3_upvr (readonly)
		[5]: module_6_upvr (readonly)
		[6]: LabelObjectProcessPopupState_upvr (readonly)
		[7]: tbl_13_upvr (readonly)
		[8]: LabelObjectRedraw_upvr (readonly)
		[9]: module_2_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [6] 5. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [6] 5. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [9] 7. Error Block 3 start (CF ANALYSIS FAILED)
	arg1.UI = RenderStepped_upvr(arg1.Queue[1])
	-- KONSTANTERROR: [9] 7. Error Block 3 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [16] 12. Error Block 4 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [16] 12. Error Block 4 end (CF ANALYSIS FAILED)
end
function RenderStepped_upvr() -- Line 638, Named "PopupTopbarUICreate"
	--[[ Upvalues[2]:
		[1]: SetScreenGuiState_upvr (readonly)
		[2]: module_5_upvr (readonly)
	]]
	SetScreenGuiState_upvr(module_5_upvr.Popup.Type.Topbar, true)
	return {
		LabelObject_ByPopup = {};
		TimeDisplayed = nil;
		State = nil;
	}
end
local function PopupUpperScreenTextUIDestroy_upvr(arg1) -- Line 660, Named "PopupTopbarUIDestroy"
	--[[ Upvalues[2]:
		[1]: SetScreenGuiState_upvr (readonly)
		[2]: module_5_upvr (readonly)
	]]
	for _, v_3 in arg1.LabelObject_ByPopup do
		v_3.Label:Destroy()
	end
	table.clear(arg1.LabelObject_ByPopup)
	SetScreenGuiState_upvr(module_5_upvr.Popup.Type.Topbar, false)
end
tbl_7_upvr[module_5_upvr.Popup.Type.Topbar] = function(arg1, arg2, arg3) -- Line 671
	--[[ Upvalues[10]:
		[1]: RenderStepped_upvr (readonly)
		[2]: PopupUpperScreenTextUIDestroy_upvr (readonly)
		[3]: module_2_upvr (readonly)
		[4]: StateObjectCreate_upvr (readonly)
		[5]: module_6_upvr (readonly)
		[6]: module_11_upvr (readonly)
		[7]: tbl_13_upvr (readonly)
		[8]: module_10_upvr (readonly)
		[9]: LabelObjectProcessPopupState_upvr (readonly)
		[10]: LabelObjectRedraw_upvr (readonly)
	]]
	if 0 < #arg1.Queue then
		if not arg1.UI then
			arg1.UI = RenderStepped_upvr()
		end
	end
	if arg1.UI then
		local UI_3 = arg1.UI
		if #arg1.Queue == 0 then
			PopupUpperScreenTextUIDestroy_upvr(UI_3)
			arg1.UI = nil
			return
		end
		local var132 = module_2_upvr.ViewportSize.X * 0.5 // 1
		local tbl_5 = {}
		local tbl_2 = {}
		for i_4 = #arg1.Queue, 1, -1 do
			local var136 = arg1.Queue[i_4]
			tbl_5[var136] = true
			local var137
			if not var137 then
				local StateObjectCreate_result1_2 = StateObjectCreate_upvr(var136)
				local tbl_6 = {
					Tween = module_6_upvr.new(1, var136.FadeTime);
					PositionTween = module_6_upvr.new(UDim2.new(), var136.FadeTime, Enum.EasingStyle.Quad);
					Label = module_11_upvr.I("TextLabel", module_2_upvr.Properties.Text, {
						Name = "Topbar";
						AnchorPoint = Vector2.new(0.5, 0);
						FontFace = StateObjectCreate_result1_2.Font;
						Text = StateObjectCreate_result1_2.Text;
						TextColor3 = StateObjectCreate_result1_2.Color;
						Parent = tbl_13_upvr.ScreenGuiState.ScreenGui;
					});
					TextBounds = module_2_upvr.CachedTextBounds_FromLabel(tbl_6.Label);
					Stroke = module_11_upvr.I("UIStroke", module_2_upvr.Properties.StrokeText, {
						Color = StateObjectCreate_result1_2.StrokeColor;
						Thickness = module_2_upvr.ScaledSize.StrokeThin;
						Parent = tbl_6.Label;
					});
					CachedOpacities = module_10_upvr.Create(tbl_6.Label);
				}
				local any_TableMerge_result1_3 = module_11_upvr.TableMerge(tbl_6, StateObjectCreate_result1_2)
				UI_3.LabelObject_ByPopup[var136] = any_TableMerge_result1_3
				var137 = any_TableMerge_result1_3
			end
			if i_4 == 1 then
				if UI_3.TimeDisplayed then
					var137.TimeDisplayed = UI_3.TimeDisplayed
					UI_3.TimeDisplayed = nil
				end
				if UI_3.State then
					var137.State = UI_3.State
					UI_3.State = nil
				end
			end
			local LabelObjectProcessPopupState_result1_2, LabelObjectProcessPopupState_result2_2 = LabelObjectProcessPopupState_upvr(var137, var136, arg2, arg3)
			if LabelObjectProcessPopupState_result2_2 then
				tbl_2[#tbl_2 + 1] = var136
			else
				if LabelObjectRedraw_upvr(var137, LabelObjectProcessPopupState_result1_2, module_2_upvr.ScaledSize.StrokeVeryThin) then
					var137.TextBounds = module_2_upvr.CachedTextBounds_FromLabel(var137.Label)
				end
				local var145
				local var146 = 1.75 * module_2_upvr.EmSize * var137.TextScale // 1
				if module_2_upvr.CachedTextBoundsUpdate(var137.TextBounds, var137.Text, var146) or module_2_upvr.ViewportSizeDirty then
					var137.Label.TextSize = var146
					var137.Label.Size = UDim2.fromOffset(var137.TextBounds.X, var137.TextBounds.Y)
					local var147 = var137.TextBounds.X * 0.5
					var145 = var132 + (math.max((module_2_upvr.TopbarInset.Min.X) - (var132 - math.floor(var147)), 0) * 0.5 - math.max((var132 + math.ceil(var147)) - (module_2_upvr.ViewportSize.X - math.min(module_2_upvr.SecondOrderProperties.TopbarUIInset, module_2_upvr.FirstOrderProperties.PlayerListInset)), 0) * 0.5) // 1
					if var137.PosX == nil then
						module_6_upvr.Reset(var137.PositionTween, arg3, UDim2.fromOffset(var145, 0))
					end
					var137.PosX = var145
				else
					var145 = assert(var137.PosX)
				end
				module_6_upvr.Tween(var137.PositionTween, arg3, UDim2.fromOffset(var145, math.max(module_2_upvr.TopbarInset.Height, module_2_upvr.EmSize)))
				if var137.PositionTween.Dirty then
					var137.Label.Position = var137.PositionTween.Value
				end
			end
		end
		for _, v_4 in tbl_2 do
			tbl_5[v_4] = nil
			local var148 = tbl_13_upvr.Popups_ByType[v_4.Type]
			if var148 then
				local table_find_result1_7 = table.find(var148.Queue, v_4)
				if table_find_result1_7 then
					table.remove(var148.Queue, table_find_result1_7)
					var148.Completed[#var148.Completed + 1] = v_4
				end
			end
		end
		for i_6, v_5 in UI_3.LabelObject_ByPopup do
			if not tbl_5[i_6] then
				UI_3.LabelObject_ByPopup[i_6] = nil
				v_5.Label:Destroy()
			end
		end
	end
end
function RenderStepped_upvr(arg1) -- Line 861, Named "PopupTimedUICreate"
	--[[ Upvalues[9]:
		[1]: StateObjectCreate_upvr (readonly)
		[2]: module_6_upvr (readonly)
		[3]: SetScreenGuiState_upvr (readonly)
		[4]: module_5_upvr (readonly)
		[5]: module_11_upvr (readonly)
		[6]: module_2_upvr (readonly)
		[7]: module_8_upvr (readonly)
		[8]: tbl_13_upvr (readonly)
		[9]: module_10_upvr (readonly)
	]]
	local StateObjectCreate_result1 = StateObjectCreate_upvr(arg1)
	local tbl_10 = {
		Connections = {};
		Stroke = nil;
		SizeX_Padded = 0;
		SizeX_Unpadded = 0;
		SizeY = 0;
		LongestLineText = "";
		Tween = module_6_upvr.new(1, arg1.FadeTime, Enum.EasingStyle.Quad);
		SizeTween = module_6_upvr.new(0, 0.375, Enum.EasingStyle.Quart);
	}
	SetScreenGuiState_upvr(module_5_upvr.Popup.Type.Timed, true)
	tbl_10.Button = module_11_upvr.I("TextButton", module_2_upvr.Properties.Button, {
		AnchorPoint = Vector2.one * 0.5;
		BackgroundColor3 = module_8_upvr.BackgroundColor1;
		BackgroundTransparency = module_8_upvr.BackgroundTransparency1;
		Position = UDim2.fromScale(0.5, 0.25);
		ClipsDescendants = true;
		ZIndex = 1000;
		Parent = tbl_13_upvr.ScreenGuiState.ScreenGui;
	})
	tbl_10.ButtonCorner = module_11_upvr.I("UICorner", {
		Parent = tbl_10.Button;
	})
	tbl_10.Label = module_11_upvr.I("TextLabel", module_2_upvr.Properties.Text, {
		AnchorPoint = Vector2.xAxis * 0.5;
		FontFace = StateObjectCreate_result1.Font;
		Text = StateObjectCreate_result1.Text;
		TextColor3 = StateObjectCreate_result1.Color;
		ZIndex = 2;
		Parent = tbl_10.Button;
	})
	tbl_10.TextBounds = module_2_upvr.CachedTextBounds_FromLabel(tbl_10.Label)
	tbl_10.Timer = module_11_upvr.I("Frame", {
		AnchorPoint = Vector2.xAxis * 0.5;
		BackgroundColor3 = module_8_upvr.TextColor1;
		BorderSizePixel = 0;
		ZIndex = 1;
		Parent = tbl_10.Button;
	})
	module_11_upvr.I("UICorner", {
		CornerRadius = UDim.new(1, 0);
		Parent = tbl_10.Timer;
	})
	tbl_10.CachedOpacities = module_10_upvr.Create(tbl_10.Label)
	local any_TableMerge_result1_2 = module_11_upvr.TableMerge(tbl_10, StateObjectCreate_result1)
	any_TableMerge_result1_2.Connections[#any_TableMerge_result1_2.Connections + 1] = any_TableMerge_result1_2.Button.Activated:Connect(function() -- Line 932
		--[[ Upvalues[2]:
			[1]: tbl_13_upvr (copied, readonly)
			[2]: module_5_upvr (copied, readonly)
		]]
		local _1 = tbl_13_upvr.Popups_ByType[module_5_upvr.Popup.Type.Timed].Queue[1]
		if _1 then
			module_5_upvr.Popup.FadeOut(_1)
		end
	end)
	return any_TableMerge_result1_2
end
function PopupUpperScreenTextUIDestroy_upvr(arg1) -- Line 946, Named "PopupTimedUIDestroy"
	--[[ Upvalues[2]:
		[1]: SetScreenGuiState_upvr (readonly)
		[2]: module_5_upvr (readonly)
	]]
	arg1.Label:Destroy()
	SetScreenGuiState_upvr(module_5_upvr.Popup.Type.Timed, false)
end
tbl_7_upvr[module_5_upvr.Popup.Type.Timed] = function(arg1, arg2, arg3) -- Line 953
	--[[ Upvalues[9]:
		[1]: RenderStepped_upvr (readonly)
		[2]: module_2_upvr (readonly)
		[3]: tbl_3_upvr (readonly)
		[4]: module_6_upvr (readonly)
		[5]: LabelObjectProcessPopupState_upvr (readonly)
		[6]: tbl_13_upvr (readonly)
		[7]: LabelObjectRedraw_upvr (readonly)
		[8]: SetScreenGuiState_upvr (readonly)
		[9]: module_5_upvr (readonly)
	]]
	local var181
	if 0 < #arg1.Queue then
		if not arg1.UI then
			var181 = true
			arg1.UI = RenderStepped_upvr(arg1.Queue[1])
		end
	end
	if arg1.UI then
		local UI_2 = arg1.UI
		local var183 = module_2_upvr.EmSize * 0.75 // 1
		repeat
			local _1_3 = arg1.Queue[1]
			local var185 = true
			if _1_3 then
				local Tween_2 = UI_2.Tween
				_1_3.PlaybackState = Enum.PlaybackState.Playing
				if UI_2.Popup ~= _1_3 then
					UI_2.Popup = _1_3
					UI_2.TimeDisplayed = 0
					UI_2.State = tbl_3_upvr.FadingIn
					if Tween_2 and arg3 then
						module_6_upvr.Reset(Tween_2, arg3, 1)
						Tween_2.Rate = _1_3.FadeTime
					end
				end
				local LabelObjectProcessPopupState_result1, LabelObjectProcessPopupState_result2_4 = LabelObjectProcessPopupState_upvr(UI_2, _1_3, arg2, arg3)
				local var189
				if LabelObjectProcessPopupState_result2_4 then
					var185 = false
					local var190 = tbl_13_upvr.Popups_ByType[_1_3.Type]
					if var190 then
						local table_find_result1_8 = table.find(var190.Queue, _1_3)
						if table_find_result1_8 then
							var189 = table_find_result1_8
							table.remove(var190.Queue, var189)
							var189 = #var190.Completed
							var190.Completed[var189 + 1] = _1_3
							-- KONSTANTWARNING: GOTO [368] #260
						end
						-- KONSTANTWARNING: GOTO [368] #260
					end
				else
					local LabelObjectRedraw_result1 = LabelObjectRedraw_upvr(UI_2, LabelObjectProcessPopupState_result1)
					if LabelObjectRedraw_result1.Font then
						UI_2.TextBounds = module_2_upvr.CachedTextBounds_FromLabel(UI_2.Label)
					end
					local var193
					if LabelObjectRedraw_result1.Text or var181 then
						var193 = _1_3.Text
						local len = #var193
						var193 = nil
						if 24 <= len then
							var189 = _1_3.Text
							if string.find(var189, '\n') == nil then
								var189 = len * 0.5
								local var195 = var189 // 1
								var189 = nil
								local string_find_result1 = string.find(string.reverse(string.sub(_1_3.Text, 1, var195)), "%s")
								if string_find_result1 then
									var189 = (var195) - (string_find_result1 - 1)
								end
								local string_find_result1_2 = string.find(_1_3.Text, "%s", var195)
								if string_find_result1_2 and (not var189 or var189 and math.abs(var195 - string_find_result1_2) < math.abs(var195 - var189)) then
									var189 = string_find_result1_2
								end
								if var189 then
									if var195 < var189 then
										var193 = string.sub(_1_3.Text, 1, var189)
									else
										var193 = string.sub(_1_3.Text, var189)
									end
								end
							end
						end
						var195 = var193
						local var198 = var195
						if not var198 then
							var198 = _1_3.Text
						end
						UI_2.LongestLineText = var198
					end
					local var199 = module_2_upvr.EmSize * 1.25 * (UI_2.Popup.Specs.TextScale or 1) // 1
					if module_2_upvr.CachedTextBoundsUpdate(UI_2.TextBounds, UI_2.LongestLineText, var199) or module_2_upvr.EmSizeDirty then
						local maximum = math.max(UI_2.TextBounds.Y, 2 * var199)
						UI_2.Label.Position = UDim2.new(0.5, 0, 0, var183)
						UI_2.Label.Size = UDim2.fromOffset(UI_2.TextBounds.X, maximum)
						UI_2.Label.TextSize = var199
						-- KONSTANTERROR: Expression was reused, decompilation is incorrect
						UI_2.Timer.Position = UDim2.new(0.5, 0, 0, (var183) + (maximum + var183))
						-- KONSTANTERROR: Expression was reused, decompilation is incorrect
						UI_2.SizeY = ((var183) + (maximum + var183)) + (module_2_upvr.SteppedSize.TimerThin + var183)
					end
					UI_2.SizeX_Unpadded = UI_2.TextBounds.X
					UI_2.SizeX_Padded = UI_2.SizeX_Unpadded + 2 * module_2_upvr.EmSize * 1.25 // 1
					if UI_2.State == tbl_3_upvr.Displaying then
						-- KONSTANTWARNING: GOTO [353] #251
					end
					if UI_2.State == tbl_3_upvr.FadingIn then
					else
					end
					UI_2.Timer.Size = UDim2.fromOffset(UI_2.SizeX_Unpadded * 0, module_2_upvr.SteppedSize.TimerThin)
				end
			end
		until var185
		if 0 < #arg1.Queue then
			-- KONSTANTWARNING: GOTO [386] #273
		end
		module_6_upvr.Tween(UI_2.SizeTween, arg3, 0)
		if module_6_upvr.IsAtTarget(UI_2.SizeTween, 0) then
			UI_2.Label:Destroy()
			SetScreenGuiState_upvr(module_5_upvr.Popup.Type.Timed, false)
			arg1.UI = nil
			return
		end
		if UI_2.SizeTween.Dirty or module_2_upvr.EmSizeDirty then
			UI_2.Button.Size = UDim2.fromOffset(UI_2.SizeTween.Value, UI_2.SizeY)
			UI_2.ButtonCorner.CornerRadius = module_2_upvr.CornerDims.BackgroundWide.RadiusUDim
		end
	end
end
function RenderStepped_upvr(arg1) -- Line 1140, Named "PopupUpperScreenTextUICreate"
	--[[ Upvalues[9]:
		[1]: StateObjectCreate_upvr (readonly)
		[2]: module_6_upvr (readonly)
		[3]: SetScreenGuiState_upvr (readonly)
		[4]: module_5_upvr (readonly)
		[5]: module_11_upvr (readonly)
		[6]: module_2_upvr (readonly)
		[7]: tbl_13_upvr (readonly)
		[8]: module_8_upvr (readonly)
		[9]: module_10_upvr (readonly)
	]]
	local StateObjectCreate_upvr_result1 = StateObjectCreate_upvr(arg1)
	local module_7 = {
		Cycle = 0;
		Period = 6;
		Tween = module_6_upvr.new(1, arg1.FadeTime, Enum.EasingStyle.Sine);
	}
	SetScreenGuiState_upvr(module_5_upvr.Popup.Type.UpperScreenText, true)
	module_7.Label = module_11_upvr.I("TextLabel", module_2_upvr.Properties.Text, {
		Name = "FullScreenText";
		FontFace = StateObjectCreate_upvr_result1.Font;
		Text = StateObjectCreate_upvr_result1.Text;
		TextColor3 = StateObjectCreate_upvr_result1.Color;
		Parent = tbl_13_upvr.ScreenGuiState.ScreenGui;
	})
	module_7.Bounds = module_2_upvr.CachedTextBounds_FromLabel(module_7.Label)
	module_7.Stroke = module_11_upvr.I("UIStroke", module_2_upvr.Properties.StrokeText, {
		Color = StateObjectCreate_upvr_result1.StrokeColor;
		Thickness = module_2_upvr.ScaledSize.StrokeVeryThin;
		Parent = module_7.Label;
	})
	module_7.Gradient = module_11_upvr.I("UIGradient", {
		Color = module_2_upvr.ColorSequenceCreate(module_8_upvr.Gray80, module_8_upvr.White, function(arg1_2) -- Line 1176
			return 1 - (1 - 2 * arg1_2) ^ 2
		end, 10);
		Rotation = 10;
		Parent = module_7.Label;
	})
	module_7.CachedOpacities = module_10_upvr.Create(module_7.Label)
	return module_11_upvr.TableMerge(module_7, StateObjectCreate_upvr_result1)
end
function PopupUpperScreenTextUIDestroy_upvr(arg1) -- Line 1191, Named "PopupUpperScreenTextUIDestroy"
	--[[ Upvalues[2]:
		[1]: SetScreenGuiState_upvr (readonly)
		[2]: module_5_upvr (readonly)
	]]
	arg1.Label:Destroy()
	SetScreenGuiState_upvr(module_5_upvr.Popup.Type.UpperScreenText, false)
end
tbl_7_upvr[module_5_upvr.Popup.Type.UpperScreenText] = function(arg1, arg2, arg3) -- Line 1199
	--[[ Upvalues[9]:
		[1]: RenderStepped_upvr (readonly)
		[2]: SetScreenGuiState_upvr (readonly)
		[3]: module_5_upvr (readonly)
		[4]: tbl_3_upvr (readonly)
		[5]: module_6_upvr (readonly)
		[6]: LabelObjectProcessPopupState_upvr (readonly)
		[7]: tbl_13_upvr (readonly)
		[8]: module_2_upvr (readonly)
		[9]: LabelObjectRedraw_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [6] 5. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [6] 5. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [9] 7. Error Block 3 start (CF ANALYSIS FAILED)
	arg1.UI = RenderStepped_upvr(arg1.Queue[1])
	-- KONSTANTERROR: [9] 7. Error Block 3 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [16] 12. Error Block 4 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [16] 12. Error Block 4 end (CF ANALYSIS FAILED)
end
function RenderStepped_upvr(arg1, arg2) -- Line 1290, Named "RenderStepped"
	--[[ Upvalues[3]:
		[1]: var39_upvr (readonly)
		[2]: tbl_13_upvr (readonly)
		[3]: tbl_7_upvr (readonly)
	]]
	debug.profilebegin("CFR_NotificationsUI")
	debug.profilebegin("Popups")
	for _, v_6 in var39_upvr do
		tbl_7_upvr[v_6](tbl_13_upvr.Popups_ByType[v_6], arg1, arg2)
	end
	debug.profileend()
	debug.profilebegin("Callbacks")
	for _, v_7 in var39_upvr do
		local var214 = tbl_13_upvr.Popups_ByType[v_7]
		var214.Completed = {}
		for _, v_8 in var214.Completed do
			local Callback = v_8.Callback
			if type(Callback) == "function" then
				task.spawn(Callback, v_8)
			elseif type(Callback) == "thread" and coroutine.status(Callback) == "suspended" then
				task.defer(Callback, v_8)
			end
		end
	end
	debug.profileend()
	debug.profileend()
end
module_5_upvr.RenderStepped = RenderStepped_upvr
RenderStepped_upvr = module_11_upvr.TableFreezeAll
PopupUpperScreenTextUIDestroy_upvr = module_5_upvr
RenderStepped_upvr(PopupUpperScreenTextUIDestroy_upvr)
return module_5_upvr