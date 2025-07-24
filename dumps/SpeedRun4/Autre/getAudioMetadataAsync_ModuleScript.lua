-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:30:13
-- Luau version 6, Types version 3
-- Time taken: 0.000731 seconds

local AssetService_upvr = game:GetService("AssetService")
local Cryo_upvr = require(script:FindFirstAncestor("Songbird").Parent.Cryo)
return function(arg1) -- Line 11, Named "getAudioMetadataAsync"
	--[[ Upvalues[2]:
		[1]: AssetService_upvr (readonly)
		[2]: Cryo_upvr (readonly)
	]]
	return Cryo_upvr.List.map(AssetService_upvr:GetAudioMetadataAsync(arg1), function(arg1_2) -- Line 14
		local clone = table.clone(arg1_2)
		clone.AlbumArt = "rbxassetid://11204867732"
		return clone
	end)
end