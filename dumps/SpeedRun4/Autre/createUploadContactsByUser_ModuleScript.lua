-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:56:47
-- Luau version 6, Types version 3
-- Time taken: 0.000604 seconds

game:DefineFastString("ContactImporterUploadUrl", "contacts")
local API_URL_upvr = require(script.Parent.Parent.API_URL)
local game_GetFastString_result1_upvr = game:GetFastString("ContactImporterUploadUrl")
return function(arg1) -- Line 8
	--[[ Upvalues[2]:
		[1]: API_URL_upvr (readonly)
		[2]: game_GetFastString_result1_upvr (readonly)
	]]
	return arg1.roduxNetworking.POST({
		Name = "UploadContactsByUser";
	}, function(arg1_2, arg2) -- Line 13
		--[[ Upvalues[2]:
			[1]: API_URL_upvr (copied, readonly)
			[2]: game_GetFastString_result1_upvr (copied, readonly)
		]]
		return arg1_2(API_URL_upvr):path("contacts-api"):path("v1"):path(game_GetFastString_result1_upvr):body({
			countryCode = arg2.countryCode;
			contacts = arg2.contacts;
		})
	end)
end