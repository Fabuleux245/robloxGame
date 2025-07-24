-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:42:32
-- Luau version 6, Types version 3
-- Time taken: 0.000366 seconds

local SocialCards_upvr = script:FindFirstAncestor("SocialCards")
return {
	CardComponent = {
		group_up = require(SocialCards_upvr.Parent.RoactUtils).Components.createLazyComponent(function() -- Line 9
			--[[ Upvalues[1]:
				[1]: SocialCards_upvr (readonly)
			]]
			return require(SocialCards_upvr.Components).SquadCard.SquadCard
		end);
	};
}