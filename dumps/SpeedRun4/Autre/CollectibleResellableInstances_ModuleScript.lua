-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:52:10
-- Luau version 6, Types version 3
-- Time taken: 0.001057 seconds

local CorePackages = game:GetService("CorePackages")
local Parent = script.Parent.Parent
local module = {}
local CollectibleInstance_upvr = require(Parent.Models.CollectibleInstance)
local Cryo_upvr = require(CorePackages.Packages.Cryo)
module[require(Parent.Actions.SetCollectibleResellableInstances).name] = function(arg1, arg2) -- Line 13
	--[[ Upvalues[2]:
		[1]: CollectibleInstance_upvr (readonly)
		[2]: Cryo_upvr (readonly)
	]]
	local tbl = {}
	for _, v in arg2.collectibleItemInstances do
		local any_fromGetCollectibleItemInstances_result1 = CollectibleInstance_upvr.fromGetCollectibleItemInstances(v)
		tbl[any_fromGetCollectibleItemInstances_result1.collectibleInstanceId] = any_fromGetCollectibleItemInstances_result1
	end
	return Cryo_upvr.Dictionary.join(arg1, {
		[arg2.collectibleItemId] = tbl;
	})
end
return require(CorePackages.Packages.Rodux).createReducer({}, module)