-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:17:11
-- Luau version 6, Types version 3
-- Time taken: 0.006672 seconds

local AmpUpsell = script:FindFirstAncestor("AmpUpsell")
local Parent = AmpUpsell.Parent
local AuthAnalytics = require(Parent.AuthAnalytics)
local useNavigation_upvr = require(Parent.Navigation).useNavigation
local useDispatch_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useDispatch
local useAppPolicy_upvr = require(Parent.UniversalAppPolicy).useAppPolicy
local React_upvr = require(Parent.React)
local authModalShown_upvr = AuthAnalytics.Events.authModalShown
local authMsgShown_upvr = AuthAnalytics.Events.authMsgShown
local NavigateDown_upvr = require(Parent.NavigationRodux).Thunks.NavigateDown
local AppPage_upvr = require(Parent.RobloxAppEnums).AppPage
local FacialAgeEstimationServiceWrapper_upvr = require(script.Parent.FacialAgeEstimationServiceWrapper)
local game_DefineFastInt_result1_upvr = game:DefineFastInt("FAEWithCallbackPollDelay", 2)
local game_DefineFastInt_result1_upvr_3 = game:DefineFastInt("FAEWithCallbackPollMaxRetries", 5)
local game_DefineFastInt_result1_upvr_4 = game:DefineFastInt("FAEBackgroundOnlyPollDelay", 15)
local game_DefineFastInt_result1_upvr_2 = game:DefineFastInt("FAEBackgroundOnlyPollMaxRetries", 40)
local usePollIDVStatus_upvr = require(AmpUpsell.Common.usePollIDVStatus)
local Promise_upvr = require(Parent.Promise)
local IDVApiProvider_upvr = require(AmpUpsell.Common.IDVApiProvider)
local FAEFailedModal_upvr = require(script.Parent.FAEFailedModal)
local FAEDirectLinkUpsell_upvr = require(script.Parent.FAEDirectLinkUpsell)
local LoadingSpinner_upvr = require(Parent.UIBlox).App.Loading.LoadingSpinner
return function() -- Line 45, Named "FAEUpsellContainer"
	--[[ Upvalues[19]:
		[1]: useNavigation_upvr (readonly)
		[2]: useDispatch_upvr (readonly)
		[3]: useAppPolicy_upvr (readonly)
		[4]: React_upvr (readonly)
		[5]: authModalShown_upvr (readonly)
		[6]: authMsgShown_upvr (readonly)
		[7]: NavigateDown_upvr (readonly)
		[8]: AppPage_upvr (readonly)
		[9]: FacialAgeEstimationServiceWrapper_upvr (readonly)
		[10]: game_DefineFastInt_result1_upvr (readonly)
		[11]: game_DefineFastInt_result1_upvr_3 (readonly)
		[12]: game_DefineFastInt_result1_upvr_4 (readonly)
		[13]: game_DefineFastInt_result1_upvr_2 (readonly)
		[14]: usePollIDVStatus_upvr (readonly)
		[15]: Promise_upvr (readonly)
		[16]: IDVApiProvider_upvr (readonly)
		[17]: FAEFailedModal_upvr (readonly)
		[18]: FAEDirectLinkUpsell_upvr (readonly)
		[19]: LoadingSpinner_upvr (readonly)
	]]
	local var5_result1_upvr = useDispatch_upvr()
	local var6_result1_upvr = useAppPolicy_upvr(function(arg1) -- Line 49
		return arg1.getHasWebViewSupportForFAE()
	end)
	local any_getParam_result1 = useNavigation_upvr().getParam("extraProps")
	local entryPointEventCtx_upvr = any_getParam_result1.entryPointEventCtx
	local metadata = any_getParam_result1.metadata
	local onSuccess_upvr = any_getParam_result1.onSuccess
	local any_useState_result1_2, any_useState_result2_upvr = React_upvr.useState(false)
	local any_useState_result1_3, any_useState_result2_upvr_2 = React_upvr.useState(nil)
	local var34_upvr
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var34_upvr = metadata.sessionId
		return var34_upvr
	end
	if not metadata or not INLINED() then
		var34_upvr = ""
	end
	local any_useState_result1, any_useState_result2_upvr_3 = React_upvr.useState(var34_upvr)
	local any_useCallback_result1_upvr_4 = React_upvr.useCallback(function(arg1, arg2) -- Line 78
		--[[ Upvalues[3]:
			[1]: var5_result1_upvr (readonly)
			[2]: NavigateDown_upvr (copied, readonly)
			[3]: AppPage_upvr (copied, readonly)
		]]
		local tbl = {
			name = AppPage_upvr.GenericWebPage;
		}
		tbl.detail = arg1
		tbl.extraProps = {
			title = "";
			onClose = function() -- Line 84, Named "onClose"
				--[[ Upvalues[1]:
					[1]: arg2 (readonly)
				]]
				arg2()
			end;
		}
		var5_result1_upvr(NavigateDown_upvr(tbl))
	end, {var5_result1_upvr})
	local any_useMemo_result1 = React_upvr.useMemo(function() -- Line 91
		--[[ Upvalues[6]:
			[1]: FacialAgeEstimationServiceWrapper_upvr (copied, readonly)
			[2]: var6_result1_upvr (readonly)
			[3]: game_DefineFastInt_result1_upvr (copied, readonly)
			[4]: game_DefineFastInt_result1_upvr_3 (copied, readonly)
			[5]: game_DefineFastInt_result1_upvr_4 (copied, readonly)
			[6]: game_DefineFastInt_result1_upvr_2 (copied, readonly)
		]]
		if FacialAgeEstimationServiceWrapper_upvr.isAvailable() or var6_result1_upvr then
			return {
				delay = game_DefineFastInt_result1_upvr;
				retries = game_DefineFastInt_result1_upvr_3;
			}
		end
		return {
			delay = game_DefineFastInt_result1_upvr_4;
			retries = game_DefineFastInt_result1_upvr_2;
		}
	end, {var6_result1_upvr})
	local usePollIDVStatus_upvr_result1_upvr, var17_result2_upvr = usePollIDVStatus_upvr({
		delay = any_useMemo_result1.delay;
		retries = any_useMemo_result1.retries;
	})
	local any_useCallback_result1_upvr_3 = React_upvr.useCallback(function(arg1, arg2) -- Line 108
		--[[ Upvalues[7]:
			[1]: FacialAgeEstimationServiceWrapper_upvr (copied, readonly)
			[2]: authModalShown_upvr (copied, readonly)
			[3]: entryPointEventCtx_upvr (readonly)
			[4]: var6_result1_upvr (readonly)
			[5]: Promise_upvr (copied, readonly)
			[6]: any_useCallback_result1_upvr_4 (readonly)
			[7]: any_useState_result2_upvr_2 (readonly)
		]]
		local sessionIdentifier_upvr = arg1.sessionIdentifier
		local verificationLink_upvr = arg1.verificationLink
		if FacialAgeEstimationServiceWrapper_upvr.isAvailable() then
			authModalShown_upvr(entryPointEventCtx_upvr, arg2, "nativeFae")
			return FacialAgeEstimationServiceWrapper_upvr.startFlow(sessionIdentifier_upvr, arg1.sessionToken)
		end
		authModalShown_upvr(entryPointEventCtx_upvr, arg2, "noNativeFae")
		if var6_result1_upvr then
			return Promise_upvr.new(function(arg1_2) -- Line 120
				--[[ Upvalues[3]:
					[1]: sessionIdentifier_upvr (readonly)
					[2]: any_useCallback_result1_upvr_4 (copied, readonly)
					[3]: verificationLink_upvr (readonly)
				]]
				any_useCallback_result1_upvr_4(verificationLink_upvr, function() -- Line 121
					--[[ Upvalues[2]:
						[1]: arg1_2 (readonly)
						[2]: sessionIdentifier_upvr (copied, readonly)
					]]
					arg1_2(sessionIdentifier_upvr)
				end)
			end)
		end
		any_useState_result2_upvr_2(verificationLink_upvr)
		return Promise_upvr.resolve(sessionIdentifier_upvr)
	end, {entryPointEventCtx_upvr, var6_result1_upvr, any_useCallback_result1_upvr_4})
	local any_useCallback_result1_upvr = React_upvr.useCallback(function(arg1) -- Line 73
		--[[ Upvalues[3]:
			[1]: authMsgShown_upvr (copied, readonly)
			[2]: entryPointEventCtx_upvr (readonly)
			[3]: onSuccess_upvr (readonly)
		]]
		authMsgShown_upvr(entryPointEventCtx_upvr, arg1, "faeSuccess")
		onSuccess_upvr()
	end, {onSuccess_upvr, entryPointEventCtx_upvr})
	local any_useCallback_result1_upvr_2 = React_upvr.useCallback(function(arg1) -- Line 68
		--[[ Upvalues[3]:
			[1]: authModalShown_upvr (copied, readonly)
			[2]: entryPointEventCtx_upvr (readonly)
			[3]: any_useState_result2_upvr (readonly)
		]]
		authModalShown_upvr(entryPointEventCtx_upvr, arg1, "faeFailed")
		any_useState_result2_upvr(true)
	end, {entryPointEventCtx_upvr})
	React_upvr.useEffect(function() -- Line 134
		--[[ Upvalues[8]:
			[1]: var34_upvr (readonly)
			[2]: IDVApiProvider_upvr (copied, readonly)
			[3]: any_useState_result2_upvr_3 (readonly)
			[4]: any_useCallback_result1_upvr_3 (readonly)
			[5]: usePollIDVStatus_upvr_result1_upvr (readonly)
			[6]: any_useCallback_result1_upvr (readonly)
			[7]: any_useCallback_result1_upvr_2 (readonly)
			[8]: var17_result2_upvr (readonly)
		]]
		local var64_upvw = var34_upvr
		IDVApiProvider_upvr.startVerification({
			ageEstimation = true;
		}):andThen(function(arg1) -- Line 138
			--[[ Upvalues[2]:
				[1]: var64_upvw (read and write)
				[2]: any_useState_result2_upvr_3 (copied, readonly)
			]]
			var64_upvw = `{var64_upvw}_{arg1.sessionIdentifier}`
			any_useState_result2_upvr_3(var64_upvw)
			return arg1
		end):andThen(function(arg1) -- Line 143
			--[[ Upvalues[2]:
				[1]: any_useCallback_result1_upvr_3 (copied, readonly)
				[2]: var64_upvw (read and write)
			]]
			return any_useCallback_result1_upvr_3(arg1, var64_upvw)
		end):andThen(function(arg1) -- Line 146
			--[[ Upvalues[1]:
				[1]: usePollIDVStatus_upvr_result1_upvr (copied, readonly)
			]]
			return usePollIDVStatus_upvr_result1_upvr(arg1)
		end):andThen(function() -- Line 149
			--[[ Upvalues[2]:
				[1]: any_useCallback_result1_upvr (copied, readonly)
				[2]: var64_upvw (read and write)
			]]
			return any_useCallback_result1_upvr(var64_upvw)
		end):catch(function(arg1) -- Line 152
			--[[ Upvalues[2]:
				[1]: any_useCallback_result1_upvr_2 (copied, readonly)
				[2]: var64_upvw (read and write)
			]]
			any_useCallback_result1_upvr_2(var64_upvw)
		end)
		return function() -- Line 156
			--[[ Upvalues[1]:
				[1]: var17_result2_upvr (copied, readonly)
			]]
			var17_result2_upvr()
		end
	end, {})
	if any_useState_result1_2 then
		return React_upvr.createElement(FAEFailedModal_upvr, {
			sessionId = any_useState_result1;
			entryPointEventCtx = entryPointEventCtx_upvr;
			onClose = any_getParam_result1.onFailure;
			onRetry = any_getParam_result1.onRetry;
		})
	end
	if any_useState_result1_3 then
		return React_upvr.createElement(FAEDirectLinkUpsell_upvr, {
			sessionId = any_useState_result1;
			entryPointEventCtx = entryPointEventCtx_upvr;
			webLink = any_useState_result1_3;
			onCancel = any_getParam_result1.onCancel;
		})
	end
	return React_upvr.createElement(LoadingSpinner_upvr, {
		size = UDim2.fromOffset(42, 42);
		position = UDim2.fromScale(0.5, 0.5);
		anchorPoint = Vector2.new(0.5, 0.5);
	})
end