-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:48:10
-- Luau version 6, Types version 3
-- Time taken: 0.007803 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local React_upvr = require(Parent.React)
local useContext_upvr = React_upvr.useContext
local ParentContainerContext_upvr = require(AppChat.Contexts.ParentContainer.ParentContainerContext)
local useState_upvr = React_upvr.useState
local useExternalNavigationByScreen_upvr = require(AppChat.Hooks.useExternalNavigationByScreen)
local useMemo_upvr = React_upvr.useMemo
local Signal_upvr = require(Parent.AppCommonLib).Signal
local RobloxEventReceiver_upvr = require(Parent.RealtimeDelivery).RobloxEventReceiver
local NotificationService_upvr = game:GetService("NotificationService")
local Responsive_upvr = require(Parent.Responsive)
local game_DefineFastInt_result1_upvr = game:DefineFastInt("AppChatWideBreakpointMinWidth", 800)
local game_DefineFastInt_result1_upvr_2 = game:DefineFastInt("AppChatWideBreakpointMinHeight", 0)
local useParentContainerExtents_upvr = require(AppChat.Contexts.ParentContainer.useParentContainerExtents)
local useRef_upvr = React_upvr.useRef
local useCallback_upvr = React_upvr.useCallback
local useEffect_upvr = React_upvr.useEffect
local game_DefineFastInt_result1_upvr_3 = game:DefineFastInt("AppChatInExperienceMountMinLoadingTimeMs", 0)
local FFlagAppChatFixDialogClipping_upvr = require(AppChat.Flags.FFlagAppChatFixDialogClipping)
local LoadingSpinner_upvr = require(Parent.UIBlox).App.Loading.LoadingSpinner
local AppChatEntryPoint_upvr = require(AppChat.AppChatEntryPoint)
local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
local ChatPlacementContext_upvr = require(AppChat.Contexts.ChatPlacementContext)
local ChatEventReceiver_upvr = require(AppChat.Components.EventReceivers.ChatEventReceiver)
local ChatExternalEventReceiver_upvr = require(AppChat.App.Components.ChatExternalEventReceiver)
local Container_upvr = require(AppChat.Components.ExternalNavigationHandler.Container)
local FFlagSquadAppChatRTNFix_upvr = require(Parent.SharedFlags).FFlagSquadAppChatRTNFix
local SquadAppChatEventReceiver_upvr = require(Parent.SquadsCore).SquadAppChatEventReceiver
return function(arg1) -- Line 50
	--[[ Upvalues[27]:
		[1]: useContext_upvr (readonly)
		[2]: ParentContainerContext_upvr (readonly)
		[3]: useState_upvr (readonly)
		[4]: useExternalNavigationByScreen_upvr (readonly)
		[5]: useMemo_upvr (readonly)
		[6]: Signal_upvr (readonly)
		[7]: RobloxEventReceiver_upvr (readonly)
		[8]: NotificationService_upvr (readonly)
		[9]: React_upvr (readonly)
		[10]: Responsive_upvr (readonly)
		[11]: game_DefineFastInt_result1_upvr (readonly)
		[12]: game_DefineFastInt_result1_upvr_2 (readonly)
		[13]: useParentContainerExtents_upvr (readonly)
		[14]: useRef_upvr (readonly)
		[15]: useCallback_upvr (readonly)
		[16]: useEffect_upvr (readonly)
		[17]: game_DefineFastInt_result1_upvr_3 (readonly)
		[18]: FFlagAppChatFixDialogClipping_upvr (readonly)
		[19]: LoadingSpinner_upvr (readonly)
		[20]: AppChatEntryPoint_upvr (readonly)
		[21]: LocalPlayer_upvr (readonly)
		[22]: ChatPlacementContext_upvr (readonly)
		[23]: ChatEventReceiver_upvr (readonly)
		[24]: ChatExternalEventReceiver_upvr (readonly)
		[25]: Container_upvr (readonly)
		[26]: FFlagSquadAppChatRTNFix_upvr (readonly)
		[27]: SquadAppChatEventReceiver_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 49 start (CF ANALYSIS FAILED)
	local hideParentContainer_upvr = useContext_upvr(ParentContainerContext_upvr).hideParentContainer
	local useState_upvr_result1, var7_result2 = useState_upvr(0)
	local var8_result1, var8_result2 = useExternalNavigationByScreen_upvr()
	local var9_result1 = useMemo_upvr(function() -- Line 58
		--[[ Upvalues[2]:
			[1]: RobloxEventReceiver_upvr (copied, readonly)
			[2]: NotificationService_upvr (copied, readonly)
		]]
		return RobloxEventReceiver_upvr.new(NotificationService_upvr)
	end, {})
	local any_useRef_result1 = React_upvr.useRef(nil)
	local var40 = Responsive_upvr
	local any_useOrientation_result1 = var40.useOrientation()
	local var44
	if Responsive_upvr.useResponsive({{
		Key = "wide";
		minWidth = game_DefineFastInt_result1_upvr;
		minHeight = game_DefineFastInt_result1_upvr_2;
	}}) ~= "wide" then
		var40 = false
	else
		var40 = true
	end
	if any_useOrientation_result1 == Responsive_upvr.Keys.Portrait or not var40 then
	end
	local useParentContainerExtents_upvr_result1, _ = useParentContainerExtents_upvr()
	if any_useOrientation_result1 ~= Responsive_upvr.DefaultKey then
		-- KONSTANTWARNING: GOTO [73] #57
	end
	-- KONSTANTERROR: [0] 1. Error Block 49 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [72] 56. Error Block 55 start (CF ANALYSIS FAILED)
	local var47_upvr = true
	local var48
	local var7_result1, var7_result2_2_upvr = useState_upvr(var47_upvr)
	local var17_result1_upvr = useRef_upvr(os.clock())
	useEffect_upvr(function() -- Line 89
		--[[ Upvalues[4]:
			[1]: var47_upvr (readonly)
			[2]: var17_result1_upvr (readonly)
			[3]: game_DefineFastInt_result1_upvr_3 (copied, readonly)
			[4]: var7_result2_2_upvr (readonly)
		]]
		if not var47_upvr then
			local var55 = os.clock() - var17_result1_upvr.current
			local var56 = game_DefineFastInt_result1_upvr_3 / 1000
			if var55 < var56 then
				delay(var56 - var55, function() -- Line 95
					--[[ Upvalues[1]:
						[1]: var7_result2_2_upvr (copied, readonly)
					]]
					var7_result2_2_upvr(false)
				end)
				return
			end
			var7_result2_2_upvr(false)
		end
	end, {var47_upvr, var7_result2_2_upvr})
	local module = {}
	local tbl = {}
	var44 = Color3.new(0, 0, 0)
	tbl.BackgroundColor3 = var44
	var44 = 1
	tbl.BackgroundTransparency = var44
	if FFlagAppChatFixDialogClipping_upvr then
		var44 = nil
	else
		var44 = true
	end
	tbl.ClipsDescendants = var44
	var44 = useParentContainerExtents_upvr_result1:map(function(arg1_2) -- Line 109
		return UDim2.fromOffset(arg1_2.X, arg1_2.Y)
	end)
	tbl.Size = var44
	var44 = _:map(function(arg1_3) -- Line 112
		return UDim2.fromOffset(arg1_3.X, arg1_3.Y)
	end)
	tbl.Position = var44
	tbl.ref = any_useRef_result1
	var44 = {}
	var44.Corner = React_upvr.createElement("UICorner", {
		CornerRadius = UDim.new(0, 8);
	})
	local tbl_2 = {}
	if var7_result1 then
		local tbl_4 = {}
		var48 = UDim2.fromOffset(50, 50)
		tbl_4.size = var48
		var48 = Vector2.new(0.5, 0.5)
		tbl_4.anchorPoint = var48
		var48 = UDim2.fromScale(0.5, 0.5)
		tbl_4.position = var48
		local _ = React_upvr.createElement(LoadingSpinner_upvr, tbl_4)
	else
		local tbl_6 = {
			setActiveConversationId = var7_result2;
		}
		if LocalPlayer_upvr then
			var48 = LocalPlayer_upvr.UserId
		else
			var48 = nil
		end
		tbl_6.localUserId = var48
		var48 = ChatPlacementContext_upvr.Enum.InExperienceDefault
		tbl_6.chatPlacement = var48
		var48 = true
		tbl_6.isVisible = var48
		var48 = arg1.initialConversationId
		tbl_6.initialConversationId = var48
		var48 = arg1.setInitialConversationId
		tbl_6.setInitialConversationId = var48
		tbl_6.wideMode = false
		tbl_6.navigateToRootStack = useCallback_upvr(function() -- Line 84
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: hideParentContainer_upvr (readonly)
			]]
			arg1.hideAppChat()
			hideParentContainer_upvr()
		end, {hideParentContainer_upvr, arg1.hideAppChat})
		tbl_6.updateExternalNavigationForScreen = var8_result2
	end
	tbl_2.AppChatEntryPoint = React_upvr.createElement(AppChatEntryPoint_upvr, tbl_6)
	var44.containerRef = React_upvr.createElement(Responsive_upvr.ContainerRef.Provider, {
		value = any_useRef_result1;
	}, tbl_2)
	module.AppChatWindow = React_upvr.createElement("Frame", tbl, var44)
	local tbl_5 = {
		robloxEventReceiver = var9_result1;
		rnBypassActionSignal = useMemo_upvr(function() -- Line 54
			--[[ Upvalues[1]:
				[1]: Signal_upvr (copied, readonly)
			]]
			return Signal_upvr.new()
		end, {});
	}
	var44 = tostring(useState_upvr_result1)
	tbl_5.activeConversationId = var44
	module.ChatEventReceiver = React_upvr.createElement(ChatEventReceiver_upvr, tbl_5)
	local tbl_3 = {
		robloxEventReceiver = var9_result1;
	}
	if LocalPlayer_upvr then
		var44 = LocalPlayer_upvr.UserId
	else
		var44 = nil
	end
	tbl_3.localUserId = var44
	module.ChatExternalEventReceiver = React_upvr.createElement(ChatExternalEventReceiver_upvr, tbl_3)
	module.ExternalNavigationHandler = React_upvr.createElement(Container_upvr, {
		navigationByScreen = var8_result1;
	})
	if FFlagSquadAppChatRTNFix_upvr then
	else
	end
	module.SquadAppChatEventReceiver = nil
	do
		return React_upvr.createElement(React_upvr.Fragment, {}, module)
	end
	-- KONSTANTERROR: [72] 56. Error Block 55 end (CF ANALYSIS FAILED)
end