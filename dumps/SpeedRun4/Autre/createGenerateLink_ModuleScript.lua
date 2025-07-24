-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:41:58
-- Luau version 6, Types version 3
-- Time taken: 0.001588 seconds

local Parent = script.Parent.Parent
local tutils_upvr = require(Parent.Parent.tutils)
local API_URL_upvr = require(Parent.API_URL)
local HttpService_upvr = game:GetService("HttpService")
return function(arg1) -- Line 10
	--[[ Upvalues[3]:
		[1]: tutils_upvr (readonly)
		[2]: API_URL_upvr (readonly)
		[3]: HttpService_upvr (readonly)
	]]
	local any_POST_result1 = arg1.roduxNetworking.POST({
		Name = "create-link";
	}, function(arg1_2, arg2) -- Line 15
		--[[ Upvalues[3]:
			[1]: tutils_upvr (copied, readonly)
			[2]: API_URL_upvr (copied, readonly)
			[3]: HttpService_upvr (copied, readonly)
		]]
		local any_deepCopy_result1 = tutils_upvr.deepCopy(arg2)
		any_deepCopy_result1.linkType = nil
		local module = {}
		local linkType = arg2.linkType
		module.linkType = linkType
		if next(any_deepCopy_result1) ~= nil then
			linkType = HttpService_upvr:JSONEncode(any_deepCopy_result1)
		else
			linkType = nil
		end
		module.data = linkType
		return arg1_2(API_URL_upvr):path("sharelinks"):path("v1"):path("create-link"):body(module)
	end)
	if arg1.useMockedResponse then
		any_POST_result1.Mock.clear()
		any_POST_result1.Mock.reply(function() -- Line 28
			return {
				responseBody = {
					linkId = "42685";
				};
			}
		end)
	end
	return any_POST_result1
end