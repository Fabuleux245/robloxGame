-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:24:38
-- Luau version 6, Types version 3
-- Time taken: 0.000804 seconds

local Parent = script.Parent.Parent.Parent
local module = {}
local useUserExperiment_upvr = require(Parent.RoactAppExperiment).useUserExperiment
local FStringPaginatedCarouselExperimentLayer_upvr = require(Parent.SharedFlags).FStringPaginatedCarouselExperimentLayer
function module.usePaginatedFriendsCarouselExperiment() -- Line 11
	--[[ Upvalues[2]:
		[1]: useUserExperiment_upvr (readonly)
		[2]: FStringPaginatedCarouselExperimentLayer_upvr (readonly)
	]]
	return true, useUserExperiment_upvr({FStringPaginatedCarouselExperimentLayer_upvr}, function(arg1) -- Line 14
		--[[ Upvalues[1]:
			[1]: FStringPaginatedCarouselExperimentLayer_upvr (copied, readonly)
		]]
		local var7 = arg1[FStringPaginatedCarouselExperimentLayer_upvr]
		if not var7 then
			var7 = {}
		end
		return var7.friendsSortVariant
	end)
end
return module