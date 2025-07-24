-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:01:18
-- Luau version 6, Types version 3
-- Time taken: 0.001475 seconds

local Parent = script.Parent
local StackViewInterpolator = require(Parent.StackViewInterpolator)
local StackPresentationStyle_upvr = require(Parent.StackPresentationStyle)
local tbl = {
	frequency = 3;
	dampingRatio = 1;
}
local tbl_4_upvr = {
	transitionSpec = tbl;
	screenInterpolator = StackViewInterpolator.forHorizontal;
}
local tbl_2_upvr = {
	transitionSpec = tbl;
	screenInterpolator = StackViewInterpolator.forVertical;
}
local tbl_3_upvr = {
	transitionSpec = tbl;
	screenInterpolator = StackViewInterpolator.forFade;
}
local Object_upvr = require(Parent.Parent.Parent.Parent.LuauPolyfill).Object
return {
	getDefaultTransitionConfig = function(arg1, arg2, arg3) -- Line 31, Named "getDefaultTransitionConfig"
		--[[ Upvalues[4]:
			[1]: StackPresentationStyle_upvr (readonly)
			[2]: tbl_2_upvr (readonly)
			[3]: tbl_3_upvr (readonly)
			[4]: tbl_4_upvr (readonly)
		]]
		if arg3 == StackPresentationStyle_upvr.Modal then
			return tbl_2_upvr
		end
		if arg3 == StackPresentationStyle_upvr.Overlay then
			return tbl_3_upvr
		end
		return tbl_4_upvr
	end;
	getTransitionConfig = function(arg1, arg2, arg3, arg4) -- Line 41, Named "getTransitionConfig"
		--[[ Upvalues[5]:
			[1]: StackPresentationStyle_upvr (readonly)
			[2]: tbl_2_upvr (readonly)
			[3]: tbl_3_upvr (readonly)
			[4]: tbl_4_upvr (readonly)
			[5]: Object_upvr (readonly)
		]]
		local var9
		if arg4 == StackPresentationStyle_upvr.Modal then
			var9 = tbl_2_upvr
		elseif arg4 == StackPresentationStyle_upvr.Overlay then
			var9 = tbl_3_upvr
		else
			var9 = tbl_4_upvr
		end
		if arg1 then
			return Object_upvr.assign(table.clone(var9), arg1(arg2, arg3, arg4))
		end
		return var9
	end;
	SlideFromRight = tbl_4_upvr;
	ModalSlideFromBottom = tbl_2_upvr;
	FadeInPlace = tbl_3_upvr;
}