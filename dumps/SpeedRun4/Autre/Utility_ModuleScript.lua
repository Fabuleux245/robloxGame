-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:59:27
-- Luau version 6, Types version 3
-- Time taken: 0.016961 seconds

local GuiService_upvr = game:GetService("GuiService")
local Players_upvr = game:GetService("Players")
local var3_upvw
pcall(function() -- Line 10
	--[[ Upvalues[1]:
		[1]: var3_upvw (read and write)
	]]
	var3_upvw = game:GetService("PlatformService")
end)
local module_3_upvr = {
	IsFinite = function(arg1) -- Line 15, Named "IsFinite"
		local var7 = false
		if arg1 == arg1 then
			var7 = false
			if arg1 ~= math.huge then
				if arg1 == (-math.huge) then
					var7 = false
				else
					var7 = true
				end
			end
		end
		return var7
	end;
}
function module_3_upvr.FindAncestorOfType(arg1, arg2) -- Line 19
	--[[ Upvalues[1]:
		[1]: module_3_upvr (readonly)
	]]
	local var8 = arg1
	if var8 then
		var8 = arg1.Parent
	end
	if var8 then
		if var8:IsA(arg2) then
			return var8
		end
		return module_3_upvr.FindAncestorOfType(var8, arg2)
	end
	return nil
end
function module_3_upvr.CalculateRelativeDimensions(arg1, arg2, arg3, arg4) -- Line 31
	--[[ Upvalues[2]:
		[1]: GuiService_upvr (readonly)
		[2]: module_3_upvr (readonly)
	]]
	local any_FindAncestorOfType_result1_2 = module_3_upvr.FindAncestorOfType(arg1, "SurfaceGui")
	local var15
	if any_FindAncestorOfType_result1_2 then
		var15 = any_FindAncestorOfType_result1_2.CanvasSize
	end
	local var16
	if 0 < arg3.y and 0 < var15.y then
		var16 *= (arg3.x / arg3.y) / (var15.x / var15.y)
		local Parent = arg1.Parent
		if Parent then
			local var18 = (1) / (Parent.AbsoluteSize / var15)
			if module_3_upvr.IsFinite(var18.x) and module_3_upvr.IsFinite(var18.y) then
				return UDim2.new(var18.x * var16.x, 0, var18.y * var16.y, 0)
			end
		end
	end
	return UDim2.new(var16.x, 0, var16.y, 0)
end
module_3_upvr.Enum = {
	Anchor = {
		TopLeft = 1;
		TopMiddle = 2;
		TopRight = 3;
		CenterLeft = 4;
		Center = 5;
		CenterRight = 6;
		BottomLeft = 7;
		BottomMiddle = 8;
		BottomRight = 9;
	};
}
function module_3_upvr.CalculateFit(arg1, arg2) -- Line 76
	local var21 = arg1.AbsoluteSize / arg2
	local var22 = arg2 * math.min(var21.X, var21.Y)
	return UDim2.new(0, var22.X, 0, var22.Y)
end
function module_3_upvr.CalculateFill(arg1, arg2) -- Line 84
	local var23 = arg1.AbsoluteSize / arg2
	local var24 = arg2 * math.max(var23.X, var23.Y)
	return UDim2.new(0, var24.X, 0, var24.Y)
end
local tbl_upvr = {}
local function _(arg1, arg2) -- Line 95, Named "getActiveTween"
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	local var26 = tbl_upvr[arg1]
	if var26 then
		var26 = tbl_upvr[arg1][arg2]
	end
	return var26
end
local function _(arg1, arg2, arg3) -- Line 99, Named "setActiveTween"
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	if not tbl_upvr[arg1] then
		tbl_upvr[arg1] = {}
	end
	tbl_upvr[arg1][arg2] = arg3
end
function module_3_upvr.Linear(arg1, arg2, arg3, arg4) -- Line 106
	if arg4 <= arg1 then
		return arg2 + arg3
	end
	return arg3 * arg1 / arg4 + arg2
end
function module_3_upvr.EaseOutQuad(arg1, arg2, arg3, arg4) -- Line 112
	if arg4 <= arg1 then
		return arg2 + arg3
	end
	local var27 = arg1 / arg4
	return -arg3 * var27 * (var27 - 2) + arg2
end
function module_3_upvr.EaseInOutQuad(arg1, arg2, arg3, arg4) -- Line 119
	if arg4 <= arg1 then
		return arg2 + arg3
	end
	local var28 = (arg1) / (arg4 / 2)
	if var28 < 1 then
		return arg3 / 2 * var28 * var28 + arg2
	end
	local var29 = var28 - 1
	return -arg3 / 2 * (var29 * (var29 - 2) - 1) + arg2
end
function module_3_upvr.SCurveUDim2(arg1, arg2, arg3, arg4) -- Line 128
	if arg4 <= arg1 then
		return arg2 + arg3
	end
	arg1 /= arg4
	local var30 = arg1
	if var30 < 0 then
		var30 = 0
	end
	if 1 < var30 then
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x4)
	local var31 = 3 * 1 * 1 - 2 * 1 * 1 * 1
	return UDim2.new(var31 * arg3.X.Scale, var31 * arg3.X.Offset, var31 * arg3.Y.Scale, var31 * arg3.Y.Offset) + arg2
end
function module_3_upvr.SCurveVector2(arg1, arg2, arg3, arg4) -- Line 141
	if arg4 <= arg1 then
		return arg2 + arg3
	end
	arg1 /= arg4
	local var32 = arg1
	if var32 < 0 then
		var32 = 0
	end
	if 1 < var32 then
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x4)
	local var33 = 3 * 1 * 1 - 2 * 1 * 1 * 1
	return Vector2.new(var33 * arg3.X, var33 * arg3.Y) + arg2
end
local RunService_upvr = game:GetService("RunService")
function module_3_upvr.PropertyTweener(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) -- Line 152
	--[[ Upvalues[3]:
		[1]: module_3_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: RunService_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [2] 3. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [2] 3. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [5] 5. Error Block 3 start (CF ANALYSIS FAILED)
	local tbl_upvr_2 = {
		StartTime = tick();
		EndTime = tbl_upvr_2.StartTime + arg5;
		Cancelled = false;
	}
	local function _(arg1_2) -- Line 165, Named "setValue"
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: arg2 (readonly)
		]]
		if arg1 then
			arg1[arg2] = arg1_2
		end
	end
	local Linear_2_upvw = module_3_upvr.Linear
	local var37_upvw = false
	local var38_upvw = 0
	local function _() -- Line 171, Named "finalize"
		--[[ Upvalues[10]:
			[1]: Linear_2_upvw (read and write)
			[2]: arg3 (readonly)
			[3]: arg4 (readonly)
			[4]: arg1 (readonly)
			[5]: arg2 (readonly)
			[6]: var37_upvw (read and write)
			[7]: var38_upvw (read and write)
			[8]: tbl_upvr (copied, readonly)
			[9]: tbl_upvr_2 (readonly)
			[10]: arg8 (readonly)
		]]
		if arg1 then
			arg1[arg2] = Linear_2_upvw(1, arg3, arg4 - arg3, 1)
		end
		var37_upvw = true
		var38_upvw = 1
		local var39 = arg2
		local var40 = tbl_upvr[var39]
		if var40 then
			var40 = tbl_upvr[var39][arg1]
		end
		if var40 == tbl_upvr_2 then
			local var41 = arg2
			if not tbl_upvr[var41] then
				tbl_upvr[var41] = {}
			end
			tbl_upvr[var41][arg1] = nil
		end
		if arg8 then
			arg8()
		end
	end
	-- KONSTANTERROR: [5] 5. Error Block 3 end (CF ANALYSIS FAILED)
end
function module_3_upvr.CancelTweens(arg1) -- Line 243
	for i, v in pairs(arg1) do
		v:Finish()
		arg1[i] = nil
	end
end
function module_3_upvr.Signal() -- Line 252
	local module = {}
	local BindableEvent_upvr = Instance.new("BindableEvent")
	local var49_upvw
	local var50_upvw
	function module.fire(arg1, ...) -- Line 260
		--[[ Upvalues[3]:
			[1]: var49_upvw (read and write)
			[2]: var50_upvw (read and write)
			[3]: BindableEvent_upvr (readonly)
		]]
		var49_upvw = {...}
		var50_upvw = select('#', ...)
		BindableEvent_upvr:Fire()
	end
	function module.connect(arg1, arg2) -- Line 266
		--[[ Upvalues[3]:
			[1]: BindableEvent_upvr (readonly)
			[2]: var49_upvw (read and write)
			[3]: var50_upvw (read and write)
		]]
		if not arg2 then
			error("connect(nil)", 2)
		end
		return BindableEvent_upvr.Event:connect(function() -- Line 268
			--[[ Upvalues[3]:
				[1]: arg2 (readonly)
				[2]: var49_upvw (copied, read and write)
				[3]: var50_upvw (copied, read and write)
			]]
			arg2(unpack(var49_upvw, 1, var50_upvw))
		end)
	end
	function module.wait(arg1) -- Line 273
		--[[ Upvalues[3]:
			[1]: BindableEvent_upvr (readonly)
			[2]: var49_upvw (read and write)
			[3]: var50_upvw (read and write)
		]]
		BindableEvent_upvr.Event:wait()
		assert(var49_upvw, "Missing arg data, likely due to :TweenSize/Position corrupting threadrefs.")
		return unpack(var49_upvw, 1, var50_upvw)
	end
	return module
end
function module_3_upvr.DisconnectEvent(arg1) -- Line 282
	if arg1 then
		arg1:disconnect()
	end
	return nil
end
function module_3_upvr.DisconnectEvents(arg1) -- Line 289
	if arg1 and type(arg1) == "table" then
		for _, v_2 in pairs(arg1) do
			v_2:disconnect()
		end
	end
end
function module_3_upvr.Clamp(arg1, arg2, arg3) -- Line 299
	return math.max(arg1, math.min(arg2, arg3))
end
function module_3_upvr.ClampVector2(arg1, arg2, arg3) -- Line 303
	--[[ Upvalues[1]:
		[1]: module_3_upvr (readonly)
	]]
	return Vector2.new(module_3_upvr.Clamp(arg1.x, arg2.x, arg3.x), module_3_upvr.Clamp(arg1.y, arg2.y, arg3.y))
end
function module_3_upvr.TweenPositionOrSet(arg1, ...) -- Line 307
	if arg1:IsDescendantOf(game) then
		arg1:TweenPosition(...)
	else
		arg1.Position = select(1, ...)
	end
end
function module_3_upvr.ClampCanvasPosition(arg1, arg2) -- Line 316
	--[[ Upvalues[1]:
		[1]: module_3_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [3] 3. Error Block 8 start (CF ANALYSIS FAILED)
	local AbsoluteSize = arg1.Parent.AbsoluteSize
	if not AbsoluteSize then
		-- KONSTANTERROR: [8] 6. Error Block 6 start (CF ANALYSIS FAILED)
		AbsoluteSize = Vector2.new(0, 0)
		-- KONSTANTERROR: [8] 6. Error Block 6 end (CF ANALYSIS FAILED)
	end
	local vector2 = Vector2.new(arg1.CanvasSize.X.Scale * AbsoluteSize.X + arg1.CanvasSize.X.Offset, arg1.CanvasSize.Y.Scale * AbsoluteSize.Y + arg1.CanvasSize.Y.Offset)
	do
		return Vector2.new(module_3_upvr.Clamp(0, vector2.X - arg1.AbsoluteWindowSize.X, arg2.X), module_3_upvr.Clamp(0, vector2.Y - arg1.AbsoluteWindowSize.Y, arg2.Y))
	end
	-- KONSTANTERROR: [3] 3. Error Block 8 end (CF ANALYSIS FAILED)
end
function module_3_upvr.Round(arg1, arg2) -- Line 327
	local var60 = arg2 or 1
	return math.floor((arg1 + var60 / 2) / var60) * var60
end
function module_3_upvr.ChompString(arg1) -- Line 335
	return tostring(arg1):gsub("^%s+", ""):gsub("%s+$", "")
end
function module_3_upvr.SpaceNormalizeString(arg1) -- Line 340
	return tostring(arg1):gsub("%s+", ' '):gsub("^%s+", ""):gsub("%s+$", "")
end
local LocalizationService_upvr = game:GetService("LocalizationService")
local function getDelimiterByLocale_upvr() -- Line 344, Named "getDelimiterByLocale"
	--[[ Upvalues[1]:
		[1]: LocalizationService_upvr (readonly)
	]]
	local any_lower_result1 = LocalizationService_upvr.RobloxLocaleId:lower()
	local module_2 = {
		["en-us"] = ',';
		["zh-hk"] = "";
		["zh-tw"] = "";
		["nb-no"] = "\xA0";
		["es-es"] = ' ';
		["nl-nl"] = '.';
		["it-it"] = '.';
		["tr-tr"] = '.';
		["ru-ru"] = ' ';
		["fi-fi"] = "\xA0";
		["da-dk"] = '.';
		["de-de"] = '.';
		["fr-fr"] = "\xA0";
		["pt-br"] = '.';
		["pt-pt"] = '.';
		["pl-pl"] = ' ';
		["sv-se"] = ' ';
	}
	if module_2[any_lower_result1] then
		return module_2[any_lower_result1]
	end
	return module_2["en-us"]
end
function module_3_upvr.FormatNumberString(arg1) -- Line 375
	--[[ Upvalues[2]:
		[1]: getDelimiterByLocale_upvr (readonly)
		[2]: module_3_upvr (readonly)
	]]
	local var64
	repeat
		local string_gsub_result1, string_gsub_result2 = string.gsub(var64, "^(-?%d+)(%d%d%d)", string.format("%%1%s%%2", getDelimiterByLocale_upvr()))
		var64 = string_gsub_result1
	until string_gsub_result2 == 0
	return var64
end
function module_3_upvr.PrettyPrint(arg1) -- Line 391
	--[[ Upvalues[1]:
		[1]: module_3_upvr (readonly)
	]]
	local var71
	if var71 == "table" then
		var71 = '{'
		local var75
		for i_3, v_3 in pairs(arg1) do
			local function INLINED() -- Internal function, doesn't exist in bytecode
				var75 = var71
				return var75
			end
			if var71 ~= '{' or not INLINED() then
				var75 = var71..", "
			end
			var71 = var75
			var75 = type(i_3)
			if var75 == "string" then
				var75 = var71
				var71 = var75..i_3.." = "
			else
				var75 = type(i_3)
				if var75 == "number" then
				else
					var75 = var71
					var71 = var75..'['..i_3.."] = "
				end
			end
			var75 = var71
		end
		return var75..module_3_upvr.PrettyPrint(v_3)..'}'
	end
	if type(arg1) == "string" then
		return "'"..arg1.."'"
	end
	return tostring(arg1)
end
local function _(arg1, arg2, arg3) -- Line 415, Named "SCurveTranform"
	--[[ Upvalues[1]:
		[1]: module_3_upvr (readonly)
	]]
	local var76 = arg2 or 0.35
	local var77 = arg3 or 0.8
	local any_Clamp_result1_3 = module_3_upvr.Clamp(-1, 1, arg1)
	if 0 <= any_Clamp_result1_3 then
		return var76 * any_Clamp_result1_3 / (var76 - any_Clamp_result1_3 + 1)
	end
	return -(var77 * -any_Clamp_result1_3 / (var77 + any_Clamp_result1_3 + 1))
end
local function _(arg1, arg2) -- Line 425, Named "toSCurveSpace"
	local var79 = arg2 or 0.1
	return (1 + var79) * (math.abs(arg1) * 2 - 1) - var79
end
local function _(arg1) -- Line 430, Named "fromSCurveSpace"
	return arg1 / 2 + 0.5
end
function module_3_upvr.GamepadLinearToCurve(arg1, arg2, arg3, arg4) -- Line 434
	--[[ Upvalues[1]:
		[1]: module_3_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local x = arg1.x
	local var86
	if x < 0 then
	else
	end
	local var87 = arg2 or 0.1
	local var88 = nil or 0.35
	local var89 = nil or 0.8
	local any_Clamp_result1_2 = module_3_upvr.Clamp(-1, 1, (1 + var87) * (math.abs(math.abs(x)) * 2 - 1) - var87)
	if 0 <= any_Clamp_result1_2 then
		var86 = var88 * any_Clamp_result1_2 / (var88 - any_Clamp_result1_2 + 1)
	else
		var86 = -(var89 * -any_Clamp_result1_2 / (var89 + any_Clamp_result1_2 + 1))
	end
	var86 = module_3_upvr.Clamp(-1, 1, (var86 / 2 + 0.5) * 1)
	return Vector2.new(var86, (function(arg1_3) -- Line 435, Named "onAxis"
		--[[ Upvalues[2]:
			[1]: arg2 (readonly)
			[2]: module_3_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var80
		if arg1_3 < 0 then
		else
		end
		local var81 = arg2 or 0.1
		local var82 = nil or 0.35
		local var83 = nil or 0.8
		local any_Clamp_result1 = module_3_upvr.Clamp(-1, 1, (1 + var81) * (math.abs(math.abs(arg1_3)) * 2 - 1) - var81)
		if 0 <= any_Clamp_result1 then
			var80 = var82 * any_Clamp_result1 / (var82 - any_Clamp_result1 + 1)
		else
			var80 = -(var83 * -any_Clamp_result1 / (var83 + any_Clamp_result1 + 1))
		end
		var80 = module_3_upvr.Clamp(-1, 1, (var80 / 2 + 0.5) * 1)
		return var80
	end)(arg1.y))
end
function module_3_upvr.IsFastFlagEnabled(arg1) -- Line 444
	local pcall_result1_2, pcall_result2_2 = pcall(function() -- Line 445
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return settings():GetFFlag(arg1)
	end)
	return pcall_result1_2 and pcall_result2_2
end
function module_3_upvr.GetFastVariable(arg1) -- Line 452
	local pcall_result1, pcall_result2 = pcall(function() -- Line 453
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return settings():GetFVariable(arg1)
	end)
	return pcall_result1 and pcall_result2
end
local function _() -- Line 460, Named "getLocalPlayer"
	--[[ Upvalues[1]:
		[1]: Players_upvr (readonly)
	]]
	while Players_upvr.LocalPlayer == nil do
		wait()
	end
	return Players_upvr.LocalPlayer
end
function module_3_upvr.IsFeatureNonZero(arg1) -- Line 467
	--[[ Upvalues[1]:
		[1]: module_3_upvr (readonly)
	]]
	local var97
	if (tonumber(module_3_upvr.GetFastVariable(arg1)) or 0) == 0 then
		var97 = false
	else
		var97 = true
	end
	return var97
end
function module_3_upvr.IsFeatureRolledOut(arg1) -- Line 471
	--[[ Upvalues[2]:
		[1]: Players_upvr (readonly)
		[2]: module_3_upvr (readonly)
	]]
	while true do
		local var98
		if Players_upvr.LocalPlayer ~= nil then break end
		wait()
	end
	if Players_upvr.LocalPlayer.UserId % 100 >= (tonumber(module_3_upvr.GetFastVariable(arg1)) or 0) then
		var98 = false
	else
		var98 = true
	end
	return var98
end
function module_3_upvr.ExponentialRepeat(arg1, arg2, arg3) -- Line 476
	local const_number = 1
	while const_number <= (arg3 or 6) and arg1() do
		if arg2() then return end
		wait(const_number ^ 2)
	end
end
function module_3_upvr.SplitString(arg1, arg2) -- Line 490
	local module_4 = {}
	if arg1 then
		if arg2 then
			for i_4 in string.gmatch(arg1, "([^"..arg2.."]+)") do
				table.insert(module_4, i_4)
			end
		end
	end
	return module_4
end
local function findAssetsHelper_upvr(arg1, arg2, arg3) -- Line 501, Named "findAssetsHelper"
	--[[ Upvalues[1]:
		[1]: findAssetsHelper_upvr (readonly)
	]]
	if not arg1 then
	else
		if arg1:IsA("CharacterMesh") then
			if 0 < arg1.MeshId then
				table.insert(arg2, arg3..tostring(arg1.MeshId))
			end
			if 0 < arg1.BaseTextureId then
				table.insert(arg2, arg3..tostring(arg1.BaseTextureId))
			end
			if 0 < arg1.OverlayTextureId then
				table.insert(arg2, arg3..tostring(arg1.OverlayTextureId))
				-- KONSTANTWARNING: GOTO [128] #91
			end
		elseif arg1:IsA("FileMesh") then
			table.insert(arg2, arg1.MeshId)
			table.insert(arg2, arg1.TextureId)
		elseif arg1:IsA("Decal") then
			table.insert(arg2, arg1.Texture)
		elseif arg1:IsA("Pants") then
			table.insert(arg2, arg1.PantsTemplate)
		elseif arg1:IsA("Shirt") then
			table.insert(arg2, arg1.ShirtTemplate)
		end
		for _, v_4 in pairs(arg1:GetChildren()) do
			findAssetsHelper_upvr(v_4, arg2, arg3)
		end
	end
end
function module_3_upvr.FindAssetsInModel(arg1, arg2) -- Line 529
	--[[ Upvalues[1]:
		[1]: findAssetsHelper_upvr (readonly)
	]]
	local module_5 = {}
	findAssetsHelper_upvr(arg1, module_5, arg2 or "https://assetgame.roblox.com/asset/?id=")
	return module_5
end
function module_3_upvr.ConvertFontSizeEnumToInt(arg1) -- Line 536
	return string.match(arg1.Name, "%d+") or 10
end
function module_3_upvr.Upper(arg1) -- Line 543
	--[[ Upvalues[1]:
		[1]: var3_upvw (read and write)
	]]
	if var3_upvw then
		return var3_upvw:Upper(arg1)
	end
	return string.upper(arg1)
end
function module_3_upvr.SetSelectedCoreObject(arg1) -- Line 551
	--[[ Upvalues[1]:
		[1]: GuiService_upvr (readonly)
	]]
	GuiService_upvr.SelectedCoreObject = arg1
end
function module_3_upvr.AddSelectionParent(arg1, arg2) -- Line 555
	--[[ Upvalues[1]:
		[1]: GuiService_upvr (readonly)
	]]
	GuiService_upvr:AddSelectionParent(arg1, arg2)
end
function module_3_upvr.RemoveSelectionGroup(arg1) -- Line 559
	--[[ Upvalues[1]:
		[1]: GuiService_upvr (readonly)
	]]
	GuiService_upvr:RemoveSelectionGroup(arg1)
end
local TextService_upvr = game:GetService("TextService")
function module_3_upvr.GetTextBounds(arg1) -- Line 563
	--[[ Upvalues[1]:
		[1]: TextService_upvr (readonly)
	]]
	local var113 = false
	local var114
	if arg1 then
		if arg1.TextFits then
			var114 = arg1.TextBounds
			var113 = true
			return var113, var114
		end
		if not arg1.TextWrapped then
			var114 = TextService_upvr:GetTextSize(arg1.Text, arg1.TextSize, arg1.Font, Vector2.new(0, 0))
			var113 = true
		end
	end
	return var113, var114
end
function module_3_upvr.ResizeButtonWithText(arg1, arg2, arg3, arg4) -- Line 589
	--[[ Upvalues[1]:
		[1]: module_3_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var115 = false
	local any_GetTextBounds_result1, any_GetTextBounds_result2 = module_3_upvr.GetTextBounds(arg2)
	if any_GetTextBounds_result1 and arg1.Size.X.Scale == 0 and arg1.Size.Y.Scale == 0 then
		local vector2_2 = Vector2.new(arg1.Size.X.Offset, arg1.Size.Y.Offset)
		local var119
		if arg3 and vector2_2.X < any_GetTextBounds_result2.X + arg3 * 2 then
			var119 = any_GetTextBounds_result2.X + arg3 * 2
			var115 = true
		end
		if arg4 and vector2_2.Y < any_GetTextBounds_result2.Y + arg4 * 2 then
			var115 = true
		end
		if var115 then
			arg1.Size = UDim2.new(0, var119, 0, any_GetTextBounds_result2.Y + arg4 * 2)
		end
	end
	return var115
end
function module_3_upvr.ResizeButtonWithDynamicText(arg1, arg2, arg3, arg4, arg5) -- Line 616
	--[[ Upvalues[1]:
		[1]: module_3_upvr (readonly)
	]]
	local var122 = module_3_upvr.ResizeButtonWithText(arg1, arg2, arg4, arg5) or false
	if arg3 and 0 < #arg3 then
		for i_5 = 1, #arg3 do
			arg2.Text = arg3[i_5]
			var122 = module_3_upvr.ResizeButtonWithText(arg1, arg2, arg4, arg5) or var122
		end
	end
	arg2.Text = arg2.Text
	return var122
end
return module_3_upvr