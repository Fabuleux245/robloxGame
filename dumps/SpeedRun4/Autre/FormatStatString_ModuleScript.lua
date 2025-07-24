-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:48:29
-- Luau version 6, Types version 3
-- Time taken: 0.000782 seconds

local CorePackages = game:GetService("CorePackages")
local NumberLocalization_upvr = require(CorePackages.Workspace.Packages.Localization).NumberLocalization
local LocalizationService_upvr = game:GetService("LocalizationService")
local RoundingBehaviour_upvr = require(CorePackages.Workspace.Packages.Localization).RoundingBehaviour
return function(arg1) -- Line 9
	--[[ Upvalues[3]:
		[1]: NumberLocalization_upvr (readonly)
		[2]: LocalizationService_upvr (readonly)
		[3]: RoundingBehaviour_upvr (readonly)
	]]
	if arg1 == nil then
		return '-'
	end
	local type_result1 = type(arg1)
	if type_result1 == "number" then
		if 7 > tostring(arg1):len() then
			type_result1 = false
		else
			type_result1 = true
		end
		if type_result1 then
			return NumberLocalization_upvr.abbreviate(arg1, LocalizationService_upvr.RobloxLocaleId, RoundingBehaviour_upvr.Truncate)
		end
		return NumberLocalization_upvr.localize(arg1, LocalizationService_upvr.RobloxLocaleId)
	end
	return tostring(arg1)
end