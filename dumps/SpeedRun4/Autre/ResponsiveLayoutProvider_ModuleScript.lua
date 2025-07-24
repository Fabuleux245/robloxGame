-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:14:11
-- Luau version 6, Types version 3
-- Time taken: 0.001203 seconds

local Parent = script.Parent
local React_upvr = require(Parent.Parent.Parent.Parent.Parent.React)
local ResponsiveLayoutConfigReader_upvr = require(Parent.ResponsiveLayoutConfigReader)
local ResponsiveLayoutContext_upvr = require(Parent.ResponsiveLayoutContext)
return function(arg1) -- Line 18, Named "ResponsiveLayoutProvider"
	--[[ Upvalues[3]:
		[1]: React_upvr (readonly)
		[2]: ResponsiveLayoutConfigReader_upvr (readonly)
		[3]: ResponsiveLayoutContext_upvr (readonly)
	]]
	local var5_upvr = arg1.width or 1
	local config_upvr = arg1.config
	if not config_upvr then
		config_upvr = {}
	end
	local any_useState_result1_upvr, any_useState_result2_upvr = React_upvr.useState(function() -- Line 22
		--[[ Upvalues[3]:
			[1]: ResponsiveLayoutConfigReader_upvr (copied, readonly)
			[2]: config_upvr (readonly)
			[3]: var5_upvr (readonly)
		]]
		return ResponsiveLayoutConfigReader_upvr.findBreakpoint(config_upvr, var5_upvr)
	end)
	React_upvr.useLayoutEffect(function() -- Line 26
		--[[ Upvalues[4]:
			[1]: any_useState_result2_upvr (readonly)
			[2]: ResponsiveLayoutConfigReader_upvr (copied, readonly)
			[3]: config_upvr (readonly)
			[4]: var5_upvr (readonly)
		]]
		any_useState_result2_upvr(ResponsiveLayoutConfigReader_upvr.findBreakpoint(config_upvr, var5_upvr))
	end, {config_upvr})
	React_upvr.useLayoutEffect(function() -- Line 30
		--[[ Upvalues[5]:
			[1]: any_useState_result1_upvr (readonly)
			[2]: var5_upvr (readonly)
			[3]: any_useState_result2_upvr (readonly)
			[4]: ResponsiveLayoutConfigReader_upvr (copied, readonly)
			[5]: config_upvr (readonly)
		]]
		if var5_upvr < any_useState_result1_upvr.min or any_useState_result1_upvr.max < var5_upvr then
			any_useState_result2_upvr(ResponsiveLayoutConfigReader_upvr.findBreakpoint(config_upvr, var5_upvr))
		end
	end, {var5_upvr, any_useState_result1_upvr.min, any_useState_result1_upvr.max})
	return React_upvr.createElement(ResponsiveLayoutContext_upvr.Provider, {
		value = {
			config = config_upvr;
			breakpoint = any_useState_result1_upvr.name;
		};
	}, arg1.children)
end