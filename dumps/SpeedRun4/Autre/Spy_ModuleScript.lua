-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:55:36
-- Luau version 6, Types version 3
-- Time taken: 0.001840 seconds

local symbols_upvr = require(script.Parent.symbols)
local module_4_upvr = {}
module_4_upvr.__index = module_4_upvr
function module_4_upvr.__call(arg1, ...) -- Line 9
	return arg1.inner(...)
end
local module_2_upvr = {}
setmetatable(module_2_upvr, {
	__mode = "kv";
})
function module_4_upvr.new(arg1) -- Line 16
	--[[ Upvalues[3]:
		[1]: symbols_upvr (readonly)
		[2]: module_4_upvr (readonly)
		[3]: module_2_upvr (readonly)
	]]
	local module_3_upvr = {
		[symbols_upvr.isSpy] = true;
		[symbols_upvr.Calls] = {};
	}
	setmetatable(module_3_upvr, module_4_upvr)
	local function var7(...) -- Line 23
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: module_3_upvr (readonly)
			[3]: symbols_upvr (copied, readonly)
		]]
		local module = {
			args = table.pack(...);
			result = table.pack(arg1(...));
		}
		table.insert(module_3_upvr[symbols_upvr.Calls], module)
		return table.unpack(module.result)
	end
	module_3_upvr.inner = var7
	module_2_upvr[var7] = module_3_upvr
	return module_3_upvr, var7
end
function module_4_upvr.lookup(arg1) -- Line 38
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	return module_2_upvr[arg1]
end
local isAMagicMock_upvr = require(script.Parent.isAMagicMock)
function module_4_upvr.is(arg1) -- Line 42
	--[[ Upvalues[2]:
		[1]: isAMagicMock_upvr (readonly)
		[2]: symbols_upvr (readonly)
	]]
	if not isAMagicMock_upvr(arg1) then
		local var10 = false
		if type(arg1) == "table" then
			if arg1[symbols_upvr.isSpy] == nil then
				var10 = false
			else
				var10 = true
			end
		end
		return var10
	end
	return false
end
return module_4_upvr