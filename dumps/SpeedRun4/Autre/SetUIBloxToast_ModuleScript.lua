-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:38:08
-- Luau version 6, Types version 3
-- Time taken: 0.001233 seconds

local Parent = script.Parent.Parent
local React_upvr = require(Parent.React)
local LocalizationProvider_upvr = require(Parent.Localization).LocalizationProvider
local Localization_upvr = require(Parent.InExperienceLocales).Localization
local LocalizationService_upvr = game:GetService("LocalizationService")
local StyleProviderWithDefaultTheme_upvr = require(Parent.Style).StyleProviderWithDefaultTheme
local Toast_upvr = require(Parent.UIBlox).App.Dialog.Toast
local function var3_upvr(arg1) -- Line 18
	--[[ Upvalues[6]:
		[1]: React_upvr (readonly)
		[2]: LocalizationProvider_upvr (readonly)
		[3]: Localization_upvr (readonly)
		[4]: LocalizationService_upvr (readonly)
		[5]: StyleProviderWithDefaultTheme_upvr (readonly)
		[6]: Toast_upvr (readonly)
	]]
	local module = {}
	local tbl = {}
	local tbl_2 = {}
	local tbl_3 = {
		duration = 3;
	}
	tbl_3.toastContent = arg1
	tbl_2.Toast = React_upvr.createElement(Toast_upvr, tbl_3)
	tbl.ToastWrapper = React_upvr.createElement("ScreenGui", {
		IgnoreGuiInset = true;
		ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
		ResetOnSpawn = false;
		DisplayOrder = 7;
	}, tbl_2)
	module.StyleProvider = React_upvr.createElement(StyleProviderWithDefaultTheme_upvr, {}, tbl)
	return React_upvr.createElement(LocalizationProvider_upvr, {
		localization = Localization_upvr.new(LocalizationService_upvr.RobloxLocaleId);
	}, module)
end
local var16_upvw
local getFFlagUseCoreGuiGetService_upvr = require(Parent.SharedFlags).getFFlagUseCoreGuiGetService
local ReactRoblox_upvr = require(Parent.ReactRoblox)
return function(arg1) -- Line 38
	--[[ Upvalues[5]:
		[1]: var16_upvw (read and write)
		[2]: getFFlagUseCoreGuiGetService_upvr (readonly)
		[3]: ReactRoblox_upvr (readonly)
		[4]: React_upvr (readonly)
		[5]: var3_upvr (readonly)
	]]
	if not var16_upvw then
		local Folder = Instance.new("Folder")
		local var20 = "UIBloxToast"
		Folder.Name = var20
		if getFFlagUseCoreGuiGetService_upvr() then
			var20 = game:GetService("CoreGui")
		else
			var20 = game.CoreGui
		end
		Folder.Parent = var20
		var16_upvw = ReactRoblox_upvr.createRoot(Folder)
	end
	var16_upvw:render(React_upvr.createElement(var3_upvr, arg1))
end