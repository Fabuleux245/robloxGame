-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:48:15
-- Luau version 6, Types version 3
-- Time taken: 0.003316 seconds

local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local Parent = script.Parent.Parent.Parent
local any_extend_result1 = require(CorePackages.Packages.Roact).PureComponent:extend("TenFootSideBar")
function any_extend_result1.init(arg1) -- Line 22
	arg1.sideBar = nil
end
function any_extend_result1.render(arg1) -- Line 26
	return nil
end
local RunService_upvr = game:GetService("RunService")
local Players_upvr = game:GetService("Players")
local GuiService_upvr = game:GetService("GuiService")
local RobloxGui_upvr = CoreGui:WaitForChild("RobloxGui")
local isNewInGameMenuEnabled_upvr = require(CoreGui.RobloxGui.Modules.isNewInGameMenuEnabled)
function any_extend_result1.openSidebar(arg1, arg2) -- Line 30
	--[[ Upvalues[5]:
		[1]: RunService_upvr (readonly)
		[2]: Players_upvr (readonly)
		[3]: GuiService_upvr (readonly)
		[4]: RobloxGui_upvr (readonly)
		[5]: isNewInGameMenuEnabled_upvr (readonly)
	]]
	local var10 = not RunService_upvr:IsStudio()
	if var10 then
		if arg2 == Players_upvr.LocalPlayer then
			var10 = false
		else
			var10 = true
		end
	end
	if not var10 then
		arg1.props.closeSideBar()
	else
		local ScreenManager = RobloxGui_upvr.Modules:FindFirstChild("ScreenManager")
		if not ScreenManager then
			ScreenManager = RobloxGui_upvr.Modules.Shell.ScreenManager
		end
		local LocalizedStrings = RobloxGui_upvr.Modules:FindFirstChild("LocalizedStrings")
		if not LocalizedStrings then
			LocalizedStrings = RobloxGui_upvr.Modules.Shell.LocalizedStrings
		end
		if not arg1.sideBar then
			local SideBar = RobloxGui_upvr.Modules:FindFirstChild("SideBar")
			if not SideBar then
				SideBar = RobloxGui_upvr.Modules.Shell.SideBar
			end
			arg1.sideBar = require(SideBar)()
		end
		arg1.sideBar:RemoveAllItems()
		if var10 then
			arg1.sideBar:AddItem(require(LocalizedStrings):LocalizedString("ReportPlayer"), function() -- Line 58
				--[[ Upvalues[5]:
					[1]: arg1 (readonly)
					[2]: GuiService_upvr (copied, readonly)
					[3]: isNewInGameMenuEnabled_upvr (copied, readonly)
					[4]: RobloxGui_upvr (copied, readonly)
					[5]: arg2 (readonly)
				]]
				arg1.props.closePlayerList()
				GuiService_upvr.SelectedCoreObject = nil
				if isNewInGameMenuEnabled_upvr() then
					require(RobloxGui_upvr.Modules.InGameMenuInit).openReportDialog(arg2, arg1.__componentName)
				else
					require(RobloxGui_upvr.Modules.Settings.Pages.ReportAbuseMenuNewContainerPage):ReportPlayer(arg2, arg1.__componentName)
				end
			end)
		end
		local var16_upvw
		local SelectedCoreObject_upvr = GuiService_upvr.SelectedCoreObject
		var16_upvw = arg1.sideBar.Closed:connect(function() -- Line 75
			--[[ Upvalues[4]:
				[1]: var16_upvw (read and write)
				[2]: arg1 (readonly)
				[3]: SelectedCoreObject_upvr (readonly)
				[4]: GuiService_upvr (copied, readonly)
			]]
			var16_upvw:disconnect()
			arg1.props.closeSideBar()
			if arg1.props.playerListVisible then
				if SelectedCoreObject_upvr and SelectedCoreObject_upvr.Parent then
					GuiService_upvr.SelectedCoreObject = SelectedCoreObject_upvr
					return
				end
				arg1.props.closePlayerList()
				arg1.props.openPlayerList()
			end
		end)
		require(ScreenManager):OpenScreen(arg1.sideBar, false)
	end
end
function any_extend_result1.didMount(arg1) -- Line 92
	if arg1.props.sideBarVisible then
		arg1:openSidebar(arg1.props.selectedPlayer)
	end
end
function any_extend_result1.didUpdate(arg1, arg2) -- Line 98
	if arg1.props.sideBarVisible and arg1.props.sideBarVisible ~= arg2.sideBarVisible then
		arg1:openSidebar(arg1.props.selectedPlayer)
	end
end
local ClosePlayerDropDown_upvr = require(Parent.Actions.ClosePlayerDropDown)
local SetPlayerListVisibility_upvr = require(Parent.Actions.SetPlayerListVisibility)
return require(CorePackages.Packages.RoactRodux).connect(function(arg1) -- Line 104, Named "mapStateToProps"
	local module = {
		selectedPlayer = arg1.playerDropDown.selectedPlayer;
	}
	local isTenFootInterface = arg1.displayOptions.isTenFootInterface
	if isTenFootInterface then
		isTenFootInterface = arg1.playerDropDown.isVisible
	end
	module.sideBarVisible = isTenFootInterface
	module.playerListVisible = arg1.displayOptions.isVisible
	return module
end, function(arg1) -- Line 112, Named "mapDispatchToProps"
	--[[ Upvalues[2]:
		[1]: ClosePlayerDropDown_upvr (readonly)
		[2]: SetPlayerListVisibility_upvr (readonly)
	]]
	return {
		closeSideBar = function() -- Line 114, Named "closeSideBar"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: ClosePlayerDropDown_upvr (copied, readonly)
			]]
			return arg1(ClosePlayerDropDown_upvr())
		end;
		closePlayerList = function() -- Line 118, Named "closePlayerList"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: SetPlayerListVisibility_upvr (copied, readonly)
			]]
			return arg1(SetPlayerListVisibility_upvr(false))
		end;
		openPlayerList = function() -- Line 122, Named "openPlayerList"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: SetPlayerListVisibility_upvr (copied, readonly)
			]]
			return arg1(SetPlayerListVisibility_upvr(true))
		end;
	}
end)(any_extend_result1)