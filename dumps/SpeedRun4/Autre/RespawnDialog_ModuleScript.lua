-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:53:57
-- Luau version 6, Types version 3
-- Time taken: 0.002768 seconds

local InGameMenuDependencies = require(game:GetService("CorePackages").Packages.InGameMenuDependencies)
local Parent = script.Parent.Parent
local Roact_upvr = InGameMenuDependencies.Roact
local IGMRespawnControllerBar_upvr = require(script.Parent.IGMRespawnControllerBar)
local withLocalization_upvr = require(Parent.Localization.withLocalization)
local ConfirmationDialog_upvr = require(script.Parent.ConfirmationDialog)
local SetRespawning_upvr = require(Parent.Actions.SetRespawning)
local SendAnalytics_upvr = require(Parent.Utility.SendAnalytics)
local Constants_upvr = require(Parent.Resources.Constants)
local RespawnPlayer_upvr = require(Parent.Thunks.RespawnPlayer)
return InGameMenuDependencies.RoactRodux.UNSTABLE_connect2(function(arg1, arg2) -- Line 55
	return {
		isRespawning = arg1.respawn.dialogOpen;
		inputType = arg1.displayOptions.inputType;
	}
end, function(arg1) -- Line 60
	--[[ Upvalues[4]:
		[1]: SetRespawning_upvr (readonly)
		[2]: SendAnalytics_upvr (readonly)
		[3]: Constants_upvr (readonly)
		[4]: RespawnPlayer_upvr (readonly)
	]]
	return {
		onCancel = function() -- Line 62, Named "onCancel"
			--[[ Upvalues[4]:
				[1]: arg1 (readonly)
				[2]: SetRespawning_upvr (copied, readonly)
				[3]: SendAnalytics_upvr (copied, readonly)
				[4]: Constants_upvr (copied, readonly)
			]]
			arg1(SetRespawning_upvr(false))
			SendAnalytics_upvr(Constants_upvr.AnalyticsInGameMenuName, Constants_upvr.AnalyticsRespawnCharacterName, {
				confirmed = Constants_upvr.AnalyticsCancelledName;
			})
		end;
		onConfirm = function() -- Line 70, Named "onConfirm"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: RespawnPlayer_upvr (copied, readonly)
			]]
			arg1(RespawnPlayer_upvr)
		end;
	}
end)(function(arg1) -- Line 22, Named "RespawnDialog"
	--[[ Upvalues[4]:
		[1]: Roact_upvr (readonly)
		[2]: IGMRespawnControllerBar_upvr (readonly)
		[3]: withLocalization_upvr (readonly)
		[4]: ConfirmationDialog_upvr (readonly)
	]]
	local function _() -- Line 23, Named "renderRespawnDialogControllerBar"
		--[[ Upvalues[3]:
			[1]: Roact_upvr (copied, readonly)
			[2]: IGMRespawnControllerBar_upvr (copied, readonly)
			[3]: arg1 (readonly)
		]]
		return Roact_upvr.createElement(IGMRespawnControllerBar_upvr, {
			inputType = arg1.inputType;
		})
	end
	return withLocalization_upvr({
		titleText = "CoreScripts.InGameMenu.RespawnCharacterDialogTitle";
		bodyText = "CoreScripts.InGameMenu.RespawnCharacterDialogBody";
		confirmText = "CoreScripts.InGameMenu.RespawnCharacterDialogConfirm";
		cancelText = "CoreScripts.InGameMenu.Cancel";
	})(function(arg1_2) -- Line 34
		--[[ Upvalues[4]:
			[1]: Roact_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: IGMRespawnControllerBar_upvr (copied, readonly)
			[4]: ConfirmationDialog_upvr (copied, readonly)
		]]
		local module = {}
		local var11
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var11 = var11(IGMRespawnControllerBar_upvr, tbl)
			tbl.inputType = arg1.inputType
			local tbl = {}
			var11 = Roact_upvr.createElement
			return var11
		end
		if not arg1.isRespawning or not INLINED() then
			var11 = nil
		end
		module.RespawnDialogControllerBar = var11
		var11 = Roact_upvr.createElement
		var11 = var11(ConfirmationDialog_upvr, {
			visible = arg1.isRespawning;
			titleText = arg1_2.titleText;
			bodyText = arg1_2.bodyText;
			confirmText = arg1_2.confirmText;
			cancelText = arg1_2.cancelText;
			bindReturnToConfirm = true;
			onCancel = arg1.onCancel;
			onConfirm = arg1.onConfirm;
			inputType = arg1.inputType;
		})
		module.ConfirmationDialog = var11
		return Roact_upvr.createFragment(module)
	end)
end)