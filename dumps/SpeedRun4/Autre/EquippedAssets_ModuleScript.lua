-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:52:12
-- Luau version 6, Types version 3
-- Time taken: 0.000819 seconds

return require(game:GetService("CorePackages").Packages.Rodux).createReducer({}, {
	[require(script.Parent.Parent.Actions.SetEquippedAssets).name] = function(arg1, arg2) -- Line 11
		local module = {}
		for _, v in ipairs(arg2.equippedAssets) do
			module[tostring(v.assetId)] = true
		end
		return module
	end;
})