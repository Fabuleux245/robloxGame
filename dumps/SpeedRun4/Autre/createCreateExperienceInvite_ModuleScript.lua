-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:37:42
-- Luau version 6, Types version 3
-- Time taken: 0.000919 seconds

local SQUAD_URL_upvr = require(script.Parent.Parent.SQUAD_URL)
local HttpService_upvr = game:GetService("HttpService")
return function(arg1) -- Line 7
	--[[ Upvalues[2]:
		[1]: SQUAD_URL_upvr (readonly)
		[2]: HttpService_upvr (readonly)
	]]
	return arg1.roduxNetworking.POST({
		Name = "CreateExperienceInvite";
	}, function(arg1_2, arg2) -- Line 11
		--[[ Upvalues[2]:
			[1]: SQUAD_URL_upvr (copied, readonly)
			[2]: HttpService_upvr (copied, readonly)
		]]
		return arg1_2(SQUAD_URL_upvr):path("group-up"):path("v1"):path("invite-to-experience"):body({
			membershipEntityId = arg2.membershipEntityId;
			placeId = arg2.placeId;
			requestId = HttpService_upvr:GenerateGUID(false);
			voteIdentifier = arg2.voteIdentifier;
		})
	end)
end