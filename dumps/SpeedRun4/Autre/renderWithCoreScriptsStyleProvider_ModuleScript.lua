-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:04:22
-- Luau version 6, Types version 3
-- Time taken: 0.000570 seconds

local CorePackages = game:GetService("CorePackages")
local React_upvr = require(CorePackages.Packages.React)
local StyleProviderWithDefaultTheme_upvr = require(CorePackages.Workspace.Packages.Style).StyleProviderWithDefaultTheme
return function(arg1, arg2) -- Line 7
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: StyleProviderWithDefaultTheme_upvr (readonly)
	]]
	local module = {}
	local var6
	if arg2 then
		var6 = arg2.withUiModeSupport
	else
		var6 = false
	end
	module.withUiModeSupport = var6
	if arg2 then
		var6 = arg2.withDarkTheme
	else
		var6 = true
	end
	module.withDarkTheme = var6
	var6 = arg1
	return React_upvr.createElement(StyleProviderWithDefaultTheme_upvr, module, var6)
end