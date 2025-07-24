-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:54:26
-- Luau version 6, Types version 3
-- Time taken: 0.001790 seconds

local InGameMenuDependencies = require(game:GetService("CorePackages").Packages.InGameMenuDependencies)
local Cryo_upvr = InGameMenuDependencies.Cryo
local Parent = script.Parent.Parent
return InGameMenuDependencies.Rodux.createReducer({
	dialogOpen = false;
	enabled = true;
	customCallback = nil;
}, {
	[require(Parent.Actions.SetRespawning).name] = function(arg1, arg2) -- Line 20
		--[[ Upvalues[1]:
			[1]: Cryo_upvr (readonly)
		]]
		return Cryo_upvr.Dictionary.join(arg1, {
			dialogOpen = arg2.respawning;
		})
	end;
	[require(Parent.Actions.SetMenuOpen).name] = function(arg1, arg2) -- Line 25
		--[[ Upvalues[1]:
			[1]: Cryo_upvr (readonly)
		]]
		if not arg2.menuOpen then
			return Cryo_upvr.Dictionary.join(arg1, {
				dialogOpen = false;
			})
		end
		return arg1
	end;
	[require(Parent.Actions.SetCurrentPage).name] = function(arg1, arg2) -- Line 35
		--[[ Upvalues[1]:
			[1]: Cryo_upvr (readonly)
		]]
		return Cryo_upvr.Dictionary.join(arg1, {
			dialogOpen = false;
		})
	end;
	[require(Parent.Actions.SetRespawnBehavior).name] = function(arg1, arg2) -- Line 40
		local dialogOpen = arg1.dialogOpen
		if not arg2.respawnEnabled then
			dialogOpen = false
		end
		return {
			customCallback = arg2.customCallback;
			enabled = arg2.respawnEnabled;
			dialogOpen = dialogOpen;
		}
	end;
})