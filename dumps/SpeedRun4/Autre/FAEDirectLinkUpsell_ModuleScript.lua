-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:17:10
-- Luau version 6, Types version 3
-- Time taken: 0.003476 seconds

local Parent = script:FindFirstAncestor("AmpUpsell").Parent
local UIBlox = require(Parent.UIBlox)
local Foundation = require(Parent.Foundation)
local useScreenSize_upvr = require(Parent.RobloxAppHooks).useScreenSize
local useTokens_upvr = Foundation.Hooks.useTokens
local useRoactService_upvr = require(Parent.RobloxAppHooks).useRoactService
local AppLinking_upvr = require(Parent.RoactServiceTags).AppLinking
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local React_upvr = require(Parent.React)
local authButtonClick_upvr = require(Parent.AuthAnalytics).Events.authButtonClick
local PartialPageModal_upvr = UIBlox.App.Dialog.Modal.PartialPageModal
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
local Images_upvr = UIBlox.App.ImageSet.Images
local Text_upvr = Foundation.Text
return function(arg1) -- Line 30, Named "FAEDirectLinkUpsell"
	--[[ Upvalues[11]:
		[1]: useScreenSize_upvr (readonly)
		[2]: useTokens_upvr (readonly)
		[3]: useRoactService_upvr (readonly)
		[4]: AppLinking_upvr (readonly)
		[5]: useLocalization_upvr (readonly)
		[6]: React_upvr (readonly)
		[7]: authButtonClick_upvr (readonly)
		[8]: PartialPageModal_upvr (readonly)
		[9]: ButtonType_upvr (readonly)
		[10]: Images_upvr (readonly)
		[11]: Text_upvr (readonly)
	]]
	local webLink_upvr = arg1.webLink
	local onCancel_upvr = arg1.onCancel
	local sessionId_upvr = arg1.sessionId
	local entryPointEventCtx_upvr = arg1.entryPointEventCtx
	local useTokens_upvr_result1 = useTokens_upvr()
	local useRoactService_upvr_result1_upvr = useRoactService_upvr(AppLinking_upvr)
	local var8_result1 = useLocalization_upvr({
		title = "Amp.FAEUpsell.Modal.ExternalLink.Title";
		bodyText = "Amp.FAEUpsell.Modal.ExternalLink.Text";
		startBtn = "Amp.FAEUpsell.Modal.ExternalLink.ButtonStart";
		cancelBtn = "Amp.FAEUpsell.Modal.ExternalLink.ButtonCancel";
	})
	local any_useCallback_result1 = React_upvr.useCallback(function() -- Line 52
		--[[ Upvalues[4]:
			[1]: authButtonClick_upvr (copied, readonly)
			[2]: entryPointEventCtx_upvr (readonly)
			[3]: sessionId_upvr (readonly)
			[4]: onCancel_upvr (readonly)
		]]
		authButtonClick_upvr(entryPointEventCtx_upvr, "cancelFaeNonNative", sessionId_upvr)
		onCancel_upvr()
	end, {onCancel_upvr, sessionId_upvr, entryPointEventCtx_upvr})
	return React_upvr.createElement(PartialPageModal_upvr, {
		title = var8_result1.title;
		screenSize = useScreenSize_upvr();
		onCloseClicked = any_useCallback_result1;
		buttonStackProps = {
			forcedFillDirection = Enum.FillDirection.Vertical;
			buttons = {{
				buttonType = ButtonType_upvr.Secondary;
				props = {
					onActivated = any_useCallback_result1;
					text = var8_result1.cancelBtn;
				};
			}, {
				buttonType = ButtonType_upvr.PrimaryContextual;
				props = {
					icon = Images_upvr["icons/navigation/externallink_medium"];
					onActivated = React_upvr.useCallback(function() -- Line 47
						--[[ Upvalues[5]:
							[1]: authButtonClick_upvr (copied, readonly)
							[2]: entryPointEventCtx_upvr (readonly)
							[3]: sessionId_upvr (readonly)
							[4]: useRoactService_upvr_result1_upvr (readonly)
							[5]: webLink_upvr (readonly)
						]]
						authButtonClick_upvr(entryPointEventCtx_upvr, "startFaeNonNative", sessionId_upvr)
						useRoactService_upvr_result1_upvr:openURL(webLink_upvr)
					end, {useRoactService_upvr_result1_upvr, webLink_upvr, sessionId_upvr, entryPointEventCtx_upvr});
					text = var8_result1.startBtn;
				};
			}};
		};
	}, {
		ViewFrame = React_upvr.createElement("Frame", {
			AutomaticSize = Enum.AutomaticSize.Y;
			BackgroundTransparency = 1;
			Size = UDim2.fromScale(1, 0);
		}, {
			UIListLayout = React_upvr.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder;
				FillDirection = Enum.FillDirection.Vertical;
				HorizontalAlignment = Enum.HorizontalAlignment.Center;
				VerticalAlignment = Enum.VerticalAlignment.Center;
			});
			OuterPadding = React_upvr.createElement("UIPadding", {
				PaddingTop = UDim.new(0, useTokens_upvr_result1.Padding.XXLarge);
				PaddingBottom = UDim.new(0, useTokens_upvr_result1.Padding.XXLarge);
			});
			BodyText = React_upvr.createElement(Text_upvr, {
				tag = "auto-y grow size-full-0 text-align-x-left text-wrap";
				Text = var8_result1.bodyText;
				LayoutOrder = 1;
			});
		});
	})
end