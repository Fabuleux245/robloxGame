-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:54:23
-- Luau version 6, Types version 3
-- Time taken: 0.000741 seconds

local InGameMenuDependencies = require(game:GetService("CorePackages").Packages.InGameMenuDependencies)
local module = {}
local Cryo_upvr = InGameMenuDependencies.Cryo
module[require(script.Parent.Parent.Actions.SetGameNameAndDescription).name] = function(arg1, arg2) -- Line 15
	--[[ Upvalues[1]:
		[1]: Cryo_upvr (readonly)
	]]
	return Cryo_upvr.Dictionary.join(arg1, {
		name = arg2.gameName;
		description = arg2.gameDescription;
	})
end
return InGameMenuDependencies.Rodux.createReducer({
	name = "Game";
	description = "";
}, module)