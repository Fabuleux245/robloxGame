-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:12:58
-- Luau version 6, Types version 3
-- Time taken: 0.005977 seconds

-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
local Parent = script.Parent
local Parent_3 = Parent.Parent.Parent
local Parent_2 = Parent_3.Parent
local var4
if not var4 then
	var4 = Parent_3:FindFirstAncestor("CorePackages")
	local var5_upvr
end
if var4 and var4:FindFirstChild("Dev") and var4.Dev:FindFirstChild("JestGlobals") then
	var5_upvr = pcall(require, var4.Dev.JestGlobals)
else
	var5_upvr = false
end
local Foundation = require(Parent_2.Foundation)
local Constants_upvr = require(Parent.Constants)
local Tokens = require(script.Parent.Tokens)
local tbl_2_upvr = {
	dark = Foundation.Enums.Theme.Dark;
	light = Foundation.Enums.Theme.Light;
}
local tbl_3_upvr = {
	themeName = Constants_upvr.DefaultThemeName;
	fontName = Constants_upvr.DefaultFontName;
	deviceType = Constants_upvr.DefaultDeviceType;
	settings = Constants_upvr.DefaultSettings;
}
local Object_upvr = require(Parent_2.LuauPolyfill).Object
local React_upvr = require(Parent_2.React)
local getTokens_upvr = Tokens.getTokens
local getThemeFromName_upvr = require(Parent.Themes.getThemeFromName)
local useTokens_upvr = Foundation.Hooks.useTokens
local UIBloxConfig_upvr = require(Parent_3.UIBloxConfig)
local getFoundationTokens_upvr = Tokens.getFoundationTokens
local Mappers_upvr = Tokens.Mappers
local validateTokens_upvr = Tokens.validateTokens
local getFontFromName_upvr = require(Parent.Fonts.getFontFromName)
local getTextSizeOffset_upvr = require(Parent_3.Utility.getTextSizeOffset)
local StyleContext_upvr = require(Parent_3.Core.Style.StyleContext)
local Roact_upvr = require(Parent_2.Roact)
local Logger_upvr = require(Parent_3.Logger)
local FoundationProvider_upvr = Foundation.FoundationProvider
return function(arg1) -- Line 84, Named "AppStyleProvider"
	--[[ Upvalues[19]:
		[1]: Object_upvr (readonly)
		[2]: tbl_3_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: getTokens_upvr (readonly)
		[5]: getThemeFromName_upvr (readonly)
		[6]: useTokens_upvr (readonly)
		[7]: UIBloxConfig_upvr (readonly)
		[8]: getFoundationTokens_upvr (readonly)
		[9]: Mappers_upvr (readonly)
		[10]: validateTokens_upvr (readonly)
		[11]: getFontFromName_upvr (readonly)
		[12]: Constants_upvr (readonly)
		[13]: getTextSizeOffset_upvr (readonly)
		[14]: StyleContext_upvr (readonly)
		[15]: Roact_upvr (readonly)
		[16]: var5_upvr (readonly)
		[17]: Logger_upvr (readonly)
		[18]: FoundationProvider_upvr (readonly)
		[19]: tbl_2_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local any_assign_result1_upvr = Object_upvr.assign({}, tbl_3_upvr, arg1.style)
	local any_useState_result1_upvr, any_useState_result2_upvr = React_upvr.useState(any_assign_result1_upvr.themeName)
	local settings = any_assign_result1_upvr.settings
	if settings then
		settings = any_assign_result1_upvr.settings.scale
	end
	local any_useState_result1, any_useState_result2_upvr_2 = React_upvr.useState(0)
	local var32 = any_useState_result1_upvr
	if useTokens_upvr().Config == nil then
		var32 = false
	else
		var32 = true
	end
	if UIBloxConfig_upvr.allowDisableColorMapping then
		if arg1.DONOTUSE_disableColorMapping ~= nil then
		else
		end
	end
	if UIBloxConfig_upvr.allowDisableColorMapping then
		if not false then
			local var17_result1 = getFoundationTokens_upvr(any_assign_result1_upvr.deviceType, any_useState_result1_upvr)
			local any_mapColorTokensToFoundation_result1 = Mappers_upvr.mapColorTokensToFoundation(getTokens_upvr(any_assign_result1_upvr.deviceType, any_useState_result1_upvr, settings), var17_result1)
			-- KONSTANTWARNING: GOTO [101] #79
		end
	else
		local getFoundationTokens_upvr_result1 = getFoundationTokens_upvr(any_assign_result1_upvr.deviceType, any_useState_result1_upvr)
	end
	assert(validateTokens_upvr(Mappers_upvr.mapColorTokensToFoundation(any_mapColorTokensToFoundation_result1, getFoundationTokens_upvr_result1)), "Invalid tokens!")
	local tbl = {}
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	local var20_result1 = getFontFromName_upvr(any_assign_result1_upvr.fontName, Mappers_upvr.mapColorTokensToFoundation(any_mapColorTokensToFoundation_result1, getFoundationTokens_upvr_result1))
	tbl.Font = var20_result1
	tbl.Theme = Mappers_upvr.mapThemeToFoundation(Mappers_upvr.mapThemeToFoundation(getThemeFromName_upvr(var32), var17_result1), getFoundationTokens_upvr_result1)
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	tbl.Tokens = Mappers_upvr.mapColorTokensToFoundation(any_mapColorTokensToFoundation_result1, getFoundationTokens_upvr_result1)
	if any_assign_result1_upvr.settings then
		var20_result1 = {}
		var20_result1.PreferredTransparency = any_assign_result1_upvr.settings.preferredTransparency
		var20_result1.ReducedMotion = any_assign_result1_upvr.settings.reducedMotion
		var20_result1.PreferredTextSize = any_assign_result1_upvr.settings.preferredTextSize
		var20_result1.Scale = any_assign_result1_upvr.settings.scale
	else
		var20_result1 = Constants_upvr.DefaultSettings
	end
	tbl.Settings = var20_result1
	local any_useRef_result1_upvr = React_upvr.useRef(false)
	React_upvr.useEffect(function() -- Line 129
		--[[ Upvalues[3]:
			[1]: any_useRef_result1_upvr (readonly)
			[2]: any_useState_result2_upvr (readonly)
			[3]: any_assign_result1_upvr (readonly)
		]]
		any_useRef_result1_upvr.current = true
		any_useState_result2_upvr(any_assign_result1_upvr.themeName)
		return function() -- Line 132
			--[[ Upvalues[1]:
				[1]: any_useRef_result1_upvr (copied, readonly)
			]]
			any_useRef_result1_upvr.current = false
		end
	end, {any_useRef_result1_upvr, any_assign_result1_upvr.themeName, any_useState_result2_upvr})
	local any_mapColorTokensToFoundation_result1_2_upvw = Mappers_upvr.mapColorTokensToFoundation(any_mapColorTokensToFoundation_result1, getFoundationTokens_upvr_result1)
	React_upvr.useEffect(function() -- Line 137
		--[[ Upvalues[3]:
			[1]: getTextSizeOffset_upvr (copied, readonly)
			[2]: any_mapColorTokensToFoundation_result1_2_upvw (read and write)
			[3]: any_useState_result2_upvr_2 (readonly)
		]]
		local var21_result1, getTextSizeOffset_upvr_result2 = getTextSizeOffset_upvr(any_mapColorTokensToFoundation_result1_2_upvw.Semantic.Typography.Body.Font)
		if var21_result1 then
			any_useState_result2_upvr_2(getTextSizeOffset_upvr_result2)
		end
	end, {any_assign_result1_upvr.settings.preferredTextSize})
	local any_createElement_result1 = React_upvr.createElement(StyleContext_upvr.Provider, {
		value = {
			style = tbl;
			updateTheme = React_upvr.useCallback(function(arg1_2, arg2) -- Line 144
				--[[ Upvalues[2]:
					[1]: any_useRef_result1_upvr (readonly)
					[2]: any_useState_result2_upvr (readonly)
				]]
				if any_useRef_result1_upvr.current then
					any_useState_result2_upvr(arg2)
				end
			end, {any_useRef_result1_upvr, any_useState_result2_upvr});
			derivedValues = {
				textSizeOffset = any_useState_result1;
			};
			styleMetadata = {
				ThemeName = React_upvr.useMemo(function() -- Line 150
					--[[ Upvalues[2]:
						[1]: any_useState_result1_upvr (readonly)
						[2]: Constants_upvr (copied, readonly)
					]]
					if any_useState_result1_upvr:lower() == Constants_upvr.ThemeName.Dark:lower() then
						return Constants_upvr.ThemeName.Dark
					end
					if any_useState_result1_upvr:lower() == Constants_upvr.ThemeName.Light:lower() then
						return Constants_upvr.ThemeName.Light
					end
					return Constants_upvr.DefaultThemeName
				end, {any_useState_result1_upvr});
			};
		};
	}, Roact_upvr.oneChild(arg1.children))
	if not var32 then
		if not var5_upvr and _G.__DEV__ then
			Logger_upvr:warning(debug.traceback("FoundationProvider not found. Please ensure that the FoundationProvider is present in the component tree."))
		end
		return React_upvr.createElement(FoundationProvider_upvr, {
			theme = tbl_2_upvr[any_useState_result1_upvr:lower()];
			device = any_assign_result1_upvr.deviceType;
			preferences = any_assign_result1_upvr.settings;
		}, any_createElement_result1)
	end
	return any_createElement_result1
end