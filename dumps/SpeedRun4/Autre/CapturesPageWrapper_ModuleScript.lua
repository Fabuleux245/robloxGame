-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:44:59
-- Luau version 6, Types version 3
-- Time taken: 0.002099 seconds

local CorePackages = game:GetService("CorePackages")
local RobloxGui = game:GetService("CoreGui"):WaitForChild("RobloxGui")
local Modules = RobloxGui.Modules
local BuilderIcons = require(CorePackages.Packages.BuilderIcons)
local any_CreateNewPage_result1_upvr = require(Modules.Settings.SettingsPageFactory):CreateNewPage()
local TabHeader = any_CreateNewPage_result1_upvr.TabHeader
TabHeader.Name = "CapturesTab"
if require(CorePackages.Workspace.Packages.SharedFlags).UIBlox.FFlagUIBloxMigrateBuilderIcon then
	if require(RobloxGui.Modules.Chrome.Enabled)() then
		TabHeader = BuilderIcons.Migration.uiblox["icons/controls/cameraOff"]
	else
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		TabHeader = BuilderIcons.Migration.uiblox["icons/controls/screenshot"]
	end
	any_CreateNewPage_result1_upvr.TabHeader.TabLabel.Icon.Text = TabHeader.name
	any_CreateNewPage_result1_upvr.TabHeader.TabLabel.Icon.FontFace = BuilderIcons.Font[TabHeader.variant]
else
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	if require(RobloxGui.Modules.Chrome.Enabled)() then
		TabHeader = require(Modules.Settings.Theme).Images["icons/controls/cameraOff"]
	else
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		TabHeader = require(Modules.Settings.Theme).Images["icons/controls/screenshot"]
	end
	any_CreateNewPage_result1_upvr.TabHeader.TabLabel.Icon.Image = TabHeader.Image
	any_CreateNewPage_result1_upvr.TabHeader.TabLabel.Icon.ImageRectOffset = TabHeader.ImageRectOffset
	any_CreateNewPage_result1_upvr.TabHeader.TabLabel.Icon.ImageRectSize = TabHeader.ImageRectSize
end
any_CreateNewPage_result1_upvr.TabHeader.TabLabel.Title.AutoLocalize = false
any_CreateNewPage_result1_upvr.TabHeader.TabLabel.Title.Text = require(CorePackages.Workspace.Packages.RobloxTranslator):FormatByKey("Feature.SettingsHub.Label.Captures")
any_CreateNewPage_result1_upvr.PageListLayout.Parent = nil
any_CreateNewPage_result1_upvr.ShouldShowBottomBar = true
any_CreateNewPage_result1_upvr.ShouldShowHubBar = true
any_CreateNewPage_result1_upvr.Page.Name = "Captures"
any_CreateNewPage_result1_upvr.Page.Size = UDim2.fromScale(1, 0)
local class_UIPadding = any_CreateNewPage_result1_upvr.Page:FindFirstChildWhichIsA("UIPadding")
if class_UIPadding then
	class_UIPadding:Destroy()
end
local GetFFlagFixIGMTabTransitions_upvr = require(script.Parent.Parent.Flags.GetFFlagFixIGMTabTransitions)
function any_CreateNewPage_result1_upvr.ConnectHubToApp(arg1, arg2, arg3, arg4) -- Line 58
	--[[ Upvalues[2]:
		[1]: any_CreateNewPage_result1_upvr (readonly)
		[2]: GetFFlagFixIGMTabTransitions_upvr (readonly)
	]]
	any_CreateNewPage_result1_upvr:SetHub(arg2)
	local var9_upvw = arg3.AbsoluteSize.Y - 20
	any_CreateNewPage_result1_upvr.Page.Size = UDim2.new(1, 0, 0, var9_upvw)
	arg3:GetPropertyChangedSignal("AbsoluteSize"):Connect(function() -- Line 63
		--[[ Upvalues[3]:
			[1]: var9_upvw (read and write)
			[2]: arg3 (readonly)
			[3]: any_CreateNewPage_result1_upvr (copied, readonly)
		]]
		var9_upvw = arg3.AbsoluteSize.Y - 20
		any_CreateNewPage_result1_upvr.Page.Size = UDim2.new(1, 0, 0, var9_upvw)
	end)
	local Display_2_upvr = any_CreateNewPage_result1_upvr.Display
	function any_CreateNewPage_result1_upvr.Display(arg1_2, ...) -- Line 69
		--[[ Upvalues[3]:
			[1]: arg4 (readonly)
			[2]: Display_2_upvr (readonly)
			[3]: any_CreateNewPage_result1_upvr (copied, readonly)
		]]
		arg4.openMenu()
		Display_2_upvr(any_CreateNewPage_result1_upvr, ...)
	end
	any_CreateNewPage_result1_upvr.Hidden.Event:Connect(function() -- Line 74
		--[[ Upvalues[2]:
			[1]: GetFFlagFixIGMTabTransitions_upvr (copied, readonly)
			[2]: arg4 (readonly)
		]]
		if not GetFFlagFixIGMTabTransitions_upvr() then
			arg4.closeMenu()
		end
	end)
	local Hide_2_upvr = any_CreateNewPage_result1_upvr.Hide
	function any_CreateNewPage_result1_upvr.Hide(arg1_3, ...) -- Line 83
		--[[ Upvalues[4]:
			[1]: GetFFlagFixIGMTabTransitions_upvr (copied, readonly)
			[2]: arg4 (readonly)
			[3]: Hide_2_upvr (readonly)
			[4]: any_CreateNewPage_result1_upvr (copied, readonly)
		]]
		if GetFFlagFixIGMTabTransitions_upvr() then
			arg4.closeMenu()
		end
		Hide_2_upvr(any_CreateNewPage_result1_upvr, ...)
	end
end
return any_CreateNewPage_result1_upvr