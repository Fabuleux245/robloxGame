-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:48:42
-- Luau version 6, Types version 3
-- Time taken: 0.001012 seconds

local CorePackages = game:GetService("CorePackages")
local Cryo_upvr = require(CorePackages.Packages.Cryo)
local Actions = script.Parent.Parent.Actions
return require(CorePackages.Packages.Rodux).createReducer({}, {
	[require(Actions.AddTeam).name] = function(arg1, arg2) -- Line 13
		--[[ Upvalues[1]:
			[1]: Cryo_upvr (readonly)
		]]
		return Cryo_upvr.Dictionary.join(arg1, {
			[arg2.team] = arg2.team.Name;
		})
	end;
	[require(Actions.RemoveTeam).name] = function(arg1, arg2) -- Line 19
		--[[ Upvalues[1]:
			[1]: Cryo_upvr (readonly)
		]]
		return Cryo_upvr.Dictionary.join(arg1, {
			[arg2.team] = Cryo_upvr.None;
		})
	end;
	[require(Actions.SetTeamName).name] = function(arg1, arg2) -- Line 25
		--[[ Upvalues[1]:
			[1]: Cryo_upvr (readonly)
		]]
		return Cryo_upvr.Dictionary.join(arg1, {
			[arg2.team] = arg2.teamName;
		})
	end;
})