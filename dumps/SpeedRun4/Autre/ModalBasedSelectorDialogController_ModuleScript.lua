-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:02:23
-- Luau version 6, Types version 3
-- Time taken: 0.001694 seconds

local AbuseReportMenu = script:FindFirstAncestor("AbuseReportMenu")
local CorePackages = game:GetService("CorePackages")
local Roact_upvr = require(CorePackages.Packages.Roact)
local isInExperienceUIVREnabled_upvr = require(CorePackages.Workspace.Packages.SharedExperimentDefinition).isInExperienceUIVREnabled
local var5_upvw
local var6_upvw
local var7_upvw
if isInExperienceUIVREnabled_upvr then
	var5_upvw = require(CorePackages.Workspace.Packages.AppCommonLib).isSpatial
	local VrSpatialUi = require(CorePackages.Workspace.Packages.VrSpatialUi)
	var6_upvw = VrSpatialUi.UIManager
	var7_upvw = VrSpatialUi.Constants.PanelType
end
local tbl_2_upvr = {
	modalSelectorHandle = nil;
	modalSelectorFrame = nil;
	modalSelectorScreenGui = nil;
}
local GuiService_upvr = game:GetService("GuiService")
local CoreGui_upvr = game:GetService("CoreGui")
local Constants_upvr = require(AbuseReportMenu.Components.Constants)
local ModalBaseSelectorDialog_upvr = require(AbuseReportMenu.Components.ModalBaseSelectorDialog)
return {
	mountModalSelector = function(arg1, arg2, arg3, arg4, arg5) -- Line 56, Named "mountModalSelector"
		--[[ Upvalues[10]:
			[1]: GuiService_upvr (readonly)
			[2]: isInExperienceUIVREnabled_upvr (readonly)
			[3]: var5_upvw (read and write)
			[4]: var6_upvw (read and write)
			[5]: var7_upvw (read and write)
			[6]: tbl_2_upvr (readonly)
			[7]: CoreGui_upvr (readonly)
			[8]: Constants_upvr (readonly)
			[9]: Roact_upvr (readonly)
			[10]: ModalBaseSelectorDialog_upvr (readonly)
		]]
		local any_GetGuiInset_result1, any_GetGuiInset_result2 = GuiService_upvr:GetGuiInset()
		if isInExperienceUIVREnabled_upvr and var5_upvw() then
			local Frame_2 = Instance.new("Frame")
			Frame_2.BackgroundTransparency = 1
			Frame_2.Position = UDim2.new(0, 0, 0, 0)
			Frame_2.Size = UDim2.new(1, 0, 1, 0)
			Frame_2.ZIndex = 10
			Frame_2.Parent = var6_upvw.getInstance():getPanelObject(var7_upvw.MoreMenu)
			tbl_2_upvr.modalSelectorFrame = Frame_2
		elseif not tbl_2_upvr.modalSelectorScreenGui then
			local ScreenGui = Instance.new("ScreenGui")
			ScreenGui.Name = "ModalSelectorDialogGui"
			ScreenGui.DisplayOrder = 7
			ScreenGui.Enabled = true
			ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
			ScreenGui.Parent = CoreGui_upvr:FindFirstChild(Constants_upvr.AbuseReportMenuPlaceholderFrame, true)
			tbl_2_upvr.modalSelectorScreenGui = ScreenGui
			local Frame = Instance.new("Frame")
			Frame.BackgroundTransparency = 1
			Frame.Position = UDim2.new(0, 0, 0, -any_GetGuiInset_result1.Y)
			Frame.Size = UDim2.new(1, 0, 1, any_GetGuiInset_result1.Y)
			Frame.Parent = tbl_2_upvr.modalSelectorScreenGui
			tbl_2_upvr.modalSelectorFrame = Frame
		end
		local tbl = {
			isShown = true;
		}
		tbl.cellData = arg3
		tbl.viewportHeight = arg1
		tbl.viewportWidth = arg2
		tbl.onSelect = arg4
		tbl.onClose = arg5
		tbl_2_upvr.modalSelectorHandle = Roact_upvr.mount(Roact_upvr.createElement(ModalBaseSelectorDialog_upvr, tbl), tbl_2_upvr.modalSelectorFrame, "ModalSelectorDialog")
	end;
	unmountModalSelector = function() -- Line 32, Named "unmountModalSelector"
		--[[ Upvalues[3]:
			[1]: tbl_2_upvr (readonly)
			[2]: Roact_upvr (readonly)
			[3]: isInExperienceUIVREnabled_upvr (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [5] 4. Error Block 2 start (CF ANALYSIS FAILED)
		Roact_upvr.unmount(tbl_2_upvr.modalSelectorHandle)
		tbl_2_upvr.modalSelectorHandle = nil
		-- KONSTANTERROR: [5] 4. Error Block 2 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [16] 12. Error Block 3 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [16] 12. Error Block 3 end (CF ANALYSIS FAILED)
	end;
}