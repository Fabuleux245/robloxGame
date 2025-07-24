-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:07:20
-- Luau version 6, Types version 3
-- Time taken: 0.008209 seconds

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Modules = ReplicatedStorage:WaitForChild("Modules")
local module_upvr_2 = require(Modules:WaitForChild("UIShared"))
local UserInterface = Modules:WaitForChild("UserInterface")
local module_upvr_3 = require(UserInterface:WaitForChild("CollectionUISystem"))
local module_upvr_7 = require(UserInterface:WaitForChild("LevelMenuUI"):WaitForChild("LevelMenuUICommon"))
local tbl_3_upvr = {
	Formats = {
		Clears = "Times Beaten: %s";
		Info = "\"Best Time\" only tracks runs without Gamepass tools.";
		Star = "Star:";
		Time = "Best Time: %s";
		Title = "Level Stats";
		Total = "Total Runs: %s";
	};
}
if require(ReplicatedStorage:WaitForChild("Settings")).CarryInteract_Enabled then
	tbl_3_upvr.Formats.Info = string.sub(tbl_3_upvr.Formats.Info, 1, -2).." or being carried."
end
local module_upvr_4 = require(Modules:WaitForChild("Utility"))
local module_upvr = require(ReplicatedStorage:WaitForChild("Theme"))
local module_upvr_6 = require(Modules:WaitForChild("Worlds"))
local module_upvr_8 = require(ReplicatedStorage:WaitForChild("CommonData"))
local module_upvr_5 = require(Modules:WaitForChild("ClientData"))
function tbl_3_upvr.Initialize(arg1) -- Line 55
	--[[ Upvalues[9]:
		[1]: module_upvr_4 (readonly)
		[2]: module_upvr_2 (readonly)
		[3]: module_upvr_3 (readonly)
		[4]: tbl_3_upvr (readonly)
		[5]: module_upvr (readonly)
		[6]: module_upvr_6 (readonly)
		[7]: module_upvr_7 (readonly)
		[8]: module_upvr_8 (readonly)
		[9]: module_upvr_5 (readonly)
	]]
	local LevelData_upvr = arg1.Parent.LevelData
	local tbl = {
		_Connections = {};
		StarIcons = {};
		CompletionsTotal = nil;
		CompletionsValid = nil;
		StarsEarned = nil;
		TimeBest = module_upvr_4.NilToken;
		ClearsText = "";
		TimeText = "";
		TotalText = "";
		Flag = module_upvr_2.TextBoundsFlagCreate();
		TitleHeader = module_upvr_3.MenuHeaderCreate(tbl_3_upvr.Formats.Title, arg1.Wrapper);
	}
	local any_TextBoundsLabelCreate_result1_3, any_TextBoundsLabelCreate_result2_4 = module_upvr_2.TextBoundsLabelCreate(arg1.Wrapper, tbl_3_upvr.Formats.Info, tbl.Flag, nil, module_upvr.TextColor3)
	tbl.InfoLabel = any_TextBoundsLabelCreate_result1_3
	tbl.InfoBounds = any_TextBoundsLabelCreate_result2_4
	tbl.InfoLabel.TextTransparency = module_upvr.TextDeemphasizedTransparency2
	local any_TextBoundsLabelCreate_result1, any_TextBoundsLabelCreate_result2_2 = module_upvr_2.TextBoundsLabelCreate(arg1.Wrapper, tbl_3_upvr.Formats.Star, tbl.Flag)
	tbl.StarLabel = any_TextBoundsLabelCreate_result1
	tbl.StarBounds = any_TextBoundsLabelCreate_result2_2
	local any_TextBoundsLabelCreate_result1_4, any_TextBoundsLabelCreate_result2_3 = module_upvr_2.TextBoundsLabelCreate(arg1.Wrapper, tbl.TimeText, tbl.Flag)
	tbl.TimeLabel = any_TextBoundsLabelCreate_result1_4
	tbl.TimeBounds = any_TextBoundsLabelCreate_result2_3
	local any_TextBoundsLabelCreate_result1_2, any_TextBoundsLabelCreate_result2 = module_upvr_2.TextBoundsLabelCreate(arg1.Wrapper, tbl.ClearsText, tbl.Flag)
	tbl.ClearsLabel = any_TextBoundsLabelCreate_result1_2
	tbl.ClearBounds = any_TextBoundsLabelCreate_result2
	local any_TableMerge_result1_upvr = module_upvr_4.TableMerge(tbl, arg1)
	local function UpdateLevelStats_upvr(arg1_2) -- Line 127, Named "UpdateLevelStats"
		--[[ Upvalues[9]:
			[1]: module_upvr_6 (copied, readonly)
			[2]: LevelData_upvr (readonly)
			[3]: any_TableMerge_result1_upvr (readonly)
			[4]: tbl_3_upvr (copied, readonly)
			[5]: module_upvr_4 (copied, readonly)
			[6]: module_upvr (copied, readonly)
			[7]: module_upvr_2 (copied, readonly)
			[8]: arg1 (readonly)
			[9]: module_upvr_7 (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var41 = 0
		local var42 = 0
		local var43
		if arg1_2 then
			var41 = arg1_2.CT or var41
			var43 = arg1_2.TB
			for _, v in arg1_2.S do
				if module_upvr_6.StarIsValid(LevelData_upvr, v) then
					var42 += 1
				end
			end
		end
		local var44 = var41
		if any_TableMerge_result1_upvr.CompletionsValid ~= var44 then
			any_TableMerge_result1_upvr.CompletionsValid = var44
			any_TableMerge_result1_upvr.ClearsText = string.format(tbl_3_upvr.Formats.Clears, module_upvr_4.FormatNumber(var44, module_upvr_4.FormatNumberOptions_AddCommas))
			any_TableMerge_result1_upvr.ClearsLabel.Text = any_TableMerge_result1_upvr.ClearsText
		end
		local var45
		if var45 ~= var42 then
			var45 = any_TableMerge_result1_upvr
			var45.StarsEarned = var42
			if 0 < var42 then
				var45 = module_upvr.StarsIconImage
			else
				var45 = module_upvr.Blocked_256
			end
			local maximum = math.max(1, var42)
			for i_2 = 1, maximum do
				local var47 = any_TableMerge_result1_upvr.StarIcons[i_2]
				if not var47 then
					var47 = module_upvr_4.I("ImageLabel", module_upvr_2.Properties.Image, {
						Parent = arg1.Wrapper;
						ZIndex = -i_2;
					})
					any_TableMerge_result1_upvr.StarIcons[i_2] = var47
				end
				var47.Image = var45
			end
			for i_3 = #any_TableMerge_result1_upvr.StarIcons, maximum + 1, -1 do
				any_TableMerge_result1_upvr.StarIcons[i_3]:Destroy()
				any_TableMerge_result1_upvr.StarIcons[i_3] = nil
			end
		end
		if any_TableMerge_result1_upvr.TimeBest ~= var43 then
			local var49 = any_TableMerge_result1_upvr
			var49.TimeBest = var43
			if var43 then
				var49 = module_upvr_4.FormatNumber_Timer(var43)
			else
				var49 = module_upvr_4.FormatNumber_TimerPlaceholder()
			end
			any_TableMerge_result1_upvr.TimeText = string.format(tbl_3_upvr.Formats.Time, var49)
			any_TableMerge_result1_upvr.TimeLabel.Text = any_TableMerge_result1_upvr.TimeText
		end
		if true then
			module_upvr_7.CollectionMarkDirty(any_TableMerge_result1_upvr, "DrawDirty")
		end
	end
	UpdateLevelStats_upvr(module_upvr_8.SaveDataGetLevelStats(module_upvr_5.LocalSaveData, LevelData_upvr.Id))
	any_TableMerge_result1_upvr._Connections[#any_TableMerge_result1_upvr._Connections + 1] = module_upvr_5.Signals.LevelStatsChanged:Connect(function(arg1_3, arg2) -- Line 249, Named "UpdateStatsOnChange"
		--[[ Upvalues[2]:
			[1]: LevelData_upvr (readonly)
			[2]: UpdateLevelStats_upvr (readonly)
		]]
		if arg1_3 == LevelData_upvr then
			UpdateLevelStats_upvr(arg2)
		end
	end)
	return any_TableMerge_result1_upvr
end
function tbl_3_upvr.Destroy(arg1) -- Line 266
	for _, v_2 in arg1._Connections do
		v_2:Disconnect()
	end
end
local Dims_upvr = module_upvr_7.Dims
function tbl_3_upvr.Update(arg1, arg2, arg3) -- Line 275
	--[[ Upvalues[5]:
		[1]: module_upvr_2 (readonly)
		[2]: module_upvr_7 (readonly)
		[3]: Dims_upvr (readonly)
		[4]: module_upvr_3 (readonly)
		[5]: tbl_3_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	if module_upvr_2.TextBoundsFlagCheck(arg1.Flag) or arg1.DrawDirty then
		local assert_result1 = assert(arg1.Parent)
		local PadX = module_upvr_7.Properties.PadX
		local PadY = module_upvr_7.Properties.PadY
		local var64 = module_upvr_2.EmSize * Dims_upvr.WrapperSizeXEm // 1
		local var65 = var64 - 2 * PadX
		local var66 = var65 * Dims_upvr.ColumnScale // 1
		local var67 = (var64 * 0.5 - var66 * 0.5) // 1
		local var68 = module_upvr_2.EmSize * Dims_upvr.TextSizeLargeEm // 1
		local var69 = module_upvr_2.EmSize * Dims_upvr.TextSizeTitleEm // 1
		local var70 = var69 * 0.5 // 1
		local tbl_2 = {}
		local any_MenuHeaderReposition_result1 = module_upvr_3.MenuHeaderReposition(arg1.TitleHeader, var64, (var64 - var65) * 0.5 // 1 + PadX, 0, Dims_upvr.HeaderTextSizeEm)
		module_upvr_2.DimTrackerPad(any_MenuHeaderReposition_result1, 0, PadY)
		if module_upvr_2.CachedTextBoundsUpdate(arg1.InfoBounds, tbl_3_upvr.Formats.Info, module_upvr_2.EmSize * Dims_upvr.TextSizeSmallEm // 1, var65) then
			arg1.InfoLabel.TextSize = arg1.InfoBounds.TextSize
		end
		module_upvr_2.DimTrackerAdd(any_MenuHeaderReposition_result1, arg1.InfoLabel, 0, arg1.InfoBounds.Y)
		module_upvr_2.DimTrackerPad(any_MenuHeaderReposition_result1, 0, PadY)
		tbl_2[arg1.InfoLabel] = {
			Position = UDim.new(0, (var64 * 0.5 - arg1.InfoBounds.X * 0.5) // 1);
			Size = UDim.new(0, arg1.InfoBounds.X);
		}
		if module_upvr_2.CachedTextBoundsUpdate(arg1.TimeBounds, arg1.TimeText, var68) then
			arg1.TimeLabel.TextSize = arg1.TimeBounds.TextSize
		end
		if module_upvr_2.CachedTextBoundsUpdate(arg1.ClearBounds, arg1.ClearsText, var68) then
			arg1.ClearsLabel.TextSize = arg1.ClearBounds.TextSize
		end
		if module_upvr_2.CachedTextBoundsUpdate(arg1.StarBounds, tbl_3_upvr.Formats.Star, var68) then
			arg1.StarLabel.TextSize = arg1.StarBounds.TextSize
		end
		local var74 = (var67 + var66) - (var69 + var70 * (#arg1.StarIcons - 1))
		local X_3 = arg1.StarBounds.X
		local var76 = (var74) - (X_3 + var68 * 0.5 // 1)
		local X = arg1.TimeBounds.X
		local var78 = var67 + X
		local X_2 = arg1.ClearBounds.X
		arg1.TimeLabel.Position = UDim2.fromOffset(var67, any_MenuHeaderReposition_result1.Offset)
		arg1.TimeLabel.Size = UDim2.fromOffset(X, arg1.TimeBounds.Y)
		arg1.ClearsLabel.Position = UDim2.fromOffset(var78 + ((var76 - var78) * 0.5 - X_2 * 0.5) // 1, any_MenuHeaderReposition_result1.Offset)
		arg1.ClearsLabel.Size = UDim2.fromOffset(X_2, arg1.ClearBounds.Y)
		arg1.StarLabel.Position = UDim2.fromOffset(var76, any_MenuHeaderReposition_result1.Offset)
		arg1.StarLabel.Size = UDim2.fromOffset(X_3, arg1.StarBounds.Y)
		for i_5, v_3 in arg1.StarIcons do
			v_3.Position = UDim2.fromOffset(var74 + var70 * (i_5 - 1), any_MenuHeaderReposition_result1.Offset + (var68 * 0.5 - var69 * 0.5) // 1)
			v_3.Size = UDim2.fromOffset(var69, var69)
			local _
		end
		module_upvr_2.DimTrackerPad(any_MenuHeaderReposition_result1, 0, var69 + PadY)
		module_upvr_2.DimTrackerPad(any_MenuHeaderReposition_result1, 0, PadY)
		module_upvr_2.DimTrackerApply(any_MenuHeaderReposition_result1, tbl_2, true)
		arg1.Wrapper.Position = UDim2.new(arg1.Wrapper.Position.X, UDim.new(0, assert_result1.CollectionPosY))
		arg1.Wrapper.Size = UDim2.fromOffset(var64, any_MenuHeaderReposition_result1.Offset)
		arg1.TargetSize = UDim2.fromOffset(var64, assert_result1.CollectionPosY + any_MenuHeaderReposition_result1.Offset + PadY)
	end
end
module_upvr_7.CollectionMethods_ByType[module_upvr_7.CollectionType.Menu_Stats] = tbl_3_upvr
return {}