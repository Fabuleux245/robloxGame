-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:35:29
-- Luau version 6, Types version 3
-- Time taken: 0.001496 seconds

local GenericAbuseReporting = script:FindFirstAncestor("GenericAbuseReporting")
local Parent = GenericAbuseReporting.Parent
local UIBlox = require(Parent.UIBlox)
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local useLocalizedStrings_upvr = require(GenericAbuseReporting.LocalizationKeys.useLocalizedStrings)
local useLayerCollector_upvr = UIBlox.Core.Layout.LayerCollector.useLayerCollector
local React_upvr = require(Parent.React)
local InteractiveAlert_upvr = UIBlox.App.Dialog.Alert.InteractiveAlert
local MODAL_POSITION_OFFSET_upvr = require(GenericAbuseReporting.Common.MODAL_POSITION_OFFSET)
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
return function(arg1) -- Line 37, Named "ReportFailedDialog"
	--[[ Upvalues[7]:
		[1]: useLocalization_upvr (readonly)
		[2]: useLocalizedStrings_upvr (readonly)
		[3]: useLayerCollector_upvr (readonly)
		[4]: React_upvr (readonly)
		[5]: InteractiveAlert_upvr (readonly)
		[6]: MODAL_POSITION_OFFSET_upvr (readonly)
		[7]: ButtonType_upvr (readonly)
	]]
	local var11
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var11 = useLocalization_upvr(arg1.localizationKeys)
		return var11
	end
	if not arg1.localizationKeys or not INLINED() then
		var11 = useLocalizedStrings_upvr()
	end
	local useLayerCollector_upvr_result1 = useLayerCollector_upvr()
	local absoluteSize = useLayerCollector_upvr_result1.absoluteSize
	local module = {
		screenSize = Vector2.new(absoluteSize.X, absoluteSize.Y - useLayerCollector_upvr_result1.insets.top);
		title = var11.failedTitle;
		bodyText = var11.failedDescription;
		anchorPoint = Vector2.new(0.5, 0);
		position = UDim2.new(0.5, 0, 0, useLayerCollector_upvr_result1.insets.top + MODAL_POSITION_OFFSET_upvr);
	}
	local buttonStackInfo = arg1.buttonStackInfo
	if not buttonStackInfo then
		buttonStackInfo = {}
		buttonStackInfo.buttons = {{
			buttonType = ButtonType_upvr.Secondary;
			props = {
				onActivated = arg1.onDismiss;
				text = var11.failedClose;
			};
		}}
	end
	module.buttonStackInfo = buttonStackInfo
	module.middleContent = arg1.middleContent
	return React_upvr.createElement(InteractiveAlert_upvr, module)
end