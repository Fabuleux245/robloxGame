-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:44:24
-- Luau version 6, Types version 3
-- Time taken: 0.002638 seconds

local Parent = script.Parent.Parent.Parent
local LuauPolyfill = require(Parent.Parent.LuauPolyfill)
local Array_upvr = LuauPolyfill.Array
local module = {}
local var5_upvw = 1
local uuid_upvr = require(Parent.utilities.common.makeUniqueId).uuid
local var7_upvw
local tbl_2_upvr = {}
local var30
local function INLINED() -- Internal function, doesn't exist in bytecode
	var30 = Array_upvr["@wry/context:Slot"]
	return var30
end
if not LuauPolyfill.Boolean.toJSBoolean(Array_upvr["@wry/context:Slot"]) or not INLINED() then
	local makeSlotClass_result1_upvr = (function() -- Line 62, Named "makeSlotClass"
		--[[ Upvalues[5]:
			[1]: Array_upvr (readonly)
			[2]: var5_upvw (read and write)
			[3]: uuid_upvr (readonly)
			[4]: var7_upvw (read and write)
			[5]: tbl_2_upvr (readonly)
		]]
		local module_2_upvr = {}
		module_2_upvr.__index = module_2_upvr
		function module_2_upvr.new() -- Line 66
			--[[ Upvalues[4]:
				[1]: module_2_upvr (readonly)
				[2]: Array_upvr (copied, readonly)
				[3]: var5_upvw (copied, read and write)
				[4]: uuid_upvr (copied, readonly)
			]]
			local setmetatable_result1 = setmetatable({}, module_2_upvr)
			setmetatable_result1.id = Array_upvr.join({"slot", var5_upvw, DateTime.now().UnixTimestampMillis, uuid_upvr()}, ':')
			var5_upvw += 1
			return setmetatable_result1
		end
		function module_2_upvr.hasValue(arg1) -- Line 84
			--[[ Upvalues[2]:
				[1]: var7_upvw (copied, read and write)
				[2]: tbl_2_upvr (copied, readonly)
			]]
			-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [27] 20. Error Block 8 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [27] 20. Error Block 8 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [1] 2. Error Block 2 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [1] 2. Error Block 2 end (CF ANALYSIS FAILED)
		end
		function module_2_upvr.getValue(arg1) -- Line 120
			--[[ Upvalues[1]:
				[1]: var7_upvw (copied, read and write)
			]]
			if arg1:hasValue() then
				return var7_upvw.slots[arg1.id]
			end
			return nil
		end
		function module_2_upvr.withValue(arg1, arg2, arg3, arg4, arg5) -- Line 127
			--[[ Upvalues[1]:
				[1]: var7_upvw (copied, read and write)
			]]
			local tbl = {}
			tbl[arg1.id] = arg2
			local var13 = var7_upvw
			var7_upvw = {
				parent = var13;
				slots = tbl;
			}
			local pcall_result1, pcall_result2_2, pcall_result3 = pcall(function() -- Line 144
				--[[ Upvalues[3]:
					[1]: arg3 (readonly)
					[2]: arg5 (readonly)
					[3]: arg4 (readonly)
				]]
				local var16 = arg4
				if not var16 then
					var16 = {}
				end
				return arg3(arg5, table.unpack(var16)), true
			end)
			var7_upvw = var13
			if pcall_result3 then
				return pcall_result2_2
			end
			if not pcall_result1 then
				error(pcall_result2_2)
			end
			return nil
		end
		function module_2_upvr.bind(arg1) -- Line 162
			--[[ Upvalues[1]:
				[1]: var7_upvw (copied, read and write)
			]]
			return function(arg1_2, ...) -- Line 164
				--[[ Upvalues[3]:
					[1]: var7_upvw (copied, read and write)
					[2]: var7_upvw (readonly)
					[3]: arg1 (readonly)
				]]
				var7_upvw = var7_upvw
				local pcall_result1_2, pcall_result2_3 = pcall(arg1, arg1_2, table.unpack({...}))
				var7_upvw = var7_upvw
				if not pcall_result1_2 then
					error(pcall_result2_3)
				end
				return pcall_result2_3
			end
		end
		function module_2_upvr.noContext(arg1, arg2, arg3) -- Line 178
			--[[ Upvalues[1]:
				[1]: var7_upvw (copied, read and write)
			]]
			-- KONSTANTERROR: [0] 1. Error Block 17 start (CF ANALYSIS FAILED)
			if var7_upvw then
				local pcall_result1_3, pcall_result2, pcall_result3_2 = pcall(function() -- Line 189
					--[[ Upvalues[4]:
						[1]: var7_upvw (copied, read and write)
						[2]: arg1 (readonly)
						[3]: arg3 (readonly)
						[4]: arg2 (readonly)
					]]
					var7_upvw = nil
					local var25 = arg2
					if not var25 then
						var25 = {}
					end
					return arg1(arg3, table.unpack(var25)), true
				end)
				var7_upvw = var7_upvw
				if pcall_result3_2 then
					return pcall_result2
				end
				if not pcall_result1_3 then
					error(pcall_result2)
					-- KONSTANTWARNING: GOTO [32] #29
				end
			else
				pcall_result3_2 = arg2
				local var29 = pcall_result3_2
				if not var29 then
					var29 = {}
				end
				return arg1(arg3, table.unpack(var29))
			end
			-- KONSTANTERROR: [0] 1. Error Block 17 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [32] 29. Error Block 10 start (CF ANALYSIS FAILED)
			do
				return nil
			end
			-- KONSTANTERROR: [32] 29. Error Block 10 end (CF ANALYSIS FAILED)
		end
		return module_2_upvr
	end)()
	pcall(function() -- Line 227
		--[[ Upvalues[2]:
			[1]: Array_upvr (readonly)
			[2]: makeSlotClass_result1_upvr (readonly)
		]]
		Array_upvr["@wry/context:Slot"] = makeSlotClass_result1_upvr
	end)
	var30 = makeSlotClass_result1_upvr
end
module.Slot = var30
return module