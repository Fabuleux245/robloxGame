-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:09:46
-- Luau version 6, Types version 3
-- Time taken: 0.003202 seconds

local tbl_upvr = {}
tbl_upvr.__index = tbl_upvr
function tbl_upvr.ReadPixel(arg1, arg2, arg3) -- Line 21
	if arg1.size.X <= arg2 or arg1.size.Y <= arg3 or arg2 < 0 or arg3 < 0 then
		return Color3.fromRGB(0, 0, 0)
	end
	local var2 = (arg2 + arg3 * arg1.size.X) * 4
	return Color3.fromRGB(buffer.readu8(arg1.buffer, var2), buffer.readu8(arg1.buffer, var2 + 1), buffer.readu8(arg1.buffer, var2 + 2))
end
local function new(arg1) -- Line 35
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	local setmetatable_result1_2 = setmetatable({}, tbl_upvr)
	setmetatable_result1_2.buffer = arg1:ReadPixelsBuffer(Vector2.new(0, 0), arg1.Size)
	setmetatable_result1_2.size = arg1.Size
	return setmetatable_result1_2
end
tbl_upvr.new = new
local module_upvr = {}
module_upvr.__index = module_upvr
function module_upvr.new(arg1, arg2) -- Line 51
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local setmetatable_result1 = setmetatable({}, module_upvr)
	setmetatable_result1.size = arg1
	setmetatable_result1.calculateWeightFromColor3 = arg2
	setmetatable_result1.buffer = buffer.create(arg1.X * arg1.Y * 4)
	return setmetatable_result1
end
function module_upvr.ReadValue(arg1, arg2, arg3) -- Line 60
	if arg2 < 0 or arg3 < 0 then
		return 0
	end
	return buffer.readu32(arg1.buffer, (math.min(arg2, arg1.size.X - 1) + math.min(arg3, arg1.size.Y - 1) * arg1.size.X) * 4)
end
function module_upvr.WriteValue(arg1, arg2, arg3, arg4) -- Line 71
	local var8 = false
	if arg2 < arg1.size.X then
		var8 = false
		if arg3 < arg1.size.Y then
			var8 = false
			if 0 <= arg2 then
				if 0 > arg3 then
					var8 = false
				else
					var8 = true
				end
			end
		end
	end
	assert(var8)
	buffer.writeu32(arg1.buffer, (arg2 + arg3 * arg1.size.X) * 4, arg4)
end
function module_upvr.BuildSummedAreaTable(arg1, arg2) -- Line 78
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	local any_new_result1 = tbl_upvr.new(arg2)
	local var14
	if any_new_result1.size ~= arg1.size then
		var14 = false
	else
		var14 = true
	end
	assert(var14)
	var14 = 1
	for i = 0, arg1.size.Y - 1, var14 do
		for i_2 = 0, arg1.size.X - 1 do
			arg1:WriteValue(i_2, i, arg1.calculateWeightFromColor3(any_new_result1:ReadPixel(i_2, i)) + arg1:ReadValue(i_2 - 1, i) + arg1:ReadValue(i_2, i - 1) - arg1:ReadValue(i_2 - 1, i - 1))
		end
	end
end
function module_upvr.GetAreaDensity(arg1, arg2, arg3) -- Line 96
	local var15 = arg2 - Vector2.one
	local var16 = arg2 + arg3 - Vector2.one
	local vector2_2 = Vector2.new(var16.X, var15.Y)
	local vector2 = Vector2.new(var15.X, var16.Y)
	return arg1:ReadValue(var16.X, var16.Y) - arg1:ReadValue(vector2_2.X, vector2_2.Y) - arg1:ReadValue(vector2.X, vector2.Y) + arg1:ReadValue(var15.X, var15.Y)
end
return module_upvr