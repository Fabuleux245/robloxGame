-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:14:12
-- Luau version 6, Types version 3
-- Time taken: 0.000567 seconds

local Parent = script.Parent
local React_upvr = require(Parent.Parent.Parent.Parent.Parent.React)
local ResponsiveLayoutContext_upvr = require(Parent.ResponsiveLayoutContext)
local ResponsiveLayoutConfigReader_upvr = require(Parent.ResponsiveLayoutConfigReader)
return function(arg1, arg2) -- Line 19
	--[[ Upvalues[3]:
		[1]: React_upvr (readonly)
		[2]: ResponsiveLayoutContext_upvr (readonly)
		[3]: ResponsiveLayoutConfigReader_upvr (readonly)
	]]
	local any_useContext_result1 = React_upvr.useContext(ResponsiveLayoutContext_upvr)
	local module = {
		config = any_useContext_result1.config;
		breakpoint = any_useContext_result1.breakpoint;
	}
	local var8 = arg2
	if not var8 then
		var8 = any_useContext_result1.kind
	end
	module.kind = var8
	return ResponsiveLayoutConfigReader_upvr.getValue(module, arg1)
end