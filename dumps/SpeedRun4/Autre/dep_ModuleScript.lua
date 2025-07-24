-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:43:46
-- Luau version 6, Types version 3
-- Time taken: 0.001616 seconds

local LuauPolyfill = require(script.Parent.Parent.Parent.LuauPolyfill)
local module = {}
local helpers = require(script.Parent.helpers)
local tbl_upvr_2 = {
	setDirty = true;
	dispose = true;
	forget = true;
}
local parentEntrySlot_upvr = require(script.Parent.context).parentEntrySlot
local Set_upvr = LuauPolyfill.Set
local maybeUnsubscribe_upvr = helpers.maybeUnsubscribe
local hasOwnProperty_upvr = helpers.hasOwnProperty
local Array_upvr = LuauPolyfill.Array
local toArray_upvr = helpers.toArray
function module.dep(arg1) -- Line 66
	--[[ Upvalues[7]:
		[1]: parentEntrySlot_upvr (readonly)
		[2]: Set_upvr (readonly)
		[3]: maybeUnsubscribe_upvr (readonly)
		[4]: hasOwnProperty_upvr (readonly)
		[5]: tbl_upvr_2 (readonly)
		[6]: Array_upvr (readonly)
		[7]: toArray_upvr (readonly)
	]]
	local tbl_upvr = {}
	local var12_upvr
	if arg1 ~= nil then
		var12_upvr = arg1.subscribe
	else
		var12_upvr = arg1
	end
	local setmetatable_result1 = setmetatable({}, {
		__call = function(arg1_2, arg2) -- Line 74, Named "__call"
			--[[ Upvalues[5]:
				[1]: parentEntrySlot_upvr (copied, readonly)
				[2]: tbl_upvr (readonly)
				[3]: Set_upvr (copied, readonly)
				[4]: var12_upvr (readonly)
				[5]: maybeUnsubscribe_upvr (copied, readonly)
			]]
			local any_getValue_result1 = parentEntrySlot_upvr:getValue()
			local var15
			if any_getValue_result1 ~= nil then
				var15 = tbl_upvr[arg2]
				if not var15 then
					var15 = Set_upvr.new()
					tbl_upvr[arg2] = var15
				end
				any_getValue_result1:dependOn(var15)
				if type(var12_upvr) == "function" then
					maybeUnsubscribe_upvr(var15)
					var15.unsubscribe = var12_upvr(arg2)
				end
			end
		end;
	})
	function setmetatable_result1.dirty(arg1_3, arg2, arg3) -- Line 101
		--[[ Upvalues[6]:
			[1]: tbl_upvr (readonly)
			[2]: hasOwnProperty_upvr (copied, readonly)
			[3]: tbl_upvr_2 (copied, readonly)
			[4]: Array_upvr (copied, readonly)
			[5]: toArray_upvr (copied, readonly)
			[6]: maybeUnsubscribe_upvr (copied, readonly)
		]]
		local var18_upvr = tbl_upvr
		local var19 = var18_upvr[arg2]
		if var19 then
			if arg3 and hasOwnProperty_upvr(tbl_upvr_2, arg3) then
				var18_upvr = arg3
			else
				var18_upvr = "setDirty"
			end
			Array_upvr.forEach(toArray_upvr(var19), function(arg1_4) -- Line 112
				--[[ Upvalues[1]:
					[1]: var18_upvr (readonly)
				]]
				arg1_4[var18_upvr](arg1_4)
			end)
			tbl_upvr[arg2] = nil
			maybeUnsubscribe_upvr(var19)
		end
	end
	return setmetatable_result1
end
return module