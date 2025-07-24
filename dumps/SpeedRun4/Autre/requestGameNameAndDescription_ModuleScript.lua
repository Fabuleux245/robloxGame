-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:54:32
-- Luau version 6, Types version 3
-- Time taken: 0.001070 seconds

local Parent = script.Parent.Parent
local GetGameNameAndDescription_upvr = require(game:GetService("CorePackages").Workspace.Packages.GameDetailRodux).GetGameNameAndDescription
local var3_upvr = require(Parent.Network.httpRequest)(game:GetService("HttpRbxApiService"))
local SetGameNameAndDescription_upvr = require(Parent.Actions.SetGameNameAndDescription)
return function(arg1) -- Line 13, Named "requestGameNameAndDescription"
	--[[ Upvalues[3]:
		[1]: GetGameNameAndDescription_upvr (readonly)
		[2]: var3_upvr (readonly)
		[3]: SetGameNameAndDescription_upvr (readonly)
	]]
	if game.GameId == 0 then
	else
		GetGameNameAndDescription_upvr(var3_upvr, game.GameId):andThen(function(arg1_2) -- Line 18
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: SetGameNameAndDescription_upvr (copied, readonly)
			]]
			arg1:dispatch(SetGameNameAndDescription_upvr(arg1_2.Name, arg1_2.Description))
		end):catch(function() -- Line 20
			warn("Unable to retrieve game name for in game menu")
		end)
	end
end