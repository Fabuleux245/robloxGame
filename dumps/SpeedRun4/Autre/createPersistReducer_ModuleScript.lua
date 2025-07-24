-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:41:40
-- Luau version 6, Types version 3
-- Time taken: 0.001968 seconds

local RoduxSquads = script:FindFirstAncestor("RoduxSquads")
local module_upvr = {
	isPaused = false;
}
local createPause_upvr = require(RoduxSquads.Persists.Actions).createPause
local createPersistAndUpdateState_upvr = require(RoduxSquads.Persists.Actions).createPersistAndUpdateState
local createInternalPersistManager_upvr = require(RoduxSquads.Persists.PersistManager).createInternalPersistManager
local createPersistManager_upvr = require(RoduxSquads.Persists.PersistManager).createPersistManager
local Rodux_upvr = require(RoduxSquads.Parent.Rodux)
return function(arg1, arg2) -- Line 13
	--[[ Upvalues[6]:
		[1]: createPause_upvr (readonly)
		[2]: createPersistAndUpdateState_upvr (readonly)
		[3]: createInternalPersistManager_upvr (readonly)
		[4]: createPersistManager_upvr (readonly)
		[5]: module_upvr (readonly)
		[6]: Rodux_upvr (readonly)
	]]
	local createPersistAndUpdateState_upvr_result1_upvr = createPersistAndUpdateState_upvr(arg1)
	local var6_result1_upvr = createInternalPersistManager_upvr(arg1)
	local isPaused_upvw = module_upvr.isPaused
	local var12_upvw
	if var6_result1_upvr then
		local function _(arg1_2) -- Line 27
			--[[ Upvalues[1]:
				[1]: var12_upvw (read and write)
			]]
			var12_upvw = arg1_2
		end
		var12_upvw = var6_result1_upvr.get()
	end
	local var15_upvw = false
	return function(arg1_3, arg2_2) -- Line 33
		--[[ Upvalues[6]:
			[1]: var6_result1_upvr (readonly)
			[2]: var15_upvw (read and write)
			[3]: var12_upvw (read and write)
			[4]: createPersistAndUpdateState_upvr_result1_upvr (readonly)
			[5]: isPaused_upvw (read and write)
			[6]: arg2 (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var18
		if var6_result1_upvr and not var15_upvw then
			var18 = var12_upvw or var18
		end
		var15_upvw = true
		if createPersistAndUpdateState_upvr_result1_upvr.name == arg2_2.type then
			return var12_upvw
		end
		if not isPaused_upvw then
			local arg2_result1 = arg2(var18, arg2_2)
			if var6_result1_upvr and arg2_result1 ~= var18 then
				var6_result1_upvr.update(arg2_result1)
			end
		end
		return arg2_result1
	end, Rodux_upvr.createReducer(module_upvr, {
		[createPersistAndUpdateState_upvr_result1_upvr.name] = function(arg1_4, arg2_3) -- Line 55
			--[[ Upvalues[1]:
				[1]: isPaused_upvw (read and write)
			]]
			isPaused_upvw = false
			return {
				isPaused = isPaused_upvw;
			}
		end;
		[createPause_upvr(arg1).name] = function(arg1_5, arg2_4) -- Line 59
			--[[ Upvalues[1]:
				[1]: isPaused_upvw (read and write)
			]]
			isPaused_upvw = true
			return {
				isPaused = isPaused_upvw;
			}
		end;
	}), createPersistManager_upvr(arg1, var6_result1_upvr)
end