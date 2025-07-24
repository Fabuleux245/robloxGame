-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:44:18
-- Luau version 6, Types version 3
-- Time taken: 0.003194 seconds

local CorePackages = game:GetService("CorePackages")
local Modules_upvr = game:GetService("CoreGui").RobloxGui.Modules
local BlockingUtility_upvr = require(CorePackages.Workspace.Packages.BlockingUtility)
local React_upvr = require(CorePackages.Packages.React)
local FFlagEnableToastForBlockingModal_upvr = require(Modules_upvr.Common.Flags.FFlagEnableToastForBlockingModal)
local isNewInGameMenuEnabled_upvr = require(Modules_upvr.isNewInGameMenuEnabled)
local useLocalization_upvr = require(CorePackages.Workspace.Packages.Localization).Hooks.useLocalization
local Toast_upvr = require(CorePackages.Packages.UIBlox).App.Dialog.Toast
local ActionModal_upvr = require(script.Parent.ActionModal)
return function(arg1) -- Line 32, Named "BlockingModalContainer"
	--[[ Upvalues[8]:
		[1]: BlockingUtility_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: FFlagEnableToastForBlockingModal_upvr (readonly)
		[4]: isNewInGameMenuEnabled_upvr (readonly)
		[5]: Modules_upvr (readonly)
		[6]: useLocalization_upvr (readonly)
		[7]: Toast_upvr (readonly)
		[8]: ActionModal_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local player_upvr = arg1.player
	local closeModal_upvr = arg1.closeModal
	local blockingUtility_upvr = arg1.blockingUtility
	if not blockingUtility_upvr then
		blockingUtility_upvr = BlockingUtility_upvr
	end
	local analytics_upvr = arg1.analytics
	local source_upvr = arg1.source
	local onBlockingSuccess_upvr = arg1.onBlockingSuccess
	local any_useState_result1, any_useState_result2_upvr = React_upvr.useState(Vector2.new(1000, 1000))
	local var18_upvw
	if FFlagEnableToastForBlockingModal_upvr then
		local any_useState_result1_2, any_useState_result2 = React_upvr.useState(false)
		local var21 = any_useState_result1_2
		var18_upvw = any_useState_result2
	end
	local any_useCallback_result1_upvr = React_upvr.useCallback(function() -- Line 47
		--[[ Upvalues[8]:
			[1]: blockingUtility_upvr (readonly)
			[2]: player_upvr (readonly)
			[3]: analytics_upvr (readonly)
			[4]: source_upvr (readonly)
			[5]: onBlockingSuccess_upvr (readonly)
			[6]: FFlagEnableToastForBlockingModal_upvr (copied, readonly)
			[7]: closeModal_upvr (readonly)
			[8]: var18_upvw (read and write)
		]]
		if blockingUtility_upvr:BlockPlayerAsync(player_upvr) then
			analytics_upvr:action("SettingsHub", "blockUser", {
				blockeeUserId = player_upvr.UserId;
				source = source_upvr;
			})
			if onBlockingSuccess_upvr then
				onBlockingSuccess_upvr()
			end
			if FFlagEnableToastForBlockingModal_upvr then
				closeModal_upvr()
				-- KONSTANTWARNING: GOTO [35] #31
			end
		elseif FFlagEnableToastForBlockingModal_upvr then
			var18_upvw(true)
		end
		if not FFlagEnableToastForBlockingModal_upvr then
			closeModal_upvr()
		end
	end, {closeModal_upvr, player_upvr, analytics_upvr, source_upvr, onBlockingSuccess_upvr})
	local tbl = {
		titleKey = {
			DisplayName = player_upvr.DisplayName;
			"Feature.BlockingModal.Heading.BlockUser"
		};
		bodyKey = "Feature.BlockingModal.Message.BlockConfirmation";
		cancelTextKey = "Feature.BlockingModal.Action.Cancel";
		blockTextKey = "Feature.BlockingModal.Action.Block";
	}
	local var31 = "Feature.BlockingModal.Action.BlockAndReport"
	tbl.blockAndReportTextKey = var31
	if FFlagEnableToastForBlockingModal_upvr then
		var31 = "Feature.Toast.NetworkingError.SomethingIsWrong"
	else
		var31 = nil
	end
	tbl.blockingFailed = var31
	local useLocalization_upvr_result1 = useLocalization_upvr(tbl)
	if FFlagEnableToastForBlockingModal_upvr and var21 then
		return React_upvr.createElement(Toast_upvr, {
			duration = 3;
			show = var21;
			toastContent = {
				toastTitle = useLocalization_upvr_result1.blockingFailed;
				onDismissed = closeModal_upvr;
			};
		})
	end
	return React_upvr.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0);
		BackgroundTransparency = 1;
		ZIndex = 2;
		[React_upvr.Change.AbsoluteSize] = function(arg1_2) -- Line 117
			--[[ Upvalues[1]:
				[1]: any_useState_result2_upvr (readonly)
			]]
			any_useState_result2_upvr(arg1_2.AbsoluteSize)
		end;
	}, {
		BlockingModal = React_upvr.createElement(ActionModal_upvr, {
			screenSize = any_useState_result1;
			title = useLocalization_upvr_result1.titleKey;
			body = useLocalization_upvr_result1.bodyKey;
			blockText = useLocalization_upvr_result1.blockTextKey;
			blockAndReportText = useLocalization_upvr_result1.blockAndReportTextKey;
			cancelText = useLocalization_upvr_result1.cancelTextKey;
			cancel = closeModal_upvr;
			block = any_useCallback_result1_upvr;
			blockAndReport = React_upvr.useCallback(function() -- Line 72
				--[[ Upvalues[5]:
					[1]: any_useCallback_result1_upvr (readonly)
					[2]: source_upvr (readonly)
					[3]: isNewInGameMenuEnabled_upvr (copied, readonly)
					[4]: Modules_upvr (copied, readonly)
					[5]: player_upvr (readonly)
				]]
				any_useCallback_result1_upvr()
				local var27 = source_upvr or "BlockingModal"
				if isNewInGameMenuEnabled_upvr() then
					require(Modules_upvr.InGameMenuInit).openReportDialog(player_upvr, var27)
				else
					require(Modules_upvr.Settings.Pages.ReportAbuseMenuNewContainerPage):ReportPlayer(player_upvr, var27)
				end
			end, {any_useCallback_result1_upvr, player_upvr, source_upvr});
		});
	})
end