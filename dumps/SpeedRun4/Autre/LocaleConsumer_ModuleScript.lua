-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:10:38
-- Luau version 6, Types version 3
-- Time taken: 0.000593 seconds

local Parent_2 = script.Parent
local Parent = Parent_2.Parent.Parent
local Roact_upvr = require(Parent.Roact)
local t = require(Parent.t)
local any_extend_result1 = Roact_upvr.Component:extend("LocaleConsumer")
any_extend_result1.validateProps = t.strictInterface({
	render = t.callback;
})
local LocaleRoactContext_upvr = require(Parent_2.LocaleRoactContext)
local function render(arg1) -- Line 16
	--[[ Upvalues[2]:
		[1]: Roact_upvr (readonly)
		[2]: LocaleRoactContext_upvr (readonly)
	]]
	return Roact_upvr.createElement(LocaleRoactContext_upvr.Consumer, {
		render = function(arg1_2) -- Line 18, Named "render"
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			return arg1.props.render(arg1_2)
		end;
	})
end
any_extend_result1.render = render
return any_extend_result1