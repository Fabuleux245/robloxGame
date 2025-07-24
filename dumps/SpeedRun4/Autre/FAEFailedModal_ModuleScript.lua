-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:17:11
-- Luau version 6, Types version 3
-- Time taken: 0.001464 seconds

local Parent = script:FindFirstAncestor("AmpUpsell").Parent
local UIBlox = require(Parent.UIBlox)
local useScreenSize_upvr = require(Parent.RobloxAppHooks).useScreenSize
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local React_upvr = require(Parent.React)
local authButtonClick_upvr = require(Parent.AuthAnalytics).Events.authButtonClick
local InteractiveAlert_upvr = UIBlox.App.Dialog.Alert.InteractiveAlert
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
return function(arg1) -- Line 24, Named "FAEFailedModal"
	--[[ Upvalues[6]:
		[1]: useScreenSize_upvr (readonly)
		[2]: useLocalization_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: authButtonClick_upvr (readonly)
		[5]: InteractiveAlert_upvr (readonly)
		[6]: ButtonType_upvr (readonly)
	]]
	local onClose_upvr = arg1.onClose
	local onRetry_upvr = arg1.onRetry
	local sessionId_upvr = arg1.sessionId
	local entryPointEventCtx_upvr = arg1.entryPointEventCtx
	local useLocalization_upvr_result1 = useLocalization_upvr({
		title = "Amp.FAEUpsell.Modal.Failed.Title";
		bodyText = "Amp.FAEUpsell.Modal.Failed.Text";
		closeBtn = "Amp.FAEUpsell.Modal.Failed.ButtonClose";
		retryBtn = "Amp.FAEUpsell.Modal.Failed.ButtonRetry";
	})
	return React_upvr.createElement(InteractiveAlert_upvr, {
		screenSize = useScreenSize_upvr();
		title = useLocalization_upvr_result1.title;
		bodyText = useLocalization_upvr_result1.bodyText;
		buttonStackInfo = {
			buttons = {{
				props = {
					buttonType = ButtonType_upvr.Secondary;
					onActivated = React_upvr.useCallback(function() -- Line 39
						--[[ Upvalues[4]:
							[1]: authButtonClick_upvr (copied, readonly)
							[2]: entryPointEventCtx_upvr (readonly)
							[3]: sessionId_upvr (readonly)
							[4]: onClose_upvr (readonly)
						]]
						authButtonClick_upvr(entryPointEventCtx_upvr, "faeFailedClose", sessionId_upvr)
						onClose_upvr()
					end, {onClose_upvr, sessionId_upvr, entryPointEventCtx_upvr});
					text = useLocalization_upvr_result1.closeBtn;
				};
			}, {
				buttonType = ButtonType_upvr.PrimaryContextual;
				props = {
					onActivated = React_upvr.useCallback(function() -- Line 44
						--[[ Upvalues[4]:
							[1]: authButtonClick_upvr (copied, readonly)
							[2]: entryPointEventCtx_upvr (readonly)
							[3]: sessionId_upvr (readonly)
							[4]: onRetry_upvr (readonly)
						]]
						authButtonClick_upvr(entryPointEventCtx_upvr, "faeFailedRetry", sessionId_upvr)
						onRetry_upvr()
					end, {onRetry_upvr, sessionId_upvr, entryPointEventCtx_upvr});
					text = useLocalization_upvr_result1.retryBtn;
				};
			}};
		};
	})
end