-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:29:24
-- Luau version 6, Types version 3
-- Time taken: 0.001097 seconds

local dependencies = require(script.Parent.Parent.Parent.Parent.dependencies)
local Rodux_upvr = dependencies.Rodux
local module_upvr = {}
local SessionIdUpdated_upvr = require(script.Parent.Parent.Actions.SessionIdUpdated)
local Dash_upvr = dependencies.Dash
return function(arg1) -- Line 12
	--[[ Upvalues[4]:
		[1]: Rodux_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: SessionIdUpdated_upvr (readonly)
		[4]: Dash_upvr (readonly)
	]]
	return Rodux_upvr.createReducer(module_upvr, {
		[SessionIdUpdated_upvr.name] = function(arg1_2, arg2) -- Line 14
			--[[ Upvalues[2]:
				[1]: Dash_upvr (copied, readonly)
				[2]: module_upvr (copied, readonly)
			]]
			local var10 = arg1_2
			if not var10 then
				var10 = module_upvr
			end
			return Dash_upvr.join(var10, {
				[arg2.payload.sessionKey] = arg2.payload.sessionId;
			})
		end;
	})
end