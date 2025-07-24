-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:04:28
-- Luau version 6, Types version 3
-- Time taken: 0.045240 seconds

local HttpService = game:GetService("HttpService")
local SoundService_upvr = game:GetService("SoundService")
local CorePackages_upvr = game:GetService("CorePackages")
local Create_upvr = require(CorePackages_upvr.Workspace.Packages.AppCommonLib).Create
local Color3_new_result1_upvr_3 = Color3.new(0.19215686274509805, 0.19215686274509805, 0.19215686274509805)
local Color3_new_result1_upvr_4 = Color3.new(0, 0.6352941176470588, 1)
local Color3_new_result1_upvr = Color3.new(1, 1, 1)
local any_JSONDecode_result1_upvr_2 = HttpService:JSONDecode("[\n  [\n    {\n      \"a\": 7,\n      \"w\": 0.8\n    },\n    \"*\",\n    \"Q\",\n    \"W\",\n    \"E\",\n    \"R\",\n    \"T\",\n    \"Y\",\n    \"U\",\n    \"I\",\n    \"O\",\n    \"P\",\n    {\n      \"w\": 1.8\n    },\n    \"Delete\"\n  ],\n  [\n    {\n      \"w\": 1.6\n    },\n    \"Caps\",\n    \"A\",\n    \"S\",\n    \"D\",\n    \"F\",\n    \"G\",\n    \"H\",\n    \"J\",\n    \"K\",\n    \"L\",\n    \"?\",\n    {\n      \"h\": 2,\n      \"w2\": 2.4,\n      \"h2\": 1,\n      \"x2\": -1.4,\n      \"y2\": 1\n    },\n    \"Enter\"\n  ],\n  [\n    {\n      \"w\": 2.2\n    },\n    \"Shift\",\n    \"Z\",\n    \"X\",\n    \"C\",\n    \"V\",\n    \"B\",\n    \"N\",\n    \"M\",\n    \".\"\n  ],\n  [\n    {\n      \"w\": 2.2\n    },\n    \"123/sym\",\n    {\n      \"w\": 8\n    },\n    \"\",\n    {\n      \"w\": 2.4\n    },\n    \"<Speaker>\"\n  ]\n]\n")
local any_JSONDecode_result1_upvr = HttpService:JSONDecode("[\n  [\n    {\n      \"a\": 7,\n      \"w\": 0.8\n    },\n    \"*\",\n    \"1\",\n    \"2\",\n    \"3\",\n    \"4\",\n    \"5\",\n    \"6\",\n    \"7\",\n    \"8\",\n    \"9\",\n    \"0\",\n    {\n      \"w\": 1.8\n    },\n    \"Delete\"\n  ],\n  [\n    {\n      \"w\": 1.6\n    },\n    \"!\",\n    \"@\",\n    \"#\",\n    \"$\",\n    \"%\",\n    \"^\",\n    \"&\",\n    \"(\",\n    \")\",\n    \"=\",\n    \"?\",\n    {\n      \"h\": 2,\n      \"w2\": 2.4,\n      \"h2\": 1,\n      \"x2\": -1.4,\n      \"y2\": 1\n    },\n    \"Enter\"\n  ],\n  [\n    {\n      \"w\": 1.2\n    },\n    \"/\",\n    \"-\",\n    \"+\",\n    \"_\",\n    \":\",\n    \";\",\n    \"'\",\n    \"\\\"\",\n    \",\",\n    \".\"\n  ],\n  [\n    {\n      \"w\": 2.2\n    },\n    \"abc\",\n    {\n      \"w\": 8\n    },\n    \"\",\n    {\n      \"w\": 2.4\n    },\n    \"<Speaker>\"\n  ]\n]\n")
local tbl_13_upvr = {}
local GetCurrentState_upvw
for i, v in pairs({"ASR_STATUS_OK", "ASR_STATUS_CANCELLED", "ASR_STATUS_UNKNOWN", "ASR_STATUS_INVALID_ARGUMENTS", "ASR_STATUS_DEADLINE_EXCEEDED", "ASR_STATUS_NOT_FOUND", "ASR_STATUS_ALREADY_EXISTS", "ASR_STATUS_PERMISSION_DENIED", "ASR_STATUS_UNAUTHENTICATED", "ASR_STATUS_RESOURCE_EXHAUSTED", "ASR_STATUS_FAILED_PRECONDITION", "ASR_STATUS_ABORTED", "ASR_STATUS_OUT_OF_RANGE", "ASR_STATUS_UNIMPLEMENTED", "ASR_STATUS_INTERNAL", "ASR_STATUS_UNAVAILABLE", "ASR_STATUS_DATA_LOSS", "ASR_STATUS_NOT_ENABLED", "ASR_STATUS_LOW_CONFIDENCE", "ASR_STATUS_INVALID_JSON"}) do
	tbl_13_upvr[v] = i - 1
end
local function _(arg1, arg2) -- Line 223, Named "tokenizeString"
	local module_6 = {}
	for i_2 in string.gmatch(arg1, "([^"..arg2.."]+)") do
		table.insert(module_6, i_2)
	end
	return module_6
end
local function _(arg1) -- Line 231, Named "ConvertFontSizeEnumToInt"
	local string_match_result1 = string.match(arg1.Name, "%d+")
	local var27
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var27 = tostring(string_match_result1)
		return var27
	end
	if not string_match_result1 or not INLINED() then
		var27 = 12
	end
	return var27
end
local function _(arg1, arg2, arg3) -- Line 240, Named "RayPlaneIntersection"
	local unit = arg2.unit
	local Unit = arg1.Unit
	local any_Dot_result1 = unit:Dot(Unit.Direction)
	if any_Dot_result1 == 0 then
		return nil
	end
	local var31 = unit:Dot(arg3 - Unit.Origin) / any_Dot_result1
	if var31 < 0 then
		return nil
	end
	return Unit.Origin + Unit.Direction * var31
end
function Clamp(arg1, arg2, arg3) -- Line 261
	return math.max(arg1, math.min(arg2, arg3))
end
local function _(arg1, arg2, arg3) -- Line 266, Named "PointInGuiObject"
	local AbsolutePosition_5 = arg1.AbsolutePosition
	local var33 = arg1.AbsolutePosition + arg1.AbsoluteSize
	if AbsolutePosition_5.X <= arg2 and arg2 <= var33.X and AbsolutePosition_5.Y <= arg3 and arg3 <= var33.Y then
		return true
	end
	return false
end
local function FindAncestorOfType_upvr(arg1, arg2) -- Line 275, Named "FindAncestorOfType"
	--[[ Upvalues[1]:
		[1]: FindAncestorOfType_upvr (readonly)
	]]
	if not arg1 then
		return nil
	end
	local Parent = arg1.Parent
	if Parent and Parent:IsA(arg2) then
		return Parent
	end
	return FindAncestorOfType_upvr(Parent, arg2)
end
local function ExtendedInstance_upvr(arg1) -- Line 286, Named "ExtendedInstance"
	local module_2 = {}
	setmetatable(module_2, {
		__index = function(arg1_2, arg2) -- Line 291, Named "__index"
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			return arg1[arg2]
		end;
		__newindex = function(arg1_3, arg2, arg3) -- Line 295, Named "__newindex"
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1[arg2] = arg3
		end;
	})
	return module_2
end
local function CreateVRButton_upvr(arg1) -- Line 304, Named "CreateVRButton"
	--[[ Upvalues[1]:
		[1]: ExtendedInstance_upvr (readonly)
	]]
	local ExtendedInstance_upvr_result1_2 = ExtendedInstance_upvr(arg1)
	rawset(ExtendedInstance_upvr_result1_2, "OnEnter", function(arg1_4) -- Line 307
	end)
	rawset(ExtendedInstance_upvr_result1_2, "OnLeave", function(arg1_5) -- Line 309
	end)
	rawset(ExtendedInstance_upvr_result1_2, "OnDown", function(arg1_6) -- Line 311
	end)
	rawset(ExtendedInstance_upvr_result1_2, "OnUp", function(arg1_7) -- Line 313
	end)
	rawset(ExtendedInstance_upvr_result1_2, "ContainsPoint", function(arg1_8, arg2, arg3) -- Line 315
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local var43 = arg1
		local AbsolutePosition_10 = var43.AbsolutePosition
		local var45 = var43.AbsolutePosition + var43.AbsoluteSize
		if AbsolutePosition_10.X <= arg2 and arg2 <= var45.X and AbsolutePosition_10.Y <= arg3 and arg3 <= var45.Y then
			return true
		end
		return false
	end)
	rawset(ExtendedInstance_upvr_result1_2, "Update", function(arg1_9) -- Line 318
	end)
	return ExtendedInstance_upvr_result1_2
end
local _ = {
	Name = "SelectionRing";
	Size = UDim2.new(1, -6, 1, -6);
	Position = UDim2.new(0, 4, 0, 3);
	Image = "rbxasset://textures/ui/menu/buttonHover.png";
	ScaleType = Enum.ScaleType.Slice;
	SliceCenter = Rect.new(47, 47, 47, 47);
	BackgroundTransparency = 1;
}
local tbl_19_upvr = {
	["<Speaker>"] = {
		Asset = "rbxasset://textures/ui/Keyboard/mic_icon.png";
		AspectRatio = 0.615;
	};
}
local Color3_new_result1_upvr_5 = Color3.new(0, 0.6352941176470588, 1)
local Color3_new_result1_upvr_2 = Color3.new(0.19215686274509805, 0.19215686274509805, 0.19215686274509805)
local function CreateKeyboardKey_upvr(arg1, arg2, arg3) -- Line 340, Named "CreateKeyboardKey"
	--[[ Upvalues[8]:
		[1]: Create_upvr (readonly)
		[2]: Color3_new_result1_upvr (readonly)
		[3]: Color3_new_result1_upvr_3 (readonly)
		[4]: CreateVRButton_upvr (readonly)
		[5]: tbl_19_upvr (readonly)
		[6]: Color3_new_result1_upvr_5 (readonly)
		[7]: Color3_new_result1_upvr_2 (readonly)
		[8]: Color3_new_result1_upvr_4 (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local width2_upvr = arg2.width2
	if width2_upvr then
		width2_upvr = arg2.height2
		if width2_upvr then
			width2_upvr = arg2.x2
			if width2_upvr then
				width2_upvr = arg2.y2
			end
		end
	end
	local var185_upvr = Create_upvr("ImageButton")({
		Name = arg3[1];
		Position = UDim2.new(arg2.x, 0, arg2.y, 0);
		Size = UDim2.new(arg2.width, 0, arg2.height, 0);
		BorderSizePixel = 0;
		Image = "";
		BackgroundTransparency = 1;
		ZIndex = 1;
	})
	local var187_upvr = Create_upvr("TextLabel")({
		Name = "KeyText";
		Text = arg3[#arg3];
		Position = UDim2.new(0, -10, 0, -10);
		Size = UDim2.new(1, 0, 1, 0);
		Font = Enum.Font.SourceSansBold;
		FontSize = Enum.FontSize.Size96;
		TextColor3 = Color3_new_result1_upvr;
		BackgroundTransparency = 1;
		Selectable = true;
		ZIndex = 2;
		Parent = var185_upvr;
	})
	local var189_upvr = Create_upvr("Frame")({
		Name = "KeyBackground";
		Size = UDim2.new(1, -10, 1, -10);
		Position = UDim2.new(0, -5, 0, -5);
		BackgroundColor3 = Color3_new_result1_upvr_3;
		BackgroundTransparency = 0.3;
		BorderSizePixel = 0;
		Parent = var185_upvr;
	})
	local var191_upvr = Create_upvr("ImageLabel")({
		Name = "SelectionObject";
		Size = UDim2.new(1, 0, 1, 0);
		BackgroundTransparency = 1;
		Image = "rbxasset://textures/ui/Keyboard/key_selection_9slice.png";
		ImageTransparency = 0;
		ScaleType = Enum.ScaleType.Slice;
		SliceCenter = Rect.new(12, 12, 52, 52);
		BorderSizePixel = 0;
	})
	var185_upvr.SelectionImageObject = Create_upvr("ImageLabel")({
		Visible = false;
	})
	if width2_upvr then
		local var194_upvw = Create_upvr("ImageButton")({
			Name = "KeyBackground";
			Position = UDim2.new(arg2.x2 / arg2.width, -5, arg2.y2 / arg2.height, -5);
			Size = UDim2.new(arg2.width2 / arg2.width, 0, arg2.height2 / arg2.height, -10);
			BackgroundColor3 = Color3_new_result1_upvr_3;
			BackgroundTransparency = 0.3;
			BorderSizePixel = 0;
			AutoButtonColor = false;
			SelectionImageObject = var185_upvr.SelectionImageObject;
			Parent = var185_upvr;
		})
		if arg2.x2 <= 0 then
			var187_upvr.Size = var194_upvw.Size - UDim2.new(0, 10, 0, 0)
			var187_upvr.Position = var194_upvw.Position
			var194_upvw.Size -= UDim2.new(1, 0, 0, 0)
		end
		local var197_upvw = Create_upvr("Frame")({
			Name = "SpecialSelectionObject";
			Size = UDim2.new(1, 0, 0.5, 0);
			Position = UDim2.new(0, 0, 0.5, 0);
			BackgroundTransparency = 1;
			ClipsDescendants = true;
			
			Create_upvr("ImageLabel")({
				Name = "Borders";
				Position = UDim2.new(-1, 0, -1, 0);
				Size = UDim2.new(2, 0, 2, 0);
				BackgroundTransparency = 1;
				Image = "rbxasset://textures/ui/Keyboard/key_selection_9slice.png";
				ImageTransparency = 0;
				ScaleType = Enum.ScaleType.Slice;
				SliceCenter = Rect.new(12, 12, 52, 52);
			})
		})
		local clone_upvw_5 = var197_upvw:Clone()
		clone_upvw_5.Size = UDim2.new(1, 0, 0.5, 5)
		clone_upvw_5.Position = UDim2.new(0, 0, 0, 0)
		clone_upvw_5.Borders.Size = UDim2.new(1, 0, 1, 30)
		clone_upvw_5.Borders.Position = UDim2.new(0, 0, 0, 0)
		local clone_upvw_4 = var197_upvw:Clone()
		clone_upvw_4.Size = UDim2.new(1, 5, 1, 0)
		clone_upvw_4.Position = UDim2.new(0, 0, 0, 0)
		clone_upvw_4.Borders.Size = UDim2.new(1, 30, 1, 0)
		clone_upvw_4.Borders.Position = UDim2.new(0, 0, 0, 0)
	end
	local CreateVRButton_result1_upvr = CreateVRButton_upvr(var185_upvr)
	local var201_upvw = false
	local var202_upvw = false
	if #arg3 == 1 then
		if type(arg3[1]) == "string" then
			if #arg3[1] == 1 then
				if 65 <= string.byte(arg3[1]) then
					if string.byte(arg3[1]) > 122 then
						local _ = false
						-- KONSTANTWARNING: Skipped task `defvar` above
					else
					end
				end
			end
		end
	end
	if arg3[1] and tbl_19_upvr[arg3[1]] then
		var187_upvr.Visible = false
		local var205_upvw = Create_upvr("ImageLabel")({
			Name = "KeyIcon";
			Size = UDim2.new(tbl_19_upvr[arg3[1]].AspectRatio, -20, 1, -20);
			SizeConstraint = Enum.SizeConstraint.RelativeYY;
			BackgroundTransparency = 1;
			Image = tbl_19_upvr[arg3[1]].Asset;
			Parent = var189_upvr;
		})
		var205_upvw.Changed:connect(function(arg1_30) -- Line 472, Named "onChanged"
			--[[ Upvalues[1]:
				[1]: var205_upvw (read and write)
			]]
			if arg1_30 == "AbsoluteSize" then
				var205_upvw.Position = UDim2.new(0.5, -var205_upvw.AbsoluteSize.X / 2, 0.5, -var205_upvw.AbsoluteSize.Y / 2)
			end
		end)
		var205_upvw.Position = UDim2.new(0.5, -var205_upvw.AbsoluteSize.X / 2, 0.5, -var205_upvw.AbsoluteSize.Y / 2)
	end
	local var206_upvr = true
	local function onClicked_upvr() -- Line 481, Named "onClicked"
		--[[ Upvalues[3]:
			[1]: CreateVRButton_result1_upvr (readonly)
			[2]: arg1 (readonly)
			[3]: var206_upvr (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 30 start (CF ANALYSIS FAILED)
		local any_GetCurrentKeyValue_result1_2 = CreateVRButton_result1_upvr:GetCurrentKeyValue()
		if any_GetCurrentKeyValue_result1_2 == "Shift" then
			arg1:SetShift(not arg1:GetShift())
			-- KONSTANTWARNING: GOTO [74] #57
		end
		-- KONSTANTERROR: [0] 1. Error Block 30 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [17] 14. Error Block 29 start (CF ANALYSIS FAILED)
		if any_GetCurrentKeyValue_result1_2 == "Caps" then
			arg1:SetCaps(not arg1:GetCaps())
			-- KONSTANTWARNING: GOTO [74] #57
		end
		-- KONSTANTERROR: [17] 14. Error Block 29 end (CF ANALYSIS FAILED)
	end
	local function _(arg1_31, arg2_6) -- Line 510, Named "setKeyColor"
		--[[ Upvalues[7]:
			[1]: var189_upvr (readonly)
			[2]: var194_upvw (read and write)
			[3]: width2_upvr (readonly)
			[4]: var197_upvw (read and write)
			[5]: clone_upvw_5 (read and write)
			[6]: clone_upvw_4 (read and write)
			[7]: var191_upvr (readonly)
		]]
		var189_upvr.BackgroundColor3 = arg1_31
		local var208
		if var194_upvw then
			var194_upvw.BackgroundColor3 = arg1_31
		end
		if width2_upvr then
			local function INLINED_8() -- Internal function, doesn't exist in bytecode
				var208 = var189_upvr
				return var208
			end
			if not arg2_6 or not INLINED_8() then
				var208 = nil
			end
			var197_upvw.Parent = var208
			local function INLINED_9() -- Internal function, doesn't exist in bytecode
				var208 = var189_upvr
				return var208
			end
			if not arg2_6 or not INLINED_9() then
				var208 = nil
			end
			clone_upvw_5.Parent = var208
			local function INLINED_10() -- Internal function, doesn't exist in bytecode
				var208 = var194_upvw
				return var208
			end
			if not arg2_6 or not INLINED_10() then
				var208 = nil
			end
			clone_upvw_4.Parent = var208
		else
			if not arg2_6 or not var189_upvr then
			end
			var191_upvr.Parent = nil
		end
	end
	local function update_upvr() -- Line 524, Named "update"
		--[[ Upvalues[17]:
			[1]: CreateVRButton_result1_upvr (readonly)
			[2]: var202_upvw (read and write)
			[3]: Color3_new_result1_upvr_5 (copied, readonly)
			[4]: var189_upvr (readonly)
			[5]: var194_upvw (read and write)
			[6]: width2_upvr (readonly)
			[7]: var197_upvw (read and write)
			[8]: clone_upvw_5 (read and write)
			[9]: clone_upvw_4 (read and write)
			[10]: var191_upvr (readonly)
			[11]: var201_upvw (read and write)
			[12]: Color3_new_result1_upvr_2 (copied, readonly)
			[13]: arg1 (readonly)
			[14]: Color3_new_result1_upvr_4 (copied, readonly)
			[15]: Color3_new_result1_upvr_3 (copied, readonly)
			[16]: var205_upvw (read and write)
			[17]: var187_upvr (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 96 start (CF ANALYSIS FAILED)
		local any_GetCurrentKeyValue_result1_5 = CreateVRButton_result1_upvr:GetCurrentKeyValue()
		if var202_upvw then
			local var210 = Color3_new_result1_upvr_5
			var189_upvr.BackgroundColor3 = var210
			if var194_upvw then
				var194_upvw.BackgroundColor3 = var210
			end
			if width2_upvr then
				var197_upvw.Parent = nil
				clone_upvw_5.Parent = nil
				clone_upvw_4.Parent = nil
			else
				var191_upvr.Parent = nil
			end
			-- KONSTANTWARNING: GOTO [205] #164
		end
		-- KONSTANTERROR: [0] 1. Error Block 96 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [35] 29. Error Block 97 start (CF ANALYSIS FAILED)
		if var201_upvw then
			local var211 = Color3_new_result1_upvr_2
			var189_upvr.BackgroundColor3 = var211
			if var194_upvw then
				var194_upvw.BackgroundColor3 = var211
			end
			if width2_upvr then
				local var212 = var189_upvr
				if not var212 then
					var212 = nil
				end
				var197_upvw.Parent = var212
				var212 = var189_upvr
				local var213 = var212
				if not var213 then
					var213 = nil
				end
				clone_upvw_5.Parent = var213
				var213 = var194_upvw
				local var214 = var213
				if not var214 then
					var214 = nil
				end
				clone_upvw_4.Parent = var214
			else
				var214 = var189_upvr
				local var215 = var214
				if not var215 then
					var215 = nil
				end
				var191_upvr.Parent = var215
			end
		elseif any_GetCurrentKeyValue_result1_5 == "Caps" and arg1:GetCaps() then
			local var216 = Color3_new_result1_upvr_4
			var189_upvr.BackgroundColor3 = var216
			if var194_upvw then
				var194_upvw.BackgroundColor3 = var216
			end
			if width2_upvr then
				var197_upvw.Parent = nil
				clone_upvw_5.Parent = nil
				clone_upvw_4.Parent = nil
			else
				var191_upvr.Parent = nil
			end
		elseif any_GetCurrentKeyValue_result1_5 == "Shift" and arg1:GetShift() then
			local var217 = Color3_new_result1_upvr_4
			var189_upvr.BackgroundColor3 = var217
			if var194_upvw then
				var194_upvw.BackgroundColor3 = var217
			end
			if width2_upvr then
				var197_upvw.Parent = nil
				clone_upvw_5.Parent = nil
				clone_upvw_4.Parent = nil
			else
				var191_upvr.Parent = nil
			end
		elseif any_GetCurrentKeyValue_result1_5 == "abc" then
			local var218 = Color3_new_result1_upvr_4
			var189_upvr.BackgroundColor3 = var218
			if var194_upvw then
				var194_upvw.BackgroundColor3 = var218
			end
			if width2_upvr then
				var197_upvw.Parent = nil
				clone_upvw_5.Parent = nil
				clone_upvw_4.Parent = nil
			else
				var191_upvr.Parent = nil
			end
		else
			local var219 = Color3_new_result1_upvr_3
			var189_upvr.BackgroundColor3 = var219
			if var194_upvw then
				var194_upvw.BackgroundColor3 = var219
			end
			if width2_upvr then
				var197_upvw.Parent = nil
				clone_upvw_5.Parent = nil
				clone_upvw_4.Parent = nil
			else
				var191_upvr.Parent = nil
			end
		end
		if var205_upvw then
			var205_upvw.ImageTransparency = 0.5
		end
		var187_upvr.Text = CreateVRButton_result1_upvr:GetCurrentKeyValue()
		-- KONSTANTERROR: [35] 29. Error Block 97 end (CF ANALYSIS FAILED)
	end
	local tbl_10_upvr = {}
	rawset(CreateVRButton_result1_upvr, "OnEnter", function(arg1_32) -- Line 550
		--[[ Upvalues[2]:
			[1]: var201_upvw (read and write)
			[2]: update_upvr (readonly)
		]]
		var201_upvw = true
		update_upvr()
	end)
	rawset(CreateVRButton_result1_upvr, "OnLeave", function(arg1_33) -- Line 554
		--[[ Upvalues[4]:
			[1]: tbl_10_upvr (readonly)
			[2]: var201_upvw (read and write)
			[3]: var202_upvw (read and write)
			[4]: update_upvr (readonly)
		]]
		if not next(tbl_10_upvr) then
			var201_upvw = false
			var202_upvw = false
			update_upvr()
		end
	end)
	rawset(CreateVRButton_result1_upvr, "OnDown", function(arg1_34) -- Line 561
		--[[ Upvalues[3]:
			[1]: var202_upvw (read and write)
			[2]: update_upvr (readonly)
			[3]: onClicked_upvr (readonly)
		]]
		var202_upvw = true
		update_upvr()
		onClicked_upvr()
	end)
	rawset(CreateVRButton_result1_upvr, "OnUp", function(arg1_35) -- Line 569
		--[[ Upvalues[2]:
			[1]: var202_upvw (read and write)
			[2]: update_upvr (readonly)
		]]
		var202_upvw = false
		update_upvr()
	end)
	rawset(CreateVRButton_result1_upvr, "GetCurrentKeyValue", function(arg1_36) -- Line 573
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: var206_upvr (readonly)
			[3]: arg3 (readonly)
		]]
		local any_GetShift_result1_2 = arg1:GetShift()
		local any_GetCaps_result1_3 = arg1:GetCaps()
		if var206_upvr then
			if any_GetCaps_result1_3 and any_GetShift_result1_2 then
				return string.lower(arg3[#arg3])
			end
			if any_GetCaps_result1_3 or any_GetShift_result1_2 then
				return arg3[1]
			end
			return string.lower(arg3[#arg3])
		end
		if any_GetShift_result1_2 then
			return arg3[1]
		end
		return arg3[#arg3]
	end)
	rawset(CreateVRButton_result1_upvr, "ContainsPoint", function(arg1_37, arg2_7, arg3_4) -- Line 593
		--[[ Upvalues[2]:
			[1]: var189_upvr (readonly)
			[2]: var194_upvw (read and write)
		]]
		local var229 = var189_upvr
		local AbsolutePosition_9 = var229.AbsolutePosition
		local var231 = var229.AbsolutePosition + var229.AbsoluteSize
		local var232
		if AbsolutePosition_9.X <= arg2_7 then
			if arg2_7 <= var231.X and AbsolutePosition_9.Y <= arg3_4 and arg3_4 <= var231.Y then
				var232 = true
				-- KONSTANTWARNING: GOTO [27] #17
			end
		end
		var232 = false
		if not var232 then
			var232 = var194_upvw
			if var232 then
				local var233 = var194_upvw
				local AbsolutePosition_8 = var233.AbsolutePosition
				local var235 = var233.AbsolutePosition + var233.AbsoluteSize
				if AbsolutePosition_8.X <= arg2_7 and arg2_7 <= var235.X and AbsolutePosition_8.Y <= arg3_4 and arg3_4 <= var235.Y then
					var232 = true
					return var232
				end
				var232 = false
			end
		end
		return var232
	end)
	rawset(CreateVRButton_result1_upvr, "Update", function(arg1_38) -- Line 597
		--[[ Upvalues[1]:
			[1]: update_upvr (readonly)
		]]
		update_upvr()
	end)
	rawset(CreateVRButton_result1_upvr, "GetInstance", function(arg1_39) -- Line 600
		--[[ Upvalues[1]:
			[1]: var185_upvr (readonly)
		]]
		return var185_upvr
	end)
	var185_upvr.MouseButton1Down:connect(function() -- Line 604
		--[[ Upvalues[1]:
			[1]: CreateVRButton_result1_upvr (readonly)
		]]
		CreateVRButton_result1_upvr:OnDown()
	end)
	var185_upvr.MouseButton1Up:connect(function() -- Line 605
		--[[ Upvalues[1]:
			[1]: CreateVRButton_result1_upvr (readonly)
		]]
		CreateVRButton_result1_upvr:OnUp()
	end)
	var185_upvr.SelectionGained:connect(function() -- Line 606
		--[[ Upvalues[3]:
			[1]: tbl_10_upvr (readonly)
			[2]: var185_upvr (readonly)
			[3]: CreateVRButton_result1_upvr (readonly)
		]]
		tbl_10_upvr[var185_upvr] = true
		CreateVRButton_result1_upvr:OnEnter()
	end)
	var185_upvr.SelectionLost:connect(function() -- Line 607
		--[[ Upvalues[3]:
			[1]: tbl_10_upvr (readonly)
			[2]: var185_upvr (readonly)
			[3]: CreateVRButton_result1_upvr (readonly)
		]]
		tbl_10_upvr[var185_upvr] = nil
		CreateVRButton_result1_upvr:OnLeave()
	end)
	if var194_upvw then
		var194_upvw.MouseButton1Down:connect(function() -- Line 613
			--[[ Upvalues[1]:
				[1]: CreateVRButton_result1_upvr (readonly)
			]]
			CreateVRButton_result1_upvr:OnDown()
		end)
		var194_upvw.MouseButton1Up:connect(function() -- Line 614
			--[[ Upvalues[1]:
				[1]: CreateVRButton_result1_upvr (readonly)
			]]
			CreateVRButton_result1_upvr:OnUp()
		end)
		var194_upvw.SelectionGained:connect(function() -- Line 615
			--[[ Upvalues[3]:
				[1]: tbl_10_upvr (readonly)
				[2]: var194_upvw (read and write)
				[3]: CreateVRButton_result1_upvr (readonly)
			]]
			tbl_10_upvr[var194_upvw] = true
			CreateVRButton_result1_upvr:OnEnter()
		end)
		var194_upvw.SelectionLost:connect(function() -- Line 619
			--[[ Upvalues[3]:
				[1]: tbl_10_upvr (readonly)
				[2]: var194_upvw (read and write)
				[3]: CreateVRButton_result1_upvr (readonly)
			]]
			tbl_10_upvr[var194_upvw] = nil
			CreateVRButton_result1_upvr:OnLeave()
		end)
	end
	update_upvr()
	return CreateVRButton_result1_upvr
end
local function CreateBaseVoiceState_upvr() -- Line 630, Named "CreateBaseVoiceState"
	local module_5 = {
		Name = "Base";
		TransitionFrom = function(arg1) -- Line 634, Named "TransitionFrom"
		end;
	}
	local function TransitionTo(arg1) -- Line 636
	end
	module_5.TransitionTo = TransitionTo
	return module_5
end
local function _() -- Line 642, Named "CreateListeningVoiceState"
	--[[ Upvalues[2]:
		[1]: CreateBaseVoiceState_upvr (readonly)
		[2]: SoundService_upvr (readonly)
	]]
	local CreateBaseVoiceState_result1_4 = CreateBaseVoiceState_upvr()
	CreateBaseVoiceState_result1_4.Name = "Listening"
	local function TransitionTo(arg1) -- Line 647
		--[[ Upvalues[1]:
			[1]: SoundService_upvr (copied, readonly)
		]]
		pcall(function() -- Line 648
			--[[ Upvalues[1]:
				[1]: SoundService_upvr (copied, readonly)
			]]
			SoundService_upvr:BeginRecording()
		end)
	end
	CreateBaseVoiceState_result1_4.TransitionTo = TransitionTo
	return CreateBaseVoiceState_result1_4
end
local function _() -- Line 654, Named "CreateProcessingVoiceState"
	--[[ Upvalues[2]:
		[1]: CreateBaseVoiceState_upvr (readonly)
		[2]: SoundService_upvr (readonly)
	]]
	local CreateBaseVoiceState_result1_2 = CreateBaseVoiceState_upvr()
	CreateBaseVoiceState_result1_2.Name = "Processing"
	local var250_upvw = false
	local var251_upvw
	local function TransitionTo(arg1) -- Line 662
		--[[ Upvalues[3]:
			[1]: var251_upvw (read and write)
			[2]: SoundService_upvr (copied, readonly)
			[3]: var250_upvw (read and write)
		]]
		coroutine.wrap(function() -- Line 663
			--[[ Upvalues[3]:
				[1]: var251_upvw (copied, read and write)
				[2]: SoundService_upvr (copied, readonly)
				[3]: var250_upvw (copied, read and write)
			]]
			pcall(function() -- Line 664
				--[[ Upvalues[2]:
					[1]: var251_upvw (copied, read and write)
					[2]: SoundService_upvr (copied, readonly)
				]]
				var251_upvw = SoundService_upvr:EndRecording()
			end)
			var250_upvw = true
		end)()
	end
	CreateBaseVoiceState_result1_2.TransitionTo = TransitionTo
	function CreateBaseVoiceState_result1_2.GetResultAsync(arg1) -- Line 669
		--[[ Upvalues[2]:
			[1]: var250_upvw (read and write)
			[2]: var251_upvw (read and write)
		]]
		while not var250_upvw do
			wait()
		end
		return var251_upvw
	end
	return CreateBaseVoiceState_result1_2
end
local function _() -- Line 679, Named "CreateWaitingVoiceState"
	--[[ Upvalues[1]:
		[1]: CreateBaseVoiceState_upvr (readonly)
	]]
	local CreateBaseVoiceState_result1_3 = CreateBaseVoiceState_upvr()
	CreateBaseVoiceState_result1_3.Name = "Waiting"
	return CreateBaseVoiceState_result1_3
end
local tbl_14_upvr = {
	Listening = {
		Processing = true;
	};
	Processing = {
		Waiting = true;
	};
	Waiting = {
		Listening = true;
	};
}
local tbl_25_upvr = {}
GetCurrentState_upvw = CreateBaseVoiceState_upvr()
GetCurrentState_upvw.Name = "Waiting"
tbl_25_upvr.CurrentState = GetCurrentState_upvw
GetCurrentState_upvw = "BindableEvent"
local any_upvr = Instance.new(GetCurrentState_upvw)
function GetCurrentState_upvw(arg1, arg2) -- Line 695, Named "TransitionState"
	--[[ Upvalues[2]:
		[1]: tbl_14_upvr (readonly)
		[2]: any_upvr (readonly)
	]]
	if tbl_14_upvr[arg1.CurrentState.Name][arg2.Name] then
		arg1.CurrentState:TransitionFrom()
		arg1.CurrentState = arg2
		arg1.CurrentState:TransitionTo()
		any_upvr:Fire(arg1.CurrentState)
		return true
	end
	return false
end
tbl_25_upvr.TransitionState = GetCurrentState_upvw
function GetCurrentState_upvw(arg1) -- Line 707, Named "GetCurrentState"
	return arg1.CurrentState
end
tbl_25_upvr.GetCurrentState = GetCurrentState_upvw
GetCurrentState_upvw = any_upvr.Event
tbl_25_upvr.StateTransitionedEvent = GetCurrentState_upvw
function any_upvr(arg1) -- Line 716, Named "ConstructKeyboardUI"
	--[[ Upvalues[15]:
		[1]: CorePackages_upvr (readonly)
		[2]: Create_upvr (readonly)
		[3]: Color3_new_result1_upvr_4 (readonly)
		[4]: CreateVRButton_upvr (readonly)
		[5]: Color3_new_result1_upvr_3 (readonly)
		[6]: Color3_new_result1_upvr (readonly)
		[7]: RunService_upvr (readonly)
		[8]: ExtendedInstance_upvr (readonly)
		[9]: TextService_upvr (readonly)
		[10]: tbl_25_upvr (readonly)
		[11]: CreateBaseVoiceState_upvr (readonly)
		[12]: SoundService_upvr (readonly)
		[13]: ContextActionService_upvr (readonly)
		[14]: CreateKeyboardKey_upvr (readonly)
		[15]: tbl_13_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local Panel3D_upvr = require(CorePackages_upvr.Workspace.Packages.VrCommon).Panel3D
	local any_Get_result1_upvr = Panel3D_upvr.Get("Keyboard")
	any_Get_result1_upvr:SetVisible(false)
	local tbl_16 = {}
	local var271_upvr = Create_upvr("Frame")({
		Name = "VirtualKeyboard";
		Size = UDim2.new(1, 0, 1, 0);
		Position = UDim2.new(0, 0, 0, 0);
		BackgroundTransparency = 1;
		Active = true;
		Visible = false;
	})
	local var275_upvr = Create_upvr("TextButton")({
		Name = "TextEntryField";
		Text = "";
		Position = UDim2.new(0, 4, 0, 4);
		Size = UDim2.new(1, -8, 1, -8);
		Font = Enum.Font.SourceSans;
		FontSize = Enum.FontSize.Size60;
		TextXAlignment = Enum.TextXAlignment.Left;
		BackgroundTransparency = 1;
		BorderSizePixel = 0;
		Parent = Create_upvr("Frame")({
			Name = "TextfieldBackground";
			Position = UDim2.new(0, 2, 0, 2);
			Size = UDim2.new(1, -4, 1, -4);
			BackgroundTransparency = 0;
			BackgroundColor3 = Color3.new(0.8196078431372549, 0.8470588235294118, 0.8666666666666667);
			BorderSizePixel = 0;
			Visible = true;
			Parent = Create_upvr("ImageLabel")({
				Name = "TextEntryBackground";
				Size = UDim2.new(0.5, 0, 0.125, 0);
				Position = UDim2.new(0.25, 0, 0, 0);
				Image = "";
				BackgroundTransparency = 0.5;
				BackgroundColor3 = Color3.new(0.12156862745098039, 0.12156862745098039, 0.12156862745098039);
				BorderSizePixel = 0;
				ClipsDescendants = true;
				Parent = var271_upvr;
			});
		});
	})
	local var278 = Create_upvr("ImageButton")({
		Name = "CloseButton";
		Size = UDim2.new(0.075, -10, 0.198, -10);
		Position = UDim2.new(0, -5, 0, -35);
		Image = "rbxasset://textures/ui/Keyboard/close_button_background.png";
		BackgroundTransparency = 1;
		AutoButtonColor = false;
		Parent = var271_upvr;
	})
	var278.SelectionImageObject = Create_upvr("ImageLabel")({
		Name = "Selection";
		Size = UDim2.new(0.9, 0, 0.9, 0);
		Position = UDim2.new(0.05, 0, 0.05, 0);
		Image = "rbxasset://textures/ui/Keyboard/close_button_selection.png";
		BackgroundTransparency = 1;
	})
	Create_upvr("ImageLabel")({
		Name = "Icon";
		Size = UDim2.new(0.5, 0, 0.5, 0);
		Position = UDim2.new(0.25, 0, 0.25, 0);
		Image = "rbxasset://textures/ui/Keyboard/close_button_icon.png";
		BackgroundTransparency = 1;
		Parent = var278;
	})
	table.insert(tbl_16, CreateVRButton_upvr(var278))
	local var282_upvr = Create_upvr("Frame")({
		Name = "VoiceRecognitionContainer";
		Size = UDim2.new(1, 0, 0.85, 0);
		Position = UDim2.new(0, 0, 0.15, 0);
		BackgroundTransparency = 1;
		Active = true;
		Visible = false;
		Parent = var271_upvr;
	})
	local clone = Create_upvr("Frame")({
		Name = "voiceRecognitionBackground1";
		Size = UDim2.new(1, 0, 0.75, 0);
		Position = UDim2.new(0, 0, 0, 0);
		BackgroundColor3 = Color3_new_result1_upvr_3;
		BackgroundTransparency = 0.3;
		BorderSizePixel = 0;
		Active = true;
		Parent = var282_upvr;
	}):Clone()
	clone.Size = UDim2.new(0.8, 0, 0.25, 0)
	clone.Position = UDim2.new(0, 0, 0.75, 0)
	clone.Parent = var282_upvr
	table.insert(tbl_16, CreateVRButton_upvr(Create_upvr("TextButton")({
		Name = "DoneButton";
		Size = UDim2.new(0.2, -5, 0.25, -5);
		Position = UDim2.new(0.8, 5, 0.75, 5);
		Text = "Done";
		BackgroundColor3 = Color3_new_result1_upvr_4;
		Font = Enum.Font.SourceSansBold;
		FontSize = Enum.FontSize.Size96;
		TextColor3 = Color3_new_result1_upvr;
		BackgroundTransparency = 0;
		AutoButtonColor = false;
		BorderSizePixel = 0;
		Parent = var282_upvr;
	})))
	local _ = {
		Name = "VoiceProcessingStatus";
		Size = UDim2.new(0, 0, 0, 0);
		Position = UDim2.new(0.5, 0, 0.33, 0);
		Text = "";
		Font = Enum.Font.SourceSansBold;
		FontSize = Enum.FontSize.Size96;
		TextColor3 = Color3_new_result1_upvr;
		BackgroundTransparency = 1;
		BorderSizePixel = 0;
		Parent = var282_upvr;
	}
	local CreateVoiceVisualizerWidget_result1 = (function() -- Line 873, Named "CreateVoiceVisualizerWidget"
		--[[ Upvalues[3]:
			[1]: Create_upvr (copied, readonly)
			[2]: Color3_new_result1_upvr (copied, readonly)
			[3]: RunService_upvr (copied, readonly)
		]]
		local module_3 = {}
		local tbl_upvr = {}
		local var292 = Create_upvr("Frame")({
			Name = "VoiceVisualizerContainer";
			Size = UDim2.new(1, 0, 1, 0);
			BackgroundTransparency = 1;
		})
		module_3.Container = var292
		for i_3 = 1, 50 do
			table.insert(tbl_upvr, Create_upvr("Frame")({
				Name = "Bar";
				Size = UDim2.new(0.02, -4, 1, 0);
				Position = UDim2.new(i_3 / 50, 0, 0, 0);
				BackgroundTransparency = 0;
				BackgroundColor3 = Color3_new_result1_upvr;
				Parent = var292;
			}))
		end
		function module_3.StartAnimation(arg1_40) -- Line 903
			--[[ Upvalues[2]:
				[1]: RunService_upvr (copied, readonly)
				[2]: tbl_upvr (readonly)
			]]
			RunService_upvr:UnbindFromRenderStep("VoiceVisualizerWidget")
			RunService_upvr:BindToRenderStep("VoiceVisualizerWidget", Enum.RenderPriority.First.Value, function() -- Line 906
				--[[ Upvalues[1]:
					[1]: tbl_upvr (copied, readonly)
				]]
				for i_4, v_2 in pairs(tbl_upvr) do
					local var300 = ((math.abs(math.sin(tick() * 2.5 + i_4 * 0.5026548245743669)) + math.abs(math.cos(tick() * 2.5 + i_4 * 0.5026548245743669))) / 2 - 0.3) * 1.4285714285714286
					v_2.Size = UDim2.new(0.02, -4, var300, 0)
					v_2.Position = UDim2.new(i_4 / 50, 0, (1 - var300) / 2, 0)
				end
			end)
		end
		function module_3.StopAnimation(arg1_41) -- Line 917
			--[[ Upvalues[1]:
				[1]: RunService_upvr (copied, readonly)
			]]
			RunService_upvr:UnbindFromRenderStep("VoiceVisualizerWidget")
		end
		return module_3
	end)()
	CreateVoiceVisualizerWidget_result1.Container.Parent = var282_upvr
	CreateVoiceVisualizerWidget_result1.Container.Size = UDim2.new(0.5, 0, 0.4, 0)
	CreateVoiceVisualizerWidget_result1.Container.Position = UDim2.new(0.25, 0, 0.4, 0)
	local ExtendedInstance_upvr_result1 = ExtendedInstance_upvr(var271_upvr)
	local var303_upvw
	local tbl_5_upvr = {}
	local var305_upvw = false
	local var306_upvw = false
	local var307_upvw = 0
	local BindableEvent_upvr_2 = Instance.new("BindableEvent")
	local BindableEvent_upvr = Instance.new("BindableEvent")
	local var310_upvw = false
	local var311_upvr = Create_upvr("Frame")({
		Name = "TextfieldCursor";
		Size = UDim2.new(0, 5, 0.9, 0);
		Position = UDim2.new(0, 0, 0.05, 0);
		BackgroundTransparency = 0;
		BackgroundColor3 = Color3_new_result1_upvr_4;
		BorderSizePixel = 0;
		Visible = true;
		ZIndex = 2;
		Parent = var275_upvr;
	})
	local function SetTextFieldCursorPosition_upvr(arg1_42) -- Line 943, Named "SetTextFieldCursorPosition"
		--[[ Upvalues[4]:
			[1]: var307_upvw (read and write)
			[2]: var275_upvr (readonly)
			[3]: TextService_upvr (copied, readonly)
			[4]: var311_upvr (readonly)
		]]
		var307_upvw = Clamp(0, #var275_upvr.Text, arg1_42)
		local var312
		if not var275_upvr.TextFits then
			var307_upvw = #var275_upvr.Text
		end
		var312 = var275_upvr.Text
		local string_match_result1_3 = string.match(var275_upvr.FontSize.Name, "%d+")
		local function INLINED_11() -- Internal function, doesn't exist in bytecode
			var312 = tostring(string_match_result1_3)
			return var312
		end
		if not string_match_result1_3 or not INLINED_11() then
			var312 = 12
		end
		var312 = 0
		var311_upvr.Position = UDim2.new(var312, TextService_upvr:GetTextSize(string.sub(var312, 1, var307_upvw), var312, var275_upvr.Font, var275_upvr.AbsoluteSize).x, var311_upvr.Position.Y.Scale, var311_upvr.Position.Y.Offset)
	end
	local function _(arg1_43) -- Line 957, Named "UpdateTextEntryFieldText"
		--[[ Upvalues[3]:
			[1]: var275_upvr (readonly)
			[2]: SetTextFieldCursorPosition_upvr (readonly)
			[3]: var307_upvw (read and write)
		]]
		var275_upvr:SetTextFromInput(arg1_43)
		SetTextFieldCursorPosition_upvr(var307_upvw)
	end
	local var314_upvw = ""
	local function _() -- Line 963, Named "getBufferText"
		--[[ Upvalues[2]:
			[1]: var303_upvw (read and write)
			[2]: var314_upvw (read and write)
		]]
		if var303_upvw then
			if var303_upvw.TextBox then
				return var303_upvw.TextBox.Text
			end
		end
		return var314_upvw
	end
	local function _(arg1_44) -- Line 969, Named "setBufferText"
		--[[ Upvalues[5]:
			[1]: var303_upvw (read and write)
			[2]: var314_upvw (read and write)
			[3]: var275_upvr (readonly)
			[4]: SetTextFieldCursorPosition_upvr (readonly)
			[5]: var307_upvw (read and write)
		]]
		if var303_upvw then
			if var303_upvw.TextBox then
				var303_upvw.TextBox.Text = arg1_44
				return
			end
		end
		if var314_upvw ~= arg1_44 then
			var314_upvw = arg1_44
			var275_upvr:SetTextFromInput(var314_upvw)
			SetTextFieldCursorPosition_upvr(var307_upvw)
		end
	end
	local function _(arg1_45, arg2) -- Line 978, Named "calculateTextCursorPosition"
		--[[ Upvalues[2]:
			[1]: var275_upvr (readonly)
			[2]: TextService_upvr (copied, readonly)
		]]
		for i_5 = 1, #var275_upvr.Text do
			local string_match_result1_2 = string.match(var275_upvr.FontSize.Name, "%d+")
			local var318
			local function INLINED_12() -- Internal function, doesn't exist in bytecode
				var318 = tostring(string_match_result1_2)
				return var318
			end
			if not string_match_result1_2 or not INLINED_12() then
				var318 = 12
			end
			if arg1_45 - var275_upvr.AbsolutePosition.x < TextService_upvr:GetTextSize(string.sub(var275_upvr.Text, 1, i_5), var318, var275_upvr.Font, var275_upvr.AbsoluteSize).x then
				return i_5 - 1
			end
		end
		return #var275_upvr.Text
	end
	local var319_upvw
	rawset(ExtendedInstance_upvr_result1, "OpenedEvent", BindableEvent_upvr_2.Event)
	rawset(ExtendedInstance_upvr_result1, "ClosedEvent", BindableEvent_upvr.Event)
	rawset(ExtendedInstance_upvr_result1, "GetCurrentKeyset", function(arg1_46) -- Line 1001
		--[[ Upvalues[2]:
			[1]: tbl_5_upvr (readonly)
			[2]: var319_upvw (read and write)
		]]
		return tbl_5_upvr[var319_upvw]
	end)
	rawset(ExtendedInstance_upvr_result1, "SetCurrentKeyset", function(arg1_47, arg2) -- Line 1005
		--[[ Upvalues[2]:
			[1]: var319_upvw (read and write)
			[2]: tbl_5_upvr (readonly)
		]]
		if arg2 ~= var319_upvw then
			if tbl_5_upvr[arg2] ~= nil then
				if tbl_5_upvr[var319_upvw] and tbl_5_upvr[var319_upvw].container then
					tbl_5_upvr[var319_upvw].container.Visible = false
				end
				var319_upvw = arg2
				if tbl_5_upvr[var319_upvw] and tbl_5_upvr[var319_upvw].container then
					tbl_5_upvr[var319_upvw].container.Visible = true
				end
			end
		end
	end)
	rawset(ExtendedInstance_upvr_result1, "SetVoiceMode", function(arg1_48, arg2) -- Line 1019
		--[[ Upvalues[4]:
			[1]: var282_upvr (readonly)
			[2]: tbl_25_upvr (copied, readonly)
			[3]: CreateBaseVoiceState_upvr (copied, readonly)
			[4]: SoundService_upvr (copied, readonly)
		]]
		local var323 = false
		local any_GetCurrentKeyset_result1 = arg1_48:GetCurrentKeyset()
		if any_GetCurrentKeyset_result1 then
			if any_GetCurrentKeyset_result1.container then
				any_GetCurrentKeyset_result1.container.Visible = not var323
			end
		end
		var282_upvr.Visible = var323
		if var323 then
			local CreateBaseVoiceState_result1 = CreateBaseVoiceState_upvr()
			CreateBaseVoiceState_result1.Name = "Listening"
			function CreateBaseVoiceState_result1.TransitionTo(arg1_49) -- Line 647
				--[[ Upvalues[1]:
					[1]: SoundService_upvr (copied, readonly)
				]]
				pcall(function() -- Line 648
					--[[ Upvalues[1]:
						[1]: SoundService_upvr (copied, readonly)
					]]
					SoundService_upvr:BeginRecording()
				end)
			end
			tbl_25_upvr:TransitionState(CreateBaseVoiceState_result1)
		end
	end)
	rawset(ExtendedInstance_upvr_result1, "GetCaps", function(arg1_50) -- Line 1035
		--[[ Upvalues[1]:
			[1]: var305_upvw (read and write)
		]]
		return var305_upvw
	end)
	rawset(ExtendedInstance_upvr_result1, "SetCaps", function(arg1_51, arg2) -- Line 1039
		--[[ Upvalues[1]:
			[1]: var305_upvw (read and write)
		]]
		var305_upvw = arg2
		for _, v_3 in pairs(arg1_51:GetCurrentKeyset().keys) do
			v_3:Update()
		end
	end)
	rawset(ExtendedInstance_upvr_result1, "GetShift", function(arg1_52) -- Line 1046
		--[[ Upvalues[1]:
			[1]: var306_upvw (read and write)
		]]
		return var306_upvw
	end)
	rawset(ExtendedInstance_upvr_result1, "SetShift", function(arg1_53, arg2) -- Line 1050
		--[[ Upvalues[1]:
			[1]: var306_upvw (read and write)
		]]
		var306_upvw = arg2
		for _, v_4 in pairs(arg1_53:GetCurrentKeyset().keys) do
			v_4:Update()
		end
	end)
	local var341_upvw = false
	local var342_upvw
	local var343_upvw
	local var344_upvw
	local function _() -- Line 1063, Named "disconnectKeyboardEvents"
		--[[ Upvalues[3]:
			[1]: var342_upvw (read and write)
			[2]: var343_upvw (read and write)
			[3]: var344_upvw (read and write)
		]]
		if var342_upvw then
			var342_upvw:disconnect()
		end
		var342_upvw = nil
		if var343_upvw then
			var343_upvw:disconnect()
		end
		var343_upvw = nil
		if var344_upvw then
			var344_upvw:disconnect()
		end
		var344_upvw = nil
	end
	rawset(ExtendedInstance_upvr_result1, "Open", function(arg1_54, arg2) -- Line 1072
		--[[ Upvalues[17]:
			[1]: var310_upvw (read and write)
			[2]: var303_upvw (read and write)
			[3]: var271_upvr (readonly)
			[4]: any_Get_result1_upvr (readonly)
			[5]: var342_upvw (read and write)
			[6]: var343_upvw (read and write)
			[7]: var344_upvw (read and write)
			[8]: var275_upvr (readonly)
			[9]: SetTextFieldCursorPosition_upvr (readonly)
			[10]: var307_upvw (read and write)
			[11]: var341_upvw (read and write)
			[12]: var314_upvw (read and write)
			[13]: Panel3D_upvr (readonly)
			[14]: ContextActionService_upvr (copied, readonly)
			[15]: var319_upvw (read and write)
			[16]: tbl_5_upvr (readonly)
			[17]: BindableEvent_upvr_2 (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [2] 3. Error Block 2 start (CF ANALYSIS FAILED)
		do
			return
		end
		-- KONSTANTERROR: [2] 3. Error Block 2 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [3] 4. Error Block 3 start (CF ANALYSIS FAILED)
		var310_upvw = true
		var303_upvw = arg2
		arg1_54:SetCurrentKeyset(1)
		arg1_54:SetVoiceMode(false)
		var271_upvr.Visible = true
		any_Get_result1_upvr:ResizeStuds(5.9, 2.25, 320)
		-- KONSTANTERROR: [3] 4. Error Block 3 end (CF ANALYSIS FAILED)
	end)
	rawset(ExtendedInstance_upvr_result1, "Close", function(arg1_60, arg2) -- Line 1163
		--[[ Upvalues[9]:
			[1]: var310_upvw (read and write)
			[2]: var342_upvw (read and write)
			[3]: var343_upvw (read and write)
			[4]: var344_upvw (read and write)
			[5]: ContextActionService_upvr (copied, readonly)
			[6]: any_Get_result1_upvr (readonly)
			[7]: var271_upvr (readonly)
			[8]: Panel3D_upvr (readonly)
			[9]: BindableEvent_upvr (readonly)
		]]
		if arg2 ~= true then
		else
		end
		if not var310_upvw then
		else
			var310_upvw = false
			if var342_upvw then
				var342_upvw:disconnect()
			end
			var342_upvw = nil
			if var343_upvw then
				var343_upvw:disconnect()
			end
			var343_upvw = nil
			if var344_upvw then
				var344_upvw:disconnect()
			end
			var344_upvw = nil
			ContextActionService_upvr:UnbindCoreAction("VirtualKeyboardControllerInput")
			any_Get_result1_upvr:OnMouseLeave()
			any_Get_result1_upvr:SetVisible(false, true)
			var271_upvr.Visible = false
			Panel3D_upvr.Get("Topbar3D"):SetVisible(true)
			arg1_60:SubmitText(true, false)
			BindableEvent_upvr:Fire()
		end
	end)
	rawset(ExtendedInstance_upvr_result1, "SubmitText", function(arg1_61, arg2, arg3) -- Line 1183
		--[[ Upvalues[5]:
			[1]: var303_upvw (read and write)
			[2]: var314_upvw (read and write)
			[3]: Panel3D_upvr (readonly)
			[4]: any_Get_result1_upvr (readonly)
			[5]: var341_upvw (read and write)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [2] 3. Error Block 2 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [2] 3. Error Block 2 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [5] 5. Error Block 3 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [5] 5. Error Block 3 end (CF ANALYSIS FAILED)
	end)
	rawset(ExtendedInstance_upvr_result1, "GetCurrentOptions", function(arg1_62) -- Line 1206
		--[[ Upvalues[1]:
			[1]: var303_upvw (read and write)
		]]
		return var303_upvw
	end)
	rawset(ExtendedInstance_upvr_result1, "BackspaceAtCursor", function(arg1_63) -- Line 1210
		--[[ Upvalues[5]:
			[1]: var307_upvw (read and write)
			[2]: var303_upvw (read and write)
			[3]: var314_upvw (read and write)
			[4]: var275_upvr (readonly)
			[5]: SetTextFieldCursorPosition_upvr (readonly)
		]]
		if 1 <= var307_upvw then
			local var366
			if var303_upvw and var303_upvw.TextBox then
				var366 = var303_upvw.TextBox.Text
			else
				var366 = var314_upvw
			end
			local var367 = string.sub(var366, 1, var307_upvw - 1)..string.sub(var366, var307_upvw + 1, #var366)
			if var303_upvw and var303_upvw.TextBox then
				var303_upvw.TextBox.Text = var367
			elseif var314_upvw ~= var367 then
				var314_upvw = var367
				var275_upvr:SetTextFromInput(var314_upvw)
				SetTextFieldCursorPosition_upvr(var307_upvw)
			end
			SetTextFieldCursorPosition_upvr(var307_upvw - 1)
		end
	end)
	rawset(ExtendedInstance_upvr_result1, "SubmitCharacter", function(arg1_64, arg2, arg3) -- Line 1220
		--[[ Upvalues[5]:
			[1]: var303_upvw (read and write)
			[2]: var314_upvw (read and write)
			[3]: var307_upvw (read and write)
			[4]: var275_upvr (readonly)
			[5]: SetTextFieldCursorPosition_upvr (readonly)
		]]
		if var303_upvw then
			if var303_upvw.TextBox then
				-- KONSTANTWARNING: GOTO [13] #11
			end
		end
		local var369 = var314_upvw
		local var370 = string.sub(var369, 1, var307_upvw)..arg2..string.sub(var369, var307_upvw + 1, #var369)
		if var303_upvw and var303_upvw.TextBox then
			var303_upvw.TextBox.Text = var370
		elseif var314_upvw ~= var370 then
			var314_upvw = var370
			var275_upvr:SetTextFromInput(var314_upvw)
			SetTextFieldCursorPosition_upvr(var307_upvw)
		end
		SetTextFieldCursorPosition_upvr(var307_upvw + #arg2)
		if arg3 and arg1_64:GetShift() then
			arg1_64:SetShift(false)
		end
	end)
	local pairs_result1_3, pairs_result2_3, pairs_result3 = pairs(arg1)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [1020] 776. Error Block 40 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [1022.42]
	for _, v_5 in pairs(nil) do
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [1033.44]
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [1041.45]
		v_5.Position = UDim2.new(v_5.Position.X.Scale / nil, 0, v_5.Position.Y.Scale / nil, 0)
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
		v_5.Size = UDim2.new(v_5.Size.X.Scale / nil, 0, v_5.Size.Y.Scale / nil, 0)
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [1067.43]
		v_5.Parent = nil
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	nil.SizeConstraint = Enum.SizeConstraint.RelativeXX
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x3)
	nil.Size = UDim2.new(1, 0, -nil / nil, 0)
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	nil.Position = UDim2.new(0, 0, 1, 0)
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	nil.Visible = false
	local tbl_7 = {}
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	tbl_7.keys = nil
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	tbl_7.container = nil
	table.insert(tbl_5_upvr, tbl_7)
	-- KONSTANTERROR: [1020] 776. Error Block 40 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [830] 638. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [830] 638. Error Block 2 end (CF ANALYSIS FAILED)
end
local RunService_upvr = game:GetService("RunService")
local TextService_upvr = game:GetService("TextService")
local ContextActionService_upvr = game:GetService("ContextActionService")
local var261_upvr = any_upvr
GetCurrentState_upvw = nil
local function _() -- Line 1352, Named "GetKeyboard"
	--[[ Upvalues[4]:
		[1]: GetCurrentState_upvw (read and write)
		[2]: var261_upvr (readonly)
		[3]: any_JSONDecode_result1_upvr_2 (readonly)
		[4]: any_JSONDecode_result1_upvr (readonly)
	]]
	if GetCurrentState_upvw == nil then
		GetCurrentState_upvw = var261_upvr({any_JSONDecode_result1_upvr_2, any_JSONDecode_result1_upvr})
	end
	return GetCurrentState_upvw
end
local module_4 = {
	CreateVirtualKeyboardOptions = function(arg1, arg2) -- Line 1363, Named "CreateVirtualKeyboardOptions"
		local module = {}
		module.TextBox = arg2
		return module
	end;
	ShowVirtualKeyboard = function(arg1, arg2) -- Line 1372, Named "ShowVirtualKeyboard"
	end;
	CloseVirtualKeyboard = function(arg1) -- Line 1378, Named "CloseVirtualKeyboard"
	end;
}
if GetCurrentState_upvw == nil then
	GetCurrentState_upvw = var261_upvr({any_JSONDecode_result1_upvr_2, any_JSONDecode_result1_upvr})
end
module_4.OpenedEvent = GetCurrentState_upvw.OpenedEvent
if GetCurrentState_upvw == nil then
end
module_4.ClosedEvent = var261_upvr({any_JSONDecode_result1_upvr_2, any_JSONDecode_result1_upvr}).ClosedEvent
return module_4