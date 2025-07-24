-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:00:06
-- Luau version 6, Types version 3
-- Time taken: 0.000689 seconds

local CorePackages = game:GetService("CorePackages")
return require(CorePackages.Packages.Rodux).createReducer(require(CorePackages.Workspace.Packages.RobloxTranslator):FormatByKey("CoreScripts.AvatarEditorPrompts.GameNamePlaceHolder"), {
	[require(script.Parent.Parent.Actions.GameNameFetched).name] = function(arg1, arg2) -- Line 16
		return arg2.gameName
	end;
})