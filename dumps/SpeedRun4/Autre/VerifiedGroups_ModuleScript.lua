-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:34:31
-- Luau version 6, Types version 3
-- Time taken: 0.001846 seconds

local VerifiedBadges = script:FindFirstAncestor("VerifiedBadges")
local Cryo_upvr = require(VerifiedBadges.Parent.Cryo)
return require(VerifiedBadges.Parent.Rodux).createReducer({}, {
	AddGameDetails = function(arg1, arg2) -- Line 11, Named "AddGameDetails"
		--[[ Upvalues[1]:
			[1]: Cryo_upvr (readonly)
		]]
		for _, v in pairs(arg2.gameDetails) do
			local Name = Enum.CreatorType.Group.Name
			if v.creator.type == Name then
				if v.creator.hasVerifiedBadge then
					Name = true
				else
					Name = Cryo_upvr.None
				end
				;({})[tostring(v.creator.id)] = Name
			end
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		return Cryo_upvr.Dictionary.join(arg1, {})
	end;
	SetAssetInfoFromCatalogItemAction = function(arg1, arg2) -- Line 27, Named "SetAssetInfoFromCatalogItemAction"
		--[[ Upvalues[1]:
			[1]: Cryo_upvr (readonly)
		]]
		local var12
		if arg2.assetData.creatorType ~= Enum.CreatorType.Group.Name then
			return arg1
		end
		local module = {}
		if arg2.assetData.creatorHasVerifiedBadge then
			var12 = true
		else
			var12 = Cryo_upvr.None
		end
		module[tostring(arg2.assetData.creatorTargetId)] = var12
		return Cryo_upvr.Dictionary.join(arg1, module)
	end;
})