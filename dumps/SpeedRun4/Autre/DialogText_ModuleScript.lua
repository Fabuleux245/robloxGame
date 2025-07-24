-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:47:32
-- Luau version 6, Types version 3
-- Time taken: 0.000644 seconds

local Foundation = script:FindFirstAncestor("Foundation")
local React_upvr = require(Foundation.Parent.React)
local Text_upvr = require(Foundation.Components.Text)
return function(arg1) -- Line 16, Named "DialogText"
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: Text_upvr (readonly)
	]]
	return React_upvr.createElement(Text_upvr, {
		Text = arg1.Text;
		RichText = true;
		tag = "text-body-large text-wrap text-align-x-left text-align-y-top auto-y size-full-0";
		LayoutOrder = arg1.LayoutOrder;
	})
end