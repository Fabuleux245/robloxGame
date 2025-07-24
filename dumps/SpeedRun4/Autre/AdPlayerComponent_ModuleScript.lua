-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:46:34
-- Luau version 6, Types version 3
-- Time taken: 0.006499 seconds

local AdPlayer = script:FindFirstAncestor("AdPlayer")
local Parent = AdPlayer.Parent
local Foundation = require(Parent.Foundation)
local components_upvr = AdPlayer.components
local Flags_upvr = require(AdPlayer.Flags)
local useTokens_upvr = Foundation.Hooks.useTokens
local React_upvr = require(Parent.React)
local table_freeze_result1_upvr = table.freeze({
	Loading = 1;
	Paused = 2;
	Playing = 3;
})
local RunService_upvr = game:GetService("RunService")
local View_upvr = Foundation.View
local StateLayerAffordance_upvr = Foundation.Enums.StateLayerAffordance
local ExitConfirmationModalComponent_upvr = require(components_upvr.ExitConfirmationModalComponent)
local ReportAdPopup_upvr = require(Parent.AdGuiInteractivity).ReportAdPopup
local VideoOverlayComponent_upvr = require(components_upvr.VideoOverlayComponent)
return function(arg1) -- Line 35, Named "AdPlayerComponent"
	--[[ Upvalues[11]:
		[1]: Flags_upvr (readonly)
		[2]: useTokens_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: table_freeze_result1_upvr (readonly)
		[5]: RunService_upvr (readonly)
		[6]: components_upvr (readonly)
		[7]: View_upvr (readonly)
		[8]: StateLayerAffordance_upvr (readonly)
		[9]: ExitConfirmationModalComponent_upvr (readonly)
		[10]: ReportAdPopup_upvr (readonly)
		[11]: VideoOverlayComponent_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local any_GetEnableLuaRewardTimerUI_result1_upvr = Flags_upvr.GetEnableLuaRewardTimerUI()
	local any_useState_result1_2, any_useState_result2_upvr = React_upvr.useState(0)
	local any_useBinding_result1_2, any_useBinding_result2_2_upvr = React_upvr.useBinding(0)
	local var21_upvw
	if any_GetEnableLuaRewardTimerUI_result1_upvr then
		local any_useBinding_result1, any_useBinding_result2 = React_upvr.useBinding(0)
		local var24_upvw = any_useBinding_result1
		var21_upvw = any_useBinding_result2
	end
	local any_useState_result1_3, any_useState_result2_upvr_3 = React_upvr.useState(false)
	local any_useState_result1, any_useState_result2_upvr_2 = React_upvr.useState(false)
	local any_useState_result1_upvr, any_useState_result2_upvr_4 = React_upvr.useState(table_freeze_result1_upvr.Loading)
	local var31_upvw
	local var32_upvw
	if any_GetEnableLuaRewardTimerUI_result1_upvr then
		var31_upvw = React_upvr.createRef()
		var32_upvw = React_upvr.createRef()
	else
		var31_upvw = React_upvr.useRef(nil)
		var32_upvw = React_upvr.useRef(nil)
	end
	local durationNeededForReward_upvr = arg1.durationNeededForReward
	local function _() -- Line 63, Named "dismissModals"
		--[[ Upvalues[4]:
			[1]: any_useState_result2_upvr_3 (readonly)
			[2]: any_useState_result2_upvr_2 (readonly)
			[3]: any_GetEnableLuaRewardTimerUI_result1_upvr (readonly)
			[4]: var31_upvw (read and write)
		]]
		any_useState_result2_upvr_3(false)
		any_useState_result2_upvr_2(false)
		local var34
		if any_GetEnableLuaRewardTimerUI_result1_upvr then
			var34 = var31_upvw.current
		else
			var34 = var31_upvw:getValue()
		end
		if var34 then
			var34.dismissModals()
		end
	end
	React_upvr.useEffect(function() -- Line 78
		--[[ Upvalues[10]:
			[1]: any_GetEnableLuaRewardTimerUI_result1_upvr (readonly)
			[2]: var32_upvw (read and write)
			[3]: any_useState_result2_upvr_4 (readonly)
			[4]: table_freeze_result1_upvr (copied, readonly)
			[5]: any_useState_result2_upvr (readonly)
			[6]: arg1 (readonly)
			[7]: RunService_upvr (copied, readonly)
			[8]: any_useBinding_result2_2_upvr (readonly)
			[9]: durationNeededForReward_upvr (readonly)
			[10]: var21_upvw (read and write)
		]]
		local var36_upvw
		if any_GetEnableLuaRewardTimerUI_result1_upvr then
			var36_upvw = var32_upvw.current
		else
			var36_upvw = var32_upvw:getValue()
		end
		if not var36_upvw.IsLoaded then
			var36_upvw.Loaded:Wait()
		end
		any_useState_result2_upvr_4(table_freeze_result1_upvr.Playing)
		any_useState_result2_upvr(var36_upvw.TimeLength)
		var36_upvw.Ended:Connect(arg1.onComplete)
		arg1.onVideoFrameLoaded(var36_upvw)
		local any_Connect_result1_upvr = RunService_upvr.RenderStepped:Connect(function() -- Line 93
			--[[ Upvalues[5]:
				[1]: var36_upvw (read and write)
				[2]: any_useBinding_result2_2_upvr (copied, readonly)
				[3]: any_GetEnableLuaRewardTimerUI_result1_upvr (copied, readonly)
				[4]: durationNeededForReward_upvr (copied, readonly)
				[5]: var21_upvw (copied, read and write)
			]]
			if 0 < var36_upvw.TimeLength then
				any_useBinding_result2_2_upvr(var36_upvw.TimePosition / var36_upvw.TimeLength)
				if any_GetEnableLuaRewardTimerUI_result1_upvr and durationNeededForReward_upvr then
					if durationNeededForReward_upvr == 0 then
						var21_upvw(1)
						return
					end
					var21_upvw(math.min(var36_upvw.TimePosition / durationNeededForReward_upvr, 1))
				end
			end
		end)
		return function() -- Line 111
			--[[ Upvalues[1]:
				[1]: any_Connect_result1_upvr (readonly)
			]]
			any_Connect_result1_upvr:Disconnect()
		end
	end, {})
	if any_useState_result1_upvr == table_freeze_result1_upvr.Playing then
		local var40 = not (any_useState_result1_3 or any_useState_result1)
	end
	local var41
	if Flags_upvr.EnableTestAdDisclaimer and RunService_upvr:IsStudio() then
		var41 = React_upvr.createElement(require(components_upvr.TestAdDisclaimerComponent), {
			isEligible = arg1.isEligible;
		})
	end
	local module = {}
	local tbl_2 = {
		Size = UDim2.fromScale(1, 1);
		Position = UDim2.fromScale(0.5, 0.5);
		AnchorPoint = Vector2.new(0.5, 0.5);
		Video = arg1.creativeAssetUrl;
		Playing = var40;
	}
	local var47 = 0
	tbl_2.BorderSizePixel = var47
	if any_useState_result1_3 then
		var47 = 0.4
	else
		var47 = 0
	end
	tbl_2.Transparency = var47
	tbl_2.ref = var32_upvw
	local tbl = {
		testAdDisclaimer = var41;
		confirmExitModal = React_upvr.createElement(ExitConfirmationModalComponent_upvr, {
			Enabled = any_useState_result1_3;
			onCancel = function() -- Line 154, Named "onCancel"
				--[[ Upvalues[1]:
					[1]: any_useState_result2_upvr_3 (readonly)
				]]
				any_useState_result2_upvr_3(false)
			end;
			onConfirm = arg1.onCancel;
		});
		reportAdModal = React_upvr.createElement(ReportAdPopup_upvr, {
			showReportAdPopup = any_useState_result1;
			onClose = function() -- Line 161, Named "onClose"
				--[[ Upvalues[1]:
					[1]: any_useState_result2_upvr_2 (readonly)
				]]
				any_useState_result2_upvr_2(false)
			end;
			onOpen = function() -- Line 164, Named "onOpen"
				--[[ Upvalues[1]:
					[1]: any_useState_result2_upvr_2 (readonly)
				]]
				any_useState_result2_upvr_2(true)
			end;
			adInfo = arg1.getReportAdInfo();
		});
		React_upvr.createElement("UIAspectRatioConstraint", {
			AspectRatio = 1.7777777777777777;
			AspectType = Enum.AspectType.FitWithinMaxSize;
		})
	}
	local tbl_3 = {
		ref = var31_upvw;
		alpha = any_useBinding_result1_2;
		totalDuration = any_useState_result1_2;
	}
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	tbl_3.parentModalOpen = any_useState_result1_3 or any_useState_result1
	if any_GetEnableLuaRewardTimerUI_result1_upvr then
		-- KONSTANTWARNING: GOTO [280] #208
	end
	tbl_3.rewardWaitTime = nil
	if any_GetEnableLuaRewardTimerUI_result1_upvr then
	else
	end
	tbl_3.rewardWaitAlpha = nil
	function tbl_3.dismissModals() -- Line 58, Named "dismissParentModals"
		--[[ Upvalues[2]:
			[1]: any_useState_result2_upvr_3 (readonly)
			[2]: any_useState_result2_upvr_2 (readonly)
		]]
		any_useState_result2_upvr_3(false)
		any_useState_result2_upvr_2(false)
	end
	tbl_3.parentPaused = not var40
	tbl_3.showWhyThisAd = arg1.showWhyThisAd
	function tbl_3.setPaused(arg1_2) -- Line 179
		--[[ Upvalues[3]:
			[1]: any_useState_result1_upvr (readonly)
			[2]: table_freeze_result1_upvr (copied, readonly)
			[3]: any_useState_result2_upvr_4 (readonly)
		]]
		local Loading = table_freeze_result1_upvr.Loading
		if any_useState_result1_upvr ~= Loading then
			if arg1_2 then
				Loading = table_freeze_result1_upvr.Paused
			else
				Loading = table_freeze_result1_upvr.Playing
			end
			any_useState_result2_upvr_4(Loading)
		end
	end
	function tbl_3.showReportAdModal() -- Line 184
		--[[ Upvalues[1]:
			[1]: any_useState_result2_upvr_2 (readonly)
		]]
		any_useState_result2_upvr_2(true)
	end
	function tbl_3.showExitConfirmationModal() -- Line 187
		--[[ Upvalues[7]:
			[1]: Flags_upvr (copied, readonly)
			[2]: var24_upvw (read and write)
			[3]: arg1 (readonly)
			[4]: any_useState_result2_upvr_3 (readonly)
			[5]: any_useState_result2_upvr_2 (readonly)
			[6]: any_GetEnableLuaRewardTimerUI_result1_upvr (readonly)
			[7]: var31_upvw (read and write)
		]]
		local var54
		if var54 then
			var54 = var24_upvw:getValue()
			if 1 <= var54 then
				var54 = arg1.onComplete
				var54()
				return
			end
		end
		var54 = any_useState_result2_upvr_3
		var54(false)
		var54 = any_useState_result2_upvr_2
		var54(false)
		var54 = nil
		if any_GetEnableLuaRewardTimerUI_result1_upvr then
			var54 = var31_upvw.current
		else
			var54 = var31_upvw:getValue()
		end
		if var54 then
			var54.dismissModals()
		end
		any_useState_result2_upvr_3(true)
	end
	tbl.videoOverlay = React_upvr.createElement(VideoOverlayComponent_upvr, tbl_3)
	module.videoFrame = React_upvr.createElement("VideoFrame", tbl_2, tbl)
	return React_upvr.createElement(View_upvr, {
		tag = "size-full";
		onActivated = function() -- Line 130, Named "onActivated"
		end;
		stateLayer = {
			affordance = StateLayerAffordance_upvr.None;
		};
		backgroundStyle = useTokens_upvr().Color.Extended.Black.Black_100;
	}, module)
end