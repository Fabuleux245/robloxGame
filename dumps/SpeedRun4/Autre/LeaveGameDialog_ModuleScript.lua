-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:53:40
-- Luau version 6, Types version 3
-- Time taken: 0.002628 seconds

local CorePackages = game:GetService("CorePackages")
local InGameMenuDependencies = require(CorePackages.Packages.InGameMenuDependencies)
local t = InGameMenuDependencies.t
local Parent = script.Parent.Parent
local Constants_upvr = require(Parent.Resources.Constants)
local SendAnalytics_upvr = require(Parent.Utility.SendAnalytics)
local GlobalConfig_upvr = require(Parent.GlobalConfig)
local any_strictInterface_result1_upvr = t.strictInterface({
	isLeavingGame = t.boolean;
	onCancel = t.callback;
	sendAnalytics = t.callback;
})
local withLocalization_upvr = require(Parent.Localization.withLocalization)
local Roact_upvr = InGameMenuDependencies.Roact
local ConfirmationDialog_upvr = require(script.Parent.ConfirmationDialog)
local RunService_upvr = game:GetService("RunService")
local GetDefaultQualityLevel_upvr = require(CorePackages.Workspace.Packages.AppCommonLib).GetDefaultQualityLevel
local CancelLeavingGame_upvr = require(Parent.Actions.CancelLeavingGame)
return InGameMenuDependencies.RoactRodux.UNSTABLE_connect2(function(arg1, arg2) -- Line 69
	return {
		isLeavingGame = arg1.leavingGame;
	}
end, function(arg1) -- Line 73
	--[[ Upvalues[3]:
		[1]: CancelLeavingGame_upvr (readonly)
		[2]: SendAnalytics_upvr (readonly)
		[3]: Constants_upvr (readonly)
	]]
	return {
		onCancel = function() -- Line 75, Named "onCancel"
			--[[ Upvalues[4]:
				[1]: arg1 (readonly)
				[2]: CancelLeavingGame_upvr (copied, readonly)
				[3]: SendAnalytics_upvr (copied, readonly)
				[4]: Constants_upvr (copied, readonly)
			]]
			arg1(CancelLeavingGame_upvr())
			SendAnalytics_upvr(Constants_upvr.AnalyticsInGameMenuName, Constants_upvr.AnalyticsLeaveGameName, {
				confirmed = Constants_upvr.AnalyticsCancelledName;
			})
		end;
	}
end)(function(arg1) -- Line 31, Named "LeaveGameDialog"
	--[[ Upvalues[9]:
		[1]: GlobalConfig_upvr (readonly)
		[2]: any_strictInterface_result1_upvr (readonly)
		[3]: withLocalization_upvr (readonly)
		[4]: Roact_upvr (readonly)
		[5]: ConfirmationDialog_upvr (readonly)
		[6]: SendAnalytics_upvr (readonly)
		[7]: Constants_upvr (readonly)
		[8]: RunService_upvr (readonly)
		[9]: GetDefaultQualityLevel_upvr (readonly)
	]]
	if GlobalConfig_upvr.propValidation then
		assert(any_strictInterface_result1_upvr(arg1))
	end
	return withLocalization_upvr({
		bodyText = "CoreScripts.InGameMenu.ConfirmLeaveGame";
		confirmText = "CoreScripts.InGameMenu.Leave";
		titleText = "CoreScripts.InGameMenu.LeaveGameQuestion";
		cancelText = "CoreScripts.InGameMenu.Cancel";
	})(function(arg1_2) -- Line 41
		--[[ Upvalues[7]:
			[1]: Roact_upvr (copied, readonly)
			[2]: ConfirmationDialog_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: SendAnalytics_upvr (copied, readonly)
			[5]: Constants_upvr (copied, readonly)
			[6]: RunService_upvr (copied, readonly)
			[7]: GetDefaultQualityLevel_upvr (copied, readonly)
		]]
		return Roact_upvr.createElement(ConfirmationDialog_upvr, {
			bodyText = arg1_2.bodyText;
			confirmText = arg1_2.confirmText;
			titleText = arg1_2.titleText;
			cancelText = arg1_2.cancelText;
			bindReturnToConfirm = true;
			onCancel = arg1.onCancel;
			onConfirm = function() -- Line 51, Named "onConfirm"
				--[[ Upvalues[4]:
					[1]: SendAnalytics_upvr (copied, readonly)
					[2]: Constants_upvr (copied, readonly)
					[3]: RunService_upvr (copied, readonly)
					[4]: GetDefaultQualityLevel_upvr (copied, readonly)
				]]
				SendAnalytics_upvr(Constants_upvr.AnalyticsInGameMenuName, Constants_upvr.AnalyticsLeaveGameName, {
					confirmed = Constants_upvr.AnalyticsConfirmedName;
				})
				RunService_upvr.Heartbeat:Wait()
				game:Shutdown()
				settings().Rendering.QualityLevel = GetDefaultQualityLevel_upvr()
			end;
			blurBackground = true;
			visible = arg1.isLeavingGame;
		})
	end)
end)