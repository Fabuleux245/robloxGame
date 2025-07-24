-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:35:35
-- Luau version 6, Types version 3
-- Time taken: 0.002166 seconds

local GenericAbuseReporting = script:FindFirstAncestor("GenericAbuseReporting")
local React_upvr = require(GenericAbuseReporting.Parent.React)
local DefaultLocalizationKeys_upvr = require(GenericAbuseReporting.LocalizationKeys.DefaultLocalizationKeys)
local LocalizationKeysContext_upvr = require(GenericAbuseReporting.LocalizationKeys.LocalizationKeysContext)
return function(arg1) -- Line 25, Named "LocalizationKeysProvider"
	--[[ Upvalues[3]:
		[1]: React_upvr (readonly)
		[2]: DefaultLocalizationKeys_upvr (readonly)
		[3]: LocalizationKeysContext_upvr (readonly)
	]]
	return React_upvr.createElement(LocalizationKeysContext_upvr.Provider, {
		value = React_upvr.useMemo(function() -- Line 26
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: DefaultLocalizationKeys_upvr (copied, readonly)
			]]
			local localizationKeys = arg1.localizationKeys
			local module = {}
			local var8
			local function INLINED() -- Internal function, doesn't exist in bytecode
				var8 = localizationKeys.formTitle
				return var8
			end
			if not localizationKeys or not INLINED() then
				var8 = DefaultLocalizationKeys_upvr.formTitle
			end
			module.formTitle = var8
			local function INLINED_2() -- Internal function, doesn't exist in bytecode
				var8 = localizationKeys.formSubmit
				return var8
			end
			if not localizationKeys or not INLINED_2() then
				var8 = DefaultLocalizationKeys_upvr.formSubmit
			end
			module.formSubmit = var8
			local function INLINED_3() -- Internal function, doesn't exist in bytecode
				var8 = localizationKeys.completeTitle
				return var8
			end
			if not localizationKeys or not INLINED_3() then
				var8 = DefaultLocalizationKeys_upvr.completeTitle
			end
			module.completeTitle = var8
			local function INLINED_4() -- Internal function, doesn't exist in bytecode
				var8 = localizationKeys.completeDescription
				return var8
			end
			if not localizationKeys or not INLINED_4() then
				var8 = DefaultLocalizationKeys_upvr.completeDescription
			end
			module.completeDescription = var8
			local function INLINED_5() -- Internal function, doesn't exist in bytecode
				var8 = localizationKeys.completeClose
				return var8
			end
			if not localizationKeys or not INLINED_5() then
				var8 = DefaultLocalizationKeys_upvr.completeClose
			end
			module.completeClose = var8
			local function INLINED_6() -- Internal function, doesn't exist in bytecode
				var8 = localizationKeys.failedTitle
				return var8
			end
			if not localizationKeys or not INLINED_6() then
				var8 = DefaultLocalizationKeys_upvr.failedTitle
			end
			module.failedTitle = var8
			local function INLINED_7() -- Internal function, doesn't exist in bytecode
				var8 = localizationKeys.failedDescription
				return var8
			end
			if not localizationKeys or not INLINED_7() then
				var8 = DefaultLocalizationKeys_upvr.failedDescription
			end
			module.failedDescription = var8
			local function INLINED_8() -- Internal function, doesn't exist in bytecode
				var8 = localizationKeys.failedClose
				return var8
			end
			if not localizationKeys or not INLINED_8() then
				var8 = DefaultLocalizationKeys_upvr.failedClose
			end
			module.failedClose = var8
			return module
		end, {arg1.localizationKeys});
	}, arg1.children)
end