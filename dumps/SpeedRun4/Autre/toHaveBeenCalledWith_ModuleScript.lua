-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:55:33
-- Luau version 6, Types version 3
-- Time taken: 0.002397 seconds

local Parent = script.Parent.Parent
local MagicMock_upvr = require(Parent.MagicMock)
local symbols_upvr = require(Parent.symbols)
local function _(arg1) -- Line 8, Named "getLiteralPredicate"
	return function(arg1_2) -- Line 9
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local var5
		if arg1_2 ~= arg1 then
			var5 = false
		else
			var5 = true
		end
		return var5
	end
end
local function _(arg1) -- Line 14, Named "isPredicate"
	--[[ Upvalues[2]:
		[1]: symbols_upvr (readonly)
		[2]: MagicMock_upvr (readonly)
	]]
	if type(arg1) == "table" and arg1[symbols_upvr.isPredicate] then
		return not MagicMock_upvr.is(arg1)
	end
end
local Spy_upvr = require(Parent.Spy)
local AnyCallMatches_upvr = require(Parent.AnyCallMatches)
local fmtArgs_upvr = require(Parent.fmtArgs)
return function(arg1, ...) -- Line 20
	--[[ Upvalues[5]:
		[1]: MagicMock_upvr (readonly)
		[2]: Spy_upvr (readonly)
		[3]: symbols_upvr (readonly)
		[4]: AnyCallMatches_upvr (readonly)
		[5]: fmtArgs_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local any_is_result1 = MagicMock_upvr.is(arg1)
	if not any_is_result1 then
		any_is_result1 = Spy_upvr.is(arg1)
	end
	if not any_is_result1 then
		return {
			pass = false;
			message = string.format("expect(mock) must be a MagicMock or Spy when .toHaveBeenCalledWith is used. Given %s instead", tostring(arg1));
		}
	end
	local packed = table.pack(...)
	for _, v_upvr in ipairs(packed) do
		local var24
		if type(v_upvr) == "table" and v_upvr[symbols_upvr.isPredicate] then
			var24 = not MagicMock_upvr.is(v_upvr)
		else
			var24 = nil
		end
		if var24 then
			var24 = table.insert
			var24({}, v_upvr.predicate)
		else
			var24 = table.insert
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			var24({}, function(arg1_3) -- Line 9
				--[[ Upvalues[1]:
					[1]: v_upvr (readonly)
				]]
				local var26
				if arg1_3 ~= v_upvr then
					var26 = false
				else
					var26 = true
				end
				return var26
			end)
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	local any_predicates_result1, any_predicates_result2 = AnyCallMatches_upvr.predicates(arg1, table.unpack({}))
	local module = {
		pass = any_predicates_result1;
	}
	if not any_predicates_result1 or not string.format("Expected %s to never have been called with args: %s", tostring(arg1), fmtArgs_upvr(packed)) then
	end
	module.message = string.format("Expected %s to have been called with args: %s", tostring(arg1), any_predicates_result2)
	return module
end