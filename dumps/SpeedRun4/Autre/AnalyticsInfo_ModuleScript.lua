-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:00:05
-- Luau version 6, Types version 3
-- Time taken: 0.000579 seconds

local CorePackages = game:GetService("CorePackages")
local Parent = script.Parent.Parent
local module = {}
local Cryo_upvr = require(CorePackages.Packages.Cryo)
module[require(Parent.Actions.AddAnalyticsInfo).name] = function(arg1, arg2) -- Line 18
	--[[ Upvalues[1]:
		[1]: Cryo_upvr (readonly)
	]]
	return Cryo_upvr.Dictionary.join(arg1, arg2.info)
end
module[require(Parent.Actions.CloseOpenPrompt).name] = function(arg1, arg2) -- Line 22
	return {}
end
return require(CorePackages.Packages.Rodux).createReducer({
	addedAssets = nil;
	removedAssets = nil;
}, module)