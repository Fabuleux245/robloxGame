-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:15:19
-- Luau version 6, Types version 3
-- Time taken: 0.006123 seconds

local module = {}
local Boolean_upvr = require(script.Parent.Parent.LuauPolyfill).Boolean
local mapSchema_upvr = require(script.Parent.mapSchema).mapSchema
local MapperKind_upvr = require(script.Parent.Interfaces).MapperKind
function module.extractExtensionsFromSchema(arg1) -- Line 42
	--[[ Upvalues[3]:
		[1]: Boolean_upvr (readonly)
		[2]: mapSchema_upvr (readonly)
		[3]: MapperKind_upvr (readonly)
	]]
	local module_upvr = {}
	local var7
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var7 = arg1.extensions
		return var7
	end
	if not Boolean_upvr.toJSBoolean(arg1.extensions) or not INLINED() then
		var7 = {}
	end
	module_upvr.schemaExtensions = var7
	var7 = {}
	module_upvr.types = var7
	var7 = mapSchema_upvr
	var7(arg1, {
		[tostring(MapperKind_upvr.OBJECT_TYPE)] = function(arg1_2) -- Line 48
			--[[ Upvalues[2]:
				[1]: module_upvr (readonly)
				[2]: Boolean_upvr (copied, readonly)
			]]
			local tbl_9 = {
				fields = {};
				type = "object";
			}
			local var11
			local function INLINED_2() -- Internal function, doesn't exist in bytecode
				var11 = arg1_2.extensions
				return var11
			end
			if not Boolean_upvr.toJSBoolean(arg1_2.extensions) or not INLINED_2() then
				var11 = {}
			end
			tbl_9.extensions = var11
			module_upvr.types[tostring(arg1_2.name)] = tbl_9
			return arg1_2
		end;
		[tostring(MapperKind_upvr.INTERFACE_TYPE)] = function(arg1_3) -- Line 59
			--[[ Upvalues[2]:
				[1]: module_upvr (readonly)
				[2]: Boolean_upvr (copied, readonly)
			]]
			local tbl_5 = {
				fields = {};
			}
			local var14 = "interface"
			tbl_5.type = var14
			if Boolean_upvr.toJSBoolean(arg1_3.extensions) then
				var14 = arg1_3.extensions
			else
				var14 = {}
			end
			tbl_5.extensions = var14
			module_upvr.types[tostring(arg1_3.name)] = tbl_5
			return arg1_3
		end;
		[tostring(MapperKind_upvr.FIELD)] = function(arg1_4, arg2, arg3) -- Line 73
			--[[ Upvalues[2]:
				[1]: module_upvr (readonly)
				[2]: Boolean_upvr (copied, readonly)
			]]
			local tbl_7 = {}
			local tbl_6 = {}
			tbl_7.arguments = tbl_6
			if Boolean_upvr.toJSBoolean(arg1_4.extensions) then
				tbl_6 = arg1_4.extensions
			else
				tbl_6 = {}
			end
			tbl_7.extensions = tbl_6
			module_upvr.types[arg3].fields[arg2] = tbl_7
			local args = arg1_4.args
			if args ~= nil then
				for _, v in args do
					local unpacked_value_1 = table.unpack(v)
					local var24
					local function INLINED_3() -- Internal function, doesn't exist in bytecode
						var24 = args[tostring(unpacked_value_1)].extensions
						return var24
					end
					if not Boolean_upvr.toJSBoolean(args[tostring(unpacked_value_1)].extensions) or not INLINED_3() then
						var24 = {}
					end
					module_upvr.types[arg3].fields[arg2].arguments[tostring(unpacked_value_1)] = var24
				end
			end
			return arg1_4
		end;
		[tostring(MapperKind_upvr.ENUM_TYPE)] = function(arg1_5) -- Line 110
			--[[ Upvalues[2]:
				[1]: module_upvr (readonly)
				[2]: Boolean_upvr (copied, readonly)
			]]
			local tbl_8 = {
				values = {};
				type = "enum";
			}
			local var27
			local function INLINED_4() -- Internal function, doesn't exist in bytecode
				var27 = arg1_5.extensions
				return var27
			end
			if not Boolean_upvr.toJSBoolean(arg1_5.extensions) or not INLINED_4() then
				var27 = {}
			end
			tbl_8.extensions = var27
			module_upvr.types[tostring(arg1_5.name)] = tbl_8
			return arg1_5
		end;
		[tostring(MapperKind_upvr.ENUM_VALUE)] = function(arg1_6, arg2, arg3, arg4) -- Line 121
			--[[ Upvalues[2]:
				[1]: module_upvr (readonly)
				[2]: Boolean_upvr (copied, readonly)
			]]
			local var29
			local function INLINED_5() -- Internal function, doesn't exist in bytecode
				var29 = arg1_6.extensions
				return var29
			end
			if not Boolean_upvr.toJSBoolean(arg1_6.extensions) or not INLINED_5() then
				var29 = {}
			end
			module_upvr.types[arg2].values[arg4] = var29
			return arg1_6
		end;
		[tostring(MapperKind_upvr.SCALAR_TYPE)] = function(arg1_7) -- Line 135
			--[[ Upvalues[2]:
				[1]: module_upvr (readonly)
				[2]: Boolean_upvr (copied, readonly)
			]]
			local tbl_4 = {
				type = "scalar";
			}
			local var32
			local function INLINED_6() -- Internal function, doesn't exist in bytecode
				var32 = arg1_7.extensions
				return var32
			end
			if not Boolean_upvr.toJSBoolean(arg1_7.extensions) or not INLINED_6() then
				var32 = {}
			end
			tbl_4.extensions = var32
			module_upvr.types[tostring(arg1_7.name)] = tbl_4
			return arg1_7
		end;
		[tostring(MapperKind_upvr.UNION_TYPE)] = function(arg1_8) -- Line 145
			--[[ Upvalues[2]:
				[1]: module_upvr (readonly)
				[2]: Boolean_upvr (copied, readonly)
			]]
			local tbl_2 = {
				type = "union";
			}
			local var35
			local function INLINED_7() -- Internal function, doesn't exist in bytecode
				var35 = arg1_8.extensions
				return var35
			end
			if not Boolean_upvr.toJSBoolean(arg1_8.extensions) or not INLINED_7() then
				var35 = {}
			end
			tbl_2.extensions = var35
			module_upvr.types[tostring(arg1_8.name)] = tbl_2
			return arg1_8
		end;
		[tostring(MapperKind_upvr.INPUT_OBJECT_TYPE)] = function(arg1_9) -- Line 155
			--[[ Upvalues[2]:
				[1]: module_upvr (readonly)
				[2]: Boolean_upvr (copied, readonly)
			]]
			local tbl_3 = {
				fields = {};
				type = "input";
			}
			local var38
			local function INLINED_8() -- Internal function, doesn't exist in bytecode
				var38 = arg1_9.extensions
				return var38
			end
			if not Boolean_upvr.toJSBoolean(arg1_9.extensions) or not INLINED_8() then
				var38 = {}
			end
			tbl_3.extensions = var38
			module_upvr.types[tostring(arg1_9.name)] = tbl_3
			return arg1_9
		end;
		[tostring(MapperKind_upvr.INPUT_OBJECT_FIELD)] = function(arg1_10, arg2, arg3) -- Line 166
			--[[ Upvalues[2]:
				[1]: module_upvr (readonly)
				[2]: Boolean_upvr (copied, readonly)
			]]
			local tbl = {}
			local var41
			local function INLINED_9() -- Internal function, doesn't exist in bytecode
				var41 = arg1_10.extensions
				return var41
			end
			if not Boolean_upvr.toJSBoolean(arg1_10.extensions) or not INLINED_9() then
				var41 = {}
			end
			tbl.extensions = var41
			module_upvr.types[arg3].fields[arg2] = tbl
			return arg1_10
		end;
	})
	return module_upvr
end
return module