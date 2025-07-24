-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:08:35
-- Luau version 6, Types version 3
-- Time taken: 0.003823 seconds

local vector2_upvr = Vector2.new(1920, 1079)
local CollectionService_upvr = game:GetService("CollectionService")
local CurrentCamera_upvr = workspace.CurrentCamera
local function _(arg1) -- Line 30, Named "average"
	return (arg1.X + arg1.Y) / 2
end
local function _() -- Line 34, Named "getScreenRatio"
	--[[ Upvalues[2]:
		[1]: CurrentCamera_upvr (readonly)
		[2]: vector2_upvr (readonly)
	]]
	local ViewportSize = CurrentCamera_upvr.ViewportSize
	local var5 = vector2_upvr
	return ((ViewportSize.X + ViewportSize.Y) / 2) / ((var5.X + var5.Y) / 2)
end
local function tagRecursive_upvr(arg1, arg2, arg3) -- Line 39, Named "tagRecursive"
	--[[ Upvalues[2]:
		[1]: CollectionService_upvr (readonly)
		[2]: tagRecursive_upvr (readonly)
	]]
	if arg1:IsA(arg2) then
		CollectionService_upvr:AddTag(arg1, arg3)
	end
	for _, v in arg1:GetChildren() do
		tagRecursive_upvr(v, arg2, arg3)
	end
	arg1.ChildAdded:Connect(function(arg1_2) -- Line 46
		--[[ Upvalues[3]:
			[1]: tagRecursive_upvr (copied, readonly)
			[2]: arg2 (readonly)
			[3]: arg3 (readonly)
		]]
		tagRecursive_upvr(arg1_2, arg2, arg3)
	end)
end
local function _(arg1) -- Line 51, Named "getInstancePosition"
	if arg1:IsA("Part") then
		return arg1.Position
	end
	if arg1:IsA("Model") then
		local any_GetBoundingBox_result1_2, _ = arg1:GetBoundingBox()
		return any_GetBoundingBox_result1_2.Position
	end
	return Vector3.new(0, 0, 0)
end
CollectionService_upvr:GetInstanceAddedSignal("SuperBizScreenGui"):Connect(function(arg1) -- Line 64
	--[[ Upvalues[1]:
		[1]: tagRecursive_upvr (readonly)
	]]
	tagRecursive_upvr(arg1, "UIStroke", "SuperBizScreenStroke")
	tagRecursive_upvr(arg1, "TextLabel", "SuperBizScreenText")
	tagRecursive_upvr(arg1, "TextBox", "SuperBizScreenText")
	tagRecursive_upvr(arg1, "TextButton", "SuperBizScreenText")
end)
local tbl_upvr = {}
CollectionService_upvr:GetInstanceAddedSignal("SuperBizScreenStroke"):Connect(function(arg1) -- Line 71
	--[[ Upvalues[3]:
		[1]: tbl_upvr (readonly)
		[2]: CurrentCamera_upvr (readonly)
		[3]: vector2_upvr (readonly)
	]]
	tbl_upvr[arg1] = arg1.Thickness
	local ViewportSize_3 = CurrentCamera_upvr.ViewportSize
	local var18 = vector2_upvr
	arg1.Thickness *= ((ViewportSize_3.X + ViewportSize_3.Y) / 2) / ((var18.X + var18.Y) / 2)
end)
local tbl_upvr_2 = {}
CollectionService_upvr:GetInstanceAddedSignal("SuperBizScreenText"):Connect(function(arg1) -- Line 76
	--[[ Upvalues[1]:
		[1]: tbl_upvr_2 (readonly)
	]]
	tbl_upvr_2[arg1] = arg1.TextSize
	if string.find(arg1.Name, "_custom_font") then
	else
		arg1.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
	end
end)
local RunService_upvr = game:GetService("RunService")
CollectionService_upvr:GetInstanceAddedSignal("SuperBizBillboard"):Connect(function(arg1) -- Line 92
	--[[ Upvalues[3]:
		[1]: RunService_upvr (readonly)
		[2]: CurrentCamera_upvr (readonly)
		[3]: vector2_upvr (readonly)
	]]
	local tbl_upvr_3 = {}
	local function getUiStrokeFromInstance_upvr(arg1_3) -- Line 95, Named "getUiStrokeFromInstance"
		--[[ Upvalues[2]:
			[1]: tbl_upvr_3 (readonly)
			[2]: getUiStrokeFromInstance_upvr (readonly)
		]]
		if arg1_3:IsA("UIStroke") then
			tbl_upvr_3[arg1_3] = arg1_3.Thickness
		end
		for _, v_2 in arg1_3:GetChildren() do
			getUiStrokeFromInstance_upvr(v_2)
		end
		arg1_3.ChildAdded:Connect(getUiStrokeFromInstance_upvr)
	end
	getUiStrokeFromInstance_upvr(arg1)
	local var30_upvw
	var30_upvw = RunService_upvr.Heartbeat:Connect(function() -- Line 108
		--[[ Upvalues[5]:
			[1]: arg1 (readonly)
			[2]: var30_upvw (read and write)
			[3]: tbl_upvr_3 (readonly)
			[4]: CurrentCamera_upvr (copied, readonly)
			[5]: vector2_upvr (copied, readonly)
		]]
		local var35
		if not arg1.Parent then
			var30_upvw:Disconnect()
		else
			var35 = arg1
			local Adornee = var35.Adornee
			local function INLINED() -- Internal function, doesn't exist in bytecode
				if Adornee:IsA("Part") then
					var35 = Adornee.Position
				elseif Adornee:IsA("Model") then
					local any_GetBoundingBox_result1, _ = Adornee:GetBoundingBox()
					var35 = any_GetBoundingBox_result1.Position
				else
					var35 = Vector3.new(0, 0, 0)
				end
				return var35
			end
			if not Adornee or not INLINED() then
				local Parent = arg1.Parent
				if Parent:IsA("Part") then
				elseif Parent:IsA("Model") then
					local _, _ = Parent:GetBoundingBox()
				else
				end
			end
			for i_3, v_3 in tbl_upvr_3 do
				if not i_3.Parent then
					tbl_upvr_3[i_3] = nil
				else
					local ViewportSize_2 = CurrentCamera_upvr.ViewportSize
					local var43 = vector2_upvr
					i_3.Thickness = ((v_3) * ((arg1:GetAttribute("Distance") or 10) / (workspace.CurrentCamera.CFrame.Position - Vector3.new(0, 0, 0)).Magnitude)) * (((ViewportSize_2.X + ViewportSize_2.Y) / 2) / ((var43.X + var43.Y) / 2))
				end
			end
		end
	end)
end)
return {
	TagScreenGui = function(arg1, arg2) -- Line 138, Named "TagScreenGui"
		--[[ Upvalues[1]:
			[1]: CollectionService_upvr (readonly)
		]]
		if arg2:IsA("ScreenGui") then
			CollectionService_upvr:AddTag(arg2, "SuperBizScreenGui")
		end
	end;
	TagBillboardGui = function(arg1, arg2) -- Line 144, Named "TagBillboardGui"
		--[[ Upvalues[1]:
			[1]: CollectionService_upvr (readonly)
		]]
		if arg2:IsA("BillboardGui") then
			CollectionService_upvr:AddTag(arg2, "SuperBizBillboard")
		end
	end;
}