-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:25:39
-- Luau version 6, Types version 3
-- Time taken: 0.000630 seconds

local Parent_2 = script.Parent.Parent.Parent
local Parent = Parent_2.Parent
local Types = Parent_2.Types
local Rodux_upvr = require(Parent.Rodux)
local module_upvr = {}
local RequestSent_upvr = require(Parent_2.Actions).RequestSent
local Dash_upvr = require(Parent.Dash)
return function(arg1) -- Line 13
	--[[ Upvalues[4]:
		[1]: Rodux_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: RequestSent_upvr (readonly)
		[4]: Dash_upvr (readonly)
	]]
	return Rodux_upvr.createReducer(module_upvr, {
		[RequestSent_upvr.name] = function(arg1_2, arg2) -- Line 15
			--[[ Upvalues[1]:
				[1]: Dash_upvr (copied, readonly)
			]]
			return Dash_upvr.join(arg1_2, {
				[arg2.payload.id] = true;
			})
		end;
	})
end