-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:14:11
-- Luau version 6, Types version 3
-- Time taken: 0.000903 seconds

local Localization = script:FindFirstAncestor("Localization")
local Parent = Localization.Parent
local React_upvr = require(Parent.React)
local LocalizationRoactContext_upvr = require(Localization.LocalizationRoactContext)
local LocalizationService_upvr = game:GetService("LocalizationService")
local useSignal_upvr = require(Parent.RoactUtils).Hooks.useSignal
local abbreviateCount_upvr = require(Localization.abbreviateCount)
local dependencyArray_upvr = require(Parent.RoactUtils).Hooks.dependencyArray
return function(arg1) -- Line 14, Named "useAbbreviatedNumberLocalization"
	--[[ Upvalues[6]:
		[1]: React_upvr (readonly)
		[2]: LocalizationRoactContext_upvr (readonly)
		[3]: LocalizationService_upvr (readonly)
		[4]: useSignal_upvr (readonly)
		[5]: abbreviateCount_upvr (readonly)
		[6]: dependencyArray_upvr (readonly)
	]]
	local any_useContext_result1_upvr = React_upvr.useContext(LocalizationRoactContext_upvr)
	local any_useState_result1_upvr, any_useState_result2_upvr = React_upvr.useState(LocalizationService_upvr.RobloxLocaleId)
	useSignal_upvr(any_useContext_result1_upvr.changed, React_upvr.useCallback(function(arg1_2) -- Line 19
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
	return React_upvr.useMemo(function() -- Line 28
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: abbreviateCount_upvr (copied, readonly)
			[3]: any_useState_result1_upvr (readonly)
		]]
		if arg1 == nil then
			return nil
		end
		return abbreviateCount_upvr(arg1, any_useState_result1_upvr)
	end, dependencyArray_upvr(arg1, any_useState_result1_upvr))
end