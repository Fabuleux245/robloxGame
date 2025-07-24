-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:02:08
-- Luau version 6, Types version 3
-- Time taken: 0.010157 seconds

local ContextActionService_upvr = game:GetService("ContextActionService")
local TweenService_upvr = game:GetService("TweenService")
local Create_upvr = require(game:GetService("CorePackages").Workspace.Packages.AppCommonLib).Create
local Color3_new_result1_upvr = Color3.new(0, 0, 0)
local TweenInfo_new_result1_upvr_2 = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut, 0, true, 0)
local var6_upvw
local tbl_upvr_4 = {}
local tbl_upvr_3 = {}
local tbl_upvr_2 = {}
local tbl_upvr = {}
local tbl_4_upvr = {}
local tbl_8_upvr = {}
local tbl_3_upvr = {}
local var14_upvw = true
local _ = {
	BoundInputType = 3;
	TableHeader = 2;
	BoundAction = 1;
}
local function sortInputTypeRows_upvr(arg1, arg2) -- Line 42, Named "sortInputTypeRows"
	--[[ Upvalues[1]:
		[1]: tbl_upvr_3 (readonly)
	]]
	local var16 = tbl_upvr_3
	if tostring(tbl_upvr_3[arg1]) >= tostring(var16[arg2]) then
		var16 = false
	else
		var16 = true
	end
	return var16
end
local function sortActionRows_upvr(arg1, arg2) -- Line 48, Named "sortActionRows"
	--[[ Upvalues[2]:
		[1]: tbl_upvr (readonly)
		[2]: tbl_4_upvr (readonly)
	]]
	local var23 = tbl_upvr[arg1]
	local var24 = tbl_upvr[arg2]
	if var23 and var24 then
		local var25 = tbl_4_upvr[arg1]
		local var26 = tbl_4_upvr
		local var27 = var26[arg2]
		if var25 ~= var27 then
			if tostring(var25) >= tostring(var27) then
				var26 = false
			else
				var26 = true
			end
			return var26
		end
		if var23.isCore then
			if not var24.isCore then
				return true
			end
		end
		if not var23.isCore then
			if var24.isCore then
				return false
			end
		end
		local stackOrder_3 = var23.stackOrder
		local stackOrder = var24.stackOrder
		local var30
		if stackOrder_3 and stackOrder then
			if stackOrder >= stackOrder_3 then
				var30 = false
			else
				var30 = true
			end
			return var30
		end
		return true
	end
	return true
end
local function createEmptyRow_upvr(arg1, arg2) -- Line 74, Named "createEmptyRow"
	--[[ Upvalues[1]:
		[1]: Create_upvr (readonly)
	]]
	local tbl_2 = {}
	tbl_2.Name = arg1
	tbl_2.BackgroundTransparency = 1
	tbl_2.ZIndex = 6
	tbl_2.Size = UDim2.new(1, 0, 0, arg2 or 0)
	local var32 = Create_upvr("Frame")(tbl_2)
	local _ = {
		FillDirection = Enum.FillDirection.Horizontal;
		SortOrder = Enum.SortOrder.LayoutOrder;
		Padding = UDim.new(0, 5);
		Parent = var32;
	}
	return var32
end
local function createButtonRow_upvr(arg1, arg2) -- Line 90, Named "createButtonRow"
	--[[ Upvalues[1]:
		[1]: Create_upvr (readonly)
	]]
	local tbl = {}
	tbl.Name = arg1
	tbl.BackgroundTransparency = 1
	tbl.ZIndex = 6
	tbl.Text = ""
	tbl.Size = UDim2.new(1, 0, 0, arg2 or 0)
	local var35 = Create_upvr("TextButton")(tbl)
	local _ = {
		FillDirection = Enum.FillDirection.Horizontal;
		SortOrder = Enum.SortOrder.LayoutOrder;
		Padding = UDim.new(0, 5);
		Parent = var35;
	}
	return var35
end
local function createEmptyColumn_upvr(arg1, arg2) -- Line 107, Named "createEmptyColumn"
	--[[ Upvalues[1]:
		[1]: Create_upvr (readonly)
	]]
	local module = {}
	module.Name = arg2
	module.BackgroundColor3 = Color3.new(0, 0, 0)
	module.BackgroundTransparency = 0.75
	module.BorderSizePixel = 0
	module.Size = UDim2.new(1, 0, 1, 0)
	module.ZIndex = 6
	module.ClipsDescendants = true
	module.Parent = arg1
	return Create_upvr("Frame")(module)
end
local function createImageColumn_upvr(arg1, arg2, arg3, arg4, arg5) -- Line 122, Named "createImageColumn"
	--[[ Upvalues[2]:
		[1]: createEmptyColumn_upvr (readonly)
		[2]: Create_upvr (readonly)
	]]
	local createEmptyColumn_upvr_result1 = createEmptyColumn_upvr(arg1, arg2)
	local _ = {
		AspectRatio = arg4 or 1;
		Parent = createEmptyColumn_upvr_result1;
	}
	local tbl_7 = {
		Name = "ColumnImage";
		BackgroundTransparency = 1;
		Position = UDim2.new(0.5, 0, 0.5, 0);
		Size = UDim2.new(arg5 or 1, 0, arg5 or 1, 0);
		AnchorPoint = Vector2.new(0.5, 0.5);
		ZIndex = 6;
	}
	tbl_7.Image = arg3
	tbl_7.Parent = createEmptyColumn_upvr_result1
	return createEmptyColumn_upvr_result1
end
local function createTextColumn_upvr(arg1, arg2, arg3) -- Line 144, Named "createTextColumn"
	--[[ Upvalues[2]:
		[1]: createEmptyColumn_upvr (readonly)
		[2]: Create_upvr (readonly)
	]]
	local createEmptyColumn_result1 = createEmptyColumn_upvr(arg1, arg2)
	local tbl_6 = {
		Name = "ColumnText";
		BackgroundTransparency = 1;
		Position = UDim2.new(0.5, 0, 0.5, 0);
		Size = UDim2.new(1, -10, 1, -10);
		AnchorPoint = Vector2.new(0.5, 0.5);
		ZIndex = 6;
	}
	tbl_6.Text = arg3
	tbl_6.TextSize = 18
	tbl_6.TextColor3 = Color3.new(1, 1, 1)
	tbl_6.TextXAlignment = Enum.TextXAlignment.Left
	tbl_6.Font = Enum.Font.SourceSans
	tbl_6.Parent = createEmptyColumn_result1
	return createEmptyColumn_result1
end
local function createActionColumns_upvr(arg1, arg2) -- Line 165, Named "createActionColumns"
	--[[ Upvalues[2]:
		[1]: createEmptyColumn_upvr (readonly)
		[2]: createTextColumn_upvr (readonly)
	]]
	local createEmptyColumn_upvr_result1_2 = createEmptyColumn_upvr(arg1, "Inset")
	createEmptyColumn_upvr_result1_2.LayoutOrder = 0
	createEmptyColumn_upvr_result1_2.BackgroundTransparency = 1
	createEmptyColumn_upvr_result1_2.Size = UDim2.new(0, 30, 1, 0)
	local createTextColumn_upvr_result1_2 = createTextColumn_upvr(arg1, "Priority", "Priority")
	createTextColumn_upvr_result1_2.LayoutOrder = 1
	createTextColumn_upvr_result1_2.BackgroundColor3 = arg2
	createTextColumn_upvr_result1_2.Size = UDim2.new(0, 80, 1, 0)
	local createTextColumn_result1_2 = createTextColumn_upvr(arg1, "Security", "Security")
	createTextColumn_result1_2.LayoutOrder = 2
	createTextColumn_result1_2.BackgroundColor3 = arg2
	createTextColumn_result1_2.Size = UDim2.new(0, 80, 1, 0)
	local createTextColumn_result1 = createTextColumn_upvr(arg1, "ActionName", "Action Name")
	createTextColumn_result1.LayoutOrder = 3
	createTextColumn_result1.BackgroundColor3 = arg2
	createTextColumn_result1.Size = UDim2.new(0.25, 0, 1, 0)
	local createTextColumn_upvr_result1 = createTextColumn_upvr(arg1, "InputTypes", "Input Types")
	createTextColumn_upvr_result1.LayoutOrder = 4
	createTextColumn_upvr_result1.BackgroundColor3 = arg2
	createTextColumn_upvr_result1.Size = UDim2.new(0.75, -(0 + 30 + 5 + 80 + 5 + 80 + 5) - 5, 1, 0)
	return createEmptyColumn_upvr_result1_2, createTextColumn_upvr_result1_2, createTextColumn_result1_2, createTextColumn_result1, createTextColumn_upvr_result1
end
local function updateContainerCanvas_upvr() -- Line 202, Named "updateContainerCanvas"
	--[[ Upvalues[7]:
		[1]: var14_upvw (read and write)
		[2]: tbl_upvr_4 (readonly)
		[3]: sortInputTypeRows_upvr (readonly)
		[4]: tbl_upvr_3 (readonly)
		[5]: tbl_8_upvr (readonly)
		[6]: tbl_upvr_2 (readonly)
		[7]: sortActionRows_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	debug.profilebegin("updateContainerCanvas")
	if var14_upvw then
		var14_upvw = false
		for _, v in pairs(tbl_upvr_4) do
			table.insert({}, v)
			local var85
		end
		table.sort(var85, sortInputTypeRows_upvr)
		for _, v_2 in pairs(var85) do
			local var89 = tbl_upvr_3[v_2]
			v_2.LayoutOrder = 1
			local var90 = tbl_8_upvr[var89]
			local var91
			if var90 then
				var90.LayoutOrder = var91
				var91 += 1
			end
			local var92 = tbl_upvr_2[var89]
			if var92 then
				for _, v_3 in pairs(var92) do
					table.insert({}, v_3)
					local var97
				end
				table.sort(var97, sortActionRows_upvr)
				for _, v_4 in pairs(var97) do
					v_4.LayoutOrder = var91
					var91 += 1
				end
			end
		end
	end
	debug.profileend()
end
local TweenInfo_new_result1_upvr = TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut)
local function scrollContainerToRow_upvr(arg1) -- Line 244, Named "scrollContainerToRow"
	--[[ Upvalues[3]:
		[1]: var6_upvw (read and write)
		[2]: TweenService_upvr (readonly)
		[3]: TweenInfo_new_result1_upvr (readonly)
	]]
	TweenService_upvr:Create(var6_upvw, TweenInfo_new_result1_upvr, {
		CanvasPosition = var6_upvw.CanvasPosition + Vector2.new(0, arg1.AbsolutePosition.Y - var6_upvw.AbsolutePosition.Y);
	}):Play()
end
local module_2_upvr = {}
function module_2_upvr.initializeGui(arg1) -- Line 252
	--[[ Upvalues[6]:
		[1]: Create_upvr (readonly)
		[2]: var6_upvw (read and write)
		[3]: module_2_upvr (readonly)
		[4]: ContextActionService_upvr (readonly)
		[5]: var14_upvw (read and write)
		[6]: updateContainerCanvas_upvr (readonly)
	]]
	local tbl_5 = {
		Position = UDim2.new(0.5, 0, 0.5, 0);
		Size = UDim2.new(1, -10, 1, -10);
		AnchorPoint = Vector2.new(0.5, 0.5);
		BorderSizePixel = 0;
		ScrollBarThickness = 4;
		BackgroundTransparency = 1;
		ZIndex = 6;
	}
	tbl_5.Parent = arg1
	local var105 = Create_upvr("ScrollingFrame")(tbl_5)
	var6_upvw = var105
	local var107_upvr = Create_upvr("UIListLayout")({
		Padding = UDim.new(0, 5);
		Parent = var105;
	})
	var107_upvr.SortOrder = Enum.SortOrder.LayoutOrder
	var107_upvr:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function() -- Line 270
		--[[ Upvalues[2]:
			[1]: var6_upvw (copied, read and write)
			[2]: var107_upvr (readonly)
		]]
		var6_upvw.CanvasSize = UDim2.new(0, 0, 0, var107_upvr.AbsoluteContentSize.Y)
	end)
	module_2_upvr.updateGuis()
	ContextActionService_upvr.BoundActionAdded:connect(function(arg1_2, arg2, arg3, arg4) -- Line 274
		--[[ Upvalues[3]:
			[1]: module_2_upvr (copied, readonly)
			[2]: var14_upvw (copied, read and write)
			[3]: updateContainerCanvas_upvr (copied, readonly)
		]]
		arg3.isCore = arg4
		module_2_upvr.updateActionRows(arg1_2, arg3)
		var14_upvw = true
		updateContainerCanvas_upvr()
	end)
	ContextActionService_upvr.BoundActionRemoved:connect(function(arg1_3, arg2, arg3) -- Line 281
		--[[ Upvalues[3]:
			[1]: module_2_upvr (copied, readonly)
			[2]: var14_upvw (copied, read and write)
			[3]: updateContainerCanvas_upvr (copied, readonly)
		]]
		arg2.isCore = arg3
		module_2_upvr.removeActionRows(arg1_3, arg2)
		var14_upvw = true
		updateContainerCanvas_upvr()
	end)
end
local tbl_9_upvr = {}
function module_2_upvr.updateBoundInputTypeRow(arg1) -- Line 290
	--[[ Upvalues[17]:
		[1]: tbl_upvr_4 (readonly)
		[2]: createButtonRow_upvr (readonly)
		[3]: createImageColumn_upvr (readonly)
		[4]: createTextColumn_upvr (readonly)
		[5]: createEmptyRow_upvr (readonly)
		[6]: createActionColumns_upvr (readonly)
		[7]: Color3_new_result1_upvr (readonly)
		[8]: tbl_upvr_3 (readonly)
		[9]: tbl_9_upvr (readonly)
		[10]: tbl_8_upvr (readonly)
		[11]: var6_upvw (read and write)
		[12]: TweenService_upvr (readonly)
		[13]: TweenInfo_new_result1_upvr_2 (readonly)
		[14]: tbl_3_upvr (readonly)
		[15]: tbl_upvr_2 (readonly)
		[16]: updateContainerCanvas_upvr (readonly)
		[17]: scrollContainerToRow_upvr (readonly)
	]]
	if not tbl_upvr_4[arg1] then
		local createButtonRow_upvr_result1_upvr = createButtonRow_upvr("BoundInputType", 30)
		local createImageColumn_upvr_result1_upvr = createImageColumn_upvr(createButtonRow_upvr_result1_upvr, "ExpandImage", "rbxasset://textures/ui/ExpandArrowSheet.png", 1, 0.35)
		createImageColumn_upvr_result1_upvr.ColumnImage.ImageRectSize = Vector2.new(21, 21)
		createImageColumn_upvr_result1_upvr.ColumnImage.ImageRectOffset = Vector2.new(0, 0)
		local createTextColumn_upvr_result1_upvr = createTextColumn_upvr(createButtonRow_upvr_result1_upvr, "InputType", tostring(arg1))
		createTextColumn_upvr_result1_upvr.Size = UDim2.new(1, -35, 1, 0)
		createTextColumn_upvr_result1_upvr.ColumnText.Font = Enum.Font.SourceSansBold
		local createEmptyRow_result1_upvr = createEmptyRow_upvr("TableHeader", 20)
		createEmptyRow_result1_upvr.Visible = false
		local _, createActionColumns_upvr_result2, createActionColumns_result3_2, createActionColumns_result4_2, createActionColumns_result5_2 = createActionColumns_upvr(createEmptyRow_result1_upvr, Color3_new_result1_upvr)
		createActionColumns_upvr_result2.ColumnText.Font = Enum.Font.SourceSansBold
		createActionColumns_result3_2.ColumnText.Font = Enum.Font.SourceSansBold
		createActionColumns_result4_2.ColumnText.Font = Enum.Font.SourceSansBold
		createActionColumns_result5_2.ColumnText.Font = Enum.Font.SourceSansBold
		tbl_upvr_4[arg1] = createButtonRow_upvr_result1_upvr
		tbl_upvr_3[createButtonRow_upvr_result1_upvr] = arg1
		tbl_9_upvr[createEmptyRow_result1_upvr] = arg1
		tbl_8_upvr[arg1] = createEmptyRow_result1_upvr
		createEmptyRow_result1_upvr.Parent = var6_upvw
		createButtonRow_upvr_result1_upvr.Parent = var6_upvw
		TweenService_upvr:Create(createTextColumn_upvr_result1_upvr, TweenInfo_new_result1_upvr_2, {
			BackgroundColor3 = Color3.new(0.5, 0.5, 0.5);
		}):Play()
		tbl_3_upvr[arg1] = false
		createButtonRow_upvr_result1_upvr.MouseButton1Click:connect(function() -- Line 322
			--[[ Upvalues[11]:
				[1]: tbl_3_upvr (copied, readonly)
				[2]: arg1 (readonly)
				[3]: tbl_upvr_2 (copied, readonly)
				[4]: createImageColumn_upvr_result1_upvr (readonly)
				[5]: createEmptyRow_result1_upvr (readonly)
				[6]: updateContainerCanvas_upvr (copied, readonly)
				[7]: TweenService_upvr (copied, readonly)
				[8]: createTextColumn_upvr_result1_upvr (readonly)
				[9]: TweenInfo_new_result1_upvr_2 (copied, readonly)
				[10]: scrollContainerToRow_upvr (copied, readonly)
				[11]: createButtonRow_upvr_result1_upvr (readonly)
			]]
			tbl_3_upvr[arg1] = not tbl_3_upvr[arg1]
			local var127 = tbl_upvr_2[arg1]
			if not tbl_3_upvr[arg1] then
				createImageColumn_upvr_result1_upvr.ColumnImage.ImageRectOffset = Vector2.new(0, 0)
				createEmptyRow_result1_upvr.Visible = false
				if var127 then
					for i_5, v_5 in pairs(var127) do
						v_5.Visible = false
					end
					-- KONSTANTWARNING: GOTO [65] #52
				end
			else
				i_5 = 0
				createImageColumn_upvr_result1_upvr.ColumnImage.ImageRectOffset = Vector2.new(21, i_5)
				createEmptyRow_result1_upvr.Visible = true
				if var127 then
					for _, v_6 in pairs(var127) do
						v_6.Visible = true
					end
				end
			end
			updateContainerCanvas_upvr()
			if tbl_3_upvr[arg1] then
				TweenService_upvr:Create(createTextColumn_upvr_result1_upvr, TweenInfo_new_result1_upvr_2, {
					BackgroundColor3 = Color3.new(0.5, 0.5, 0.5);
				}):Play()
				scrollContainerToRow_upvr(createButtonRow_upvr_result1_upvr)
			end
		end)
	end
end
local Color3_new_result1_upvr_2 = Color3.new(0.1, 0, 0)
function module_2_upvr.updateActionRowForInputType(arg1, arg2, arg3) -- Line 353
	--[[ Upvalues[12]:
		[1]: tbl_upvr_2 (readonly)
		[2]: createEmptyRow_upvr (readonly)
		[3]: tbl_3_upvr (readonly)
		[4]: createActionColumns_upvr (readonly)
		[5]: Color3_new_result1_upvr_2 (readonly)
		[6]: Color3_new_result1_upvr (readonly)
		[7]: tbl_4_upvr (readonly)
		[8]: tbl_upvr (readonly)
		[9]: var6_upvw (read and write)
		[10]: TweenService_upvr (readonly)
		[11]: TweenInfo_new_result1_upvr_2 (readonly)
		[12]: tbl_upvr_4 (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var144 = tbl_upvr_2[arg3]
	if not var144 then
		var144 = {}
		tbl_upvr_2[arg3] = var144
	end
	local var145
	if not var144[arg1] then
		local createEmptyRow_result1 = createEmptyRow_upvr("BoundAction", 20)
		createEmptyRow_result1.Visible = tbl_3_upvr[arg3]
		local pairs_result1_2, pairs_result2_4, pairs_result3_2 = pairs(arg2.inputTypes)
		for i_7, v_7 in pairs_result1_2, pairs_result2_4, pairs_result3_2 do
			({})[i_7] = tostring(v_7)
			local var150
		end
		local function INLINED() -- Internal function, doesn't exist in bytecode
			pairs_result3_2 = Color3_new_result1_upvr_2
			return pairs_result3_2
		end
		if not arg2.isCore or not INLINED() then
			pairs_result3_2 = Color3_new_result1_upvr
		end
		local _, createActionColumns_result2, createActionColumns_result3, createActionColumns_result4, createActionColumns_result5 = createActionColumns_upvr(createEmptyRow_result1, pairs_result3_2)
		createActionColumns_result2.ColumnText.Text = arg2.priorityLevel or "Default"
		if arg2.isCore then
		else
		end
		createActionColumns_result3.ColumnText.Text = "Developer"
		createActionColumns_result4.ColumnText.Text = arg1
		createActionColumns_result5.ColumnText.Text = table.concat(var150, ", ")
		if arg2.isCore then
			createActionColumns_result2.ColumnText.Font = Enum.Font.SourceSansItalic
			createActionColumns_result3.ColumnText.Font = Enum.Font.SourceSansItalic
			createActionColumns_result4.ColumnText.Font = Enum.Font.SourceSansItalic
			createActionColumns_result5.ColumnText.Font = Enum.Font.SourceSansItalic
		end
		var144[arg1] = createEmptyRow_result1
		tbl_4_upvr[createEmptyRow_result1] = arg3
		tbl_upvr[createEmptyRow_result1] = arg2
		createEmptyRow_result1.Parent = var6_upvw
		if createEmptyRow_result1.Visible then
			TweenService_upvr:Create(createActionColumns_result4, TweenInfo_new_result1_upvr_2, {
				BackgroundColor3 = Color3.new(0.5, 0.5, 0.5);
			}):Play()
		else
			local var157 = tbl_upvr_4[arg3]
			if var157 then
				TweenService_upvr:Create(var157.InputType, TweenInfo_new_result1_upvr_2, {
					BackgroundColor3 = Color3.new(0.5, 0.5, 0.5);
				}):Play()
			end
		end
	end
end
function module_2_upvr.updateActionRows(arg1, arg2) -- Line 401
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	for _, v_8 in pairs(arg2.inputTypes) do
		module_2_upvr.updateBoundInputTypeRow(v_8)
		module_2_upvr.updateActionRowForInputType(arg1, arg2, v_8)
	end
end
function module_2_upvr.removeActionRows(arg1, arg2) -- Line 408
	--[[ Upvalues[5]:
		[1]: tbl_upvr_2 (readonly)
		[2]: tbl_upvr_4 (readonly)
		[3]: tbl_8_upvr (readonly)
		[4]: updateContainerCanvas_upvr (readonly)
		[5]: var6_upvw (read and write)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local pairs_result1_5, pairs_result2_2, pairs_result3_4 = pairs(arg2.inputTypes)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [47] 41. Error Block 11 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [47] 41. Error Block 11 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [6] 5. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [47.7]
	-- KONSTANTERROR: [6] 5. Error Block 2 end (CF ANALYSIS FAILED)
end
function module_2_upvr.updateGuis() -- Line 445
	--[[ Upvalues[4]:
		[1]: ContextActionService_upvr (readonly)
		[2]: module_2_upvr (readonly)
		[3]: var14_upvw (read and write)
		[4]: updateContainerCanvas_upvr (readonly)
	]]
	for i_9, v_9 in pairs(ContextActionService_upvr:GetAllBoundCoreActionInfo()) do
		v_9.isCore = true
		module_2_upvr.updateActionRows(i_9, v_9)
	end
	for i_10, v_10 in pairs(ContextActionService_upvr:GetAllBoundActionInfo()) do
		v_10.isCore = false
		module_2_upvr.updateActionRows(i_10, v_10)
	end
	var14_upvw = true
	updateContainerCanvas_upvr()
end
return module_2_upvr