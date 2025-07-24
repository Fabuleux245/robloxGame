-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:50:36
-- Luau version 6, Types version 3
-- Time taken: 0.000566 seconds

local SetGamepadEnabled = script.Parent.Parent.Actions.SetGamepadEnabled
if game:GetService("UserInputService"):GetPlatform() ~= Enum.Platform.XBoxOne then
	SetGamepadEnabled = false
else
	SetGamepadEnabled = true
end
return require(game:GetService("CorePackages").Workspace.Packages.PurchasePromptDeps).Rodux.createReducer(SetGamepadEnabled, {
	[require(SetGamepadEnabled).name] = function(arg1, arg2) -- Line 13
		return arg2.enabled
	end;
})