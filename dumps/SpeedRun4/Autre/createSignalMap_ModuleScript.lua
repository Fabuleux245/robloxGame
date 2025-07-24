-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:13:43
-- Luau version 6, Types version 3
-- Time taken: 0.002394 seconds

local Parent = script.Parent.Parent
local Signals_upvr = require(Parent.Signals)
local Cryo_upvr = require(Parent.Cryo)
return function(arg1) -- Line 20, Named "createSignalMap"
	--[[ Upvalues[2]:
		[1]: Signals_upvr (readonly)
		[2]: Cryo_upvr (readonly)
	]]
	local tbl_2 = {}
	local var9 = 0
	if arg1 then
		for i, v in pairs(arg1) do
			tbl_2[i] = v
			var9 += 1
		end
	end
	local any_createSignal_result1_upvr_2, any_createSignal_result2_upvr_2 = Signals_upvr.createSignal(tbl_2)
	local any_createSignal_result1_upvr, any_createSignal_result2_upvr = Signals_upvr.createSignal(var9)
	return {
		getData = function(arg1_2, arg2) -- Line 33, Named "getData"
			--[[ Upvalues[1]:
				[1]: any_createSignal_result1_upvr_2 (readonly)
			]]
			return any_createSignal_result1_upvr_2(arg2)[arg1_2]
		end;
		setData = function(arg1_3, arg2, arg3) -- Line 37, Named "setData"
			--[[ Upvalues[5]:
				[1]: any_createSignal_result1_upvr_2 (readonly)
				[2]: Cryo_upvr (copied, readonly)
				[3]: any_createSignal_result2_upvr (readonly)
				[4]: any_createSignal_result1_upvr (readonly)
				[5]: any_createSignal_result2_upvr_2 (readonly)
			]]
			local var13_result1 = any_createSignal_result1_upvr_2(arg3)
			local tbl = {}
			tbl[arg1_3] = arg2
			if not var13_result1[arg1_3] then
				any_createSignal_result2_upvr(any_createSignal_result1_upvr(arg3) + 1)
			end
			any_createSignal_result2_upvr_2(Cryo_upvr.Dictionary.join(var13_result1, tbl))
		end;
		removeData = function(arg1_4, arg2) -- Line 47, Named "removeData"
			--[[ Upvalues[5]:
				[1]: any_createSignal_result1_upvr_2 (readonly)
				[2]: Cryo_upvr (copied, readonly)
				[3]: any_createSignal_result2_upvr (readonly)
				[4]: any_createSignal_result1_upvr (readonly)
				[5]: any_createSignal_result2_upvr_2 (readonly)
			]]
			local any_createSignal_result1_upvr_2_result1 = any_createSignal_result1_upvr_2(arg2)
			if any_createSignal_result1_upvr_2_result1[arg1_4] then
				any_createSignal_result2_upvr(any_createSignal_result1_upvr(arg2) - 1)
				any_createSignal_result2_upvr_2(Cryo_upvr.Dictionary.join(any_createSignal_result1_upvr_2_result1, {
					[arg1_4] = Cryo_upvr.None;
				}))
			end
		end;
		getCount = any_createSignal_result1_upvr;
		iterateData = function(arg1_6, arg2) -- Line 62, Named "iterateData"
			--[[ Upvalues[2]:
				[1]: Signals_upvr (copied, readonly)
				[2]: any_createSignal_result1_upvr_2 (readonly)
			]]
			return Signals_upvr.createEffect(function() -- Line 63
				--[[ Upvalues[3]:
					[1]: any_createSignal_result1_upvr_2 (copied, readonly)
					[2]: arg2 (readonly)
					[3]: arg1_6 (readonly)
				]]
				for i_2, v_2 in pairs(any_createSignal_result1_upvr_2(arg2)) do
					arg1_6(i_2, v_2)
				end
			end)
		end;
		getAllData = Signals_upvr.createComputed(function(arg1_5) -- Line 58
			--[[ Upvalues[1]:
				[1]: any_createSignal_result1_upvr_2 (readonly)
			]]
			return any_createSignal_result1_upvr_2(arg1_5)
		end);
	}
end