-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:37:44
-- Luau version 6, Types version 3
-- Time taken: 0.001243 seconds

local SQUAD_URL_upvr = require(script.Parent.Parent.SQUAD_URL)
return function(arg1) -- Line 5
	--[[ Upvalues[1]:
		[1]: SQUAD_URL_upvr (readonly)
	]]
	local var3_upvw
	local any_GET_result1 = arg1.roduxNetworking.GET({
		Name = "GetSquadFromSquadId";
	}, function(arg1_2, arg2) -- Line 11
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: var3_upvw (read and write)
			[3]: SQUAD_URL_upvr (copied, readonly)
		]]
		if arg1.useMockedResponse then
			var3_upvw = {
				responseBody = {
					groupUp = arg2.mockedSquad;
				};
			}
		end
		return arg1_2(SQUAD_URL_upvr):path("group-up"):path("v1"):path("status"):queryArgs({
			groupUpId = arg2.squadId;
		})
	end)
	if arg1.useMockedResponse then
		any_GET_result1.Mock.clear()
		any_GET_result1.Mock.reply(function() -- Line 28
			--[[ Upvalues[1]:
				[1]: var3_upvw (read and write)
			]]
			return var3_upvw
		end)
	end
	return any_GET_result1
end