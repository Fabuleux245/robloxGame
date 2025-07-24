-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:41:38
-- Luau version 6, Types version 3
-- Time taken: 0.001293 seconds

local RoduxSquads = script:FindFirstAncestor("RoduxSquads")
local createPersistAndUpdateState_upvr = require(RoduxSquads.Persists.Actions).createPersistAndUpdateState
local createPause_upvr = require(RoduxSquads.Persists.Actions).createPause
return function(arg1, arg2) -- Line 15
	--[[ Upvalues[2]:
		[1]: createPersistAndUpdateState_upvr (readonly)
		[2]: createPause_upvr (readonly)
	]]
	if not arg2 then
		return nil
	end
	return {
		reset = function() -- Line 21, Named "reset"
			--[[ Upvalues[1]:
				[1]: arg2 (readonly)
			]]
			arg2.update(nil)
		end;
		persistAndUpdateState = function(arg1_2) -- Line 25, Named "persistAndUpdateState"
			--[[ Upvalues[2]:
				[1]: createPersistAndUpdateState_upvr (copied, readonly)
				[2]: arg1 (readonly)
			]]
			local createPersistAndUpdateState_upvr_result1 = createPersistAndUpdateState_upvr(arg1)
			if createPersistAndUpdateState_upvr_result1 then
				arg1_2(createPersistAndUpdateState_upvr_result1())
			end
		end;
		pause = function(arg1_3) -- Line 32, Named "pause"
			--[[ Upvalues[2]:
				[1]: createPause_upvr (copied, readonly)
				[2]: arg1 (readonly)
			]]
			local createPause_upvr_result1 = createPause_upvr(arg1)
			if createPause_upvr_result1 then
				arg1_3(createPause_upvr_result1())
			end
		end;
	}
end