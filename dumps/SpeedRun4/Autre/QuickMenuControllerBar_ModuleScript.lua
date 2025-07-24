-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:46:29
-- Luau version 6, Types version 3
-- Time taken: 0.002477 seconds

local CorePackages = game:GetService("CorePackages")
local CoreGui_upvr = game:GetService("CoreGui")
local tbl_upvr = {
	back = "CoreScripts.TopBar.Back";
	leave = "CoreScripts.TopBar.Leave";
	respawn = "CoreScripts.TopBar.Respawn";
	showChat = "CoreScripts.TopBar.ShowChat";
	hideChat = "CoreScripts.TopBar.HideChat";
}
local TenFootInterfaceExpChatExperimentation_upvr = require(CorePackages.Workspace.Packages.SocialExperiments).TenFootInterfaceExpChatExperimentation
local Localization_upvr = require(CorePackages.Workspace.Packages.InExperienceLocales).Localization
local LocalizationService_upvr = game:GetService("LocalizationService")
local React_upvr = require(CorePackages.Packages.React)
local useSelector_upvr = require(CorePackages.Workspace.Packages.RoactUtils).Hooks.RoactRodux.useSelector
local Roact_upvr = require(CorePackages.Packages.Roact)
local InGameMenuConstants_upvr = require(CoreGui_upvr:WaitForChild("RobloxGui").Modules.InGameMenuConstants)
local ControllerBar_upvr = require(CorePackages.Packages.UIBlox).App.Bar.ControllerBar
local RobloxTranslator_upvr = require(CorePackages.Workspace.Packages.RobloxTranslator)
return function(arg1) -- Line 30, Named "QuickMenuControllerBar"
	--[[ Upvalues[11]:
		[1]: TenFootInterfaceExpChatExperimentation_upvr (readonly)
		[2]: Localization_upvr (readonly)
		[3]: LocalizationService_upvr (readonly)
		[4]: tbl_upvr (readonly)
		[5]: React_upvr (readonly)
		[6]: useSelector_upvr (readonly)
		[7]: Roact_upvr (readonly)
		[8]: CoreGui_upvr (readonly)
		[9]: InGameMenuConstants_upvr (readonly)
		[10]: ControllerBar_upvr (readonly)
		[11]: RobloxTranslator_upvr (readonly)
	]]
	if TenFootInterfaceExpChatExperimentation_upvr.getIsEnabled() then
		local any_new_result1 = Localization_upvr.new(LocalizationService_upvr.RobloxLocaleId)
		local tbl = {{
			text = any_new_result1:Format(tbl_upvr.respawn);
			keyCode = Enum.KeyCode.ButtonY;
		}, {
			text = any_new_result1:Format(tbl_upvr.leave);
			keyCode = Enum.KeyCode.ButtonX;
		}}
		if arg1.chatMenuEnabled then
			local any_useCallback_result1 = React_upvr.useCallback(function(arg1_2) -- Line 48
				return arg1_2.chat.visible
			end)
			if useSelector_upvr(any_useCallback_result1) then
				any_useCallback_result1 = tbl_upvr.hideChat
			else
				any_useCallback_result1 = tbl_upvr.showChat
			end
			table.insert(tbl, 1, {
				text = any_new_result1:Format(any_useCallback_result1);
				keyCode = Enum.KeyCode.ButtonR1;
			})
		end
		return React_upvr.createElement(Roact_upvr.Portal, {
			target = CoreGui_upvr;
		}, {
			QuickMenuControllerBar = React_upvr.createElement("ScreenGui", {
				DisplayOrder = InGameMenuConstants_upvr.DisplayOrder.ControllerBar;
			}, {
				ControllerBar = React_upvr.createElement(ControllerBar_upvr, {
					leftHint = {
						text = any_new_result1:Format(tbl_upvr.back);
						keyCode = Enum.KeyCode.ButtonB;
					};
					rightHints = tbl;
				});
			});
		})
	end
	return Roact_upvr.createElement(Roact_upvr.Portal, {
		target = CoreGui_upvr;
	}, {
		QuickMenuControllerBar = Roact_upvr.createElement("ScreenGui", {
			DisplayOrder = InGameMenuConstants_upvr.DisplayOrder.ControllerBar;
		}, {
			ControllerBar = Roact_upvr.createElement(ControllerBar_upvr, {
				leftHint = {
					text = RobloxTranslator_upvr:FormatByKey(tbl_upvr.back);
					keyCode = Enum.KeyCode.ButtonB;
				};
				rightHints = {{
					text = RobloxTranslator_upvr:FormatByKey(tbl_upvr.respawn);
					keyCode = Enum.KeyCode.ButtonY;
				}, {
					text = RobloxTranslator_upvr:FormatByKey(tbl_upvr.leave);
					keyCode = Enum.KeyCode.ButtonX;
				}};
			});
		});
	})
end