-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:01:26
-- Luau version 6, Types version 3
-- Time taken: 0.000933 seconds

local Roact_upvr = require(script.Parent.Parent.Roact)
local any_extend_result1 = Roact_upvr.Component:extend("StoreProvider")
function any_extend_result1.validateProps(arg1) -- Line 7
	if arg1.store == nil then
		return false, "Error initializing StoreProvider. Expected a `store` prop to be a Rodux store."
	end
	return true
end
function any_extend_result1.init(arg1, arg2) -- Line 15
	arg1.store = arg2.store
end
local StoreContext_upvr = require(script.Parent.StoreContext)
function any_extend_result1.render(arg1) -- Line 19
	--[[ Upvalues[2]:
		[1]: Roact_upvr (readonly)
		[2]: StoreContext_upvr (readonly)
	]]
	return Roact_upvr.createElement(StoreContext_upvr.Provider, {
		value = arg1.store;
	}, Roact_upvr.oneChild(arg1.props[Roact_upvr.Children]))
end
return any_extend_result1