-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:34:32
-- Luau version 6, Types version 3
-- Time taken: 0.001794 seconds

local VerifiedBadges = script:FindFirstAncestor("VerifiedBadges")
local Cryo_upvr = require(VerifiedBadges.Parent.Cryo)
local dependencies = require(VerifiedBadges.dependencies)
local function var4_upvr(arg1, arg2) -- Line 19
	--[[ Upvalues[1]:
		[1]: Cryo_upvr (readonly)
	]]
	local module_2 = {}
	for _, v in ipairs(arg2) do
		local id = v.id
		if v.hasVerifiedBadge then
			id = true
		else
			id = Cryo_upvr.None
		end
		module_2[tostring(id)] = id
	end
	return Cryo_upvr.Dictionary.join(arg1, module_2)
end
return require(VerifiedBadges.Parent.Rodux).createReducer({}, {
	[dependencies.UsersNetworking.GetUserV2FromUserId.Succeeded.name] = function(arg1, arg2) -- Line 30
		--[[ Upvalues[1]:
			[1]: var4_upvr (readonly)
		]]
		return var4_upvr(arg1, {arg2.responseBody})
	end;
	[dependencies.FriendsNetworking.GetFriendsFromUserId.Succeeded.name] = function(arg1, arg2) -- Line 34
		--[[ Upvalues[1]:
			[1]: var4_upvr (readonly)
		]]
		return var4_upvr(arg1, arg2.responseBody.data)
	end;
	AddGameDetails = function(arg1, arg2) -- Line 38, Named "AddGameDetails"
		--[[ Upvalues[1]:
			[1]: Cryo_upvr (readonly)
		]]
		for _, v_2 in pairs(arg2.gameDetails) do
			local Name = Enum.CreatorType.User.Name
			if v_2.creator.type == Name then
				if v_2.creator.hasVerifiedBadge then
					Name = true
				else
					Name = Cryo_upvr.None
				end
				;({})[tostring(v_2.creator.id)] = Name
			end
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		return Cryo_upvr.Dictionary.join(arg1, {})
	end;
	SetAssetInfoFromCatalogItemAction = function(arg1, arg2) -- Line 54, Named "SetAssetInfoFromCatalogItemAction"
		--[[ Upvalues[1]:
			[1]: Cryo_upvr (readonly)
		]]
		local var26
		if arg2.assetData.creatorType ~= Enum.CreatorType.User.Name then
			return arg1
		end
		local module = {}
		if arg2.assetData.creatorHasVerifiedBadge then
			var26 = true
		else
			var26 = Cryo_upvr.None
		end
		module[tostring(arg2.assetData.creatorTargetId)] = var26
		return Cryo_upvr.Dictionary.join(arg1, module)
	end;
})