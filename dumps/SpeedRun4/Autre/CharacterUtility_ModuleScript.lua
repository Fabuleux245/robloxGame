-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:07:39
-- Luau version 6, Types version 3
-- Time taken: 0.005445 seconds

local module_2 = {}
local function getHeadAttachments_upvr(arg1) -- Line 11, Named "getHeadAttachments"
	local Head = arg1:FindFirstChild("Head")
	if Head then
		for _, v in pairs(Head:GetChildren()) do
			if v:IsA("Attachment") then
				({})[v.Name] = true
			end
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return {}
end
local function _(arg1, arg2, arg3, arg4, arg5) -- Line 32, Named "makeRotatedCorner"
	return arg5 * Vector3.new(arg1 * arg4.X, arg2 * arg4.Y, arg3 * arg4.Z)
end
local function growExtentsToIncludePoint_upvr(arg1, arg2, arg3) -- Line 41, Named "growExtentsToIncludePoint"
	return Vector3.new(math.min(arg3.X, arg1.X), math.min(arg3.Y, arg1.Y), math.min(arg3.Z, arg1.Z)), Vector3.new(math.max(arg3.X, arg2.X), math.max(arg3.Y, arg2.Y), math.max(arg3.Z, arg2.Z))
end
local function growExtentsToInclude_upvr(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 68, Named "growExtentsToInclude"
	--[[ Upvalues[1]:
		[1]: growExtentsToIncludePoint_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local _ = arg3.Size / 2
	local var21
	for _ = -1, 1, 2 do
		for _ = -1, 1, 2 do
			for _ = -1, 1, 2 do
				local var22
				if arg5 and arg6 then
					local var23 = arg5:Inverse() * var22
					var22 = arg5 * Vector3.new(var23.X, math.max(arg6, var23.Y), var23.Z)
				end
				var22 = arg4 * var22
				local growExtentsToIncludePoint_upvr_result1, growExtentsToIncludePoint_result2 = growExtentsToIncludePoint_upvr(var21, arg2, var22)
				var21 = growExtentsToIncludePoint_upvr_result1
			end
		end
	end
	return var21, growExtentsToIncludePoint_result2
end
local function _() -- Line 103, Named "initExtents"
	return Vector3.new(math.huge, math.huge, math.huge), Vector3.new((-math.huge), (-math.huge), (-math.huge))
end
local function recursiveCalculateExtents_upvr(arg1, arg2, arg3, arg4, arg5) -- Line 118, Named "recursiveCalculateExtents"
	--[[ Upvalues[2]:
		[1]: growExtentsToInclude_upvr (readonly)
		[2]: recursiveCalculateExtents_upvr (readonly)
	]]
	if not arg5 then
		local const_string = ""
	end
	assert(const_string, "indent is non-nil. Silence type checker.")
	for _, v_2 in pairs(arg3:GetChildren()) do
		local var34
		if v_2:IsA("BasePart") then
			local growExtentsToInclude_result1_2, growExtentsToInclude_upvr_result2 = growExtentsToInclude_upvr(var34, arg2, v_2, arg4)
			var34 = growExtentsToInclude_result1_2
		end
		local recursiveCalculateExtents_result1_2, recursiveCalculateExtents_result2 = recursiveCalculateExtents_upvr(var34, growExtentsToInclude_upvr_result2, v_2, arg4, const_string.."  ")
		var34 = recursiveCalculateExtents_result1_2
	end
	return var34, recursiveCalculateExtents_result2
end
function module_2.CalculateModelExtents(arg1, arg2) -- Line 145
	--[[ Upvalues[1]:
		[1]: recursiveCalculateExtents_upvr (readonly)
	]]
	local recursiveCalculateExtents_result1, recursiveCalculateExtents_result2_2 = recursiveCalculateExtents_upvr(Vector3.new(math.huge, math.huge, math.huge), Vector3.new((-math.huge), (-math.huge), (-math.huge)), arg1, arg2:Inverse(), "  ")
	return recursiveCalculateExtents_result1, recursiveCalculateExtents_result2_2
end
function module_2.CalculateHeadExtents(arg1, arg2) -- Line 160
	--[[ Upvalues[2]:
		[1]: growExtentsToInclude_upvr (readonly)
		[2]: getHeadAttachments_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local const_vector = Vector3.new((-math.huge), (-math.huge), (-math.huge))
	local Head_2 = arg1:FindFirstChild("Head")
	local var53
	if not Head_2 then
		return var53, const_vector
	end
	local any_Inverse_result1_2 = arg2:Inverse()
	local growExtentsToInclude_upvr_result1, growExtentsToInclude_result2_2 = growExtentsToInclude_upvr(var53, const_vector, Head_2, any_Inverse_result1_2)
	var53 = growExtentsToInclude_upvr_result1
	for _, v_3 in pairs(arg1:GetChildren()) do
		local function INLINED() -- Internal function, doesn't exist in bytecode
			local Handle = v_3:FindFirstChild("Handle")
			return Handle
		end
		local function INLINED_2() -- Internal function, doesn't exist in bytecode
			local class_Attachment = Handle:FindFirstChildWhichIsA("Attachment")
			return class_Attachment
		end
		if v_3:IsA("Accoutrement") and INLINED() and (not INLINED_2() or getHeadAttachments_upvr(arg1)[class_Attachment.Name]) then
			local growExtentsToInclude_result1, growExtentsToInclude_result2 = growExtentsToInclude_upvr(var53, growExtentsToInclude_result2_2, Handle, any_Inverse_result1_2, Head_2.CFrame, -Head_2.Size.Y / 2)
			var53 = growExtentsToInclude_result1
		end
	end
	return var53, growExtentsToInclude_result2
end
function module_2.CalculateBodyPartsExtents(arg1, arg2) -- Line 201
	--[[ Upvalues[1]:
		[1]: growExtentsToInclude_upvr (readonly)
	]]
	local var69 = Vector3.new(math.huge, math.huge, math.huge)
	local var70 = Vector3.new((-math.huge), (-math.huge), (-math.huge))
	local any_Inverse_result1 = arg1:Inverse()
	for _, v_4 in pairs(arg2) do
		local growExtentsToInclude_upvr_result1_2, growExtentsToInclude_result2_3 = growExtentsToInclude_upvr(var69, var70, v_4, any_Inverse_result1, arg1)
		var69 = growExtentsToInclude_upvr_result1_2
		var70 = growExtentsToInclude_result2_3
	end
	return var69, var70
end
function module_2.AllocateDebugExtentParts() -- Line 217
	local module = {}
	for i_8 = 1, 8 do
		local Part = Instance.new("Part")
		Part.Parent = workspace
		Part.Name = "DebugExtentPart"..tostring(i_8)
		Part.Shape = Enum.PartType.Ball
		Part.Size = Vector3.new(0.25, 0.25, 0.25)
		Part.Anchored = true
		Part.CanCollide = false
		module[#module + 1] = Part
	end
	return module
end
function module_2.PositionDebugExtentParts(arg1, arg2, arg3, arg4) -- Line 237
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	for i_9 = 0, 1 do
		for i_10 = 0, 1 do
			for i_11 = 0, 1 do
				local var95
				local function INLINED_3() -- Internal function, doesn't exist in bytecode
					var95 = arg2.X
					return var95
				end
				if i_9 ~= 0 or not INLINED_3() then
					var95 = arg3.X
				end
				if i_10 ~= 0 or not arg2.Y then
				end
				if i_11 ~= 0 or not arg2.Z then
				end
				arg1[i_9 + i_10 * 2 + i_11 * 4 + 1].Position = arg4 * Vector3.new(var95, arg3.Y, arg3.Z)
			end
		end
	end
end
return module_2