-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:46:46
-- Luau version 6, Types version 3
-- Time taken: 0.002540 seconds

local Parent = script.Parent.Parent
local Roact_upvr = require(Parent.Roact)
local UIBlox = require(Parent.UIBlox)
local FocusNavigationUtils = require(Parent.FocusNavigationUtils)
local RobloxTranslator = require(Parent.RobloxTranslator)
local any_extend_result1_upvr = Roact_upvr.Component:extend("InteractiveAlert")
function any_extend_result1_upvr.init(arg1) -- Line 33
	arg1.state = {
		screenSize = Vector2.new(0, 0);
		animating = false;
	}
end
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
local any_FormatByKey_result1_upvr = RobloxTranslator:FormatByKey("CoreScripts.Ads.Action.Close")
local InteractiveAlert_upvr = UIBlox.App.Dialog.Alert.InteractiveAlert
local any_FormatByKey_result1_upvr_2 = RobloxTranslator:FormatByKey("CoreScripts.Ads.Label.WhyThisAd")
function any_extend_result1_upvr.renderWithStyle(arg1, arg2) -- Line 40
	--[[ Upvalues[5]:
		[1]: ButtonType_upvr (readonly)
		[2]: any_FormatByKey_result1_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: InteractiveAlert_upvr (readonly)
		[5]: any_FormatByKey_result1_upvr_2 (readonly)
	]]
	return Roact_upvr.createFragment({
		Frame = Roact_upvr.createElement("Frame", {
			Selectable = false;
			BackgroundTransparency = 1;
			BorderSizePixel = 0;
			Size = UDim2.fromScale(1, 1);
			Position = UDim2.fromScale(0.5, 0.5);
			AnchorPoint = Vector2.new(0.5, 0.5);
			[Roact_upvr.Change.AbsoluteSize] = function(arg1_2) -- Line 60
				--[[ Upvalues[1]:
					[1]: arg1 (readonly)
				]]
				arg1:setState({
					screenSize = arg1_2.AbsoluteSize;
				})
			end;
		}, {
			InteractiveAlert = Roact_upvr.createElement(InteractiveAlert_upvr, {
				screenSize = arg1.state.screenSize;
				title = any_FormatByKey_result1_upvr_2;
				bodyText = arg1.props.bodyText;
				buttonStackInfo = {
					buttons = {{
						buttonType = ButtonType_upvr.PrimarySystem;
						props = {
							onActivated = function() -- Line 44, Named "onActivated"
								--[[ Upvalues[1]:
									[1]: arg1 (readonly)
								]]
								arg1.props.handler:hidePrompt()
							end;
							text = any_FormatByKey_result1_upvr;
						};
						isDefaultChild = true;
					}};
				};
			});
		});
	})
end
function any_extend_result1_upvr.render(arg1) -- Line 81
	return arg1:renderWithStyle(arg1.props.style)
end
local useStyle_upvr = UIBlox.Core.Style.useStyle
local Cryo_upvr = require(Parent.Cryo)
local CoreScriptsRootProvider_upvr = require(Parent.CoreScriptsRoactCommon).CoreScriptsRootProvider
local FFlagCSFocusWrapperRefactor_upvr = require(Parent.SharedFlags).FFlagCSFocusWrapperRefactor
local FocusRoot_upvr = FocusNavigationUtils.FocusRoot
local FocusNavigationCoreScriptsWrapper_upvr = FocusNavigationUtils.FocusNavigationCoreScriptsWrapper
local FocusNavigableSurfaceIdentifierEnum_upvr = FocusNavigationUtils.FocusNavigableSurfaceIdentifierEnum
return function(arg1) -- Line 86
	--[[ Upvalues[9]:
		[1]: useStyle_upvr (readonly)
		[2]: Cryo_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: CoreScriptsRootProvider_upvr (readonly)
		[5]: FFlagCSFocusWrapperRefactor_upvr (readonly)
		[6]: FocusRoot_upvr (readonly)
		[7]: FocusNavigationCoreScriptsWrapper_upvr (readonly)
		[8]: FocusNavigableSurfaceIdentifierEnum_upvr (readonly)
		[9]: any_extend_result1_upvr (readonly)
	]]
	local module = {}
	local var32 = Roact_upvr
	if FFlagCSFocusWrapperRefactor_upvr then
		var32 = FocusRoot_upvr
	else
		var32 = FocusNavigationCoreScriptsWrapper_upvr
	end
	if FFlagCSFocusWrapperRefactor_upvr then
		local tbl = {
			surfaceIdentifier = FocusNavigableSurfaceIdentifierEnum_upvr.CentralOverlay;
			isIsolated = true;
			isAutoFocusRoot = true;
		}
	else
	end
	module.FocusNavigationCoreScriptsWrapper = var32.createElement(var32, {
		selectionGroupName = "AdsEudsaPrompt";
		focusNavigableSurfaceIdentifier = FocusNavigableSurfaceIdentifierEnum_upvr.CentralOverlay;
	}, {
		WrappedEuDsaPrompt = Roact_upvr.createElement(any_extend_result1_upvr, Cryo_upvr.Dictionary.join(arg1, {
			style = useStyle_upvr();
		}));
	})
	return Roact_upvr.createElement(CoreScriptsRootProvider_upvr, {}, module)
end