-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:52:11
-- Luau version 6, Types version 3
-- Time taken: 0.000703 seconds

local CorePackages = game:GetService("CorePackages")
local module_2 = {}
local Cryo_upvr = require(CorePackages.Packages.Cryo)
module_2[require(script.Parent.Parent.Actions.SetExperienceInfo).name] = function(arg1, arg2) -- Line 12
	--[[ Upvalues[1]:
		[1]: Cryo_upvr (readonly)
	]]
	local experienceInfo = arg2.experienceInfo
	local universeId = experienceInfo.universeId
	local var7
	if universeId == nil then
		var7 = false
	else
		var7 = true
	end
	assert(var7, "Expected a universe id when setting an experiences's information.")
	local module = {}
	var7 = arg1[universeId]
	if not var7 then
		var7 = {}
	end
	module[universeId] = Cryo_upvr.Dictionary.join(var7, experienceInfo)
	return module
end
return require(CorePackages.Packages.Rodux).createReducer({}, module_2)