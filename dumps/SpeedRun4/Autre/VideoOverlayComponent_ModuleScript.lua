-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:46:39
-- Luau version 6, Types version 3
-- Time taken: 0.014907 seconds

local AdPlayer = script:FindFirstAncestor("AdPlayer")
local Parent = AdPlayer.Parent
local React_upvr = require(Parent.React)
local AdGuiInteractivity = require(Parent.AdGuiInteractivity)
local Foundation = require(Parent.Foundation)
local View_upvr = Foundation.View
local useTokens_upvr = Foundation.Hooks.useTokens
local Flags_upvr = require(AdPlayer.Flags)
local components = script:FindFirstAncestor("components")
local Image_upvr = Foundation.Image
local any_GetAdPlayerExitButton_result1_upvr = Flags_upvr.GetAdPlayerExitButton()
local function ExitButtonComponent_upvr(arg1) -- Line 32, Named "ExitButtonComponent"
	--[[ Upvalues[5]:
		[1]: useTokens_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: View_upvr (readonly)
		[4]: Image_upvr (readonly)
		[5]: any_GetAdPlayerExitButton_result1_upvr (readonly)
	]]
	return React_upvr.createElement(View_upvr, {
		tag = "size-900 radius-circle";
		backgroundStyle = useTokens_upvr().Color.Common.Scrim;
		onActivated = arg1.showExitConfirmationModal;
	}, {
		icon = React_upvr.createElement(Image_upvr, {
			tag = "size-600 radius-circle position-center-center anchor-center-center";
			Image = any_GetAdPlayerExitButton_result1_upvr;
		});
	})
end
local Text_upvr = Foundation.Text
local Font_new_result1_upvr = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
local function TimerComponent_upvr(arg1) -- Line 47, Named "TimerComponent"
	--[[ Upvalues[3]:
		[1]: React_upvr (readonly)
		[2]: Text_upvr (readonly)
		[3]: Font_new_result1_upvr (readonly)
	]]
	return React_upvr.createElement(Text_upvr, {
		tag = "size-0-500 auto-x content-emphasis";
		LayoutOrder = 2;
		Text = arg1.alpha:map(function(arg1_2) -- Line 51
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			local ceiled = math.ceil((1 - arg1_2) * arg1.totalDuration)
			return string.format("%02i:%02i", ceiled // 60, ceiled % 60)
		end);
		fontStyle = {
			Font = Font_new_result1_upvr;
			FontSize = 14;
		};
	})
end
local ReactOtter_upvr = require(Parent.ReactOtter)
local function ScrimComponent_upvr(arg1) -- Line 65, Named "ScrimComponent"
	--[[ Upvalues[4]:
		[1]: useTokens_upvr (readonly)
		[2]: ReactOtter_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: View_upvr (readonly)
	]]
	local any_useAnimatedBinding_result1, any_useAnimatedBinding_result2_upvr = ReactOtter_upvr.useAnimatedBinding(0)
	local function var24() -- Line 69
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: any_useAnimatedBinding_result2_upvr (readonly)
			[3]: ReactOtter_upvr (copied, readonly)
		]]
		if arg1.showScrim then
			any_useAnimatedBinding_result2_upvr(ReactOtter_upvr.instant(0))
		else
			local var25_upvw = false
			task.delay(2, function() -- Line 74
				--[[ Upvalues[3]:
					[1]: var25_upvw (read and write)
					[2]: any_useAnimatedBinding_result2_upvr (copied, readonly)
					[3]: ReactOtter_upvr (copied, readonly)
				]]
				if not var25_upvw then
					any_useAnimatedBinding_result2_upvr(ReactOtter_upvr.spring(1))
				end
			end)
			return function() -- Line 80
				--[[ Upvalues[1]:
					[1]: var25_upvw (read and write)
				]]
				var25_upvw = true
			end
		end
		return nil
	end
	React_upvr.useEffect(var24, {arg1.showScrim})
	var24 = arg1.children
	local var29 = var24
	if not var29 then
		var29 = {}
	end
	local clone = table.clone(var29)
	clone.scrim = React_upvr.createElement(View_upvr, {
		tag = "size-full";
		backgroundStyle = useTokens_upvr().Color.Common.Scrim;
		ZIndex = -1;
	})
	return React_upvr.createElement(View_upvr, {
		tag = "size-full";
		GroupTransparency = any_useAnimatedBinding_result1;
		ZIndex = 0;
	}, clone)
end
local function TopContainer_upvr(arg1) -- Line 102, Named "TopContainer"
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: View_upvr (readonly)
	]]
	return React_upvr.createElement(View_upvr, {
		tag = "size-full-1500 anchor-top-center position-top-center padding-x-medium padding-y-medium";
	}, arg1.children)
end
local function BottomContainer_upvr(arg1) -- Line 108, Named "BottomContainer"
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: View_upvr (readonly)
	]]
	return React_upvr.createElement(View_upvr, {
		tag = "size-full-700 anchor-bottom-center padding-x-medium";
		Position = UDim2.new(0.5, 0, 1, -24);
	}, arg1.children)
end
local function BottomContainerListContainer_upvr(arg1) -- Line 115, Named "BottomContainerListContainer"
	--[[ Upvalues[3]:
		[1]: Flags_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: View_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var35
	local var36
	if Flags_upvr.GetEnableLuaRewardTimerUI() then
		if arg1.isRightAligned then
			var36 = "align-x-right"
		else
			var36 = "align-x-left"
		end
		var35 = `size-full-500 row {var36} align-y-bottom gap-medium`
	else
		var35 = "size-full-500 row align-x-left align-y-center gap-medium"
	end
	local module_4 = {}
	if Flags_upvr.GetEnableLuaRewardTimerUI() then
	else
	end
	module_4.Position = nil
	module_4.tag = var35
	return React_upvr.createElement(View_upvr, module_4, arg1.children)
end
local StateLayerAffordance_upvr = Foundation.Enums.StateLayerAffordance
local any_GetEnablePlatformUiUnificationFixes_result1_upvr = AdGuiInteractivity.Flags.GetEnablePlatformUiUnificationFixes()
local AdDropdownMenu_upvr = AdGuiInteractivity.AdDropdownMenu
local AdLabelComponent_upvr = require(components.AdLabelComponent)
local any_GetAdDropdownButtonOpen_result1_upvr = Flags_upvr.GetAdDropdownButtonOpen()
local any_GetAdDropdownButtonDefault_result1_upvr = Flags_upvr.GetAdDropdownButtonDefault()
local GetRewardInComponent_upvr = require(components.GetRewardInComponent)
local LinearProgressComponent_upvr = require(components.LinearProgressComponent)
return React_upvr.forwardRef(function(arg1, arg2) -- Line 144
	--[[ Upvalues[18]:
		[1]: React_upvr (readonly)
		[2]: useTokens_upvr (readonly)
		[3]: View_upvr (readonly)
		[4]: StateLayerAffordance_upvr (readonly)
		[5]: any_GetEnablePlatformUiUnificationFixes_result1_upvr (readonly)
		[6]: AdDropdownMenu_upvr (readonly)
		[7]: BottomContainer_upvr (readonly)
		[8]: BottomContainerListContainer_upvr (readonly)
		[9]: AdLabelComponent_upvr (readonly)
		[10]: any_GetAdDropdownButtonOpen_result1_upvr (readonly)
		[11]: any_GetAdDropdownButtonDefault_result1_upvr (readonly)
		[12]: Flags_upvr (readonly)
		[13]: GetRewardInComponent_upvr (readonly)
		[14]: ScrimComponent_upvr (readonly)
		[15]: LinearProgressComponent_upvr (readonly)
		[16]: TimerComponent_upvr (readonly)
		[17]: TopContainer_upvr (readonly)
		[18]: ExitButtonComponent_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local any_useState_result1_upvr_4, any_useState_result2_upvr = React_upvr.useState(false)
	local any_useState_result1_upvr_2, any_useState_result2_upvr_4 = React_upvr.useState(false)
	local function dismissModals_upvr() -- Line 149, Named "dismissModals"
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: any_useState_result2_upvr (readonly)
		]]
		arg1.setPaused(false)
		arg1.dismissModals()
		any_useState_result2_upvr(false)
	end
	React_upvr.useImperativeHandle(arg2, function() -- Line 164
		--[[ Upvalues[1]:
			[1]: dismissModals_upvr (readonly)
		]]
		return {
			dismissModals = dismissModals_upvr;
		}
	end)
	React_upvr.useEffect(function() -- Line 170
		--[[ Upvalues[2]:
			[1]: any_useState_result1_upvr_2 (readonly)
			[2]: any_useState_result2_upvr_4 (readonly)
		]]
		if any_useState_result1_upvr_2 then
			any_useState_result2_upvr_4(false)
		end
	end, {any_useState_result1_upvr_2})
	local module = {
		tag = "size-full";
		onActivated = function() -- Line 178, Named "onActivated"
			--[[ Upvalues[3]:
				[1]: arg1 (readonly)
				[2]: any_useState_result2_upvr (readonly)
				[3]: any_useState_result2_upvr_4 (readonly)
			]]
			arg1.setPaused(false)
			arg1.dismissModals()
			any_useState_result2_upvr(false)
			any_useState_result2_upvr_4(true)
		end;
	}
	local tbl_15 = {}
	local None = StateLayerAffordance_upvr.None
	tbl_15.affordance = None
	module.stateLayer = tbl_15
	local module_3 = {}
	local var90
	if any_GetEnablePlatformUiUnificationFixes_result1_upvr then
		None = nil
	else
		None = React_upvr.createElement
		None = None(AdDropdownMenu_upvr, {
			showDropDownMenu = any_useState_result1_upvr_4;
			onWhyThisAdActivated = arg1.showWhyThisAd;
			onReportAdActivated = arg1.showReportAdModal;
			transparency = 0.2;
		})
	end
	module_3.adDropdownMenu = None
	local tbl_20 = {}
	if any_GetEnablePlatformUiUnificationFixes_result1_upvr then
		var90 = React_upvr.createElement
		var90 = var90(AdDropdownMenu_upvr, {
			showDropDownMenu = any_useState_result1_upvr_4;
			onWhyThisAdActivated = arg1.showWhyThisAd;
			onReportAdActivated = arg1.showReportAdModal;
			transparency = 0.2;
			AnchorPoint = Vector2.new(0, 1);
			Position = UDim2.fromOffset(0, -useTokens_upvr().Padding.Small);
		})
	else
		var90 = nil
	end
	tbl_20.adDropdownMenu = var90
	var90 = React_upvr.createElement
	local tbl_11 = {}
	local tbl_16 = {}
	if any_useState_result1_upvr_4 then
	else
	end
	tbl_16.Image = any_GetAdDropdownButtonDefault_result1_upvr
	function tbl_16.handleToggleAdsModal() -- Line 155
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: any_useState_result2_upvr (readonly)
			[3]: any_useState_result1_upvr_4 (readonly)
		]]
		arg1.setPaused(false)
		arg1.dismissModals()
		any_useState_result2_upvr(false)
		if not any_useState_result1_upvr_4 then
			arg1.setPaused(true)
			any_useState_result2_upvr(true)
		end
	end
	tbl_11.adLabel = React_upvr.createElement(AdLabelComponent_upvr, tbl_16)
	var90 = var90(BottomContainerListContainer_upvr, {}, tbl_11)
	tbl_20.leftBottomListContainer = var90
	if Flags_upvr.GetEnableLuaRewardTimerUI() then
		var90 = React_upvr.createElement
		local tbl_9 = {}
		if arg1.rewardWaitTime then
			local tbl_27 = {
				rewardWaitTime = arg1.rewardWaitTime;
				rewardWaitAlpha = arg1.rewardWaitAlpha;
			}
		else
		end
		tbl_9.getRewardInComponent = nil
		var90 = var90(BottomContainerListContainer_upvr, {
			isRightAligned = true;
			yOffset = -4;
		}, tbl_9)
	else
		var90 = nil
	end
	tbl_20.rightBottomListContainer = var90
	module_3.persistentBottom = React_upvr.createElement(BottomContainer_upvr, {}, tbl_20)
	local tbl_8 = {}
	tbl_20 = any_useState_result1_upvr_4
	local var100 = tbl_20
	if not var100 then
		var100 = arg1.parentModalOpen
		if not var100 then
			var100 = any_useState_result1_upvr_2
		end
	end
	tbl_8.showScrim = var100
	local tbl_7 = {}
	var90 = React_upvr.createElement
	var90 = var90(BottomContainer_upvr, {}, {
		progressBar = React_upvr.createElement(LinearProgressComponent_upvr, {
			alpha = arg1.alpha;
			Size = UDim2.new(1, 0, 0, 2);
			Position = UDim2.fromScale(0.5, 1);
			AnchorPoint = Vector2.new(0.5, 1);
		});
		bottomListContainer = React_upvr.createElement(BottomContainerListContainer_upvr, {}, {
			dummyAdLabel = React_upvr.createElement(AdLabelComponent_upvr, {
				Visible = false;
			});
			timer = React_upvr.createElement(TimerComponent_upvr, {
				alpha = arg1.alpha;
				totalDuration = arg1.totalDuration;
			});
		});
	})
	tbl_7.fadingBottom = var90
	var90 = React_upvr.createElement
	var90 = var90(TopContainer_upvr, {}, {
		closeButton = React_upvr.createElement(ExitButtonComponent_upvr, {
			showExitConfirmationModal = arg1.showExitConfirmationModal;
		});
	})
	tbl_7.top = var90
	module_3.scrim = React_upvr.createElement(ScrimComponent_upvr, tbl_8, tbl_7)
	return React_upvr.createElement(View_upvr, module, module_3)
end)