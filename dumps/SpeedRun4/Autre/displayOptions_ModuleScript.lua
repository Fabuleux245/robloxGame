-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:00:34
-- Luau version 6, Types version 3
-- Time taken: 0.001134 seconds

local CorePackages = game:GetService("CorePackages")
local Cryo_upvr = require(CorePackages.Packages.Cryo)
local Actions = script.Parent.Parent.Actions
return require(CorePackages.Packages.Rodux).createReducer({
	menuVisible = false;
	guiInset = 0;
	errorVisible = false;
	errorText = "";
}, {
	[require(Actions.ShowMenu).name] = function(arg1, arg2) -- Line 30
		--[[ Upvalues[1]:
			[1]: Cryo_upvr (readonly)
		]]
		return Cryo_upvr.Dictionary.join(arg1, {
			menuVisible = true;
		})
	end;
	[require(Actions.HideMenu).name] = function(arg1, arg2) -- Line 36
		--[[ Upvalues[1]:
			[1]: Cryo_upvr (readonly)
		]]
		return Cryo_upvr.Dictionary.join(arg1, {
			menuVisible = false;
		})
	end;
	[require(Actions.ShowError).name] = function(arg1, arg2) -- Line 42
		--[[ Upvalues[1]:
			[1]: Cryo_upvr (readonly)
		]]
		return Cryo_upvr.Dictionary.join(arg1, {
			errorVisible = true;
			errorText = arg2.errorText;
		})
	end;
	[require(Actions.HideError).name] = function(arg1, arg2) -- Line 49
		--[[ Upvalues[1]:
			[1]: Cryo_upvr (readonly)
		]]
		return Cryo_upvr.Dictionary.join(arg1, {
			errorVisible = false;
		})
	end;
	[require(Actions.SetGuiInset).name] = function(arg1, arg2) -- Line 55
		--[[ Upvalues[1]:
			[1]: Cryo_upvr (readonly)
		]]
		return Cryo_upvr.Dictionary.join(arg1, {
			guiInset = arg2.guiInset;
		})
	end;
})