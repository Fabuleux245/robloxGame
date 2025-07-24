-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:49:40
-- Luau version 6, Types version 3
-- Time taken: 0.000571 seconds

local Foundation = script:FindFirstAncestor("Foundation")
local React_upvr = require(Foundation.Parent.React)
local Foundation_upvr = require(Foundation.Providers.Foundation)
local Theme_upvr = require(Foundation.Enums.Theme)
local View_upvr = require(Foundation.Components.View)
return function(arg1, arg2) -- Line 11
	--[[ Upvalues[4]:
		[1]: React_upvr (readonly)
		[2]: Foundation_upvr (readonly)
		[3]: Theme_upvr (readonly)
		[4]: View_upvr (readonly)
	]]
	local module = {
		theme = Theme_upvr.Dark;
	}
	module.preferences = arg2
	return React_upvr.createElement(Foundation_upvr, module, {
		Content = React_upvr.createElement(View_upvr, {
			Size = UDim2.new(1, 0, 1, 0);
		}, arg1);
	})
end