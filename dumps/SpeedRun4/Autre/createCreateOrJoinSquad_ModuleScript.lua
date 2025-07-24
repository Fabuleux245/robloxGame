-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:37:42
-- Luau version 6, Types version 3
-- Time taken: 0.002210 seconds

local SQUAD_URL_upvr = require(script.Parent.Parent.SQUAD_URL)
return function(arg1) -- Line 5
	--[[ Upvalues[1]:
		[1]: SQUAD_URL_upvr (readonly)
	]]
	local var3_upvw
	local any_POST_result1 = arg1.roduxNetworking.POST({
		Name = "CreateOrJoinSquad";
	}, function(arg1_2, arg2) -- Line 11
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: var3_upvw (read and write)
			[3]: SQUAD_URL_upvr (copied, readonly)
		]]
		if arg1.useMockedResponse then
			var3_upvw = {
				responseBody = {
					groupUp = {
						groupUpId = "20000000-0000-0000-0000-000000000000";
						initiatorId = 3447631062;
						createdAtTime = tostring(os.clock() * 1000);
						updatedAtTime = tostring(os.clock() * 1000);
						parentChannelId = arg2.parentChannelId;
						members = {{
							userId = 3447631062;
							rank = 0;
						}, {
							userId = 2591622000;
							rank = 1;
						}, {
							userId = 3447649029;
							rank = 2;
						}, {
							userId = 3447641701;
							rank = 3;
						}, {
							userId = 3447635964;
							rank = 4;
						}, {
							userId = 3447642362;
							rank = 5;
						}};
					};
				};
			}
		end
		return arg1_2(SQUAD_URL_upvr):path("group-up"):path("v1"):path("join-or-create-for-channel"):body({
			parentChannelId = arg2.parentChannelId;
			leaveExisting = arg2.leaveExisting;
			squadLocation = arg2.squadLocation;
			partyAttemptId = arg2.partyAttemptId;
		})
	end)
	if arg1.useMockedResponse then
		any_POST_result1.Mock.clear()
		any_POST_result1.Mock.reply(function() -- Line 63
			--[[ Upvalues[1]:
				[1]: var3_upvw (read and write)
			]]
			return var3_upvw
		end)
	end
	return any_POST_result1
end