-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:59:14
-- Luau version 6, Types version 3
-- Time taken: 0.006298 seconds

local Parent = script.Parent.Parent
local Parent_2 = Parent.Parent
local GuiService_upvr = game:GetService("GuiService")
local function _(arg1) -- Line 23, Named "hideGui"
	--[[ Upvalues[1]:
		[1]: GuiService_upvr (readonly)
	]]
	if GuiService_upvr:GetGuiIsVisible(arg1) then
		GuiService_upvr:ToggleGuiIsVisibleForCaptures(arg1)
	end
end
local function _(arg1) -- Line 29, Named "showGui"
	--[[ Upvalues[1]:
		[1]: GuiService_upvr (readonly)
	]]
	if not GuiService_upvr:GetGuiIsVisible(arg1) then
		GuiService_upvr:ToggleGuiIsVisibleForCaptures(arg1)
	end
end
local function _() -- Line 35, Named "hidePlayerGui"
	--[[ Upvalues[1]:
		[1]: GuiService_upvr (readonly)
	]]
	if GuiService_upvr:GetGuiIsVisible(Enum.GuiType.Custom) then
		GuiService_upvr:ToggleGuiIsVisibleForCaptures(Enum.GuiType.Custom)
	end
end
local function _() -- Line 41, Named "showPlayerGui"
	--[[ Upvalues[1]:
		[1]: GuiService_upvr (readonly)
	]]
	if not GuiService_upvr:GetGuiIsVisible(Enum.GuiType.Custom) then
		GuiService_upvr:ToggleGuiIsVisibleForCaptures(Enum.GuiType.Custom)
	end
end
local ToastTriggered_upvr = require(Parent.Actions.ToastTriggered)
local CapturesToastType_upvr = require(Parent.Enums.CapturesToastType)
local UserInputService_upvr = game:GetService("UserInputService")
local getScreenshotHud_upvr = require(Parent.Utils.getScreenshotHud)
local removeCoreUI_upvr = require(Parent.Utils.removeCoreUI)
local OverlayActivated_upvr = require(Parent.Actions.OverlayActivated)
local CaptureService_upvr = game:GetService("CaptureService")
local getAvatarAssets_upvr = require(Parent.Utils.getAvatarAssets)
local getUserMetadata_upvr = require(Parent.Utils.getUserMetadata)
local HttpService_upvr = game:GetService("HttpService")
local OverlayFlashActivated_upvr = require(Parent.Actions.OverlayFlashActivated)
local OverlayFlashDeactivated_upvr = require(Parent.Actions.OverlayFlashDeactivated)
local OverlayDeactivated_upvr = require(Parent.Actions.OverlayDeactivated)
local IXPServiceWrapper_upvr = require(Parent_2.IXPServiceWrapper).IXPServiceWrapper
local FStringSocialCaptureTakenIXPLayer_upvr = require(Parent_2.SharedFlags).FStringSocialCaptureTakenIXPLayer
return function() -- Line 47
	--[[ Upvalues[16]:
		[1]: ToastTriggered_upvr (readonly)
		[2]: CapturesToastType_upvr (readonly)
		[3]: UserInputService_upvr (readonly)
		[4]: getScreenshotHud_upvr (readonly)
		[5]: GuiService_upvr (readonly)
		[6]: removeCoreUI_upvr (readonly)
		[7]: OverlayActivated_upvr (readonly)
		[8]: CaptureService_upvr (readonly)
		[9]: getAvatarAssets_upvr (readonly)
		[10]: getUserMetadata_upvr (readonly)
		[11]: HttpService_upvr (readonly)
		[12]: OverlayFlashActivated_upvr (readonly)
		[13]: OverlayFlashDeactivated_upvr (readonly)
		[14]: OverlayDeactivated_upvr (readonly)
		[15]: IXPServiceWrapper_upvr (readonly)
		[16]: FStringSocialCaptureTakenIXPLayer_upvr (readonly)
	]]
	return function(arg1) -- Line 48
		--[[ Upvalues[16]:
			[1]: ToastTriggered_upvr (copied, readonly)
			[2]: CapturesToastType_upvr (copied, readonly)
			[3]: UserInputService_upvr (copied, readonly)
			[4]: getScreenshotHud_upvr (copied, readonly)
			[5]: GuiService_upvr (copied, readonly)
			[6]: removeCoreUI_upvr (copied, readonly)
			[7]: OverlayActivated_upvr (copied, readonly)
			[8]: CaptureService_upvr (copied, readonly)
			[9]: getAvatarAssets_upvr (copied, readonly)
			[10]: getUserMetadata_upvr (copied, readonly)
			[11]: HttpService_upvr (copied, readonly)
			[12]: OverlayFlashActivated_upvr (copied, readonly)
			[13]: OverlayFlashDeactivated_upvr (copied, readonly)
			[14]: OverlayDeactivated_upvr (copied, readonly)
			[15]: IXPServiceWrapper_upvr (copied, readonly)
			[16]: FStringSocialCaptureTakenIXPLayer_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		arg1:dispatch(ToastTriggered_upvr(CapturesToastType_upvr.None))
		UserInputService_upvr.OverrideMouseIconBehavior = Enum.OverrideMouseIconBehavior.ForceHide
		local getScreenshotHud_upvr_result1 = getScreenshotHud_upvr()
		local var32
		if not getScreenshotHud_upvr_result1 or getScreenshotHud_upvr_result1.HidePlayerGuiForCaptures then
			if GuiService_upvr:GetGuiIsVisible(Enum.GuiType.Custom) then
				GuiService_upvr:ToggleGuiIsVisibleForCaptures(Enum.GuiType.Custom)
			end
		end
		if not getScreenshotHud_upvr_result1 or getScreenshotHud_upvr_result1.HideCoreGuiForCaptures then
		end
		local CustomBillboards_2 = Enum.GuiType.CustomBillboards
		var32 = CustomBillboards_2
		if GuiService_upvr:GetGuiIsVisible(var32) then
			var32 = CustomBillboards_2
			GuiService_upvr:ToggleGuiIsVisibleForCaptures(var32)
		end
		local PlayerNameplates = Enum.GuiType.PlayerNameplates
		var32 = PlayerNameplates
		if GuiService_upvr:GetGuiIsVisible(var32) then
			var32 = PlayerNameplates
			GuiService_upvr:ToggleGuiIsVisibleForCaptures(var32)
		end
		arg1:dispatch(OverlayActivated_upvr())
		CaptureService_upvr:OnCaptureBegan()
		task.wait(0.1)
		local var12_result1 = getAvatarAssets_upvr()
		local var13_result1_2 = getUserMetadata_upvr()
		var32 = var12_result1
		if next(var32) == nil then
			var32 = var13_result1_2
			if next(var32) == nil then
				CaptureService_upvr:SaveScreenshotCapture()
				-- KONSTANTWARNING: GOTO [139] #107
			end
		end
		local tbl = {}
		if next(var12_result1) ~= nil then
			var32 = var12_result1
			-- KONSTANTWARNING: GOTO [117] #91
		end
		var32 = nil
		tbl.avatarItems = var32
		if next(var13_result1_2) ~= nil then
			var32 = var13_result1_2
		else
			var32 = nil
		end
		tbl.userMetadata = var32
		var32 = CaptureService_upvr:SaveScreenshotCapture
		var32(HttpService_upvr:JSONEncode(tbl))
		task.wait()
		arg1:dispatch(OverlayFlashActivated_upvr())
		var32 = 0.5
		task.wait(var32)
		CaptureService_upvr:OnCaptureEnded()
		arg1:dispatch(OverlayFlashDeactivated_upvr())
		arg1:dispatch(OverlayDeactivated_upvr())
		UserInputService_upvr.OverrideMouseIconBehavior = UserInputService_upvr.OverrideMouseIconBehavior
		if true and not GuiService_upvr:GetGuiIsVisible(Enum.GuiType.Custom) then
			GuiService_upvr:ToggleGuiIsVisibleForCaptures(Enum.GuiType.Custom)
		end
		if true then
			removeCoreUI_upvr()()
		end
		local CustomBillboards_4 = Enum.GuiType.CustomBillboards
		var32 = GuiService_upvr:GetGuiIsVisible(CustomBillboards_4)
		if not var32 then
			var32 = GuiService_upvr:ToggleGuiIsVisibleForCaptures
			var32(CustomBillboards_4)
		end
		local PlayerNameplates_2 = Enum.GuiType.PlayerNameplates
		var32 = GuiService_upvr:GetGuiIsVisible(PlayerNameplates_2)
		if not var32 then
			var32 = GuiService_upvr:ToggleGuiIsVisibleForCaptures
			var32(PlayerNameplates_2)
		end
		IXPServiceWrapper_upvr:LogUserLayerExposure(FStringSocialCaptureTakenIXPLayer_upvr)
	end
end