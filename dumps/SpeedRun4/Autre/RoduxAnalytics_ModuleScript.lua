-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:29:22
-- Luau version 6, Types version 3
-- Time taken: 0.000785 seconds

local module = {}
local Reducers_upvr = require(script.Reducers)
local Actions_upvr = require(script.Actions)
local Selectors_upvr = require(script.Selectors)
function module.config(arg1) -- Line 7
	--[[ Upvalues[3]:
		[1]: Reducers_upvr (readonly)
		[2]: Actions_upvr (readonly)
		[3]: Selectors_upvr (readonly)
	]]
	return {
		installReducer = function() -- Line 9, Named "installReducer"
			--[[ Upvalues[2]:
				[1]: Reducers_upvr (copied, readonly)
				[2]: arg1 (readonly)
			]]
			return Reducers_upvr(arg1)
		end;
		Actions = Actions_upvr(arg1);
		Selectors = Selectors_upvr(arg1);
	}
end
return module