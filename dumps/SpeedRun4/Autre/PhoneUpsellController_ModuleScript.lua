-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:16:33
-- Luau version 6, Types version 3
-- Time taken: 0.003430 seconds

local PhoneUpsell = script:FindFirstAncestor("PhoneUpsell")
local Parent = PhoneUpsell.Parent
local React_upvr = require(Parent.React)
local UIBlox = require(Parent.UIBlox)
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local useStyle_upvr = UIBlox.Core.Style.useStyle
local Toast_upvr = UIBlox.App.Dialog.Toast
local Images_upvr = UIBlox.App.ImageSet.Images
local function var5_upvr(arg1) -- Line 31
	--[[ Upvalues[5]:
		[1]: useLocalization_upvr (readonly)
		[2]: useStyle_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: Toast_upvr (readonly)
		[5]: Images_upvr (readonly)
	]]
	return React_upvr.createElement(React_upvr.Fragment, {}, {
		PhoneToast = React_upvr.createElement(Toast_upvr, {
			toastContent = {
				iconColorStyle = {
					Color = useStyle_upvr().Tokens.Global.Color.Green.Color3;
					Transparency = 0;
				};
				iconImage = Images_upvr["icons/status/success_large"];
				toastTitle = useLocalization_upvr({
					titleKey = "Feature.VerificationUpsell.Heading.PhoneNumberVerified";
				}).titleKey;
				onDismissed = arg1.onDismissed;
			};
			duration = 3;
		});
	})
end
local var16_upvw
local getFFlagUseCoreGuiGetService_upvr = require(Parent.SharedFlags).getFFlagUseCoreGuiGetService
local ReactRoblox_upvr = require(Parent.ReactRoblox)
local OpenModal_upvr = require(Parent.NotificationModalsManager).OpenModal
local InGameContainer_upvr = require(PhoneUpsell.Components.InGameContainer)
local InGameUpsellContainer_upvr = require(PhoneUpsell.Components.InGame.InGameUpsellContainer)
local Cryo_upvr = require(Parent.Cryo)
local CloseModal_upvr = require(Parent.NotificationModalsManager).CloseModal
local LocalizationProvider_upvr = require(Parent.Localization).LocalizationProvider
local Localization_upvr = require(Parent.RobloxAppLocales).Localization
local LocalizationService_upvr = game:GetService("LocalizationService")
local StyleProviderWithDefaultTheme_upvr = require(Parent.Style).StyleProviderWithDefaultTheme
local GetFFlagNotificationModalSetMenuIsOpen_upvr = require(Parent.SharedFlags).GetFFlagNotificationModalSetMenuIsOpen
return {
	openPhoneUpsell = function(arg1) -- Line 56
		--[[ Upvalues[15]:
			[1]: var16_upvw (read and write)
			[2]: getFFlagUseCoreGuiGetService_upvr (readonly)
			[3]: ReactRoblox_upvr (readonly)
			[4]: OpenModal_upvr (readonly)
			[5]: InGameContainer_upvr (readonly)
			[6]: React_upvr (readonly)
			[7]: InGameUpsellContainer_upvr (readonly)
			[8]: Cryo_upvr (readonly)
			[9]: CloseModal_upvr (readonly)
			[10]: LocalizationProvider_upvr (readonly)
			[11]: Localization_upvr (readonly)
			[12]: LocalizationService_upvr (readonly)
			[13]: StyleProviderWithDefaultTheme_upvr (readonly)
			[14]: var5_upvr (readonly)
			[15]: GetFFlagNotificationModalSetMenuIsOpen_upvr (readonly)
		]]
		if var16_upvw == nil then
			local Folder = Instance.new("Folder")
			local var30 = "PhoneUpsellToasts"
			Folder.Name = var30
			if getFFlagUseCoreGuiGetService_upvr() then
				var30 = game:GetService("CoreGui")
			else
				var30 = game.CoreGui
			end
			Folder.Parent = var30
			var16_upvw = ReactRoblox_upvr.createRoot(Folder)
		end
		OpenModal_upvr("PHONE_UPSELL_KEY", InGameContainer_upvr, {
			Props = {
				children = React_upvr.createElement(InGameUpsellContainer_upvr, Cryo_upvr.Dictionary.join(arg1, {
					closeUpsell = function() -- Line 68, Named "closeUpsell"
						--[[ Upvalues[2]:
							[1]: CloseModal_upvr (copied, readonly)
							[2]: arg1 (readonly)
						]]
						CloseModal_upvr("PHONE_UPSELL_KEY")
						if arg1.closeUpsell then
							arg1.closeUpsell()
						end
					end;
					onSuccess = function() -- Line 74, Named "onSuccess"
						--[[ Upvalues[9]:
							[1]: CloseModal_upvr (copied, readonly)
							[2]: arg1 (readonly)
							[3]: var16_upvw (copied, read and write)
							[4]: React_upvr (copied, readonly)
							[5]: LocalizationProvider_upvr (copied, readonly)
							[6]: Localization_upvr (copied, readonly)
							[7]: LocalizationService_upvr (copied, readonly)
							[8]: StyleProviderWithDefaultTheme_upvr (copied, readonly)
							[9]: var5_upvr (copied, readonly)
						]]
						CloseModal_upvr("PHONE_UPSELL_KEY")
						if arg1.onSuccessBeforeToast then
							arg1.onSuccessBeforeToast()
						end
						var16_upvw:render(React_upvr.createElement("ScreenGui", {
							IgnoreGuiInset = true;
							ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
							ResetOnSpawn = false;
							DisplayOrder = 0;
							Enabled = true;
						}, {
							ContainerFrame = React_upvr.createElement("Frame", {
								BackgroundTransparency = 1;
								Size = UDim2.new(1, 0, 1, 0);
							}, {
								LocalizationProvider = React_upvr.createElement(LocalizationProvider_upvr, {
									localization = Localization_upvr.new(LocalizationService_upvr.RobloxLocaleId);
								}, {
									StyleProvider = React_upvr.createElement(StyleProviderWithDefaultTheme_upvr, {}, {
										Frame = React_upvr.createElement("Frame", {
											BackgroundTransparency = 1;
											Size = UDim2.new(1, 0, 1, 0);
										}, {
											Toast = React_upvr.createElement(var5_upvr, {
												onDismissed = function() -- Line 99, Named "onDismissed"
													--[[ Upvalues[2]:
														[1]: arg1 (copied, readonly)
														[2]: var16_upvw (copied, read and write)
													]]
													if arg1.onSuccess then
														arg1.onSuccess()
													end
													var16_upvw:unmount()
												end;
											}, {});
										});
									});
								});
							});
						}))
					end;
				}));
			};
			DisableBackgroundDismiss = true;
			BlockNonCoreUserInput = GetFFlagNotificationModalSetMenuIsOpen_upvr();
		})
	end;
}