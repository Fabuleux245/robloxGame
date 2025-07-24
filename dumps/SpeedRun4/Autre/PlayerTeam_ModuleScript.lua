-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:48:39
-- Luau version 6, Types version 3
-- Time taken: 0.001305 seconds

local CorePackages = game:GetService("CorePackages")
local Cryo_upvr = require(CorePackages.Packages.Cryo)
local Actions = script.Parent.Parent.Actions
return require(CorePackages.Packages.Rodux).createReducer({}, {
	[require(Actions.AddPlayerToTeam).name] = function(arg1, arg2) -- Line 12
		--[[ Upvalues[1]:
			[1]: Cryo_upvr (readonly)
		]]
		return Cryo_upvr.Dictionary.join(arg1, {
			[arg2.player.UserId] = arg2.team;
		})
	end;
	[require(Actions.RemovePlayerFromTeam).name] = function(arg1, arg2) -- Line 18
		--[[ Upvalues[1]:
			[1]: Cryo_upvr (readonly)
		]]
		return Cryo_upvr.Dictionary.join(arg1, {
			[arg2.player.UserId] = Cryo_upvr.None;
		})
	end;
	[require(Actions.RemovePlayer).name] = function(arg1, arg2) -- Line 24
		--[[ Upvalues[1]:
			[1]: Cryo_upvr (readonly)
		]]
		return Cryo_upvr.Dictionary.join(arg1, {
			[arg2.player.UserId] = Cryo_upvr.None;
		})
	end;
})