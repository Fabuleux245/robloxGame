-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:07:07
-- Luau version 6, Types version 3
-- Time taken: 0.024425 seconds

local module_11_upvr = {}
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local module_5_upvr = require(ReplicatedStorage:WaitForChild("Theme"))
local Modules = ReplicatedStorage:WaitForChild("Modules")
local module_6_upvr = require(Modules:WaitForChild("UIShared"))
local module_8_upvr = require(Modules:WaitForChild("Utility"))
module_11_upvr.CollectionType = table.freeze({
	_UIMain = 0;
})
module_11_upvr.TweenDurations = table.freeze({
	Display = 0.175;
	Standard = 0.375;
})
module_11_upvr.NumberSequences = table.freeze({
	Divider = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.1, 0.75), NumberSequenceKeypoint.new(0.2, 0.25), NumberSequenceKeypoint.new(0.3, 0), NumberSequenceKeypoint.new(0.7, 0), NumberSequenceKeypoint.new(0.8, 0.25), NumberSequenceKeypoint.new(0.9, 0.75), NumberSequenceKeypoint.new(1, 1)});
})
function module_11_upvr.CreateDivider(arg1, arg2) -- Line 133
	--[[ Upvalues[3]:
		[1]: module_8_upvr (readonly)
		[2]: module_5_upvr (readonly)
		[3]: module_11_upvr (readonly)
	]]
	local tbl_5 = {
		Name = "Divider";
		BackgroundColor3 = module_5_upvr.TextColor1;
		BorderSizePixel = 0;
	}
	tbl_5.Parent = arg2
	local any_I_result1 = module_8_upvr.I("Frame", tbl_5)
	local tbl_3 = {}
	tbl_3.Rotation = arg1
	tbl_3.Transparency = module_11_upvr.NumberSequences.Divider
	tbl_3.Parent = any_I_result1
	module_8_upvr.I("UIGradient", tbl_3)
	return any_I_result1
end
local module_9_upvr = require(ReplicatedStorage:WaitForChild("CommonData"))
local module_10_upvr = require(Modules:WaitForChild("Tweens"))
local module_4_upvr = require(Modules:WaitForChild("UISelection"))
local zero_udim2_upvr = UDim2.new()
local module_2_upvr = require(Modules:WaitForChild("UIButton"))
local GuiService_upvr = game:GetService("GuiService")
local module_12_upvr = require(Modules:WaitForChild("ClientData"))
function module_11_upvr.CollectionUICreate(arg1, arg2, arg3) -- Line 158
	--[[ Upvalues[11]:
		[1]: module_11_upvr (readonly)
		[2]: module_9_upvr (readonly)
		[3]: module_5_upvr (readonly)
		[4]: module_8_upvr (readonly)
		[5]: module_10_upvr (readonly)
		[6]: module_4_upvr (readonly)
		[7]: module_6_upvr (readonly)
		[8]: zero_udim2_upvr (readonly)
		[9]: module_2_upvr (readonly)
		[10]: GuiService_upvr (readonly)
		[11]: module_12_upvr (readonly)
	]]
	for i in module_11_upvr.CollectionType do
		if arg1[i] == nil then
			error(module_9_upvr.FormatOutput("Missing CollectionType '%s' from common group", "CollectionUISystem", nil, i), 2)
		end
	end
	if not table.isfrozen(arg1) then
		table.freeze(arg1)
	end
	local module_3_upvr = {
		CollectionMethods_ByType = {};
	}
	module_3_upvr.CollectionType = arg1
	module_3_upvr.Name = "CollectionUI"
	module_3_upvr.DisplayOrder = module_5_upvr.DisplayOrder_CollectionUI
	module_3_upvr.Properties = {
		CloseInsetX = 0;
		CloseInsetY = 0;
		EdgePadX = 0;
		EdgePadY = 0;
		PadX = 0;
		PadY = 0;
		PosDirty = false;
		PosX = 0;
		PosY = 0;
		SizeDirty = false;
		SizeX = 0;
		SizeY = 0;
		ScreenGui = nil;
	}
	module_3_upvr.State = {
		UIMain = nil;
		LastActiveCollection = nil;
		Collection_ByType = {};
		CollectionRequested_ByType = {};
		ClosingSelection = nil;
		PendingSelection = nil;
		ForceCloseDeselect = false;
		QuickClearRequested = false;
		RequestClose = false;
		RequestMade = false;
	}
	module_3_upvr.CloseEnabled = true
	module_3_upvr.CloseRequested = nil
	local CollectionMethods_ByType_upvr = module_3_upvr.CollectionMethods_ByType
	local Properties_upvr = module_3_upvr.Properties
	local State_upvr = module_3_upvr.State
	function module_3_upvr.UnlockSizeTween() -- Line 238
		--[[ Upvalues[1]:
			[1]: State_upvr (readonly)
		]]
		if State_upvr.UIMain then
			State_upvr.UIMain.SizeTween.Completed = false
		end
	end
	function module_3_upvr.CollectionCreate(arg1_2, arg2_2) -- Line 252
		--[[ Upvalues[7]:
			[1]: module_8_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: module_10_upvr (copied, readonly)
			[4]: module_11_upvr (copied, readonly)
			[5]: CollectionMethods_ByType_upvr (readonly)
			[6]: module_9_upvr (copied, readonly)
			[7]: State_upvr (readonly)
		]]
		local assert_result1 = assert(module_8_upvr.TableGetKeyFromValue(arg1, arg1_2), "Invald CollectionType")
		local module_7 = {}
		module_7._Type = arg1_2
		module_7.DisplayDirty = false
		module_7.DrawDirty = true
		local tbl_8 = {
			Name = assert_result1.."_Wrapper";
			BackgroundTransparency = 1;
			ClipsDescendants = true;
		}
		local udim2 = UDim2.fromScale(1, 1)
		tbl_8.Size = udim2
		if arg2_2 ~= nil then
			udim2 = arg2_2.SubWrapper
			if not udim2 then
				udim2 = arg2_2.Wrapper
				-- KONSTANTWARNING: GOTO [53] #39
			end
		else
			udim2 = nil
		end
		tbl_8.Parent = udim2
		module_7.Wrapper = module_8_upvr.I("Frame", tbl_8)
		module_7.Parent = arg2_2
		module_7.SubCollectionArray = {}
		module_7.SubCollection_ByType = {}
		module_7.ActiveCollectionUpdated = false
		module_7.DisplayIndex = 0
		module_7.DisplayTween = module_10_upvr.new(1, module_11_upvr.TweenDurations.Display, Enum.EasingStyle.Quad)
		if arg1_2 ~= module_11_upvr.CollectionType._UIMain then
			module_7.Wrapper.AnchorPoint = Vector2.xAxis * 0.5
			module_7.Wrapper.Position = UDim2.fromScale(0.5, 0)
		end
		local var32 = CollectionMethods_ByType_upvr[arg1_2]
		if not var32 then
			error(module_9_upvr.FormatOutput("CollectionType '%s' is missing CollectionMethods", "CollectionUISystem", nil, assert_result1), 2)
		end
		var32.Initialize(module_7)
		State_upvr.Collection_ByType[arg1_2] = module_7
		return module_7
	end
	function module_3_upvr.CollectionDestroy(arg1_3) -- Line 302
		--[[ Upvalues[3]:
			[1]: State_upvr (readonly)
			[2]: module_3_upvr (readonly)
			[3]: CollectionMethods_ByType_upvr (readonly)
		]]
		if State_upvr.ClosingSelection and State_upvr.ClosingSelection:IsDescendantOf(arg1_3.Wrapper) then
			State_upvr.ClosingSelection = nil
		end
		if State_upvr.PendingSelection and State_upvr.PendingSelection:IsDescendantOf(arg1_3.Wrapper) then
			State_upvr.PendingSelection = nil
		end
		if State_upvr.Collection_ByType[arg1_3._Type] == arg1_3 then
			State_upvr.Collection_ByType[arg1_3._Type] = nil
		end
		if arg1_3.Parent then
			arg1_3.Parent.SubCollection_ByType[arg1_3._Type] = nil
			local table_find_result1 = table.find(arg1_3.Parent.SubCollectionArray, arg1_3)
			if table_find_result1 then
				table.remove(arg1_3.Parent.SubCollectionArray, table_find_result1)
			end
			arg1_3.Parent = nil
		end
		while 0 < #arg1_3.SubCollectionArray do
			module_3_upvr.CollectionDestroy(arg1_3.SubCollectionArray[#arg1_3.SubCollectionArray])
		end
		CollectionMethods_ByType_upvr[arg1_3._Type].Destroy(arg1_3)
		arg1_3.Wrapper:Destroy()
		if arg1_3.SubWrapper then
			arg1_3.SubWrapper:Destroy()
		end
	end
	function module_3_upvr.CollectionGetDeepestActiveType(arg1_4) -- Line 344
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [12] 10. Error Block 5 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [12] 10. Error Block 5 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [2] 2. Error Block 7 start (CF ANALYSIS FAILED)
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [12.3]
		if nil then
			-- KONSTANTWARNING: GOTO [12] #10
		end
		-- KONSTANTERROR: [2] 2. Error Block 7 end (CF ANALYSIS FAILED)
	end
	function module_3_upvr.CollectionGetDisplayFactor(arg1_5) -- Line 366
		local var36 = 0
		if arg1_5.Parent then
			local table_find_result1_2 = table.find(arg1_5.Parent.SubCollectionArray, arg1_5)
			if table_find_result1_2 then
				var36 = math.max(1 - math.abs(table_find_result1_2 - arg1_5.Parent.DisplayTween.Value), 0)
			end
		end
		return var36
	end
	function module_3_upvr.CollectionIsActive(arg1_6) -- Line 387
		--[[ Upvalues[1]:
			[1]: State_upvr (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		local var38
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [4] 4. Error Block 15 start (CF ANALYSIS FAILED)
		var38 = State_upvr.UIMain.Expired
		if var38 then
			-- KONSTANTERROR: [10] 8. Error Block 13 start (CF ANALYSIS FAILED)
			var38 = false
			do
				return var38
			end
			-- KONSTANTERROR: [10] 8. Error Block 13 end (CF ANALYSIS FAILED)
		end
		var38 = true
		local Parent = arg1_6.Parent
		while Parent do
			if Parent.ActiveCollectionType ~= arg1_6._Type then
				var38 = false
				return var38
			end
		end
		do
			return var38
		end
		-- KONSTANTERROR: [4] 4. Error Block 15 end (CF ANALYSIS FAILED)
	end
	function module_3_upvr.CollectionTypeIsActive(arg1_7) -- Line 412
		--[[ Upvalues[2]:
			[1]: arg2 (readonly)
			[2]: State_upvr (readonly)
		]]
		local var48 = arg2[arg1_7]
		if var48 and State_upvr.UIMain then
			local var49
			if not State_upvr.UIMain.Expired then
				local tbl_6 = {}
				while var48 do
					tbl_6[#tbl_6 + 1] = var48.Data
				end
				var49 = true
				local UIMain = State_upvr.UIMain
				for i_2 = #tbl_6, 1, -1 do
					if UIMain and UIMain._Type == tbl_6[i_2] then
					else
						var49 = false
						return var49
					end
				end
				return var49
			end
		end
		return false
	end
	function module_3_upvr.CollectionMarkDirty(arg1_8, arg2_3) -- Line 451
		--[[ Upvalues[1]:
			[1]: module_3_upvr (readonly)
		]]
		arg1_8[arg2_3] = true
		for _, v in arg1_8.SubCollectionArray do
			module_3_upvr.CollectionMarkDirty(v, arg2_3)
		end
	end
	function module_3_upvr.CollectionOpen(arg1_9) -- Line 461
		--[[ Upvalues[2]:
			[1]: CollectionMethods_ByType_upvr (readonly)
			[2]: module_3_upvr (readonly)
		]]
		local var56 = CollectionMethods_ByType_upvr[arg1_9._Type]
		if var56.Open then
			var56.Open(arg1_9)
		end
		for _, v_2 in arg1_9.SubCollectionArray do
			module_3_upvr.CollectionOpen(v_2)
		end
	end
	function module_3_upvr.CollectionResolve(arg1_10, arg2_4, arg3_2) -- Line 475
		--[[ Upvalues[5]:
			[1]: arg2 (readonly)
			[2]: State_upvr (readonly)
			[3]: module_3_upvr (readonly)
			[4]: module_10_upvr (copied, readonly)
			[5]: CollectionMethods_ByType_upvr (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 71 start (CF ANALYSIS FAILED)
		local var61
		for _, v_3 in arg2[arg1_10._Type].ChildrenArray do
			if State_upvr.CollectionRequested_ByType[v_3.Data] then
				State_upvr.CollectionRequested_ByType[v_3.Data] = nil
				local var62 = var61
				if not var62 then
					var62 = v_3.Data
				end
				var61 = var62
			end
		end
		-- KONSTANTERROR: [0] 1. Error Block 71 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [34] 27. Error Block 8 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [34] 27. Error Block 8 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [36] 28. Error Block 9 start (CF ANALYSIS FAILED)
		var61 = arg1_10.ActiveCollectionType
		-- KONSTANTERROR: [36] 28. Error Block 9 end (CF ANALYSIS FAILED)
	end
	function module_3_upvr.CollectionUpdate(arg1_11, arg2_5, arg3_3) -- Line 595
		--[[ Upvalues[2]:
			[1]: CollectionMethods_ByType_upvr (readonly)
			[2]: module_3_upvr (readonly)
		]]
		for _, v_4 in arg1_11.SubCollectionArray do
			if CollectionMethods_ByType_upvr[arg1_11._Type].Update(arg1_11, arg2_5, arg3_3) then
				module_3_upvr.CollectionMarkDirty(v_4, "DrawDirty")
			end
			module_3_upvr.CollectionUpdate(v_4, arg2_5, arg3_3)
		end
		arg1_11.DisplayDirty = false
		arg1_11.DrawDirty = false
	end
	function module_3_upvr.CollectionUpdate_Display(arg1_12, arg2_6, arg3_4) -- Line 617
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		if arg1_12.DisplayDirty then
			for i_7, v_5 in arg1_12.SubCollectionArray do
				v_5.Wrapper.Position = UDim2.new(UDim.new(i_7 - arg1_12.DisplayTween.Value + 0.5, 0), v_5.Wrapper.Position.Y)
				local _
			end
		end
	end
	function module_3_upvr.CollectionUpdate_DimensionsChanged(arg1_13) -- Line 637
		--[[ Upvalues[2]:
			[1]: CollectionMethods_ByType_upvr (readonly)
			[2]: module_3_upvr (readonly)
		]]
		local var76 = CollectionMethods_ByType_upvr[arg1_13._Type]
		if var76.DimensionsChanged then
			var76.DimensionsChanged(arg1_13)
		end
		for _, v_6 in arg1_13.SubCollectionArray do
			module_3_upvr.CollectionUpdate_DimensionsChanged(v_6)
		end
	end
	function module_3_upvr.IsSelected() -- Line 654
		--[[ Upvalues[2]:
			[1]: Properties_upvr (readonly)
			[2]: module_4_upvr (copied, readonly)
		]]
		local var77 = false
		if Properties_upvr.ScreenGui ~= nil then
			var77 = module_4_upvr.IsInterfaceSelected(Properties_upvr.ScreenGui)
		end
		return var77
	end
	function module_3_upvr.RequestCollection(arg1_14) -- Line 660
		--[[ Upvalues[2]:
			[1]: arg2 (readonly)
			[2]: State_upvr (readonly)
		]]
		local assert_result1_2 = assert(arg2[arg1_14], "Invalid CollectionType")
		State_upvr.RequestMade = true
		while assert_result1_2.Parent do
			State_upvr.CollectionRequested_ByType[assert_result1_2.Data] = true
		end
	end
	function module_3_upvr.RequestClose(arg1_15) -- Line 676
		--[[ Upvalues[1]:
			[1]: State_upvr (readonly)
		]]
		State_upvr.RequestClose = true
		if arg1_15 == true then
			State_upvr.QuickClearRequested = true
		end
	end
	local function UIMainRedraw_upvr(arg1_16, arg2_7, arg3_5) -- Line 689, Named "UIMainRedraw"
		--[[ Upvalues[5]:
			[1]: module_3_upvr (readonly)
			[2]: Properties_upvr (readonly)
			[3]: module_6_upvr (copied, readonly)
			[4]: zero_udim2_upvr (copied, readonly)
			[5]: module_2_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var100
		if module_3_upvr.CloseEnabled == arg1_16.CloseButton.Button.Visible then
			var100 = false
		else
			var100 = true
		end
		local var101 = var100
		if not var101 then
			if not arg1_16.DrawDirty then
			end
		end
		local Dirty_2 = arg1_16.SizeTween.Dirty
		if not Dirty_2 then
			Dirty_2 = arg1_16.OffsetTween.Dirty
			if not Dirty_2 then
				Dirty_2 = arg1_16.PositionTween.Dirty
			end
		end
		if arg1_16.SizeTween.Dirty then
			Properties_upvr.SizeDirty = true
		end
		if Dirty_2 then
			Properties_upvr.PosDirty = true
		end
		local X = module_6_upvr.ViewportSize.X
		local Y = module_6_upvr.ViewportSize.Y
		if Properties_upvr.SizeDirty then
			local Value_6 = arg1_16.SizeTween.Value
			local EmSize_2 = module_6_upvr.EmSize
			local var107 = (X * Value_6.X.Scale + Value_6.X.Offset) // 1
			local var108 = (Y * Value_6.Y.Scale + Value_6.Y.Offset) // 1
			local var109 = EmSize_2 * 0.5 // 1
			Properties_upvr.EdgePadX = EmSize_2 * 3 // 1
			Properties_upvr.EdgePadY = EmSize_2 * 2 // 1
			Properties_upvr.PadX = EmSize_2 * 1.5 // 1
			Properties_upvr.PadY = var109
			Properties_upvr.SizeX = var107
			Properties_upvr.SizeY = var108
			arg1_16.Wrapper.Size = UDim2.fromOffset(var107, var108)
			local var110 = 0
			local var111 = 0
			if module_3_upvr.CloseEnabled then
				arg1_16.CloseButton.Button.Size = UDim2.fromOffset(module_6_upvr.SteppedSize.CloseButtonX, module_6_upvr.SteppedSize.CloseButtonY)
				var110 = module_6_upvr.SteppedSize.CloseButtonX + var109
				var111 = module_6_upvr.SteppedSize.CloseButtonY + var109
			end
			Properties_upvr.CloseInsetX = var110
			Properties_upvr.CloseInsetY = var111
			arg1_16.WrapperCorner.CornerRadius = module_6_upvr.CornerDims.Background.RadiusUDim
		end
		if Properties_upvr.PosDirty then
			local Value_5 = arg1_16.PositionTween.Value
			local Value_4 = arg1_16.OffsetTween.Value
			local var114 = (Value_5 + 1) * 0.5
			local var115 = 0
			if arg1_16.OverhangSize then
				local OverhangSize = arg1_16.OverhangSize
				local var117 = (Y * OverhangSize.Y.Scale + OverhangSize.Y.Offset) // 1
				if Value_5 < 0 and 0 < var117 or 0 < Value_5 and var117 < 0 then
					var115 = math.abs(var117 * Value_5)
				end
			end
			OverhangSize = (X * 0.5 - var107 * 0.5) // 1
			local var118 = OverhangSize
			local var119 = (Y * var114 - var108 * (1 - var114) + var115) // 1
			if Value_4 ~= zero_udim2_upvr then
				local var120 = 1 - math.abs(Value_5)
				var118 += (X * Value_4.X.Scale + Value_4.X.Offset) * var120 // 1
				var119 += (Y * Value_4.Y.Scale + Value_4.Y.Offset) * var120 // 1
			end
			Properties_upvr.PosX = var118
			Properties_upvr.PosY = var119
			arg1_16.Wrapper.Position = UDim2.fromOffset(var118, var119)
			arg1_16.CloseButton.Button.Position = UDim2.fromOffset(var118 + var107 - Properties_upvr.CloseInsetX, var119 + Properties_upvr.PadY)
		end
		module_2_upvr.Button.Update(arg1_16.CloseButton, arg3_5)
		module_3_upvr.CollectionUpdate_Display(arg1_16, arg2_7, arg3_5)
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		return arg1_16.SizeTween.Dirty
	end
	local function GetOptionalExtents_upvr(arg1_17, arg2_8) -- Line 812, Named "GetOptionalExtents"
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		-- KONSTANTERROR: [69] 49. Error Block 23 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [69] 49. Error Block 23 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 50 start (CF ANALYSIS FAILED)
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [69.12]
		if nil then
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [69.13]
			if nil then
				-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [69.3]
				-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [69.4291231816]
				-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [69.14]
				if nil < nil then
				end
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [69.4]
				if nil < nil then
				end
				-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [69.5]
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [69.15]
				if nil < nil then
				end
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [69.6]
				if nil < nil then
				end
				-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [69.7]
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [69.16]
				if nil < nil then
				end
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [69.8]
				if nil < nil then
				end
				-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [69.9]
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [69.17]
				if nil < nil then
				end
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [69.10]
				if nil < nil then
				end
			end
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [69.11]
			if nil then
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				if nil then
					-- KONSTANTWARNING: GOTO [14] #13
				end
				-- KONSTANTWARNING: GOTO [71] #51
			end
			-- KONSTANTWARNING: GOTO [71] #51
		end
		-- KONSTANTERROR: [0] 1. Error Block 50 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [71] 51. Error Block 31 start (CF ANALYSIS FAILED)
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [72.2]
		if nil then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x4)
		end
		do
			return UDim2.new(nil - nil, nil - nil, nil - nil, nil - nil)
		end
		-- KONSTANTERROR: [71] 51. Error Block 31 end (CF ANALYSIS FAILED)
	end
	local function GetOptionalSize_upvr(arg1_18, arg2_9) -- Line 895, Named "GetOptionalSize"
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		-- KONSTANTERROR: [27] 21. Error Block 8 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [27] 21. Error Block 8 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 22 start (CF ANALYSIS FAILED)
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [27.4]
		if nil then
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [27.6]
			if not nil then
			end
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [27.3]
			if nil then
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				if nil then
					-- KONSTANTWARNING: GOTO [8] #6
				end
				-- KONSTANTWARNING: GOTO [29] #23
			end
			-- KONSTANTWARNING: GOTO [29] #23
		end
		-- KONSTANTERROR: [0] 1. Error Block 22 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [29] 23. Error Block 15 start (CF ANALYSIS FAILED)
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [29.5]
		if nil and arg2_9 == "TargetSize" then
			arg1_18.SizeTween.Completed = false
		end
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [37.2]
		do
			return nil
		end
		-- KONSTANTERROR: [29] 23. Error Block 15 end (CF ANALYSIS FAILED)
	end
	CollectionMethods_ByType_upvr[arg1._UIMain] = {
		Initialize = function(arg1_19) -- Line 932, Named "Initialize"
			--[[ Upvalues[9]:
				[1]: module_10_upvr (copied, readonly)
				[2]: zero_udim2_upvr (copied, readonly)
				[3]: module_11_upvr (copied, readonly)
				[4]: module_8_upvr (copied, readonly)
				[5]: module_6_upvr (copied, readonly)
				[6]: module_3_upvr (readonly)
				[7]: module_5_upvr (copied, readonly)
				[8]: arg3 (readonly)
				[9]: module_2_upvr (copied, readonly)
			]]
			arg1_19.Expired = false
			arg1_19.Flipped = false
			arg1_19.OffsetTween = module_10_upvr.new(zero_udim2_upvr, module_11_upvr.TweenDurations.Display, Enum.EasingStyle.Quad)
			arg1_19.PositionTween = module_10_upvr.new(-1, module_11_upvr.TweenDurations.Standard, Enum.EasingStyle.Back, Enum.EasingDirection.Out)
			arg1_19.SizeTween = module_10_upvr.new(zero_udim2_upvr, module_11_upvr.TweenDurations.Standard, Enum.EasingStyle.Quart)
			arg1_19.ScreenGui = module_8_upvr.I("ScreenGui", module_6_upvr.Properties.ScreenGui, {
				Name = module_3_upvr.Name;
				DisplayOrder = module_3_upvr.DisplayOrder;
				Parent = module_6_upvr.PlayerGui;
			})
			module_3_upvr.Properties.ScreenGui = arg1_19.ScreenGui
			arg1_19.Wrapper.BackgroundColor3 = module_5_upvr.BackgroundColor1
			arg1_19.Wrapper.BackgroundTransparency = module_5_upvr.BackgroundTransparency1
			arg1_19.WrapperCorner = module_8_upvr.I("UICorner", {
				Parent = arg1_19.Wrapper;
			})
			arg1_19.Wrapper.Parent = arg1_19.ScreenGui
			arg1_19.CloseButton = module_2_upvr.Button.Common.Create.Close(arg1_19.ScreenGui, function() -- Line 987, Named "WrappedRequestClose"
				--[[ Upvalues[2]:
					[1]: arg3 (copied, readonly)
					[2]: module_3_upvr (copied, readonly)
				]]
				local Pass = Enum.ContextActionResult.Pass
				if arg3() then
					Pass = Enum.ContextActionResult.Sink
					module_3_upvr.RequestClose()
				end
				return Pass
			end)
		end;
		Destroy = function(arg1_20) -- Line 1003, Named "Destroy"
			--[[ Upvalues[4]:
				[1]: State_upvr (readonly)
				[2]: arg1 (readonly)
				[3]: module_3_upvr (readonly)
				[4]: module_2_upvr (copied, readonly)
			]]
			for i_9, v_7 in State_upvr.Collection_ByType do
				if i_9 ~= arg1._UIMain then
					module_3_upvr.CollectionDestroy(v_7)
				end
			end
			module_2_upvr.Button.Destroy(arg1_20.CloseButton)
			arg1_20.ScreenGui:Destroy()
			module_3_upvr.Properties.ScreenGui = nil
		end;
		Update = function(arg1_21, arg2_10, arg3_6) -- Line 1022, Named "Update"
			--[[ Upvalues[2]:
				[1]: module_10_upvr (copied, readonly)
				[2]: UIMainRedraw_upvr (readonly)
			]]
			if not arg1_21.Flipped and module_10_upvr.IsAtTarget(arg1_21.PositionTween, 0) then
				arg1_21.Flipped = true
				arg1_21.PositionTween.EasingDirection = Enum.EasingDirection.In
			end
			return UIMainRedraw_upvr(arg1_21, arg2_10, arg3_6)
		end;
	}
	function module_3_upvr.RenderStepped(arg1_22, arg2_11) -- Line 1043
		--[[ Upvalues[15]:
			[1]: State_upvr (readonly)
			[2]: arg3 (readonly)
			[3]: module_3_upvr (readonly)
			[4]: arg1 (readonly)
			[5]: module_10_upvr (copied, readonly)
			[6]: GuiService_upvr (copied, readonly)
			[7]: module_6_upvr (copied, readonly)
			[8]: GetOptionalSize_upvr (readonly)
			[9]: zero_udim2_upvr (copied, readonly)
			[10]: GetOptionalExtents_upvr (readonly)
			[11]: Properties_upvr (readonly)
			[12]: UIMainRedraw_upvr (readonly)
			[13]: module_4_upvr (copied, readonly)
			[14]: module_8_upvr (copied, readonly)
			[15]: module_12_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		State_upvr.QuickClearRequested = false
		State_upvr.RequestClose = false
		State_upvr.RequestMade = false
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [24] 19. Error Block 2 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [24] 19. Error Block 2 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [26] 21. Error Block 3 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [26] 21. Error Block 3 end (CF ANALYSIS FAILED)
	end
	return module_3_upvr
end
function module_11_upvr.MenuHeaderCreate(arg1, arg2) -- Line 1406
	--[[ Upvalues[4]:
		[1]: module_8_upvr (readonly)
		[2]: module_6_upvr (readonly)
		[3]: module_5_upvr (readonly)
		[4]: module_11_upvr (readonly)
	]]
	local module = {}
	local tbl_4 = {
		Name = "HeaderLabel";
		FontFace = module_5_upvr.FontFaceItalic;
	}
	tbl_4.Text = arg1
	tbl_4.TextColor3 = module_5_upvr.TextColor1
	tbl_4.ZIndex = 10
	tbl_4.Parent = arg2
	module.HeaderLabel = module_8_upvr.I("TextLabel", module_6_upvr.Properties.Text_Scaled, tbl_4)
	module.HeaderStroke = module_8_upvr.I("UIStroke", module_6_upvr.Properties.StrokeText, {
		Color = module_5_upvr.TextStrokeColor1;
		Parent = module.HeaderLabel;
	})
	local tbl_7 = {
		Name = "HeaderGlow";
		BackgroundTransparency = 1;
		Image = module_5_upvr.GlowCircle_512x512;
		ImageColor3 = module_5_upvr.TextColor1;
		ImageTransparency = 0.25;
		ImageRectSize = Vector2.new(512, 64);
	}
	tbl_7.Parent = arg2
	module.HeaderGlow = module_8_upvr.I("ImageLabel", tbl_7)
	module.HeaderDivider = module_11_upvr.CreateDivider(0, arg2)
	return module
end
function module_11_upvr.MenuHeaderDestroy(arg1) -- Line 1448
	arg1.HeaderGlow:Destroy()
	arg1.HeaderLabel:Destroy()
	arg1.HeaderStroke:Destroy()
end
function module_11_upvr.MenuHeaderReposition(arg1, arg2, arg3, arg4, arg5) -- Line 1457
	--[[ Upvalues[1]:
		[1]: module_6_upvr (readonly)
	]]
	local var131 = arg2 - arg3 // 1 * 2
	local StrokeVeryThin = module_6_upvr.ScaledSize.StrokeVeryThin
	local any_DimTrackerCreate_result1 = module_6_upvr.DimTrackerCreate()
	module_6_upvr.DimTrackerPad(any_DimTrackerCreate_result1, 0, arg4 // 1)
	local Offset = any_DimTrackerCreate_result1.Offset
	module_6_upvr.DimTrackerAdd(any_DimTrackerCreate_result1, arg1.HeaderLabel, 0, (arg5 or 4) * module_6_upvr.EmSize // 1)
	module_6_upvr.DimTrackerPad(any_DimTrackerCreate_result1, 0, math.ceil(StrokeVeryThin))
	module_6_upvr.DimTrackerAdd(any_DimTrackerCreate_result1, arg1.HeaderDivider, 0, math.round(module_6_upvr.ScaledSize.StrokeMedium))
	local tbl_2 = {
		Position = UDim.new(0, arg3);
		Size = UDim.new(0, var131);
	}
	module_6_upvr.DimTrackerApply(any_DimTrackerCreate_result1, {
		[arg1.HeaderLabel] = tbl_2;
		[arg1.HeaderDivider] = tbl_2;
	}, true)
	arg1.HeaderGlow.Position = UDim2.fromOffset(arg3, Offset)
	arg1.HeaderGlow.Size = UDim2.fromOffset(var131, any_DimTrackerCreate_result1.Offset - Offset)
	arg1.HeaderStroke.Thickness = StrokeVeryThin
	module_6_upvr.DimTrackerReset(any_DimTrackerCreate_result1)
	module_6_upvr.DimTrackerPad(any_DimTrackerCreate_result1, 0, any_DimTrackerCreate_result1.Offset)
	return any_DimTrackerCreate_result1
end
return module_11_upvr