-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:23:18
-- Luau version 6, Types version 3
-- Time taken: 0.001870 seconds

local ChatLineReporting = script:FindFirstAncestor("ChatLineReporting")
local Parent = ChatLineReporting.Parent
local Roact_upvr = require(Parent.Roact)
local var4_upvw
local function var5_upvr() -- Line 21
	--[[ Upvalues[2]:
		[1]: var4_upvw (read and write)
		[2]: Roact_upvr (readonly)
	]]
	if var4_upvw then
		Roact_upvr.unmount(var4_upvw)
	end
end
local React_upvr = require(Parent.React)
local LayerCollectorProvider_upvr = require(Parent.UIBlox).Core.Layout.LayerCollector.LayerCollectorProvider
local LocalizationProvider_upvr = require(Parent.Localization).LocalizationProvider
local Localization_upvr = require(Parent.InExperienceLocales).Localization
local LocalizationService_upvr = game:GetService("LocalizationService")
local FoundationProvider_upvr = require(Parent.Foundation).FoundationProvider
local StyleProviderWithDefaultTheme_upvr = require(Parent.Style).StyleProviderWithDefaultTheme
local ChatLineReportStepHandler_upvr = require(ChatLineReporting.Components.ChatLineReportStepHandler)
local CoreGui_upvr = game:GetService("CoreGui")
return {
	initialize = function(arg1) -- Line 27
		--[[ Upvalues[12]:
			[1]: React_upvr (readonly)
			[2]: LayerCollectorProvider_upvr (readonly)
			[3]: Roact_upvr (readonly)
			[4]: LocalizationProvider_upvr (readonly)
			[5]: Localization_upvr (readonly)
			[6]: LocalizationService_upvr (readonly)
			[7]: FoundationProvider_upvr (readonly)
			[8]: StyleProviderWithDefaultTheme_upvr (readonly)
			[9]: ChatLineReportStepHandler_upvr (readonly)
			[10]: var5_upvr (readonly)
			[11]: var4_upvw (read and write)
			[12]: CoreGui_upvr (readonly)
		]]
		local tbl_6 = {}
		local tbl_5 = {}
		local tbl_4 = {}
		local tbl = {}
		local tbl_3 = {}
		local tbl_2 = {
			unmount = var5_upvr;
		}
		tbl_2.messages = arg1
		tbl_3.ChatLineReportStepHandler = React_upvr.createElement(ChatLineReportStepHandler_upvr, tbl_2)
		tbl.StyleProvider = React_upvr.createElement(StyleProviderWithDefaultTheme_upvr, {
			withDarkTheme = true;
		}, tbl_3)
		tbl_4.FoundationProvider = React_upvr.createElement(FoundationProvider_upvr, {
			theme = "Dark";
		}, tbl)
		tbl_5.LocalizationProvider = Roact_upvr.createElement(LocalizationProvider_upvr, {
			localization = Localization_upvr.new(LocalizationService_upvr.RobloxLocaleId);
		}, tbl_4)
		tbl_6.LayerCollector = React_upvr.createElement(LayerCollectorProvider_upvr, {}, tbl_5)
		var4_upvw = Roact_upvr.mount(React_upvr.createElement("ScreenGui", {
			IgnoreGuiInset = true;
			OnTopOfCoreBlur = false;
			ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
		}, tbl_6), CoreGui_upvr, "ChatLineReportRoot")
	end;
}