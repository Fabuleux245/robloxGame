-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:06:51
-- Luau version 6, Types version 3
-- Time taken: 0.006160 seconds

local module = {}
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local module_3_upvr = require(ReplicatedStorage:WaitForChild("CommonData"))
local Modules = ReplicatedStorage:WaitForChild("Modules")
local module_9_upvr = require(Modules:WaitForChild("UIExclusivityGroups"))
local module_4_upvr = require(Modules:WaitForChild("UIShared"))
local var7
if script:GetAttribute("DonationsDisabled") ~= true then
	var7 = false
else
	var7 = true
end
if not var7 then
	local module_8_upvr = require(ReplicatedStorage:WaitForChild("BUDClient"))
	local module_5_upvr = require(ReplicatedStorage:WaitForChild("BUUI"))
	local any_MemberCreate_result1_upvr = module_9_upvr.MemberCreate(module_9_upvr.DonationsUIGroup)
	local tbl_3_upvr = {
		DonationState_ByUserId = {};
		Raised_ByUserId = {};
		RefreshResponse_ByUserId = {};
		UserId_ByRefreshResponse = {};
		TargetPlayer = nil;
		UI = nil;
	}
	function module_8_upvr.ExternalGetDonationLocalState(arg1) -- Line 67
		--[[ Upvalues[1]:
			[1]: tbl_3_upvr (readonly)
		]]
		local var13
		local UserId_2 = arg1.UserId
		if tbl_3_upvr.DonationState_ByUserId[UserId_2] then
			local tbl_2 = {}
			local var16 = tbl_3_upvr.Raised_ByUserId[UserId_2] or 0
			tbl_2.RobuxRaised = var16
			if tbl_3_upvr.RefreshResponse_ByUserId[UserId_2] == nil then
				var16 = false
			else
				var16 = true
			end
			tbl_2.PendingRefresh = var16
			var13 = tbl_2
		end
		return var13
	end
	function module_8_upvr.ExternalGetDonationState(arg1) -- Line 82
		--[[ Upvalues[1]:
			[1]: tbl_3_upvr (readonly)
		]]
		return tbl_3_upvr.DonationState_ByUserId[arg1.UserId]
	end
	module_8_upvr.ExternalPlaySoundEffect = require(Modules:WaitForChild("Audio")).SFX.CreateAndPlay
	local function ProcessResponse_upvr(arg1) -- Line 88, Named "ProcessResponse"
		--[[ Upvalues[1]:
			[1]: tbl_3_upvr (readonly)
		]]
		local var18 = tbl_3_upvr.UserId_ByRefreshResponse[arg1]
		tbl_3_upvr.UserId_ByRefreshResponse[arg1] = nil
		if var18 then
			tbl_3_upvr.RefreshResponse_ByUserId[var18] = nil
		end
	end
	local module_10_upvr = require(Modules:WaitForChild("NetworkRequestUtility"))
	local AsyncData_upvr = ReplicatedStorage:WaitForChild("Remotes"):WaitForChild("AsyncData")
	function module_8_upvr.ExternalRequestRefresh(arg1) -- Line 98
		--[[ Upvalues[5]:
			[1]: tbl_3_upvr (readonly)
			[2]: module_10_upvr (readonly)
			[3]: AsyncData_upvr (readonly)
			[4]: module_3_upvr (readonly)
			[5]: ProcessResponse_upvr (readonly)
		]]
		local UserId_3 = arg1.UserId
		if tbl_3_upvr.RefreshResponse_ByUserId[UserId_3] then
		elseif tbl_3_upvr.DonationState_ByUserId[UserId_3] then
			local any_MakeRequest_result1 = module_10_upvr.MakeRequest({
				Remote = AsyncData_upvr;
				Request = module_3_upvr.AsyncDataRequestType.DonationState;
				Args = {UserId_3};
				Callback = ProcessResponse_upvr;
			})
			tbl_3_upvr.RefreshResponse_ByUserId[UserId_3] = any_MakeRequest_result1
			tbl_3_upvr.UserId_ByRefreshResponse[any_MakeRequest_result1] = UserId_3
		end
	end
	module.DonationButtonCreate = module_8_upvr.DonationButtonCreate
	module.DonationButtonDestroy = module_8_upvr.DonationButtonDestroy
	module.DonationButtonUpdateContent = module_8_upvr.DonationButtonUpdateContent
	module.DonationButtonUpdateSize = module_8_upvr.DonationButtonUpdateSize
	module.DonationButtonUpdateTweens = module_8_upvr.DonationButtonUpdateTweens
	module.DonationButton_SizeXToY = module_8_upvr.DonationButton_SizeXToY
	module.DonationButton_SizeYToX = module_8_upvr.DonationButton_SizeYToX
	module.DonationsPageCreate = module_8_upvr.DonationsPageCreate
	module.DonationsPageDestroy = module_8_upvr.DonationsPageDestroy
	module.DonationsPageUpdate = module_8_upvr.DonationsPageUpdate
	module.ReceiveNotification = module_8_upvr.ReceiveNotification
	function module.PlayerRemoving(arg1) -- Line 140
		--[[ Upvalues[1]:
			[1]: tbl_3_upvr (readonly)
		]]
		local UserId_4 = arg1.UserId
		tbl_3_upvr.DonationState_ByUserId[UserId_4] = nil
		tbl_3_upvr.Raised_ByUserId[UserId_4] = nil
		tbl_3_upvr.RefreshResponse_ByUserId[UserId_4] = nil
	end
	function module.DonationStateUpdate(arg1, arg2, arg3) -- Line 151
		--[[ Upvalues[1]:
			[1]: tbl_3_upvr (readonly)
		]]
		local UserId = arg1.UserId
		tbl_3_upvr.DonationState_ByUserId[UserId] = arg2
		tbl_3_upvr.Raised_ByUserId[UserId] = arg3
	end
	function module.DonationButtonConform(arg1, arg2, arg3) -- Line 162
		--[[ Upvalues[2]:
			[1]: module_4_upvr (readonly)
			[2]: module_5_upvr (readonly)
		]]
		local var28 = arg2
		if not var28 then
			var28 = module_4_upvr.CornerDims.Button.RadiusUDim
		end
		local var29 = arg3
		if not var29 then
			var29 = module_4_upvr.ScaledSize.ButtonFancyBorder
		end
		module_5_upvr.FancyButtonUpdateSize(arg1, var28, var29)
		local ButtonFancyTextStroke = module_4_upvr.ScaledSize.ButtonFancyTextStroke
		arg1.LabelMainStroke.Thickness = ButtonFancyTextStroke
		arg1.LabelOptionsStroke.Thickness = ButtonFancyTextStroke
		arg1.LabelRaisedStroke.Thickness = ButtonFancyTextStroke
	end
	function module.DonationButtonPressed(arg1) -- Line 192
		--[[ Upvalues[3]:
			[1]: tbl_3_upvr (readonly)
			[2]: module_4_upvr (readonly)
			[3]: any_MemberCreate_result1_upvr (readonly)
		]]
		tbl_3_upvr.TargetPlayer = arg1.Player
		module_4_upvr.UIExclusivityMember.SetActive(any_MemberCreate_result1_upvr, true)
	end
	local function ScreenCoverCallback_upvr() -- Line 199, Named "ScreenCoverCallback"
		--[[ Upvalues[3]:
			[1]: tbl_3_upvr (readonly)
			[2]: module_4_upvr (readonly)
			[3]: any_MemberCreate_result1_upvr (readonly)
		]]
		tbl_3_upvr.TargetPlayer = nil
		module_4_upvr.UIExclusivityMember.SetActive(any_MemberCreate_result1_upvr, false)
	end
	local module_2_upvr = require(Modules:WaitForChild("Utility"))
	local module_11_upvr = require(ReplicatedStorage:WaitForChild("Theme"))
	function module.RenderStepped(arg1) -- Line 204
		--[[ Upvalues[8]:
			[1]: module_8_upvr (readonly)
			[2]: tbl_3_upvr (readonly)
			[3]: module_2_upvr (readonly)
			[4]: module_4_upvr (readonly)
			[5]: module_11_upvr (readonly)
			[6]: ScreenCoverCallback_upvr (readonly)
			[7]: module_5_upvr (readonly)
			[8]: module_9_upvr (readonly)
		]]
		module_8_upvr.UpdateNotifications(arg1)
		if not tbl_3_upvr.UI and tbl_3_upvr.TargetPlayer then
			local tbl = {}
			tbl_3_upvr.UI = tbl
			tbl.ScreenGui = module_2_upvr.I("ScreenGui", module_4_upvr.Properties.ScreenGui, {
				Name = "DonationsUI";
				DisplayOrder = module_11_upvr.DisplayOrder_DonationsUI;
				Parent = module_4_upvr.PlayerGui;
			})
			tbl.DonationsPage = module_8_upvr.DonationsPageCreate(tbl.ScreenGui, ScreenCoverCallback_upvr)
			tbl.FadeTween = module_5_upvr.NumericTweenCreate(1, 0.2, Enum.EasingStyle.Quart, Enum.EasingDirection.Out)
			tbl.CachedOpacities = module_5_upvr.CO_Create(tbl.ScreenGui)
		end
		local var35
		if tbl_3_upvr.UI then
			local UI = tbl_3_upvr.UI
			local var37 = false
			if tbl_3_upvr.TargetPlayer ~= nil then
				var37 = module_4_upvr.UIExclusivityGroup.HasExclusivity(module_9_upvr.DonationsUIGroup)
			end
			if var37 then
				var35 = 0
			else
				var35 = 1
			end
			module_5_upvr.NumericTweener(UI.FadeTween, arg1, var35)
			if module_5_upvr.NumericTweenIsDone(UI.FadeTween, 1) then
				tbl_3_upvr.UI = nil
				UI.ScreenGui:Destroy()
				module_8_upvr.DonationsPageDestroy(UI.DonationsPage)
				tbl_3_upvr.TargetPlayer = nil
				return
			end
			UI.DonationsPage.AllowButtonPress = UI.FadeTween.Completed
			var35 = tbl_3_upvr.TargetPlayer
			module_8_upvr.DonationsPageUpdate(UI.DonationsPage, arg1, var35, UI.CachedOpacities, UI.FadeTween)
			if UI.FadeTween.Dirty then
				var35 = UI.FadeTween
				module_5_upvr.TypicalBackgroundAnimate(UI.DonationsPage.TypicalBackground, var35.ValueCurrent)
				var35 = UI.FadeTween
				module_5_upvr.CO_ApplyTransparency(UI.CachedOpacities, var35.ValueCurrent)
			end
		end
	end
	return module
end
module_8_upvr = warn
module_5_upvr = "Donations disabled this session"
any_MemberCreate_result1_upvr = "BUDGameClient"
module_8_upvr(module_3_upvr.FormatOutput(module_5_upvr, any_MemberCreate_result1_upvr))
function module_8_upvr() -- Line 281
end
local var39_upvr = module_8_upvr
local module_7_upvr = require(ReplicatedStorage:WaitForChild("BUUI"))
function module.DonationButtonCreate(arg1) -- Line 283
	--[[ Upvalues[1]:
		[1]: module_7_upvr (readonly)
	]]
	local module_6 = {
		Button = Instance.new("TextButton");
		ButtonCorner = Instance.new("UICorner");
		ButtonStroke = Instance.new("UIStroke");
		Highlight = Instance.new("Frame");
		HighlightCorner = Instance.new("UICorner");
		LabelOptions = Instance.new("TextLabel");
		LabelOptionsStroke = Instance.new("UIStroke");
		LabelMain = Instance.new("TextLabel");
		LabelMainStroke = Instance.new("UIStroke");
		LabelRaised = Instance.new("TextLabel");
		LabelRaisedStroke = Instance.new("UIStroke");
		Midtone = Instance.new("Frame");
		MidtoneCorner = Instance.new("UICorner");
		Overlay = Instance.new("Frame");
		OverlayCorner = Instance.new("UICorner");
		OverlayGradient = Instance.new("UIGradient");
	}
	module_6.PressedCallback = arg1
	module_6.Input = module_7_upvr.GI_Create(module_6.Button)
	module_6.PressTween = module_7_upvr.NumericTweenCreate(nil, 0.1, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out)
	module_6.HoverTween = module_7_upvr.NumericTweenCreate(nil, 0.1, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out)
	module_6.Button.Visible = false
	return module_6
end
module.DonationButton_SizeXToY = 3
module.DonationButton_SizeYToX = 0.3333333333333333
any_MemberCreate_result1_upvr = {}
local var42 = any_MemberCreate_result1_upvr
function tbl_3_upvr() -- Line 323, Named "__index"
	--[[ Upvalues[1]:
		[1]: var39_upvr (readonly)
	]]
	return var39_upvr
end
var42.__index = tbl_3_upvr
var42.__newindex = var39_upvr
module_5_upvr = module
setmetatable(module_5_upvr, var42)
return module