-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:37:47
-- Luau version 6, Types version 3
-- Time taken: 0.001781 seconds

local SQUAD_URL_upvr = require(script.Parent.Parent.SQUAD_URL)
local HttpService_upvr = game:GetService("HttpService")
return function(arg1) -- Line 7
	--[[ Upvalues[2]:
		[1]: SQUAD_URL_upvr (readonly)
		[2]: HttpService_upvr (readonly)
	]]
	local var4_upvw
	local any_POST_result1 = arg1.roduxNetworking.POST({
		Name = "SquadInvite";
	}, function(arg1_2, arg2) -- Line 13
		--[[ Upvalues[4]:
			[1]: arg1 (readonly)
			[2]: var4_upvw (read and write)
			[3]: SQUAD_URL_upvr (copied, readonly)
			[4]: HttpService_upvr (copied, readonly)
		]]
		if arg1.useMockedResponse then
			var4_upvw = {
				responseBody = {
					channelUpgraded = false;
					parentChannelId = arg2.parentChannelId;
					results = {{
						userId = 3447631062;
						resultStatus = {
							resultType = "success";
							message = "message";
						};
					}};
				};
			}
		end
		return arg1_2(SQUAD_URL_upvr):path("group-up"):path("v1"):path("invite"):body({
			groupUpId = arg2.squadId;
			invitedUserIds = arg2.invitedUserIds;
			parentChannelId = arg2.parentChannelId;
			isReparented = arg2.isReparented;
			requestId = HttpService_upvr:GenerateGUID();
		})
	end)
	if arg1.useMockedResponse then
		any_POST_result1.Mock.clear()
		any_POST_result1.Mock.reply(function() -- Line 44
			--[[ Upvalues[1]:
				[1]: var4_upvw (read and write)
			]]
			return var4_upvw
		end)
	end
	return any_POST_result1
end