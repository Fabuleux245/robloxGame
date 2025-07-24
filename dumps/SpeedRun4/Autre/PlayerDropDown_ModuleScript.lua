-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:48:36
-- Luau version 6, Types version 3
-- Time taken: 0.000978 seconds

local Actions = script.Parent.Parent.Actions
return require(game:GetService("CorePackages").Packages.Rodux).createReducer({
	isVisible = false;
	selectedPlayer = nil;
}, {
	[require(Actions.SetPlayerListVisibility).name] = function(arg1, arg2) -- Line 18
		if not arg2.isVisible then
			return {
				isVisible = false;
				selectedPlayer = arg1.selectedPlayer;
			}
		end
		return arg1
	end;
	[require(Actions.OpenPlayerDropDown).name] = function(arg1, arg2) -- Line 28
		return {
			isVisible = true;
			selectedPlayer = arg2.selectedPlayer;
		}
	end;
	[require(Actions.ClosePlayerDropDown).name] = function(arg1, arg2) -- Line 35
		return {
			isVisible = false;
			selectedPlayer = arg1.selectedPlayer;
		}
	end;
	[require(Actions.RemovePlayer).name] = function(arg1, arg2) -- Line 42
		if arg2.player == arg1.selectedPlayer then
			return {
				isVisible = false;
				selectedPlayer = nil;
			}
		end
		return arg1
	end;
})