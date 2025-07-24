-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:19:24
-- Luau version 6, Types version 3
-- Time taken: 0.000353 seconds

local AppStartup = script:FindFirstAncestor("AppStartup")
return require(AppStartup.Parent.Rodux).createReducer(nil, {
	[require(AppStartup.Actions.SetLaunchContext).name] = function(arg1, arg2) -- Line 8
		return arg2.launchContext
	end;
})