-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:49:16
-- Luau version 6, Types version 3
-- Time taken: 0.025238 seconds

local Parent = script.Parent.Parent.Parent
local GuiService_upvr = game:GetService("GuiService")
local CorePackages = game:GetService("CorePackages")
local PurchasePromptDeps = require(CorePackages.Workspace.Packages.PurchasePromptDeps)
local Roact_upvr = PurchasePromptDeps.Roact
local CoreGui_upvr = game:GetService("CoreGui")
local Players_upvr = game:GetService("Players")
local UIBlox = PurchasePromptDeps.UIBlox
local IAPExperience = require(CorePackages.Workspace.Packages.IAPExperience)
local PurchaseFlow_upvr = require(Parent.Enums.PurchaseFlow)
local RequestType_upvr = require(Parent.Enums.RequestType)
local PromptState_upvr = require(Parent.Enums.PromptState)
local WindowState_upvr = require(Parent.Enums.WindowState)
local PurchaseError_upvr = require(Parent.Enums.PurchaseError)
local PublishAssetAnalytics_upvr = require(Parent.Utils.PublishAssetAnalytics)
local isGenericChallengeResponse_upvr = require(Parent.Utils.isGenericChallengeResponse)
local GetFFlagEnableTexasU18VPCForInExperienceBundleRobuxUpsellFlow_upvr = require(Parent.Flags.GetFFlagEnableTexasU18VPCForInExperienceBundleRobuxUpsellFlow)
local FFlagAddCursorProviderToPurchasePromptApp_upvr = require(Parent.Flags.FFlagAddCursorProviderToPurchasePromptApp)
local HttpService_upvr = game:GetService("HttpService")
local any_extend_result1 = Roact_upvr.Component:extend(script.Name)
local function _(arg1, arg2) -- Line 101, Named "isRelevantRequestType"
	--[[ Upvalues[2]:
		[1]: PurchaseFlow_upvr (readonly)
		[2]: RequestType_upvr (readonly)
	]]
	if arg2 == PurchaseFlow_upvr.RobuxUpsellV2 or arg2 == PurchaseFlow_upvr.LargeRobuxUpsell then
		return false
	end
	local var24 = true
	if arg1 ~= RequestType_upvr.Asset then
		var24 = true
		if arg1 ~= RequestType_upvr.Bundle then
			var24 = true
			if arg1 ~= RequestType_upvr.GamePass then
				var24 = true
				if arg1 ~= RequestType_upvr.Product then
					if arg1 ~= RequestType_upvr.AvatarCreationFee then
						var24 = false
					else
						var24 = true
					end
				end
			end
		end
	end
	return var24
end
local function _(arg1) -- Line 113, Named "promptStateToViewName"
	--[[ Upvalues[1]:
		[1]: PromptState_upvr (readonly)
	]]
	return ({
		[PromptState_upvr.RobuxUpsell] = "PurchaseModal";
		[PromptState_upvr.UpsellInProgress] = "RobuxPurchasePending";
	})[arg1]
end
local CachedPolicyService_upvr = require(CorePackages.Workspace.Packages.CachedPolicyService)
local FFlagInExperiencePurchaseFlowRework_upvr = require(CorePackages.Workspace.Packages.SharedFlags).FFlagInExperiencePurchaseFlowRework
local ContextActionService_upvr = game:GetService("ContextActionService")
local VPCModalType_upvr = require(Parent.Enums.VPCModalType)
function any_extend_result1.init(arg1) -- Line 121
	--[[ Upvalues[13]:
		[1]: HttpService_upvr (readonly)
		[2]: CachedPolicyService_upvr (readonly)
		[3]: PromptState_upvr (readonly)
		[4]: FFlagInExperiencePurchaseFlowRework_upvr (readonly)
		[5]: Players_upvr (readonly)
		[6]: PurchaseFlow_upvr (readonly)
		[7]: RequestType_upvr (readonly)
		[8]: PurchaseError_upvr (readonly)
		[9]: isGenericChallengeResponse_upvr (readonly)
		[10]: PublishAssetAnalytics_upvr (readonly)
		[11]: WindowState_upvr (readonly)
		[12]: ContextActionService_upvr (readonly)
		[13]: VPCModalType_upvr (readonly)
	]]
	arg1.state = {
		screenSize = Vector2.new(0, 0);
		isLuobu = false;
		analyticId = HttpService_upvr:GenerateGUID(false);
	}
	arg1.props.setPurchaseFlowUUID(HttpService_upvr:GenerateGUID(false))
	coroutine.wrap(function() -- Line 129
		--[[ Upvalues[2]:
			[1]: CachedPolicyService_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		if CachedPolicyService_upvr:IsSubjectToChinaPolicies() then
			arg1:setState({
				isLuobu = true;
			})
		end
	end)()
	function arg1.emitPurchaseFlowEvent(arg1_2, arg2) -- Line 140
		--[[ Upvalues[4]:
			[1]: arg1 (readonly)
			[2]: PromptState_upvr (copied, readonly)
			[3]: FFlagInExperiencePurchaseFlowRework_upvr (copied, readonly)
			[4]: HttpService_upvr (copied, readonly)
		]]
		local var35 = ({
			[PromptState_upvr.RobuxUpsell] = "PurchaseModal";
			[PromptState_upvr.UpsellInProgress] = "RobuxPurchasePending";
		})[arg1.props.promptState]
		local var36
		if not var35 then
		else
			local tbl_4 = {}
			if FFlagInExperiencePurchaseFlowRework_upvr then
				var36 = arg1.props.purchaseFlowUUID
			else
				var36 = arg1.state.analyticId
			end
			tbl_4.purchase_flow_uuid = var36
			var36 = "InGameRobuxUpsell"
			tbl_4.purchase_flow = var36
			tbl_4.view_name = var35
			tbl_4.purchase_event_type = arg1_2
			tbl_4.input_type = arg2
			var36 = HttpService_upvr
			var36 = var36:JSONEncode({
				universe_id = tostring(game.GameId);
				item_product_id = tostring(arg1.props.productInfo.productId);
				item_name = arg1.props.productInfo.name;
				price = tostring(arg1.props.productInfo.price);
				user_balance = tostring(arg1.props.accountInfo.balance) or nil;
				package_robux_amount = tostring(arg1.props.robuxPurchaseAmount) or nil;
			})
			tbl_4.event_metadata = var36
			var36 = arg1.props.onAnalyticEvent
			var36("UserPurchaseFlow", tbl_4)
		end
	end
	function arg1.changeScreenSize(arg1_3) -- Line 164
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1.state.screenSize ~= arg1_3.AbsoluteSize then
			arg1:setState({
				screenSize = arg1_3.AbsoluteSize;
			})
		end
	end
	function arg1.hasDelayedInput() -- Line 172
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: PromptState_upvr (copied, readonly)
		]]
		if arg1.props.isTestPurchase then
			return false
		end
		local promptState = arg1.props.promptState
		local var47 = true
		if promptState ~= PromptState_upvr.PromptPurchase then
			var47 = true
			if promptState ~= PromptState_upvr.PurchaseInProgress then
				var47 = true
				if promptState ~= PromptState_upvr.RobuxUpsell then
					if promptState ~= PromptState_upvr.UpsellInProgress then
						var47 = false
					else
						var47 = true
					end
				end
			end
		end
		return var47
	end
	function arg1.isWindowShowAndDoneAnimating() -- Line 186
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local var49
		if arg1.state.isAnimating ~= false then
			var49 = false
		else
			var49 = true
		end
		return var49
	end
	function arg1.canConfirmInput() -- Line 190
		--[[ Upvalues[2]:
			[1]: Players_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		if Players_upvr.LocalPlayer.GameplayPaused then
			return false
		end
		local any_isWindowShowAndDoneAnimating_result1 = arg1.isWindowShowAndDoneAnimating()
		if arg1.hasDelayedInput() then
			local var52 = false
			if arg1.state.doneAnimatingTime then
				if 2.5 >= os.clock() - arg1.state.doneAnimatingTime then
					var52 = false
				else
					var52 = true
				end
			end
			return any_isWindowShowAndDoneAnimating_result1 and var52
		end
		return any_isWindowShowAndDoneAnimating_result1
	end
	function arg1.getConfirmButtonAction(arg1_4, arg2, arg3) -- Line 216
		--[[ Upvalues[6]:
			[1]: PromptState_upvr (copied, readonly)
			[2]: PurchaseFlow_upvr (copied, readonly)
			[3]: RequestType_upvr (copied, readonly)
			[4]: arg1 (readonly)
			[5]: PurchaseError_upvr (copied, readonly)
			[6]: isGenericChallengeResponse_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		local var57
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [5] 4. Error Block 60 start (CF ANALYSIS FAILED)
		if PurchaseFlow_upvr.RobuxUpsellV2 == nil or PurchaseFlow_upvr.LargeRobuxUpsell == nil then
			var57 = false
		else
			var57 = true
			if arg2 ~= RequestType_upvr.Asset then
				var57 = true
				if arg2 ~= RequestType_upvr.Bundle then
					var57 = true
					if arg2 ~= RequestType_upvr.GamePass then
						var57 = true
						if arg2 ~= RequestType_upvr.Product then
							if arg2 ~= RequestType_upvr.AvatarCreationFee then
								var57 = false
							else
								var57 = true
							end
						end
					end
				end
			end
		end
		if not var57 then
			-- KONSTANTERROR: [49] 34. Error Block 45 start (CF ANALYSIS FAILED)
			var57 = nil
			do
				return var57
			end
			-- KONSTANTERROR: [49] 34. Error Block 45 end (CF ANALYSIS FAILED)
		end
		var57 = PromptState_upvr.PromptPurchase
		local function INLINED_7() -- Internal function, doesn't exist in bytecode
			var57 = PromptState_upvr.PurchaseInProgress
			return arg1_4 == var57
		end
		if arg1_4 == var57 or INLINED_7() then
			var57 = arg1.props.onBuy
			return var57
		end
		var57 = PromptState_upvr.RobuxUpsell
		local function INLINED_8() -- Internal function, doesn't exist in bytecode
			var57 = PromptState_upvr.UpsellInProgress
			return arg1_4 == var57
		end
		local function INLINED_9() -- Internal function, doesn't exist in bytecode
			var57 = PromptState_upvr.LeaveRobloxWarning
			return arg1_4 == var57
		end
		if arg1_4 == var57 or INLINED_8() or INLINED_9() then
			var57 = arg1.props.onRobuxUpsell
			return var57
		end
		var57 = PromptState_upvr.U13PaymentModal
		local function INLINED_10() -- Internal function, doesn't exist in bytecode
			var57 = PromptState_upvr.U13MonthlyThreshold1Modal
			return arg1_4 == var57
		end
		local function INLINED_11() -- Internal function, doesn't exist in bytecode
			var57 = PromptState_upvr.U13MonthlyThreshold2Modal
			return arg1_4 == var57
		end
		local function INLINED_12() -- Internal function, doesn't exist in bytecode
			var57 = PromptState_upvr.ParentalConsentWarningPaymentModal13To17
			return arg1_4 == var57
		end
		if arg1_4 == var57 or INLINED_10() or INLINED_11() or INLINED_12() then
			var57 = arg1.props.onScaryModalConfirm
			return var57
		end
		var57 = PromptState_upvr.Error
		if arg1_4 == var57 then
			var57 = PurchaseError_upvr.TwoFactorNeededSettings
			if arg3 == var57 then
				var57 = arg1.props.onOpenSecuritySettings
				return var57
			end
		end
		var57 = isGenericChallengeResponse_upvr(arg3)
		if var57 then
			function var57() -- Line 237
				--[[ Upvalues[2]:
					[1]: arg1 (copied, readonly)
					[2]: arg3 (readonly)
				]]
				arg1.props.onOpenSecuritySettings(arg3)
			end
			return var57
		end
		var57 = arg1.props.hideWindow
		do
			return var57
		end
		-- KONSTANTERROR: [5] 4. Error Block 60 end (CF ANALYSIS FAILED)
	end
	function arg1.getCancelButtonAction(arg1_5, arg2) -- Line 245
		--[[ Upvalues[4]:
			[1]: PromptState_upvr (copied, readonly)
			[2]: PurchaseFlow_upvr (copied, readonly)
			[3]: RequestType_upvr (copied, readonly)
			[4]: arg1 (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		local var59
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [5] 4. Error Block 29 start (CF ANALYSIS FAILED)
		if PurchaseFlow_upvr.RobuxUpsellV2 == nil or PurchaseFlow_upvr.LargeRobuxUpsell == nil then
			var59 = false
		else
			var59 = true
			if arg2 ~= RequestType_upvr.Asset then
				var59 = true
				if arg2 ~= RequestType_upvr.Bundle then
					var59 = true
					if arg2 ~= RequestType_upvr.GamePass then
						var59 = true
						if arg2 ~= RequestType_upvr.Product then
							if arg2 ~= RequestType_upvr.AvatarCreationFee then
								var59 = false
							else
								var59 = true
							end
						end
					end
				end
			end
		end
		if not var59 then
			-- KONSTANTERROR: [49] 34. Error Block 18 start (CF ANALYSIS FAILED)
			var59 = nil
			do
				return var59
			end
			-- KONSTANTERROR: [49] 34. Error Block 18 end (CF ANALYSIS FAILED)
		end
		var59 = arg1.props.hideWindow
		do
			return var59
		end
		-- KONSTANTERROR: [5] 4. Error Block 29 end (CF ANALYSIS FAILED)
	end
	function arg1.confirmButtonPressed() -- Line 253
		--[[ Upvalues[4]:
			[1]: arg1 (readonly)
			[2]: RequestType_upvr (copied, readonly)
			[3]: PromptState_upvr (copied, readonly)
			[4]: PublishAssetAnalytics_upvr (copied, readonly)
		]]
		if arg1.props.requestType == RequestType_upvr.AvatarCreationFee and arg1.props.promptState == PromptState_upvr.PromptPurchase then
			PublishAssetAnalytics_upvr.sendButtonClicked(PublishAssetAnalytics_upvr.Section.BuyItemModal, PublishAssetAnalytics_upvr.Element.Buy)
		end
		local any_getConfirmButtonAction_result1 = arg1.getConfirmButtonAction(arg1.props.promptState, arg1.props.requestType, arg1.props.purchaseError)
		if any_getConfirmButtonAction_result1 ~= nil and arg1.canConfirmInput() then
			any_getConfirmButtonAction_result1()
		end
	end
	function arg1.cancelButtonPressed() -- Line 270
		--[[ Upvalues[4]:
			[1]: arg1 (readonly)
			[2]: RequestType_upvr (copied, readonly)
			[3]: PromptState_upvr (copied, readonly)
			[4]: PublishAssetAnalytics_upvr (copied, readonly)
		]]
		if arg1.props.requestType == RequestType_upvr.AvatarCreationFee and arg1.props.promptState == PromptState_upvr.PromptPurchase then
			PublishAssetAnalytics_upvr.sendButtonClicked(PublishAssetAnalytics_upvr.Section.BuyItemModal, PublishAssetAnalytics_upvr.Element.Cancel)
		end
		local any_getCancelButtonAction_result1 = arg1.getCancelButtonAction(arg1.props.promptState, arg1.props.requestType)
		if any_getCancelButtonAction_result1 ~= nil then
			any_getCancelButtonAction_result1()
		end
	end
	function arg1.configContextActionService(arg1_6) -- Line 287
		--[[ Upvalues[3]:
			[1]: WindowState_upvr (copied, readonly)
			[2]: ContextActionService_upvr (copied, readonly)
			[3]: arg1 (readonly)
		]]
		if arg1_6 == WindowState_upvr.Shown then
			ContextActionService_upvr:BindCoreAction("ProductPurchaseConfirmButtonBind", function(arg1_7, arg2, arg3) -- Line 289
				--[[ Upvalues[1]:
					[1]: arg1 (copied, readonly)
				]]
				if arg2 == Enum.UserInputState.Begin then
					arg1.confirmButtonPressed()
				end
			end, false, Enum.KeyCode.ButtonA)
			ContextActionService_upvr:BindCoreAction("ProductPurchaseCancelButtonBind", function(arg1_8, arg2, arg3) -- Line 294
				--[[ Upvalues[1]:
					[1]: arg1 (copied, readonly)
				]]
				if arg2 == Enum.UserInputState.Begin then
					arg1.cancelButtonPressed()
				end
			end, false, Enum.KeyCode.ButtonB)
		else
			ContextActionService_upvr:UnbindCoreAction("ProductPurchaseConfirmButtonBind")
			ContextActionService_upvr:UnbindCoreAction("ProductPurchaseCancelButtonBind")
		end
	end
	function arg1.getVPCModalType(arg1_9) -- Line 305
		--[[ Upvalues[2]:
			[1]: PromptState_upvr (copied, readonly)
			[2]: VPCModalType_upvr (copied, readonly)
		]]
		if arg1_9 == PromptState_upvr.EnablePurchaseVPCModal then
			return VPCModalType_upvr.toRawValue(VPCModalType_upvr.EnablePurchase)
		end
		return VPCModalType_upvr.toRawValue(VPCModalType_upvr.None)
	end
end
function any_extend_result1.didMount(arg1) -- Line 313
	--[[ Upvalues[4]:
		[1]: WindowState_upvr (readonly)
		[2]: PurchaseFlow_upvr (readonly)
		[3]: RequestType_upvr (readonly)
		[4]: GuiService_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local requestType_6 = arg1.props.requestType
	local var72
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [22] 13. Error Block 26 start (CF ANALYSIS FAILED)
	if arg1.props.purchaseFlow == PurchaseFlow_upvr.LargeRobuxUpsell then
		-- KONSTANTERROR: [27] 16. Error Block 19 start (CF ANALYSIS FAILED)
		var72 = false
		-- KONSTANTERROR: [27] 16. Error Block 19 end (CF ANALYSIS FAILED)
	else
		var72 = true
		if requestType_6 ~= RequestType_upvr.Asset then
			var72 = true
			if requestType_6 ~= RequestType_upvr.Bundle then
				var72 = true
				if requestType_6 ~= RequestType_upvr.GamePass then
					var72 = true
					if requestType_6 ~= RequestType_upvr.Product then
						if requestType_6 ~= RequestType_upvr.AvatarCreationFee then
							var72 = false
						else
							var72 = true
						end
					end
				end
			end
		end
	end
	if var72 then
		var72 = arg1:setState
		var72({
			isAnimating = true;
		})
		var72 = arg1.configContextActionService
		var72(arg1.props.windowState)
		var72 = GuiService_upvr.SetPurchasePromptIsShown
		var72(true)
	end
	-- KONSTANTERROR: [22] 13. Error Block 26 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [80] 53. Error Block 16 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [80] 53. Error Block 16 end (CF ANALYSIS FAILED)
end
function any_extend_result1.willUpdate(arg1, arg2) -- Line 327
	if arg1.props.expectedPrice ~= arg2.expectedPrice then
		arg1:setState({})
	end
end
function any_extend_result1.didUpdate(arg1, arg2, arg3) -- Line 333
	--[[ Upvalues[9]:
		[1]: PromptState_upvr (readonly)
		[2]: HttpService_upvr (readonly)
		[3]: Players_upvr (readonly)
		[4]: PurchaseFlow_upvr (readonly)
		[5]: RequestType_upvr (readonly)
		[6]: GuiService_upvr (readonly)
		[7]: WindowState_upvr (readonly)
		[8]: FFlagAddCursorProviderToPurchasePromptApp_upvr (readonly)
		[9]: PublishAssetAnalytics_upvr (readonly)
	]]
	if arg1.props.promptState ~= arg2.promptState and arg1.props.promptState == PromptState_upvr.None then
		arg1.props.setPurchaseFlowUUID(HttpService_upvr:GenerateGUID(false))
	end
	if Players_upvr.LocalPlayer.GameplayPaused then
		arg1.props.onAnalyticEvent("PurchasePromptGamePausedDetected", {
			place_id = game.PlaceId;
		})
		arg1.props.hideWindow()
	end
	local purchaseFlow = arg1.props.purchaseFlow
	local requestType_5 = arg1.props.requestType
	local windowState = arg2.windowState
	if windowState ~= arg1.props.windowState then
		if purchaseFlow == PurchaseFlow_upvr.RobuxUpsellV2 or purchaseFlow == PurchaseFlow_upvr.LargeRobuxUpsell then
			windowState = false
		else
			windowState = true
			if requestType_5 ~= RequestType_upvr.Asset then
				windowState = true
				if requestType_5 ~= RequestType_upvr.Bundle then
					windowState = true
					if requestType_5 ~= RequestType_upvr.GamePass then
						windowState = true
						if requestType_5 ~= RequestType_upvr.Product then
							if requestType_5 ~= RequestType_upvr.AvatarCreationFee then
								windowState = false
							else
								windowState = true
							end
						end
					end
				end
			end
		end
		if windowState then
			local tbl_11 = {
				isAnimating = true;
			}
			windowState = arg1:setState
			windowState(tbl_11)
			windowState = arg1.configContextActionService
			tbl_11 = arg1.props
			local var84 = tbl_11
			windowState(var84.windowState)
			windowState = GuiService_upvr
			if arg1.props.windowState ~= WindowState_upvr.Shown then
				var84 = false
			else
				var84 = true
			end
			windowState = windowState:SetPurchasePromptIsShown
			windowState(var84)
			windowState = FFlagAddCursorProviderToPurchasePromptApp_upvr
			if windowState then
				windowState = arg1.props.windowState
				if windowState == WindowState_upvr.Hidden then
					windowState = arg1.props.completeRequest
					windowState()
				end
			end
		end
	end
	if requestType_5 == RequestType_upvr.AvatarCreationFee then
		if arg1.props.promptState == PromptState_upvr.PurchaseComplete then
			if arg2.promptState ~= PromptState_upvr.PurchaseComplete then
				PublishAssetAnalytics_upvr.sendPageLoad(PublishAssetAnalytics_upvr.Section.ProcessCompleteModal)
			end
		end
	end
	if arg2.promptState ~= arg1.props.promptState then
		arg1.emitPurchaseFlowEvent("ViewShown")
	end
end
local LocalizationService_upvr = require(Parent.Localization.LocalizationService)
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("PPTwoFactorLogOutMessage", false)
function any_extend_result1.getMessageKeysFromPromptState(arg1) -- Line 379
	--[[ Upvalues[5]:
		[1]: PromptState_upvr (readonly)
		[2]: PurchaseError_upvr (readonly)
		[3]: LocalizationService_upvr (readonly)
		[4]: isGenericChallengeResponse_upvr (readonly)
		[5]: game_DefineFastFlag_result1_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local promptState_2 = arg1.props.promptState
	local purchaseError = arg1.props.purchaseError
	if promptState_2 == PromptState_upvr.PurchaseComplete then
		return {
			messageText = {
				key = "CoreScripts.PurchasePrompt.PurchaseMessage.Succeeded";
				params = {
					ITEM_NAME = arg1.props.productInfo.name;
				};
			};
			okText = {
				key = "CoreScripts.PurchasePrompt.Button.OK";
			};
			titleText = {
				key = "CoreScripts.PurchasePrompt.Title.BuyItem";
			};
		}
	end
	if promptState_2 == PromptState_upvr.U13PaymentModal then
		return {
			messageText = {
				key = "CoreScripts.PurchasePrompt.PurchaseDetails.ScaryModalOne";
			};
			okText = {
				key = "CoreScripts.PurchasePrompt.Button.OK";
			};
			titleText = {
				key = "CoreScripts.PurchasePrompt.Title.BuyItem";
			};
		}
	end
	if promptState_2 == PromptState_upvr.U13MonthlyThreshold1Modal then
		return {
			messageText = {
				key = "CoreScripts.PurchasePrompt.PurchaseDetails.ScaryModalTwo";
			};
			okText = {
				key = "CoreScripts.PurchasePrompt.Button.OK";
			};
			titleText = {
				key = "CoreScripts.PurchasePrompt.Title.BuyItem";
			};
		}
	end
	if promptState_2 == PromptState_upvr.U13MonthlyThreshold2Modal then
		return {
			messageText = {
				key = "CoreScripts.PurchasePrompt.PurchaseDetails.ScaryModalParental";
			};
			okText = {
				key = "CoreScripts.PurchasePrompt.Button.OK";
			};
			titleText = {
				key = "CoreScripts.PurchasePrompt.Title.BuyItem";
			};
		}
	end
	if promptState_2 == PromptState_upvr.ParentalConsentWarningPaymentModal13To17 then
		return {
			messageText = {
				key = "CoreScripts.PurchasePrompt.PurchaseDetails.ParentalConsent";
			};
			okText = {
				key = "CoreScripts.PurchasePrompt.Button.OK";
			};
			titleText = {
				key = "CoreScripts.PurchasePrompt.Title.BuyItem";
			};
		}
	end
	if promptState_2 == PromptState_upvr.Error then
		if purchaseError == PurchaseError_upvr.UnknownFailure then
			local module = {}
			local tbl_10 = {
				key = LocalizationService_upvr.getErrorKey(purchaseError);
			}
			local tbl_9 = {}
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			tbl_9.ITEM_NAME = arg1.props.productInfo.name
			tbl_10.params = tbl_9
			module.messageText = tbl_10
			module.okText = {
				key = "CoreScripts.PurchasePrompt.Button.OK";
			}
			module.titleText = {
				key = "CoreScripts.PremiumModal.Title.Error";
			}
			return module
		end
		module = PurchaseError_upvr.TwoFactorNeededSettings
		local var115
		local function INLINED_13() -- Internal function, doesn't exist in bytecode
			var115 = isGenericChallengeResponse_upvr(purchaseError)
			return var115
		end
		if purchaseError == var115 or INLINED_13() then
			var115 = "CoreScripts.PurchasePrompt.PurchaseFailed.Enable2SV"
			if game_DefineFastFlag_result1_upvr then
				var115 = "CoreScripts.PurchasePrompt.PurchaseFailed.Enable2SVLogout"
			end
			return {
				messageText = {
					key = var115;
				};
				okText = {
					key = "CoreScripts.PurchasePrompt.Button.Settings";
				};
				cancelText = {
					key = "CoreScripts.PurchasePrompt.CancelPurchase.Cancel";
				};
				titleText = {
					key = "CoreScripts.PurchasePrompt.Title.VerificationRequired";
				};
			}
		end
		var115 = {}
		local var121 = var115
		var121.messageText = {
			key = LocalizationService_upvr.getErrorKey(purchaseError);
		}
		var121.okText = {
			key = "CoreScripts.PurchasePrompt.Button.OK";
		}
		var121.titleText = {
			key = "CoreScripts.PremiumModal.Title.Error";
		}
		return var121
	end
end
local DesktopUpsellExperiment_upvr = require(Parent.Utils.DesktopUpsellExperiment)
local ProductPurchaseModal_upvr = IAPExperience.ProductPurchaseModal
local getPlayerPrice_upvr = require(Parent.Utils.getPlayerPrice)
local ProductPurchase_upvr = IAPExperience.ProductPurchase
local RobuxUpsellModal_upvr = IAPExperience.RobuxUpsellModal
local ProductPurchaseRobuxUpsell_upvr = IAPExperience.ProductPurchaseRobuxUpsell
local GetFFlagOpenVngTosForVngRobuxUpsell_upvr = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagOpenVngTosForVngRobuxUpsell
local getAppFeaturePolicies_upvr = require(CorePackages.Workspace.Packages.UniversalAppPolicy).getAppFeaturePolicies
local LeaveRobloxAlert_upvr = IAPExperience.LeaveRobloxAlert
local InteractiveAlert_upvr = UIBlox.App.Dialog.Alert.InteractiveAlert
local RobloxTranslator_upvr = require(CorePackages.Workspace.Packages.RobloxTranslator)
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
local MultiTextLocalizer_upvr = require(Parent.Components.Connection.MultiTextLocalizer)
local Images_upvr = UIBlox.App.ImageSet.Images
local Animator_upvr_2 = IAPExperience.Animator
local VerifiedParentalConsentDialog_upvr = require(CorePackages.Workspace.Packages.VerifiedParentalConsentDialog).VerifiedParentalConsentDialog
local RobuxUpsellModalTooExpensiveFallback_upvr = IAPExperience.RobuxUpsellModalTooExpensiveFallback
function any_extend_result1.determinePrompt(arg1) -- Line 453
	--[[ Upvalues[24]:
		[1]: PromptState_upvr (readonly)
		[2]: PurchaseFlow_upvr (readonly)
		[3]: RequestType_upvr (readonly)
		[4]: DesktopUpsellExperiment_upvr (readonly)
		[5]: Roact_upvr (readonly)
		[6]: ProductPurchaseModal_upvr (readonly)
		[7]: getPlayerPrice_upvr (readonly)
		[8]: ProductPurchase_upvr (readonly)
		[9]: RobuxUpsellModal_upvr (readonly)
		[10]: ProductPurchaseRobuxUpsell_upvr (readonly)
		[11]: GetFFlagOpenVngTosForVngRobuxUpsell_upvr (readonly)
		[12]: getAppFeaturePolicies_upvr (readonly)
		[13]: LeaveRobloxAlert_upvr (readonly)
		[14]: InteractiveAlert_upvr (readonly)
		[15]: RobloxTranslator_upvr (readonly)
		[16]: ButtonType_upvr (readonly)
		[17]: PurchaseError_upvr (readonly)
		[18]: isGenericChallengeResponse_upvr (readonly)
		[19]: MultiTextLocalizer_upvr (readonly)
		[20]: Images_upvr (readonly)
		[21]: GetFFlagEnableTexasU18VPCForInExperienceBundleRobuxUpsellFlow_upvr (readonly)
		[22]: Animator_upvr_2 (readonly)
		[23]: VerifiedParentalConsentDialog_upvr (readonly)
		[24]: RobuxUpsellModalTooExpensiveFallback_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local None = PromptState_upvr.None
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [80] 49. Error Block 14 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [80] 49. Error Block 14 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [81] 50. Error Block 154 start (CF ANALYSIS FAILED)
	do
		return nil
	end
	-- KONSTANTERROR: [81] 50. Error Block 154 end (CF ANALYSIS FAILED)
end
local Animator_upvr = require(script.Parent.Animator)
local ExternalEventConnection_upvr = require(Parent.Components.Connection.ExternalEventConnection)
function any_extend_result1.render(arg1) -- Line 707
	--[[ Upvalues[11]:
		[1]: Roact_upvr (readonly)
		[2]: Animator_upvr (readonly)
		[3]: WindowState_upvr (readonly)
		[4]: RequestType_upvr (readonly)
		[5]: PromptState_upvr (readonly)
		[6]: PublishAssetAnalytics_upvr (readonly)
		[7]: FFlagAddCursorProviderToPurchasePromptApp_upvr (readonly)
		[8]: PurchaseFlow_upvr (readonly)
		[9]: ExternalEventConnection_upvr (readonly)
		[10]: GuiService_upvr (readonly)
		[11]: CoreGui_upvr (readonly)
	]]
	local any_determinePrompt_result1 = arg1:determinePrompt()
	local module_3 = {}
	local var147 = 0
	module_3.Size = UDim2.new(1, 0, 1, var147)
	module_3[Roact_upvr.Change.AbsoluteSize] = arg1.changeScreenSize
	module_3.BackgroundTransparency = 1
	local module_2 = {}
	local tbl_5 = {}
	local var150
	if var150 == WindowState_upvr.Hidden then
		var147 = false
	else
		var147 = true
	end
	tbl_5.shouldShow = var147
	local promptState_4_upvr = arg1.props.promptState
	function tbl_5.onShown() -- Line 718
		--[[ Upvalues[5]:
			[1]: arg1 (readonly)
			[2]: RequestType_upvr (copied, readonly)
			[3]: promptState_4_upvr (readonly)
			[4]: PromptState_upvr (copied, readonly)
			[5]: PublishAssetAnalytics_upvr (copied, readonly)
		]]
		if arg1.props.requestType == RequestType_upvr.AvatarCreationFee and promptState_4_upvr == PromptState_upvr.PromptPurchase then
			PublishAssetAnalytics_upvr.sendPageLoad(PublishAssetAnalytics_upvr.Section.BuyItemModal)
		end
		arg1:setState({
			isAnimating = false;
			doneAnimatingTime = os.clock();
		})
	end
	function tbl_5.onHidden() -- Line 730
		--[[ Upvalues[5]:
			[1]: arg1 (readonly)
			[2]: FFlagAddCursorProviderToPurchasePromptApp_upvr (copied, readonly)
			[3]: WindowState_upvr (copied, readonly)
			[4]: PurchaseFlow_upvr (copied, readonly)
			[5]: RequestType_upvr (copied, readonly)
		]]
		arg1:setState({
			isAnimating = nil;
			doneAnimatingTime = nil;
		})
		if not FFlagAddCursorProviderToPurchasePromptApp_upvr then
			local windowState_4 = arg1.props.windowState
			if windowState_4 == WindowState_upvr.Hidden then
				local requestType_4 = arg1.props.requestType
				if PurchaseFlow_upvr.RobuxUpsellV2 == nil or PurchaseFlow_upvr.LargeRobuxUpsell == nil then
					windowState_4 = false
				else
					windowState_4 = true
					if requestType_4 ~= RequestType_upvr.Asset then
						windowState_4 = true
						if requestType_4 ~= RequestType_upvr.Bundle then
							windowState_4 = true
							if requestType_4 ~= RequestType_upvr.GamePass then
								windowState_4 = true
								if requestType_4 ~= RequestType_upvr.Product then
									if requestType_4 ~= RequestType_upvr.AvatarCreationFee then
										windowState_4 = false
									else
										windowState_4 = true
									end
								end
							end
						end
					end
				end
				if windowState_4 then
					windowState_4 = arg1.props.completeRequest
					windowState_4()
				end
			end
		end
	end
	var150 = Roact_upvr
	var150 = arg1.animatorRef
	tbl_5[var150.Ref] = var150
	local tbl_6 = {
		Prompt = any_determinePrompt_result1;
	}
	local function INLINED_14() -- Internal function, doesn't exist in bytecode
		var150 = var150("ImageButton", tbl_8)
		tbl_8.Size = UDim2.new(0, 0, 0, 0)
		tbl_8.Modal = true
		tbl_8.BackgroundTransparency = 0
		local tbl_8 = {}
		var150 = Roact_upvr.createElement
		return var150
	end
	if any_determinePrompt_result1 == nil or not INLINED_14() then
		var150 = nil
	end
	tbl_6.ModalFix = var150
	module_2.Animator = Roact_upvr.createElement(Animator_upvr, tbl_5, tbl_6)
	local tbl_3 = {}
	var150 = GuiService_upvr
	tbl_3.event = var150.MenuOpened
	local function callback() -- Line 755
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1.props.hideWindow then
			arg1.props.hideWindow()
		end
	end
	tbl_3.callback = callback
	module_2.OnCoreGuiMenuOpened = Roact_upvr.createElement(ExternalEventConnection_upvr, tbl_3)
	local tbl_7 = {}
	var150 = CoreGui_upvr
	tbl_7.event = var150.UserGuiRenderingChanged
	function tbl_7.callback(arg1_10, arg2) -- Line 763
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if not arg1_10 or not arg2 then
			arg1.props.hideWindow()
		end
	end
	module_2.OnUserGuiRenderingChanged = Roact_upvr.createElement(ExternalEventConnection_upvr, tbl_7)
	return Roact_upvr.createElement("Frame", module_3, module_2)
end
local isMockingPurchases_upvr = require(Parent.Utils.isMockingPurchases)
local SelectedRobuxPackage_upvr = require(Parent.Utils.SelectedRobuxPackage)
local SetPurchaseFlowUUID_upvr = require(Parent.Actions.SetPurchaseFlowUUID)
local purchaseItem_upvr = require(Parent.Thunks.purchaseItem)
local completePurchase_upvr = require(Parent.Thunks.completePurchase)
local launchRobuxUpsell_upvr = require(Parent.Thunks.launchRobuxUpsell)
local openSecuritySettings_upvr = require(Parent.Thunks.openSecuritySettings)
local initiateUserPurchaseSettingsPrecheck_upvr = require(Parent.Thunks.initiateUserPurchaseSettingsPrecheck)
local initiatePurchasePrecheck_upvr = require(Parent.Thunks.initiatePurchasePrecheck)
local hideWindow_upvr = require(Parent.Thunks.hideWindow)
local completeRequest_upvr = require(Parent.Thunks.completeRequest)
local sendEvent_upvr = require(Parent.Thunks.sendEvent)
return require(Parent.connectToStore)(function(arg1) -- Line 773, Named "mapStateToProps"
	--[[ Upvalues[2]:
		[1]: isMockingPurchases_upvr (readonly)
		[2]: SelectedRobuxPackage_upvr (readonly)
	]]
	local requestType_3 = arg1.promptRequest.requestType
	if arg1.abVariations then
		requestType_3 = arg1.abVariations.DesktopUpsellExpVariant
	else
		requestType_3 = nil
	end
	return {
		purchaseFlowUUID = arg1.purchaseFlowUUID;
		purchaseFlow = arg1.purchaseFlow;
		promptState = arg1.promptState;
		requestType = arg1.promptRequest.requestType;
		humanoidModel = arg1.promptRequest.humanoidModel;
		expectedPrice = arg1.promptRequest.expectedPrice;
		windowState = arg1.windowState;
		purchaseError = arg1.purchaseError;
		productInfo = arg1.productInfo;
		accountInfo = arg1.accountInfo;
		robuxPurchaseAmount = SelectedRobuxPackage_upvr.getRobuxPurchaseAmount(arg1);
		robuxAmountBeforeBonus = SelectedRobuxPackage_upvr.getRobuxAmountBeforeBonus(arg1);
		robuxPurchaseCost = SelectedRobuxPackage_upvr.getPrice(arg1);
		isTestPurchase = isMockingPurchases_upvr(requestType_3);
		isGamepadEnabled = arg1.gamepadEnabled;
		desktopUpsellExpVariant = requestType_3;
	}
end, function(arg1) -- Line 798, Named "mapDispatchToProps"
	--[[ Upvalues[13]:
		[1]: SetPurchaseFlowUUID_upvr (readonly)
		[2]: purchaseItem_upvr (readonly)
		[3]: completePurchase_upvr (readonly)
		[4]: launchRobuxUpsell_upvr (readonly)
		[5]: openSecuritySettings_upvr (readonly)
		[6]: GetFFlagEnableTexasU18VPCForInExperienceBundleRobuxUpsellFlow_upvr (readonly)
		[7]: initiateUserPurchaseSettingsPrecheck_upvr (readonly)
		[8]: initiatePurchasePrecheck_upvr (readonly)
		[9]: hideWindow_upvr (readonly)
		[10]: FFlagAddCursorProviderToPurchasePromptApp_upvr (readonly)
		[11]: GuiService_upvr (readonly)
		[12]: completeRequest_upvr (readonly)
		[13]: sendEvent_upvr (readonly)
	]]
	return {
		setPurchaseFlowUUID = function(arg1_11) -- Line 800, Named "setPurchaseFlowUUID"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: SetPurchaseFlowUUID_upvr (copied, readonly)
			]]
			arg1(SetPurchaseFlowUUID_upvr(arg1_11))
		end;
		onBuy = function() -- Line 803, Named "onBuy"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: purchaseItem_upvr (copied, readonly)
			]]
			arg1(purchaseItem_upvr())
		end;
		completePurchase = function() -- Line 806, Named "completePurchase"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: completePurchase_upvr (copied, readonly)
			]]
			arg1(completePurchase_upvr())
		end;
		onScaryModalConfirm = function() -- Line 809, Named "onScaryModalConfirm"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: launchRobuxUpsell_upvr (copied, readonly)
			]]
			arg1(launchRobuxUpsell_upvr())
		end;
		onOpenSecuritySettings = function(arg1_12) -- Line 812, Named "onOpenSecuritySettings"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: openSecuritySettings_upvr (copied, readonly)
			]]
			if arg1_12 then
				arg1(openSecuritySettings_upvr(arg1_12))
			else
				arg1(openSecuritySettings_upvr())
			end
		end;
		onRobuxUpsell = function() -- Line 819, Named "onRobuxUpsell"
			--[[ Upvalues[4]:
				[1]: GetFFlagEnableTexasU18VPCForInExperienceBundleRobuxUpsellFlow_upvr (copied, readonly)
				[2]: arg1 (readonly)
				[3]: initiateUserPurchaseSettingsPrecheck_upvr (copied, readonly)
				[4]: initiatePurchasePrecheck_upvr (copied, readonly)
			]]
			if GetFFlagEnableTexasU18VPCForInExperienceBundleRobuxUpsellFlow_upvr() then
				arg1(initiateUserPurchaseSettingsPrecheck_upvr())
			else
				arg1(initiatePurchasePrecheck_upvr())
			end
		end;
		hideWindow = function() -- Line 826, Named "hideWindow"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: hideWindow_upvr (copied, readonly)
			]]
			arg1(hideWindow_upvr())
		end;
		completeRequest = function() -- Line 829, Named "completeRequest"
			--[[ Upvalues[4]:
				[1]: FFlagAddCursorProviderToPurchasePromptApp_upvr (copied, readonly)
				[2]: GuiService_upvr (copied, readonly)
				[3]: arg1 (readonly)
				[4]: completeRequest_upvr (copied, readonly)
			]]
			if FFlagAddCursorProviderToPurchasePromptApp_upvr then
				GuiService_upvr.SelectedCoreObject = nil
			end
			arg1(completeRequest_upvr())
		end;
		onAnalyticEvent = function(arg1_13, arg2) -- Line 835, Named "onAnalyticEvent"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: sendEvent_upvr (copied, readonly)
			]]
			arg1(sendEvent_upvr(arg1_13, arg2))
		end;
	}
end)(any_extend_result1)