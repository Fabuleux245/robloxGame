-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:34:44
-- Luau version 6, Types version 3
-- Time taken: 0.002194 seconds

local Parent = script:FindFirstAncestor("VerifiedParentalConsentDialog").Parent
local UIBlox = require(Parent.UIBlox)
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local React_upvr = require(Parent.React)
local InteractiveAlert_upvr = UIBlox.App.Dialog.Alert.InteractiveAlert
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
return function(arg1) -- Line 21, Named "AlertPrompt"
	--[[ Upvalues[4]:
		[1]: useLocalization_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: InteractiveAlert_upvr (readonly)
		[4]: ButtonType_upvr (readonly)
	]]
	local module = {
		title = arg1.title;
		titleIcon = arg1.titleIcon;
		bodyText = arg1.bodyText;
	}
	local tbl_2 = {}
	local var3_result1_upvr = useLocalization_upvr({
		GoToSettings = "Common.VerifiedParentalConsent.Action.GoToSettings";
		Cancel = "Common.VerifiedParentalConsent.Action.Cancel";
		Close = "Common.VerifiedParentalConsent.Action.Close";
	})
	tbl_2.buttons = (function() -- Line 33
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: ButtonType_upvr (copied, readonly)
			[3]: var3_result1_upvr (readonly)
		]]
		if arg1.isActionable then
			local module_2 = {}
			local tbl = {}
			local var14 = ButtonType_upvr
			tbl.buttonType = var14.PrimarySystem
			local tbl_3 = {}
			if arg1.onAction then
				var14 = arg1.onAction
			else
				var14 = arg1.onDismiss
			end
			tbl_3.onActivated = var14
			tbl_3.text = var3_result1_upvr.GoToSettings
			tbl.props = tbl_3
			module_2[1] = tbl
			module_2[2] = {
				props = {
					onActivated = arg1.onDismiss;
					text = var3_result1_upvr.Cancel;
				};
			}
			return module_2
		end
		return {{
			props = {
				onActivated = arg1.onDismiss;
				text = var3_result1_upvr.Close;
			};
		}}
	end)()
	module.buttonStackInfo = tbl_2
	module.position = UDim2.fromScale(0.5, 0.5)
	module.screenSize = arg1.screenSize
	module.middleContent = arg1.middleContent
	return React_upvr.createElement(InteractiveAlert_upvr, module)
end