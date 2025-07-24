-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:03:24
-- Luau version 6, Types version 3
-- Time taken: 0.000703 seconds

local GamesMultigetPlaceDetails_upvr = require(game:GetService("CorePackages").Workspace.Packages.GameDetailRodux).GamesByPlaceId.GamesMultigetPlaceDetails
local var3_upvr = require(game:GetService("CoreGui"):WaitForChild("RobloxGui").Modules.Common.httpRequest)(game:GetService("HttpRbxApiService"))
local TeleportService_upvr = game:GetService("TeleportService")
return function() -- Line 14
	--[[ Upvalues[3]:
		[1]: GamesMultigetPlaceDetails_upvr (readonly)
		[2]: var3_upvr (readonly)
		[3]: TeleportService_upvr (readonly)
	]]
	if game.PlaceId ~= 0 then
		GamesMultigetPlaceDetails_upvr(var3_upvr, game.PlaceId):andThen(function(arg1) -- Line 16
			--[[ Upvalues[1]:
				[1]: TeleportService_upvr (copied, readonly)
			]]
			TeleportService_upvr:Teleport(arg1.responseBody[1].universeRootPlaceId)
		end, function() -- Line 19
		end)
	end
end