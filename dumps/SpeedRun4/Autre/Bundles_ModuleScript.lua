-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:52:09
-- Luau version 6, Types version 3
-- Time taken: 0.001105 seconds

local CorePackages = game:GetService("CorePackages")
local Parent = script.Parent.Parent
local module_2 = {}
local Cryo_upvr = require(CorePackages.Packages.Cryo)
local BundleInfo_upvr = require(Parent.Models.BundleInfo)
module_2[require(Parent.Actions.SetBundles).name] = function(arg1, arg2) -- Line 20
	--[[ Upvalues[2]:
		[1]: Cryo_upvr (readonly)
		[2]: BundleInfo_upvr (readonly)
	]]
	local module = {}
	for _, v in ipairs(arg2.bundles) do
		local var15
		if v.bundleId == nil then
			var15 = false
		else
			var15 = true
		end
		assert(var15, "Expected a bundle id when setting a bundle's information.")
		var15 = v.bundleId
		local var16 = arg1[var15]
		if not var16 then
			var16 = {}
		end
		var15 = v.bundleId
		module[var15] = Cryo_upvr.Dictionary.join(var16, v)
		var15 = module[v.bundleId]
		if var15 then
			var15 = v.bundleId
			module[var15] = BundleInfo_upvr.getSaleDetailsForCollectibles(module[v.bundleId])
		end
	end
	return Cryo_upvr.Dictionary.join(arg1, module)
end
return require(CorePackages.Packages.Rodux).createReducer({}, module_2)