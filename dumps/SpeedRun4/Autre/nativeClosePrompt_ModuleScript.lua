-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:54:25
-- Luau version 6, Types version 3
-- Time taken: 0.000905 seconds

local InGameMenuDependencies = require(game:GetService("CorePackages").Packages.InGameMenuDependencies)
local Cryo_upvr = InGameMenuDependencies.Cryo
local Parent = script.Parent.Parent
return InGameMenuDependencies.Rodux.createReducer({
	closingApp = false;
	menuIconTooltipOpen = false;
}, {
	[require(Parent.Actions.OpenNativeClosePrompt).name] = function(arg1, arg2) -- Line 17
		--[[ Upvalues[1]:
			[1]: Cryo_upvr (readonly)
		]]
		return Cryo_upvr.Dictionary.join(arg1, {
			closingApp = true;
		})
	end;
	[require(Parent.Actions.CloseNativeClosePrompt).name] = function(arg1, arg2) -- Line 22
		--[[ Upvalues[1]:
			[1]: Cryo_upvr (readonly)
		]]
		return Cryo_upvr.Dictionary.join(arg1, {
			closingApp = false;
		})
	end;
	[require(Parent.Actions.SetMenuIconTooltipOpen).name] = function(arg1, arg2) -- Line 27
		--[[ Upvalues[1]:
			[1]: Cryo_upvr (readonly)
		]]
		return Cryo_upvr.Dictionary.join(arg1, {
			menuIconTooltipOpen = arg2.menuIconTooltipOpen;
		})
	end;
})