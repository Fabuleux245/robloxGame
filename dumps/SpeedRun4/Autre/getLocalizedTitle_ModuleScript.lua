-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:08:43
-- Luau version 6, Types version 3
-- Time taken: 0.000798 seconds

local Parent = script:FindFirstAncestor("GenericChallenges").Parent
local localizeStrings_upvr = require(Parent.Localization).localizeStrings
local Localization_upvr = require(Parent.RobloxAppLocales).Localization
local LocalizationService_upvr = game:GetService("LocalizationService")
return function(arg1) -- Line 10
	--[[ Upvalues[3]:
		[1]: localizeStrings_upvr (readonly)
		[2]: Localization_upvr (readonly)
		[3]: LocalizationService_upvr (readonly)
	]]
	local var6 = "Feature.AccountSettings.Heading.Tab.Security"
	if arg1 ~= nil then
		var6 = arg1
	end
	return localizeStrings_upvr(Localization_upvr.new(LocalizationService_upvr.RobloxLocaleId), {
		title = var6;
	}).title
end