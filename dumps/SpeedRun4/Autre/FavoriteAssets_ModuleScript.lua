-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:52:12
-- Luau version 6, Types version 3
-- Time taken: 0.000441 seconds

local CorePackages = game:GetService("CorePackages")
local module = {}
local Cryo_upvr = require(CorePackages.Packages.Cryo)
module[require(script.Parent.Parent.Actions.SetFavoriteAsset).name] = function(arg1, arg2) -- Line 8
	--[[ Upvalues[1]:
		[1]: Cryo_upvr (readonly)
	]]
	return Cryo_upvr.Dictionary.join(arg1, {
		[arg2.id] = arg2.isFavorite;
	})
end
return require(CorePackages.Packages.Rodux).createReducer({}, module)