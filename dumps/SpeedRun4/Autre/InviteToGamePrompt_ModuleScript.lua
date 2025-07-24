-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:45:37
-- Luau version 6, Types version 3
-- Time taken: 0.003953 seconds

local CorePackages = game:GetService("CorePackages")
local ContextActionService_upvr = game:GetService("ContextActionService")
local Roact_upvr = require(CorePackages.Packages.Roact)
local Modules = game:GetService("CoreGui"):WaitForChild("RobloxGui").Modules
local ShareGame = Modules.Settings.Pages.ShareGame
local module_upvr = {}
module_upvr.__index = module_upvr
function module_upvr.new(arg1) -- Line 38
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local module_2 = {}
	module_2.mountTarget = arg1
	module_2.isActive = false
	setmetatable(module_2, module_upvr)
	return module_2
end
function module_upvr.withSocialServiceAndLocalPlayer(arg1, arg2, arg3) -- Line 48
	arg1.socialService = arg2
	arg1.localPlayer = arg3
	return arg1
end
function module_upvr.withAnalytics(arg1, arg2) -- Line 54
	arg1.analytics = arg2
	return arg1
end
local GetFFlagEnableSharedInviteStore_upvr = require(Modules.Flags.GetFFlagEnableSharedInviteStore)
local InviteStore_upvr = require(ShareGame.InviteStore)
local Rodux_upvr = require(CorePackages.Packages.Rodux)
local AppReducer_upvr = require(ShareGame.AppReducer)
local FullModalShareGameComponent_upvr = require(ShareGame.Components.FullModalShareGameComponent)
function module_upvr._createTree(arg1, arg2, arg3) -- Line 59
	--[[ Upvalues[6]:
		[1]: GetFFlagEnableSharedInviteStore_upvr (readonly)
		[2]: InviteStore_upvr (readonly)
		[3]: Rodux_upvr (readonly)
		[4]: AppReducer_upvr (readonly)
		[5]: Roact_upvr (readonly)
		[6]: FullModalShareGameComponent_upvr (readonly)
	]]
	local var13
	if GetFFlagEnableSharedInviteStore_upvr() then
		var13 = InviteStore_upvr
	else
		var13 = Rodux_upvr.Store.new
		var13 = var13(AppReducer_upvr, nil, {Rodux_upvr.thunkMiddleware})
	end
	local module = {
		store = var13;
	}
	module.isVisible = arg2
	module.analytics = arg1.analytics
	local var16 = arg3
	if var16 then
		var16 = arg3.promptMessage
	end
	module.promptMessage = var16
	var16 = arg3
	local var17 = var16
	if var17 then
		var17 = arg3.inviteUserId
	end
	module.inviteUserId = var17
	var17 = arg3
	local var18 = var17
	if var18 then
		var18 = arg3.inviteMessageId
	end
	module.inviteMessageId = var18
	var18 = arg3
	local var19 = var18
	if var19 then
		var19 = arg3.launchData
	end
	module.launchData = var19
	var19 = arg3
	local var20 = var19
	if var20 then
		var20 = arg3.isLoading
	end
	module.isLoading = var20
	function module.onAfterClosePage(arg1_2) -- Line 72
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:hide({})
	end
	return Roact_upvr.createElement(FullModalShareGameComponent_upvr, module)
end
local Constants_upvr = require(Modules.Settings.Pages.ShareGame.Constants)
local GameInviteEvents_upvr = require(CorePackages.Workspace.Packages.GameInvite).GameInviteEvents
local GetFFlagAbuseReportAnalyticsHasLaunchData_upvr = require(Modules.Settings.Flags.GetFFlagAbuseReportAnalyticsHasLaunchData)
function module_upvr.show(arg1, arg2) -- Line 85
	--[[ Upvalues[5]:
		[1]: Constants_upvr (readonly)
		[2]: GameInviteEvents_upvr (readonly)
		[3]: GetFFlagAbuseReportAnalyticsHasLaunchData_upvr (readonly)
		[4]: Roact_upvr (readonly)
		[5]: ContextActionService_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	if arg1.isActive then
	else
		local var24 = arg2
		if var24 then
			var24 = arg2.isLoading
		end
		arg1.isLoading = var24
		var24 = not arg1.isLoading
		local var25 = var24
		arg1.isActive = var25
		local var26
		if arg2 then
			var26 = arg2.inviteUserId
			if var26 then
				var26 = Constants_upvr.Triggers
				var25 = var26.DeveloperSingle
			else
				var26 = Constants_upvr.Triggers
				var25 = var26.DeveloperMultiple
			end
			var26 = false
			if arg2.launchData ~= nil then
				if arg2.launchData == "" then
					var26 = false
				else
					var26 = true
				end
			end
			if GetFFlagAbuseReportAnalyticsHasLaunchData_upvr() then
				({}).isLaunchDataProvided = var26
			else
			end
			arg1.analytics:sendEvent(var25, GameInviteEvents_upvr.ModalOpened, nil)
		end
		if not arg1.instance then
			var26 = Roact_upvr
			var26 = arg1:_createTree(true, arg2)
			arg1.instance = var26.mount(var26, arg1.mountTarget, "invitePrompt")
		else
			var26 = Roact_upvr
			var26 = arg1.instance
			arg1.instance = var26.update(var26, arg1:_createTree(true, arg2))
		end
		if arg1.analytics and not arg1.isLoading then
			arg1.analytics:inputShareGameEntryPoint()
		end
		ContextActionService_upvr:BindCoreAction("hideInvitePrompt", function(arg1_3, arg2_2, arg3) -- Line 114
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			if arg2_2 == Enum.UserInputState.Begin then
				arg1:hide()
			end
		end, false, Enum.KeyCode.ButtonB, Enum.KeyCode.Backspace)
	end
end
local GuiService_upvr = game:GetService("GuiService")
function module_upvr.hide(arg1, arg2) -- Line 121
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: ContextActionService_upvr (readonly)
		[3]: GuiService_upvr (readonly)
	]]
	if not arg1.isActive and not arg1.isLoading then
	else
		arg1.isLoading = false
		arg1.isActive = false
		arg1.instance = Roact_upvr.update(arg1.instance, arg1:_createTree(false))
		if arg1.socialService and arg1.localPlayer then
			arg1.socialService:InvokeGameInvitePromptClosed(arg1.localPlayer, {})
		end
		ContextActionService_upvr:UnbindCoreAction("hideInvitePrompt")
		GuiService_upvr.SelectedCoreObject = nil
		GuiService_upvr:RemoveSelectionGroup("invitePrompt")
	end
end
function module_upvr.destruct(arg1) -- Line 138
	--[[ Upvalues[1]:
		[1]: Roact_upvr (readonly)
	]]
	if arg1.instance then
		Roact_upvr.unmount(arg1.instance)
	end
end
return module_upvr