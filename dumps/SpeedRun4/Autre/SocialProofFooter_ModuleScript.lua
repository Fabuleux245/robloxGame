-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:13:28
-- Luau version 6, Types version 3
-- Time taken: 0.000772 seconds

local Parent_2 = script.Parent
local Parent = Parent_2.Parent.Parent
local React_upvr = require(Parent.Parent.Parent.React)
local FooterFrame_upvr = require(Parent_2.FooterFrame)
local StatGroup_upvr = require(Parent.Indicator.StatGroup)
return function(arg1) -- Line 19, Named "SocialProofFooter"
	--[[ Upvalues[3]:
		[1]: React_upvr (readonly)
		[2]: FooterFrame_upvr (readonly)
		[3]: StatGroup_upvr (readonly)
	]]
	return React_upvr.createElement(FooterFrame_upvr, arg1, {
		Stats = React_upvr.createElement(StatGroup_upvr, {
			ratingText = arg1.ratingText;
			playingText = arg1.playingText;
		});
	})
end