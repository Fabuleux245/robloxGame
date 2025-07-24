-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:14:09
-- Luau version 6, Types version 3
-- Time taken: 0.000349 seconds

local Roact_upvr = require(script.Parent.Parent.Parent.Parent.Parent.Roact)
local LayerCollectorContext_upvr = require(script.Parent.LayerCollectorContext)
return function(arg1) -- Line 9, Named "LayerCollectorConsumer"
	--[[ Upvalues[2]:
		[1]: Roact_upvr (readonly)
		[2]: LayerCollectorContext_upvr (readonly)
	]]
	local module = {}
	module.render = arg1
	return Roact_upvr.createElement(LayerCollectorContext_upvr.Consumer, module)
end