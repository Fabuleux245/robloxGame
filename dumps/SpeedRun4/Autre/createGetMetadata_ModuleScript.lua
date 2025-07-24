-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:41:59
-- Luau version 6, Types version 3
-- Time taken: 0.000740 seconds

local API_URL_upvr = require(script.Parent.Parent.API_URL)
return function(arg1) -- Line 6
	--[[ Upvalues[1]:
		[1]: API_URL_upvr (readonly)
	]]
	local any_POST_result1 = arg1.roduxNetworking.POST({
		Name = "get-metadata";
	}, function(arg1_2, arg2) -- Line 11
		--[[ Upvalues[1]:
			[1]: API_URL_upvr (copied, readonly)
		]]
		return arg1_2(API_URL_upvr):path("sharelinks"):path("v1"):path("get-metadata"):body({
			linkType = arg2.linkType;
			linkId = arg2.linkId;
		})
	end)
	if arg1.useMockedResponse then
		any_POST_result1.Mock.clear()
		any_POST_result1.Mock.reply(function() -- Line 21
			return {
				responseBody = {
					data = "{ \"universeId\": 123, \"placeId\": 456 }";
				};
			}
		end)
	end
	return any_POST_result1
end