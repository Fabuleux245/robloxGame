-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:00:09
-- Luau version 6, Types version 3
-- Time taken: 0.001269 seconds

local CorePackages = game:GetService("CorePackages")
local Promise_upvr = require(CorePackages.Packages.Promise)
local GetGameNameAndDescription_upvr = require(CorePackages.Workspace.Packages.GameDetailRodux).GetGameNameAndDescription
local var5_upvr = require(game:GetService("CoreGui"):WaitForChild("RobloxGui").Modules.Common.httpRequest)(game:GetService("HttpRbxApiService"))
local GameNameFetched_upvr = require(script.Parent.Parent.Actions.GameNameFetched)
return function(arg1) -- Line 20
	--[[ Upvalues[4]:
		[1]: Promise_upvr (readonly)
		[2]: GetGameNameAndDescription_upvr (readonly)
		[3]: var5_upvr (readonly)
		[4]: GameNameFetched_upvr (readonly)
	]]
	if game.GameId == 0 then
		return Promise_upvr.resolve()
	end
	return GetGameNameAndDescription_upvr(var5_upvr, game.GameId):andThen(function(arg1_2) -- Line 25
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: GameNameFetched_upvr (copied, readonly)
		]]
		arg1:dispatch(GameNameFetched_upvr(arg1_2.Name))
		return arg1_2.Name
	end, function() -- Line 29
		--[[ Upvalues[1]:
			[1]: Promise_upvr (copied, readonly)
		]]
		warn("Unable to get game name for Avatar Editor Prompts")
		return Promise_upvr.reject()
	end)
end