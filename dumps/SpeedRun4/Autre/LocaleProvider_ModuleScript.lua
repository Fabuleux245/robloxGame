-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:10:39
-- Luau version 6, Types version 3
-- Time taken: 0.000558 seconds

local Parent_2 = script.Parent
local Parent = Parent_2.Parent.Parent
local Roact_upvr = require(Parent.Roact)
local t = require(Parent.t)
local any_extend_result1 = Roact_upvr.Component:extend("LocaleProvider")
any_extend_result1.validateProps = t.interface({
	locale = t.string;
})
local LocaleRoactContext_upvr = require(Parent_2.LocaleRoactContext)
local getLocaleContext_upvr = require(Parent_2.getLocaleContext)
function any_extend_result1.render(arg1) -- Line 18
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: LocaleRoactContext_upvr (readonly)
		[3]: getLocaleContext_upvr (readonly)
	]]
	return Roact_upvr.createElement(LocaleRoactContext_upvr.Provider, {
		value = getLocaleContext_upvr(arg1.props.locale);
	}, arg1.props[Roact_upvr.Children])
end
return any_extend_result1