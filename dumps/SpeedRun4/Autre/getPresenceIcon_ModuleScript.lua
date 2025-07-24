-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:38:38
-- Luau version 6, Types version 3
-- Time taken: 0.000506 seconds

local Images_upvr = require(script:FindFirstAncestor("PlayerContextualMenu").Parent.UIBlox).App.ImageSet.Images
return function(arg1, arg2) -- Line 9, Named "getPresenceIcon"
	--[[ Upvalues[1]:
		[1]: Images_upvr (readonly)
	]]
	if arg1 then
		if arg1.status == "InGame" then
			return Images_upvr["icons/menu/games_small"], arg2.iconEmphasis
		end
		if arg1.status == "Online" or arg1.status == "InStudio" then
			return Images_upvr["component_assets/circle_16"], arg2.onlinePresence
		end
	end
	return nil, nil
end