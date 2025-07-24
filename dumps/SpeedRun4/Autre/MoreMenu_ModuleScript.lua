-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:46:51
-- Luau version 6, Types version 3
-- Time taken: 0.001289 seconds

local CorePackages = game:GetService("CorePackages")
local Cryo_upvr = require(CorePackages.Packages.Cryo)
local Actions = script.Parent.Parent.Actions
return require(CorePackages.Packages.Rodux).createReducer({
	open = false;
	backpackOpen = false;
	leaderboardOpen = false;
	emotesOpen = false;
	emotesEnabled = true;
}, {
	[require(Actions.SetMoreMenuOpen).name] = function(arg1, arg2) -- Line 23
		--[[ Upvalues[1]:
			[1]: Cryo_upvr (readonly)
		]]
		return Cryo_upvr.Dictionary.join(arg1, {
			open = arg2.open;
		})
	end;
	[require(Actions.SetBackpackOpen).name] = function(arg1, arg2) -- Line 29
		--[[ Upvalues[1]:
			[1]: Cryo_upvr (readonly)
		]]
		return Cryo_upvr.Dictionary.join(arg1, {
			open = false;
			backpackOpen = arg2.open;
		})
	end;
	[require(Actions.SetEmotesOpen).name] = function(arg1, arg2) -- Line 36
		--[[ Upvalues[1]:
			[1]: Cryo_upvr (readonly)
		]]
		return Cryo_upvr.Dictionary.join(arg1, {
			open = false;
			emotesOpen = arg2.open;
		})
	end;
	[require(Actions.SetEmotesEnabled).name] = function(arg1, arg2) -- Line 43
		--[[ Upvalues[1]:
			[1]: Cryo_upvr (readonly)
		]]
		return Cryo_upvr.Dictionary.join(arg1, {
			emotesEnabled = arg2.enabled;
		})
	end;
	[require(Actions.SetLeaderboardOpen).name] = function(arg1, arg2) -- Line 49
		--[[ Upvalues[1]:
			[1]: Cryo_upvr (readonly)
		]]
		return Cryo_upvr.Dictionary.join(arg1, {
			open = false;
			leaderboardOpen = arg2.open;
		})
	end;
})