-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:28:36
-- Luau version 6, Types version 3
-- Time taken: 0.003485 seconds

local SocialContextToasts = script:FindFirstAncestor("SocialContextToasts")
local Parent = SocialContextToasts.Parent
local React_upvr = require(Parent.React)
local StyleProviderWithDefaultTheme_upvr = require(Parent.Style).StyleProviderWithDefaultTheme
local function _(arg1) -- Line 29, Named "renderWithStyleProvider"
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: StyleProviderWithDefaultTheme_upvr (readonly)
	]]
	return React_upvr.createElement(StyleProviderWithDefaultTheme_upvr, {}, arg1)
end
local CoreGui_upvr = game:GetService("CoreGui")
local ToastTypes_upvr = require(SocialContextToasts.Enums.ToastTypes)
local Rodux_upvr = require(Parent.Rodux)
local Cryo_upvr = require(Parent.Cryo)
local RoactRodux_upvr = require(Parent.RoactRodux)
local LocalizationProvider_upvr = require(Parent.Localization).LocalizationProvider
local Localization_upvr = require(Parent.RobloxAppLocales).Localization
local LocalizationService_upvr = game:GetService("LocalizationService")
local DisplayOrderEnum_upvr = require(Parent.DisplayOrder).DisplayOrderEnum
local SocialContextToastDispatcher_upvr = require(SocialContextToasts.SocialContextToastDispatcher)
local ToastRoot_upvr = require(SocialContextToasts.ToastRoot)
local GetFFlagSocialContextToastEventStream_upvr = require(Parent.SharedFlags).GetFFlagSocialContextToastEventStream
local ConfirmationModalRoot_upvr = require(SocialContextToasts.ConfirmationModalRoot)
local ReactRoblox_upvr = require(Parent.ReactRoblox)
return function(arg1, arg2, arg3) -- Line 33, Named "SocialContextToastContainer"
	--[[ Upvalues[16]:
		[1]: CoreGui_upvr (readonly)
		[2]: ToastTypes_upvr (readonly)
		[3]: Rodux_upvr (readonly)
		[4]: Cryo_upvr (readonly)
		[5]: React_upvr (readonly)
		[6]: RoactRodux_upvr (readonly)
		[7]: LocalizationProvider_upvr (readonly)
		[8]: Localization_upvr (readonly)
		[9]: LocalizationService_upvr (readonly)
		[10]: DisplayOrderEnum_upvr (readonly)
		[11]: SocialContextToastDispatcher_upvr (readonly)
		[12]: ToastRoot_upvr (readonly)
		[13]: GetFFlagSocialContextToastEventStream_upvr (readonly)
		[14]: ConfirmationModalRoot_upvr (readonly)
		[15]: StyleProviderWithDefaultTheme_upvr (readonly)
		[16]: ReactRoblox_upvr (readonly)
	]]
	local Folder = Instance.new("Folder")
	Folder.Name = "SocialContextToast"
	Folder.Parent = CoreGui_upvr
	local tbl_6 = {}
	local tbl = {}
	local tbl_5 = {}
	local tbl_2 = {}
	local tbl_4 = {}
	tbl_4.services = arg1
	tbl_4.gameId = arg2
	tbl_4.placeId = arg3
	tbl_2.ToastDispatcher = React_upvr.createElement(SocialContextToastDispatcher_upvr, tbl_4)
	local tbl_3 = {}
	local var36
	if GetFFlagSocialContextToastEventStream_upvr() then
		var36 = {}
		var36.eventIngest = arg1.eventIngest
		var36.gameId = arg2
		var36.placeId = arg3
	else
		var36 = nil
	end
	tbl_3.analyticsProps = var36
	tbl_2.ToastRoot = React_upvr.createElement(ToastRoot_upvr, tbl_3)
	tbl_2.ConfirmationModalRoot = React_upvr.createElement(ConfirmationModalRoot_upvr)
	tbl_5.SocialContextToastGUI = React_upvr.createElement("ScreenGui", {
		DisplayOrder = DisplayOrderEnum_upvr.SocialContextToastContainer;
		ScreenInsets = Enum.ScreenInsets.DeviceSafeInsets;
	}, tbl_2)
	tbl.LocalizationProvider = React_upvr.createElement(LocalizationProvider_upvr, {
		localization = Localization_upvr.new(LocalizationService_upvr.RobloxLocaleId);
	}, tbl_5)
	tbl_6.StyleProvider = React_upvr.createElement(StyleProviderWithDefaultTheme_upvr, {}, tbl)
	local any_createElement_result1 = React_upvr.createElement(RoactRodux_upvr.StoreProvider, {
		store = Rodux_upvr.Store.new(Rodux_upvr.createReducer({}, {
			SetToastContent = function(arg1_2, arg2_2) -- Line 50, Named "SetToastContent"
				--[[ Upvalues[1]:
					[1]: Cryo_upvr (copied, readonly)
				]]
				return Cryo_upvr.Dictionary.join(arg1_2, {
					ToastContent = arg2_2.toastContent;
				})
			end;
			SetConfirmationModal = function(arg1_3, arg2_3) -- Line 56, Named "SetConfirmationModal"
				--[[ Upvalues[1]:
					[1]: Cryo_upvr (copied, readonly)
				]]
				return Cryo_upvr.Dictionary.join(arg1_3, {
					ConfirmationModal = {
						isOpen = arg2_3.isConfirmationModalOpen;
						closeCallback = arg2_3.closeCallback;
					};
				})
			end;
		}), {
			ToastContent = {
				toastType = ToastTypes_upvr.None;
			};
		}, {Rodux_upvr.thunkMiddleware});
	}, tbl_6)
	ReactRoblox_upvr.createRoot(Folder):render(any_createElement_result1)
	return any_createElement_result1
end