-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:11:12
-- Luau version 6, Types version 3
-- Time taken: 0.000535 seconds

local Parent = script.Parent.Parent.Parent
local Roact_upvr = require(Parent.Parent.Roact)
local any_extend_result1 = Roact_upvr.PureComponent:extend("LoadingStatePage")
local LoadingSpinner_upvr = require(Parent.App.Loading.LoadingSpinner)
function any_extend_result1.render(arg1) -- Line 12
	--[[ Upvalues[2]:
		[1]: Roact_upvr (readonly)
		[2]: LoadingSpinner_upvr (readonly)
	]]
	return Roact_upvr.createElement(LoadingSpinner_upvr, {
		size = UDim2.fromOffset(42, 42);
		position = UDim2.fromScale(0.5, 0.5);
		anchorPoint = Vector2.new(0.5, 0.5);
	})
end
return any_extend_result1