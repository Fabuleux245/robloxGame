-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:46:12
-- Luau version 6, Types version 3
-- Time taken: 0.004391 seconds

local Parent_upvr = script.Parent
local function _(arg1) -- Line 32, Named "throwNotImplemented"
	--[[ Upvalues[1]:
		[1]: Parent_upvr (readonly)
	]]
	require(Parent_upvr.Error).new("NotImplemented", "The method \"{methodName}\" is not implemented on the class \"{className}\""):throw(arg1)
end
local function var2_upvr() -- Line 41
	return {}
end
local function class_upvr(arg1, arg2) -- Line 45, Named "class"
	--[[ Upvalues[3]:
		[1]: var2_upvr (readonly)
		[2]: class_upvr (readonly)
		[3]: Parent_upvr (readonly)
	]]
	local var3_upvr = arg2
	if not var3_upvr then
		var3_upvr = var2_upvr
	end
	local module_upvr = {}
	module_upvr.name = arg1
	function module_upvr.new(...) -- Line 61
		--[[ Upvalues[2]:
			[1]: var3_upvr (readonly)
			[2]: module_upvr (readonly)
		]]
		local var3_upvr_result1 = var3_upvr(...)
		setmetatable(var3_upvr_result1, {
			__index = module_upvr;
			__tostring = module_upvr.toString;
			__eq = module_upvr.equals;
			__lt = module_upvr.__lt;
			__le = module_upvr.__le;
			__add = module_upvr.__add;
			__sub = module_upvr.__sub;
			__mul = module_upvr.__mul;
			__div = module_upvr.__div;
			__mod = module_upvr.__mod;
		})
		var3_upvr_result1.Class = module_upvr
		var3_upvr_result1:_init(...)
		return var3_upvr_result1
	end
	function module_upvr._init(arg1_2) -- Line 110
	end
	function module_upvr.isInstance(arg1_3) -- Line 129
		--[[ Upvalues[1]:
			[1]: module_upvr (readonly)
		]]
		local pcall_result1, pcall_result2 = pcall(function() -- Line 130
			--[[ Upvalues[2]:
				[1]: arg1_3 (readonly)
				[2]: module_upvr (copied, readonly)
			]]
			local getmetatable_result1 = getmetatable(arg1_3)
			while getmetatable_result1 do
				if getmetatable_result1.__index == module_upvr then
					return true
				end
			end
			return false
		end)
		return pcall_result1 and pcall_result2
	end
	function module_upvr.extend(arg1_4, arg2_2, arg3) -- Line 180
		--[[ Upvalues[2]:
			[1]: class_upvr (copied, readonly)
			[2]: module_upvr (readonly)
		]]
		local var11 = arg3
		if not var11 then
			var11 = module_upvr.new
		end
		local class_upvr_result1 = class_upvr(arg2_2, var11)
		local tbl_4 = {}
		tbl_4.__index = arg1_4
		setmetatable(class_upvr_result1, tbl_4)
		return class_upvr_result1
	end
	function module_upvr.toString(arg1_5) -- Line 218
		return arg1_5.name
	end
	function module_upvr.equals(arg1_6, arg2_3) -- Line 226
		return rawequal(arg1_6, arg2_3)
	end
	function module_upvr.__lt(arg1_7, arg2_4) -- Line 234
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: Parent_upvr (copied, readonly)
		]]
		local tbl_2 = {
			methodName = "__lt";
		}
		tbl_2.className = arg1
		require(Parent_upvr.Error).new("NotImplemented", "The method \"{methodName}\" is not implemented on the class \"{className}\""):throw(tbl_2)
	end
	function module_upvr.__le(arg1_8, arg2_5) -- Line 246
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: Parent_upvr (copied, readonly)
		]]
		local tbl_3 = {
			methodName = "__le";
		}
		tbl_3.className = arg1
		require(Parent_upvr.Error).new("NotImplemented", "The method \"{methodName}\" is not implemented on the class \"{className}\""):throw(tbl_3)
	end
	function module_upvr.__add(arg1_9) -- Line 253
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: Parent_upvr (copied, readonly)
		]]
		local tbl = {
			methodName = "__add";
		}
		tbl.className = arg1
		require(Parent_upvr.Error).new("NotImplemented", "The method \"{methodName}\" is not implemented on the class \"{className}\""):throw(tbl)
	end
	function module_upvr.__sub(arg1_10) -- Line 259
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: Parent_upvr (copied, readonly)
		]]
		local tbl_8 = {
			methodName = "__sub";
		}
		tbl_8.className = arg1
		require(Parent_upvr.Error).new("NotImplemented", "The method \"{methodName}\" is not implemented on the class \"{className}\""):throw(tbl_8)
	end
	function module_upvr.__mul(arg1_11) -- Line 265
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: Parent_upvr (copied, readonly)
		]]
		local tbl_7 = {
			methodName = "__mul";
		}
		tbl_7.className = arg1
		require(Parent_upvr.Error).new("NotImplemented", "The method \"{methodName}\" is not implemented on the class \"{className}\""):throw(tbl_7)
	end
	function module_upvr.__div(arg1_12) -- Line 271
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: Parent_upvr (copied, readonly)
		]]
		local tbl_5 = {
			methodName = "__div";
		}
		tbl_5.className = arg1
		require(Parent_upvr.Error).new("NotImplemented", "The method \"{methodName}\" is not implemented on the class \"{className}\""):throw(tbl_5)
	end
	function module_upvr.__mod(arg1_13) -- Line 277
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: Parent_upvr (copied, readonly)
		]]
		local tbl_6 = {
			methodName = "__mod";
		}
		tbl_6.className = arg1
		require(Parent_upvr.Error).new("NotImplemented", "The method \"{methodName}\" is not implemented on the class \"{className}\""):throw(tbl_6)
	end
	return module_upvr
end
return class_upvr