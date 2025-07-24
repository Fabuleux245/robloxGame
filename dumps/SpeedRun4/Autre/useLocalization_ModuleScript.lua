-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:14:12
-- Luau version 6, Types version 3
-- Time taken: 0.001339 seconds

local Localization = script:FindFirstAncestor("Localization")
local Parent = Localization.Parent
local React_upvr = require(Parent.React)
local LocalizationRoactContext_upvr = require(Localization.LocalizationRoactContext)
local LocalizationService_upvr = game:GetService("LocalizationService")
local useSignal_upvr = require(Parent.RoactUtils).Hooks.useSignal
local ArgCheck_upvr = require(Parent.ArgCheck)
local localizeStrings_upvr = require(Localization.localizeStrings)
local RobloxLocaleIdKey_upvr = require(Localization.RobloxLocaleIdKey)
return function(arg1) -- Line 17, Named "useLocalization"
	--[[ Upvalues[7]:
		[1]: React_upvr (readonly)
		[2]: LocalizationRoactContext_upvr (readonly)
		[3]: LocalizationService_upvr (readonly)
		[4]: useSignal_upvr (readonly)
		[5]: ArgCheck_upvr (readonly)
		[6]: localizeStrings_upvr (readonly)
		[7]: RobloxLocaleIdKey_upvr (readonly)
	]]
	local any_useContext_result1_upvr = React_upvr.useContext(LocalizationRoactContext_upvr)
	local any_useState_result1_upvr, any_useState_result2_upvr = React_upvr.useState(LocalizationService_upvr.RobloxLocaleId)
	useSignal_upvr(any_useContext_result1_upvr.changed, React_upvr.useCallback(function(arg1_2) -- Line 22
		--[[ Upvalues[3]:
			[1]: any_useContext_result1_upvr (readonly)
			[2]: any_useState_result1_upvr (readonly)
			[3]: any_useState_result2_upvr (readonly)
		]]
		local any_GetLocale_result1 = any_useContext_result1_upvr:GetLocale()
		if any_GetLocale_result1 ~= any_useState_result1_upvr then
			any_useState_result2_upvr(any_GetLocale_result1)
		end
	end, {any_useContext_result1_upvr}))
	ArgCheck_upvr.isType(arg1, "table", "LocalizationConsumer.props.stringsToBeLocalized")
	local localizeStrings_upvr_result1 = localizeStrings_upvr(any_useContext_result1_upvr, arg1)
	localizeStrings_upvr_result1[RobloxLocaleIdKey_upvr] = any_useState_result1_upvr
	return localizeStrings_upvr_result1
end