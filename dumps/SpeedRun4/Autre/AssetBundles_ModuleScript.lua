-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:52:08
-- Luau version 6, Types version 3
-- Time taken: 0.000730 seconds

local CorePackages = game:GetService("CorePackages")
local module = {}
local Cryo_upvr = require(CorePackages.Packages.Cryo)
module[require(script.Parent.Parent.Actions.SetAssetToBundlesMapping).name] = function(arg1, arg2) -- Line 19
	--[[ Upvalues[1]:
		[1]: Cryo_upvr (readonly)
	]]
	return Cryo_upvr.Dictionary.join(arg1, {
		[tostring(arg2.assetId)] = arg2.bundleIds;
	})
end
return require(CorePackages.Packages.Rodux).createReducer({}, module)