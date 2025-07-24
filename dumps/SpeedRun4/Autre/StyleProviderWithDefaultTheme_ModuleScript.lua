-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:31:45
-- Luau version 6, Types version 3
-- Time taken: 0.001313 seconds

local Style = script:FindFirstAncestor("Style")
local Parent = Style.Parent
local UIBlox = require(Parent.UIBlox)
local Foundation = require(Parent.Foundation)
local tbl_upvr = {
	withUiModeSupport = true;
	withDarkTheme = true;
}
local Cryo_upvr = require(Parent.Cryo)
local useTokens_upvr = Foundation.Hooks.useTokens
local React_upvr = require(Parent.React)
local UiModeStyleProvider_upvr = require(Style.UiModeStyleProvider)
local AppStyleProvider_upvr = UIBlox.App.Style.AppStyleProvider
local Constants_upvr = UIBlox.App.Style.Constants
local FoundationProvider_upvr = Foundation.FoundationProvider
local Theme_upvr = Foundation.Enums.Theme
return function(arg1) -- Line 35
	--[[ Upvalues[9]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: useTokens_upvr (readonly)
		[4]: React_upvr (readonly)
		[5]: UiModeStyleProvider_upvr (readonly)
		[6]: AppStyleProvider_upvr (readonly)
		[7]: Constants_upvr (readonly)
		[8]: FoundationProvider_upvr (readonly)
		[9]: Theme_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 29 start (CF ANALYSIS FAILED)
	local any_join_result1 = Cryo_upvr.Dictionary.join(tbl_upvr, arg1)
	local var16
	if useTokens_upvr().Config == nil then
		var16 = false
	else
		var16 = true
	end
	if arg1.withUiModeSupport then
		-- KONSTANTWARNING: GOTO [25] #20
	end
	-- KONSTANTERROR: [0] 1. Error Block 29 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [24] 19. Error Block 34 start (CF ANALYSIS FAILED)
	local var17
	local tbl_2 = {}
	local tbl = {}
	if any_join_result1.withDarkTheme then
		var17 = Constants_upvr.ThemeName.Dark
	else
		var17 = Constants_upvr.ThemeName.Light
	end
	tbl.themeName = var17
	var17 = Constants_upvr.FontName.Gotham
	tbl.fontName = var17
	tbl_2.style = tbl
	local any_createElement_result1 = React_upvr.createElement(AppStyleProvider_upvr, tbl_2, any_join_result1.children)
	if not arg1.withUiModeSupport and not var16 then
		local module = {}
		if any_join_result1.withDarkTheme then
			var17 = Theme_upvr.Dark
		else
			var17 = Theme_upvr.Light
		end
		module.theme = var17
		var17 = any_createElement_result1
		return React_upvr.createElement(FoundationProvider_upvr, module, var17)
	end
	do
		return any_createElement_result1
	end
	-- KONSTANTERROR: [24] 19. Error Block 34 end (CF ANALYSIS FAILED)
end