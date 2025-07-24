-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:15:55
-- Luau version 6, Types version 3
-- Time taken: 0.001829 seconds

local LuauPolyfill = require(script.Parent.Parent.Parent.LuauPolyfill)
local tbl_upvr = {
	runAfterInteractions = function(arg1, arg2) -- Line 20, Named "runAfterInteractions"
		arg2()
		return nil
	end;
}
local module_upvr = {}
module_upvr.__index = module_upvr
function module_upvr.new(arg1, arg2) -- Line 64
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local setmetatable_result1 = setmetatable({}, module_upvr)
	setmetatable_result1._delay = arg2
	setmetatable_result1._callback = arg1
	return setmetatable_result1
end
function module_upvr.dispose(arg1, arg2) -- Line 71
	if arg2 then
		local _ = arg2
	else
		({}).abort = false
	end
	if arg1._taskHandle then
		arg1._taskHandle.cancel()
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if not ({}).abort then
			arg1._callback()
		end
		arg1._taskHandle = nil
	end
end
local setTimeout_upvr = LuauPolyfill.setTimeout
local clearTimeout_upvr = LuauPolyfill.clearTimeout
function module_upvr.schedule(arg1) -- Line 85
	--[[ Upvalues[3]:
		[1]: setTimeout_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: clearTimeout_upvr (readonly)
	]]
	if arg1._taskHandle then
	else
		local tbl = {}
		local setTimeout_upvr_result1_upvr = setTimeout_upvr(function() -- Line 90
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: tbl_upvr (copied, readonly)
			]]
			arg1._taskHandle = tbl_upvr:runAfterInteractions(function() -- Line 91
				--[[ Upvalues[1]:
					[1]: arg1 (copied, readonly)
				]]
				arg1._taskHandle = nil
				arg1._callback()
			end)
		end, arg1._delay)
		function tbl.cancel() -- Line 100
			--[[ Upvalues[2]:
				[1]: clearTimeout_upvr (copied, readonly)
				[2]: setTimeout_upvr_result1_upvr (readonly)
			]]
			return clearTimeout_upvr(setTimeout_upvr_result1_upvr)
		end
		arg1._taskHandle = tbl
	end
end
return module_upvr