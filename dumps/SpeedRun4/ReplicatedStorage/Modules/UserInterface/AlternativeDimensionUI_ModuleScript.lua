-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:07:15
-- Luau version 6, Types version 3
-- Time taken: 0.010991 seconds

-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
local tbl_5 = {}
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local module_upvr_3 = require(ReplicatedStorage:WaitForChild("Theme"))
local Modules = ReplicatedStorage:WaitForChild("Modules")
local module_upvr_4 = require(Modules:WaitForChild("Dimensions"))
local module_upvr = require(Modules:WaitForChild("UIButton"))
local module_upvr_2 = require(Modules:WaitForChild("UIExclusivityGroups"))
local module_3_upvr = require(Modules:WaitForChild("UIShared"))
local module_5_upvr = require(Modules:WaitForChild("Utility"))
local module = require(Modules:WaitForChild("UserInterface"):WaitForChild("CollectionUISystem"))
local tbl_4_upvr = {}
local any_TableMerge_result1 = module_5_upvr.TableMerge(module.CollectionType, {
	Mirror = 1000;
})
local tbl_3_upvr = {
	[any_TableMerge_result1.Mirror] = require(Modules:WaitForChild("LevelLoader"):WaitForChild("DimensionCommon")).ManagedDimension_ById.Mirror;
}
local tbl_6_upvr = {}
for i, v in tbl_3_upvr do
	tbl_6_upvr[v] = i
end
local module_2_upvr = require(Modules:WaitForChild("ClientData"))
function tbl_5.IsOpen() -- Line 61
	--[[ Upvalues[3]:
		[1]: module_2_upvr (readonly)
		[2]: module_3_upvr (readonly)
		[3]: module_upvr_2 (readonly)
	]]
	local var37 = not module_2_upvr.Flags.LoadingScreenActive
	if var37 then
		var37 = module_3_upvr.UIExclusivityGroup.HasExclusivity(module_upvr_2.AlternativeDimensionUIGroup)
	end
	return var37
end
local any_CollectionUICreate_result1_upvw = module.CollectionUICreate(any_TableMerge_result1, module_5_upvr.HierarchyCreate({{any_TableMerge_result1._UIMain}, {any_TableMerge_result1.Mirror, any_TableMerge_result1._UIMain}}), tbl_5.IsOpen)
any_CollectionUICreate_result1_upvw.Name = "AlternativeDimensionUI"
any_CollectionUICreate_result1_upvw.DisplayOrder = module_upvr_3.DisplayOrder_AlternativeDimensionUI
any_CollectionUICreate_result1_upvw.CloseEnabled = false
local any_Create_result1_upvr = module_3_upvr.UIExclusivityMember.Create(module_upvr_2.AlternativeDimensionUIGroup)
local RenderStepped_2_upvr = any_CollectionUICreate_result1_upvw.RenderStepped
function any_CollectionUICreate_result1_upvw.RenderStepped(arg1, arg2) -- Line 83
	--[[ Upvalues[4]:
		[1]: module_3_upvr (readonly)
		[2]: any_Create_result1_upvr (readonly)
		[3]: any_CollectionUICreate_result1_upvw (read and write)
		[4]: RenderStepped_2_upvr (readonly)
	]]
	module_3_upvr.UIExclusivityMember.SetActive(any_Create_result1_upvr, any_CollectionUICreate_result1_upvw.State.RequestMade)
	RenderStepped_2_upvr(arg1, arg2)
end
RenderStepped_2_upvr = {}
local var42_upvr = RenderStepped_2_upvr
var42_upvr.HeaderSizeEm = 3
var42_upvr.TextSizeEm = 1.1
var42_upvr.TextSizeLargeEm = 1.3
var42_upvr.TextSizeSmallEm = 0.9
var42_upvr.WrapperSizeEm = 36
tbl_4_upvr.ModeSpecs_ByType = {
	[any_TableMerge_result1.Mirror] = {{
		Mode = module_upvr_4.AlternativeModes.Mirror_Thin;
		Text = "Thin Mode";
	}, {
		Mode = module_upvr_4.AlternativeModes.Mirror_Flat;
		Text = "Flat Mode";
	}, {
		Mode = module_upvr_4.AlternativeModes.Mirror_ZoomedIn;
		Text = "Zoomed-In Mode";
	}, {
		Mode = module_upvr_4.AlternativeModes.Mirror_Slanted;
		Text = "Slanted Mode";
	}};
}
tbl_4_upvr.Formats = {
	Prompt = "In these levels, '%s' will now be replaced by".."a different, special mode of your choice! Choose wisely..";
	Name = "%s Mode";
}
function tbl_4_upvr.Initialize(arg1) -- Line 133
	--[[ Upvalues[7]:
		[1]: module_3_upvr (readonly)
		[2]: tbl_3_upvr (readonly)
		[3]: module_upvr_4 (readonly)
		[4]: tbl_4_upvr (readonly)
		[5]: module_5_upvr (readonly)
		[6]: module_upvr_3 (readonly)
		[7]: module_upvr (readonly)
	]]
	local module_4 = {
		Modes = {};
		Flag = module_3_upvr.TextBoundsFlagCreate();
	}
	local var55_upvr = tbl_3_upvr[arg1._Type]
	local formatted = string.format(tbl_4_upvr.Formats.Name, module_5_upvr.FormatString_MakeProper(module_upvr_4.Data_ById[var55_upvr.Id].Name))
	module_4.HeaderLabel = module_5_upvr.I("TextLabel", module_3_upvr.Properties.Text_Scaled, {
		FontFace = module_upvr_3.FontFaceNormal;
		Text = formatted;
		TextColor3 = module_upvr_3.TextColor1;
		Parent = arg1.Wrapper;
	})
	module_4.PromptText = string.format(tbl_4_upvr.Formats.Prompt, formatted)
	local any_TextBoundsLabelCreate_result1, any_TextBoundsLabelCreate_result2 = module_3_upvr.TextBoundsLabelCreate(arg1.Wrapper, module_4.PromptText, module_4.Flag)
	module_4.PromptLabel = any_TextBoundsLabelCreate_result1
	module_4.PromptBounds = any_TextBoundsLabelCreate_result2
	module_4.PromptLabel.TextXAlignment = Enum.TextXAlignment.Left
	for i_2, v_2_upvr in tbl_4_upvr.ModeSpecs_ByType[arg1._Type] do
		local tbl = {
			Spec = v_2_upvr;
			Button = module_upvr.Button.CreateFancy(arg1.Wrapper, module_upvr.Button.Themes.Action, {
				Text = v_2_upvr.Text;
			});
			Bounds = module_3_upvr.CachedTextBounds_FromLabel(tbl.Button.Label);
		}
		tbl.Bounds.Flag = module_4.Flag
		tbl.Button.Button.Activated:Connect(function() -- Line 190
			--[[ Upvalues[2]:
				[1]: var55_upvr (readonly)
				[2]: v_2_upvr (readonly)
			]]
			var55_upvr.Mode = v_2_upvr.Mode
		end)
		module_4.Modes[i_2] = tbl
	end
	return module_5_upvr.TableMerge(module_4, arg1)
end
function tbl_4_upvr.Destroy(arg1) -- Line 206
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	for _, v_3 in arg1.Modes do
		module_upvr.Button.Destroy(v_3.Button)
	end
end
function tbl_4_upvr.Update(arg1, arg2, arg3) -- Line 215
	--[[ Upvalues[4]:
		[1]: module_3_upvr (readonly)
		[2]: any_CollectionUICreate_result1_upvw (read and write)
		[3]: var42_upvr (readonly)
		[4]: module_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var89
	if module_3_upvr.TextBoundsFlagCheck(arg1.Flag) or arg1.DrawDirty then
		local EdgePadX = any_CollectionUICreate_result1_upvw.Properties.EdgePadX
		local EdgePadY = any_CollectionUICreate_result1_upvw.Properties.EdgePadY
		var89 = var42_upvr
		var89 = module_3_upvr
		var89 = var42_upvr.TextSizeEm
		local var93 = var89.EmSize * var89 // 1
		var89 = #arg1.Modes
		var89 = (#arg1.Modes - 1) * any_CollectionUICreate_result1_upvw.Properties.PadX
		for i_4, v_4 in arg1.Modes do
			if module_3_upvr.CachedTextBoundsUpdate(v_4.Bounds, v_4.Spec.Text, module_3_upvr.SteppedSize.ButtonFancyText) then
				module_upvr.Button.AdjustText(v_4.Button, nil, nil, v_4.Bounds.X, v_4.Bounds.Y)
			end
			local maximum = math.max(v_4.Bounds.X + module_3_upvr.SteppedSize.ButtonFancyY - v_4.Bounds.Y, module_3_upvr.SteppedSize.ButtonFancyX)
			table.create(var89)[i_4] = maximum
			var89 += maximum
			v_4.Button.Button.Size = UDim2.fromOffset(maximum, module_3_upvr.SteppedSize.ButtonFancyY)
		end
		local maximum_2 = math.max(module_3_upvr.EmSize * var42_upvr.WrapperSizeEm // 1, var89 + 2 * EdgePadX)
		local var97 = maximum_2 - 2 * EdgePadX
		if module_3_upvr.CachedTextBoundsUpdate(arg1.PromptBounds, arg1.PromptText, var93, var97) then
			arg1.PromptLabel.TextSize = var93
		end
		local any_DimTrackerCreate_result1 = module_3_upvr.DimTrackerCreate()
		module_3_upvr.DimTrackerPad(any_DimTrackerCreate_result1, 0, EdgePadY)
		module_3_upvr.DimTrackerAdd(any_DimTrackerCreate_result1, arg1.HeaderLabel, 0, module_3_upvr.EmSize * var89.HeaderSizeEm // 1)
		module_3_upvr.DimTrackerPad(any_DimTrackerCreate_result1, 0, EdgePadY)
		module_3_upvr.DimTrackerAdd(any_DimTrackerCreate_result1, arg1.PromptLabel, 0, arg1.PromptBounds.Y)
		module_3_upvr.DimTrackerPad(any_DimTrackerCreate_result1, 0, EdgePadY)
		for _, v_5 in arg1.Modes do
			v_5.Button.Button.Position = UDim2.fromOffset((maximum_2 * 0.5 - var89 * 0.5) // 1, any_DimTrackerCreate_result1.Offset)
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
			local var99
		end
		module_3_upvr.DimTrackerPad(any_DimTrackerCreate_result1, 0, module_3_upvr.SteppedSize.ButtonFancyY + EdgePadY)
		local tbl_2 = {
			Position = UDim.new(0, EdgePadX);
			Size = UDim.new(0, var97);
		}
		module_3_upvr.DimTrackerApply(any_DimTrackerCreate_result1, {
			[arg1.HeaderLabel] = tbl_2;
			[arg1.PromptLabel] = tbl_2;
		}, true)
		arg1.TargetSize = UDim2.fromOffset(maximum_2, any_DimTrackerCreate_result1.Offset)
	end
	for _, v_6 in arg1.Modes do
		module_upvr.Button.Update(v_6.Button, arg3)
	end
end
for _, v_7 in tbl_6_upvr do
	any_CollectionUICreate_result1_upvw.CollectionMethods_ByType[v_7] = tbl_4_upvr
	local var102_upvw
end
function tbl_5.PromptModesForDimension(arg1) -- Line 330
	--[[ Upvalues[2]:
		[1]: tbl_6_upvr (readonly)
		[2]: var102_upvw (read and write)
	]]
	local var103 = tbl_6_upvr[arg1]
	if var103 then
		var102_upvw.RequestCollection(var103)
	end
end
return module_5_upvr.TableMerge(tbl_5, var102_upvw)