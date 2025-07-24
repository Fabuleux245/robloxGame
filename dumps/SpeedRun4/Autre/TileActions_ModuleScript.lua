-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:48:27
-- Luau version 6, Types version 3
-- Time taken: 0.000422 seconds

local Foundation = script:FindFirstAncestor("Foundation")
local React_upvr = require(Foundation.Parent.React)
local View_upvr = require(Foundation.Components.View)
return function(arg1) -- Line 15, Named "TileActions"
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: View_upvr (readonly)
	]]
	return React_upvr.createElement(View_upvr, {
		Visible = arg1.Visible;
		LayoutOrder = 3;
		tag = "auto-y size-full-0 shrink";
	}, arg1.children)
end