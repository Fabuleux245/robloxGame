-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:39:22
-- Luau version 6, Types version 3
-- Time taken: 0.008951 seconds

local ProfileQRCode = script:FindFirstAncestor("ProfileQRCode")
local Parent = ProfileQRCode.Parent
local AppStorageService_upvr = game:GetService("AppStorageService")
local UIBlox = require(Parent.UIBlox)
local function _(arg1) -- Line 45, Named "getTooltipWasShown"
	--[[ Upvalues[1]:
		[1]: AppStorageService_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var5 = arg1
	if not var5 then
		var5 = AppStorageService_upvr
	end
	local var6_upvw = var5
	if var6_upvw == nil then
	else
	end
	assert(true, "AppStorageService is not nil")
	local pcall_result1_2, pcall_result2_2 = pcall(function() -- Line 49
		--[[ Upvalues[1]:
			[1]: var6_upvw (read and write)
		]]
		return var6_upvw:GetItem("QrCodeScannerTooltipSeen")
	end)
	if not pcall_result1_2 or pcall_result2_2 == nil then
		return false
	end
	if pcall_result2_2 ~= "true" then
	else
	end
	return true
end
local function _(arg1, arg2) -- Line 60, Named "setTooltipWasShown"
	--[[ Upvalues[1]:
		[1]: AppStorageService_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var10 = arg1
	if not var10 then
		var10 = AppStorageService_upvr
	end
	local var11_upvw = var10
	if var11_upvw == nil then
	else
	end
	assert(true, "AppStorageService is not nil")
	pcall(function() -- Line 64
		--[[ Upvalues[2]:
			[1]: var11_upvw (read and write)
			[2]: arg2 (readonly)
		]]
		var11_upvw:SetItem("QrCodeScannerTooltipSeen", tostring(arg2))
		var11_upvw:Flush()
	end)
end
local FFlagProfileQRCodeFixFocusNavigation_upvr = require(ProfileQRCode.Flags.FFlagProfileQRCodeFixFocusNavigation)
local useLastInputMode_upvr = require(Parent.FocusNavigationUtils).useLastInputMode
local useAnalytics_upvr = require(ProfileQRCode.Analytics.useAnalytics)
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local TextKeys_upvr = require(ProfileQRCode.Common.TextKeys)
local useAppPolicy_upvr = require(Parent.UniversalAppPolicy).useAppPolicy
local React_upvr = require(Parent.React)
local EventNames_upvr = require(ProfileQRCode.Analytics.EventNames)
local InputUtilities_upvr = require(Parent.SocialCommon).Utils.InputUtilities
local FFlagQRCodeScannerDeeplinkExperiment_upvr = require(Parent.SharedFlags).FFlagQRCodeScannerDeeplinkExperiment
local IXPService_upvr = game:GetService("IXPService")
local AppUserLayers_upvr = require(Parent.ExperimentLayers).AppUserLayers
local CoreGui_upvr = game:GetService("CoreGui")
local TooltipOrientation_upvr = UIBlox.App.Dialog.Enum.TooltipOrientation
local withTooltip_upvr = UIBlox.App.Dialog.TooltipV2.withTooltip
local IconButton_upvr = UIBlox.App.Button.IconButton
local Images_upvr = UIBlox.App.ImageSet.Images
local IconSize_upvr = UIBlox.App.ImageSet.Enum.IconSize
local ExternalEventConnection_upvr = require(Parent.RoactUtils).ExternalEventConnection
local UserInputService_upvr = game:GetService("UserInputService")
local GetFFlagUIBloxUseNewHeaderBar_upvr = require(Parent.SharedFlags).UIBlox.GetFFlagUIBloxUseNewHeaderBar
local makeBackButton_upvr = require(Parent.AppHeaderBar).makeBackButton
local HeaderBar_upvr = UIBlox.App.Bar.HeaderBar
return function(arg1) -- Line 78
	--[[ Upvalues[24]:
		[1]: FFlagProfileQRCodeFixFocusNavigation_upvr (readonly)
		[2]: useLastInputMode_upvr (readonly)
		[3]: useAnalytics_upvr (readonly)
		[4]: useLocalization_upvr (readonly)
		[5]: TextKeys_upvr (readonly)
		[6]: useAppPolicy_upvr (readonly)
		[7]: React_upvr (readonly)
		[8]: AppStorageService_upvr (readonly)
		[9]: EventNames_upvr (readonly)
		[10]: InputUtilities_upvr (readonly)
		[11]: FFlagQRCodeScannerDeeplinkExperiment_upvr (readonly)
		[12]: IXPService_upvr (readonly)
		[13]: AppUserLayers_upvr (readonly)
		[14]: CoreGui_upvr (readonly)
		[15]: TooltipOrientation_upvr (readonly)
		[16]: withTooltip_upvr (readonly)
		[17]: IconButton_upvr (readonly)
		[18]: Images_upvr (readonly)
		[19]: IconSize_upvr (readonly)
		[20]: ExternalEventConnection_upvr (readonly)
		[21]: UserInputService_upvr (readonly)
		[22]: GetFFlagUIBloxUseNewHeaderBar_upvr (readonly)
		[23]: makeBackButton_upvr (readonly)
		[24]: HeaderBar_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 39 start (CF ANALYSIS FAILED)
	local var37
	if FFlagProfileQRCodeFixFocusNavigation_upvr then
		if useLastInputMode_upvr() ~= "Focus" then
			var37 = false
		else
			var37 = true
		end
	else
		var37 = nil
	end
	local var16_result1_upvr = useAnalytics_upvr()
	local var17_result1 = useLocalization_upvr({
		title = TextKeys_upvr.Title;
		tooltipBodyText = TextKeys_upvr.TooltipText;
		tooltipHeaderText = TextKeys_upvr.TooltipTitle;
	})
	local any_useState_result1_upvr, any_useState_result2_upvr = React_upvr.useState(false)
	React_upvr.useEffect(function() -- Line 92
		--[[ Upvalues[5]:
			[1]: arg1 (readonly)
			[2]: AppStorageService_upvr (copied, readonly)
			[3]: any_useState_result2_upvr (readonly)
			[4]: var16_result1_upvr (readonly)
			[5]: EventNames_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		-- KONSTANTERROR: [0] 1. Error Block 28 start (CF ANALYSIS FAILED)
		local appStorageService_3 = arg1.appStorageService
		if not appStorageService_3 then
			appStorageService_3 = AppStorageService_upvr
		end
		local var46_upvw = appStorageService_3
		if var46_upvw == nil then
		else
		end
		assert(true, "AppStorageService is not nil")
		local pcall_result1, pcall_result2 = pcall(function() -- Line 49
			--[[ Upvalues[1]:
				[1]: var46_upvw (read and write)
			]]
			return var46_upvw:GetItem("QrCodeScannerTooltipSeen")
		end)
		if not pcall_result1 or pcall_result2 == nil then
			-- KONSTANTWARNING: GOTO [33] #27
		end
		-- KONSTANTERROR: [0] 1. Error Block 28 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [28] 23. Error Block 29 start (CF ANALYSIS FAILED)
		if pcall_result2 ~= "true" then
			local _ = false
			-- KONSTANTWARNING: Skipped task `defvar` above
		else
		end
		any_useState_result2_upvr(not true)
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if not true then
			var16_result1_upvr.fireEvent(EventNames_upvr.QRCodeScannerTooltipShown)
		end
		-- KONSTANTERROR: [28] 23. Error Block 29 end (CF ANALYSIS FAILED)
	end, {})
	local any_useCallback_result1_upvr = React_upvr.useCallback(function() -- Line 109
		--[[ Upvalues[6]:
			[1]: FFlagQRCodeScannerDeeplinkExperiment_upvr (copied, readonly)
			[2]: IXPService_upvr (copied, readonly)
			[3]: AppUserLayers_upvr (copied, readonly)
			[4]: var16_result1_upvr (readonly)
			[5]: EventNames_upvr (copied, readonly)
			[6]: arg1 (readonly)
		]]
		if FFlagQRCodeScannerDeeplinkExperiment_upvr then
			IXPService_upvr:LogUserLayerExposure(AppUserLayers_upvr.ProfileQRCodeScannerLayer)
		end
		var16_result1_upvr.fireEvent(EventNames_upvr.QRCodeScannerOpened)
		arg1.openQrCodeScanner()
	end, {arg1.openQrCodeScanner})
	local tooltipBodyText_upvr = var17_result1.tooltipBodyText
	local tooltipHeaderText_upvr = var17_result1.tooltipHeaderText
	local any_useCallback_result1_upvr_2 = React_upvr.useCallback(function(arg1_3) -- Line 100
		--[[ Upvalues[5]:
			[1]: InputUtilities_upvr (copied, readonly)
			[2]: any_useState_result1_upvr (readonly)
			[3]: any_useState_result2_upvr (readonly)
			[4]: arg1 (readonly)
			[5]: AppStorageService_upvr (copied, readonly)
		]]
		if InputUtilities_upvr.isActivationInput(arg1_3) then
			local var60
			if any_useState_result1_upvr then
				any_useState_result2_upvr(false)
				local appStorageService = arg1.appStorageService
				if not appStorageService then
					appStorageService = AppStorageService_upvr
				end
				local var59_upvw = appStorageService
				if var59_upvw == nil then
					var60 = false
				else
					var60 = true
				end
				assert(var60, "AppStorageService is not nil")
				local var61_upvr = true
				function var60() -- Line 64
					--[[ Upvalues[2]:
						[1]: var59_upvw (read and write)
						[2]: var61_upvr (readonly)
					]]
					var59_upvw:SetItem("QrCodeScannerTooltipSeen", tostring(var61_upvr))
					var59_upvw:Flush()
				end
				pcall(var60)
			end
		end
	end, {any_useState_result1_upvr})
	local function _() -- Line 120
		--[[ Upvalues[14]:
			[1]: tooltipBodyText_upvr (readonly)
			[2]: tooltipHeaderText_upvr (readonly)
			[3]: any_useState_result1_upvr (readonly)
			[4]: CoreGui_upvr (copied, readonly)
			[5]: TooltipOrientation_upvr (copied, readonly)
			[6]: withTooltip_upvr (copied, readonly)
			[7]: React_upvr (copied, readonly)
			[8]: IconButton_upvr (copied, readonly)
			[9]: Images_upvr (copied, readonly)
			[10]: IconSize_upvr (copied, readonly)
			[11]: any_useCallback_result1_upvr (readonly)
			[12]: ExternalEventConnection_upvr (copied, readonly)
			[13]: UserInputService_upvr (copied, readonly)
			[14]: any_useCallback_result1_upvr_2 (readonly)
		]]
		return withTooltip_upvr({
			bodyText = tooltipBodyText_upvr;
			headerText = tooltipHeaderText_upvr;
		}, {
			active = any_useState_result1_upvr;
			DisplayOrder = 10;
			guiTarget = CoreGui_upvr;
			preferredOrientation = TooltipOrientation_upvr.Bottom;
		}, function(arg1_4) -- Line 133
			--[[ Upvalues[8]:
				[1]: React_upvr (copied, readonly)
				[2]: IconButton_upvr (copied, readonly)
				[3]: Images_upvr (copied, readonly)
				[4]: IconSize_upvr (copied, readonly)
				[5]: any_useCallback_result1_upvr (copied, readonly)
				[6]: ExternalEventConnection_upvr (copied, readonly)
				[7]: UserInputService_upvr (copied, readonly)
				[8]: any_useCallback_result1_upvr_2 (copied, readonly)
			]]
			local module = {
				icon = Images_upvr["icons/actions/scan"];
				iconSize = IconSize_upvr.Medium;
				onActivated = any_useCallback_result1_upvr;
				size = UDim2.fromOffset(0, 0);
			}
			module.onAbsolutePositionChanged = arg1_4
			module[React_upvr.Change.AbsoluteSize] = arg1_4
			return React_upvr.createElement(IconButton_upvr, module, {
				InputBeganConnection = React_upvr.createElement(ExternalEventConnection_upvr, {
					event = UserInputService_upvr.InputBegan;
					callback = any_useCallback_result1_upvr_2;
				});
			})
		end)
	end
	local _ = {any_useCallback_result1_upvr, useAppPolicy_upvr(function(arg1_2) -- Line 87
		return arg1_2.getFriendCodeQrCodeScannerEnabled()
	end), any_useState_result1_upvr, tooltipBodyText_upvr, tooltipHeaderText_upvr}
	if GetFFlagUIBloxUseNewHeaderBar_upvr() then
		-- KONSTANTWARNING: GOTO [130] #105
	end
	-- KONSTANTERROR: [0] 1. Error Block 39 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [122] 100. Error Block 29 start (CF ANALYSIS FAILED)
	local _ = {
		BackgroundTransparency = 1;
		Size = UDim2.new(1, 0, 0, 56);
		LayoutOrder = arg1.layoutOrder;
		ZIndex = 2;
	}
	local tbl = {
		isSecondary = true;
		title = var17_result1.title;
		backgroundTransparency = 1;
		barHeight = 56;
	}
	if FFlagProfileQRCodeFixFocusNavigation_upvr and not var37 or not FFlagProfileQRCodeFixFocusNavigation_upvr then
		-- KONSTANTWARNING: GOTO [181] #143
	end
	-- KONSTANTERROR: [122] 100. Error Block 29 end (CF ANALYSIS FAILED)
end