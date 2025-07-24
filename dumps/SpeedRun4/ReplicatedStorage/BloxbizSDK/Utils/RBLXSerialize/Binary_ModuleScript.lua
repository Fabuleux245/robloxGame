-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:07:43
-- Luau version 6, Types version 3
-- Time taken: 0.006339 seconds

local DataIndex_upvr = require(script.DataIndex)
local Parent_upvr = require(script.Parent.Parent)
local tbl_upvr = {}
for i, v in pairs(DataIndex_upvr) do
	tbl_upvr[i] = {}
	for i_2, v_2 in pairs(v) do
		tbl_upvr[i][v_2] = i_2
	end
end
local function _(arg1, arg2) -- Line 14
	return string.byte(arg1:sub(arg2, arg2))
end
local function _(arg1, arg2) -- Line 17
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	return tbl_upvr[arg1][arg2] or "Invalid"
end
function DecodeData(arg1) -- Line 44
	--[[ Upvalues[2]:
		[1]: tbl_upvr (readonly)
		[2]: Parent_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local module = {}
	local var25 = tbl_upvr.StoreType[string.byte(arg1:sub(1, 1))] or "Invalid"
	local var26
	if var25 ~= "Invalid" then
		module.TypeOf = var25
		var26 = 1
		if var25 == "Instance" then
			module.ClassName = tbl_upvr.InstanceName[string.byte(arg1:sub(2, 2))] or "Invalid"
			var26 += 1
		end
		if var25 == "Value" then
			local var27 = tbl_upvr.DataType[string.byte(arg1:sub(2, 2))] or "Invalid"
			module.ClassName = var27
			module[var27] = arg1:sub(4, 4 + string.byte(arg1:sub(3, 3)))
			var26 += 5
		end
		if var25 == "Root" then
			module.ClassName = "Root"
			module.Root = {}
			local const_string = "Root:NewRoot"
			var26 -= 1
		end
		if var26 < #arg1 then
			var26 += 1
			local _ = var26
			if const_string == "Root:NewRoot" and var26 + 3 < #arg1 then
				local var30 = var26 + 1
				local string_byte_result1_3 = string.byte(arg1:sub(var30, var30))
				local var32 = var26 + 2 + string_byte_result1_3
				local string_byte_result1 = string.byte(arg1:sub(var32, var32))
				table.insert(module.Root, {arg1:sub(var26 + 2, var26 + 1 + string_byte_result1_3), DecodeData(arg1:sub(var26 + 3 + string_byte_result1_3, var26 + 3 + string_byte_result1_3 + string_byte_result1))})
				var26 += string_byte_result1_3 + string_byte_result1 + 1
			end
			if const_string == "Ins:Prop" and var26 + 2 < #arg1 then
				local var35 = tbl_upvr.ValueType[string.unpack('H', arg1:sub(var26, var26 + 1))] or "Invalid"
				var26 += 1
				local var36 = var26 + 1
				local string_byte_result1_2 = string.byte(arg1:sub(var36, var36))
				if var35 ~= "Invalid" then
					module[var35] = arg1:sub(var26 + 2, var26 + 1 + string_byte_result1_2)
				end
				var26 = var26 + string_byte_result1_2 + 1
			end
			-- KONSTANTWARNING: GOTO [91] #69
		end
	else
		var26 = Parent_upvr.pprint
		var26("[SuperBiz][RBXLSerialize][Binary]:StoreType defined as Invalid? Binary Data may be corrupted?")
	end
	return module
end
return {
	DecodeData = DecodeData;
	describe = function(arg1, arg2) -- Line 21
		--[[ Upvalues[2]:
			[1]: DataIndex_upvr (readonly)
			[2]: Parent_upvr (readonly)
		]]
		local var21 = DataIndex_upvr[arg1]
		if var21 and var21[arg2] then
			if arg1 == "ValueType" then
				return string.pack('H', var21[arg2])
			end
			return string.char(var21[arg2]) or 0
		end
		if arg1 == "Value" then
			local tostring_result1 = tostring(arg2)
			local len = #tostring_result1
			if 255 < len then
				Parent_upvr.pprint("[SuperBiz][RBXLSerialize][Binary]:Cannot Encode DataValues more than 255 Bytes.")
				return
			end
			return string.char(len)..tostring_result1 or 0
		end
		Parent_upvr.pprint("[SuperBiz][RBXLSerialize][Binary]:Could not describe", arg1, arg2)
		return 0
	end;
}