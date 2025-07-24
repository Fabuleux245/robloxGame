-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:02:05
-- Luau version 6, Types version 3
-- Time taken: 0.001328 seconds

local module_2_upvr = {}
module_2_upvr.__index = module_2_upvr
function module_2_upvr.new() -- Line 16
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	local module = {
		_listeners = {};
	}
	setmetatable(module, module_2_upvr)
	return module
end
local Immutable_upvr = require(script.Parent.Immutable)
function module_2_upvr.Connect(arg1, arg2) -- Line 26
	--[[ Upvalues[1]:
		[1]: Immutable_upvr (readonly)
	]]
	local tbl_upvr = {}
	tbl_upvr.callback = arg2
	tbl_upvr.isConnected = true
	arg1._listeners = Immutable_upvr.Append(arg1._listeners, tbl_upvr)
	return {
		Disconnect = function() -- Line 33, Named "disconnect"
			--[[ Upvalues[3]:
				[1]: tbl_upvr (readonly)
				[2]: arg1 (readonly)
				[3]: Immutable_upvr (copied, readonly)
			]]
			tbl_upvr.isConnected = false
			arg1._listeners = Immutable_upvr.RemoveValueFromList(arg1._listeners, tbl_upvr)
		end;
	}
end
function module_2_upvr.Fire(arg1, ...) -- Line 43
	for _, v in ipairs(arg1._listeners) do
		if v.isConnected then
			v.callback(...)
		end
	end
end
return module_2_upvr