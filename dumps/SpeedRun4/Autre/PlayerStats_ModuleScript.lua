-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:48:38
-- Luau version 6, Types version 3
-- Time taken: 0.001524 seconds

local CorePackages = game:GetService("CorePackages")
local Cryo_upvr = require(CorePackages.Packages.Cryo)
local Actions = script.Parent.Parent.Actions
return require(CorePackages.Packages.Rodux).createReducer({}, {
	[require(Actions.AddPlayer).name] = function(arg1, arg2) -- Line 13
		--[[ Upvalues[1]:
			[1]: Cryo_upvr (readonly)
		]]
		return Cryo_upvr.Dictionary.join(arg1, {
			[arg2.userId] = {};
		})
	end;
	[require(Actions.RemovePlayer).name] = function(arg1, arg2) -- Line 19
		--[[ Upvalues[1]:
			[1]: Cryo_upvr (readonly)
		]]
		return Cryo_upvr.Dictionary.join(arg1, {
			[arg2.userId] = Cryo_upvr.None;
		})
	end;
	[require(Actions.SetPlayerLeaderstat).name] = function(arg1, arg2) -- Line 25
		--[[ Upvalues[1]:
			[1]: Cryo_upvr (readonly)
		]]
		if arg1[arg2.userId] == nil then
			return arg1
		end
		return Cryo_upvr.Dictionary.join(arg1, {
			[arg2.userId] = Cryo_upvr.Dictionary.join(arg1[arg2.userId], {
				[arg2.leaderstat] = arg2.value;
			});
		})
	end;
})