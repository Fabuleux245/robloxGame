-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:03:11
-- Luau version 6, Types version 3
-- Time taken: 0.011768 seconds

local CorePackages = game:GetService("CorePackages")
local ContactList = game:GetService("CoreGui"):WaitForChild("RobloxGui").Modules.ContactList
local dependencies = require(ContactList.dependencies)
local useAnalytics_upvr = require(ContactList.Analytics.useAnalytics)
local useStyle_upvr = dependencies.UIBlox.Core.Style.useStyle
local useDispatch_upvr = dependencies.Hooks.useDispatch
local useIsSpatial_upvr = require(CorePackages.Workspace.Packages.Responsive).useIsSpatial
local React_upvr = require(CorePackages.Packages.React)
local CurrentCamera_upvr = workspace.CurrentCamera
local var10_upvr = 12 + require(ContactList.Parent.TopBar.Constants).TopBarHeight
local Signal_upvr = require(CorePackages.Workspace.Packages.AppCommonLib).Signal
local useSelector_upvr = dependencies.Hooks.useSelector
local SocialService_upvr = game:GetService("SocialService")
local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
local SetCurrentTag_upvr = require(ContactList.Actions.SetCurrentTag)
local EventNamesEnum_upvr = require(ContactList.Analytics.EventNamesEnum)
local Pages_upvr = require(ContactList.Enums.Pages)
local SetCurrentPage_upvr = require(ContactList.Actions.SetCurrentPage)
local SoundManager_upvr = require(CorePackages.Workspace.Packages.SoundManager).SoundManager
local Sounds_upvr = require(CorePackages.Workspace.Packages.SoundManager).Sounds
local SoundGroups_upvr = require(CorePackages.Workspace.Packages.SoundManager).SoundGroups
local OpenOrUpdateDialog_upvr = require(ContactList.Actions.OpenOrUpdateDialog)
local RobloxTranslator_upvr = require(CorePackages.Workspace.Packages.RobloxTranslator)
local dependencyArray_upvr = dependencies.Hooks.dependencyArray
local PeekViewState_upvr = require(CorePackages.Workspace.Packages.PeekView).PeekViewState
local CallHistoryContainer_upvr = require(ContactList.Components.CallHistory.CallHistoryContainer)
local FriendListContainer_upvr = require(ContactList.Components.FriendList.FriendListContainer)
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("ContactListPeekViewFixEnabled", false)
local ContactListHeader_upvr = require(ContactList.Components.ContactListHeader)
local ContactListSearchBar_upvr = require(ContactList.Components.ContactListSearchBar)
local PeekView_upvr = require(CorePackages.Workspace.Packages.PeekView).PeekView
return function() -- Line 64, Named "ContactListContainer"
	--[[ Upvalues[28]:
		[1]: useAnalytics_upvr (readonly)
		[2]: useStyle_upvr (readonly)
		[3]: useDispatch_upvr (readonly)
		[4]: useIsSpatial_upvr (readonly)
		[5]: React_upvr (readonly)
		[6]: CurrentCamera_upvr (readonly)
		[7]: var10_upvr (readonly)
		[8]: Signal_upvr (readonly)
		[9]: useSelector_upvr (readonly)
		[10]: SocialService_upvr (readonly)
		[11]: LocalPlayer_upvr (readonly)
		[12]: SetCurrentTag_upvr (readonly)
		[13]: EventNamesEnum_upvr (readonly)
		[14]: Pages_upvr (readonly)
		[15]: SetCurrentPage_upvr (readonly)
		[16]: SoundManager_upvr (readonly)
		[17]: Sounds_upvr (readonly)
		[18]: SoundGroups_upvr (readonly)
		[19]: OpenOrUpdateDialog_upvr (readonly)
		[20]: RobloxTranslator_upvr (readonly)
		[21]: dependencyArray_upvr (readonly)
		[22]: PeekViewState_upvr (readonly)
		[23]: CallHistoryContainer_upvr (readonly)
		[24]: FriendListContainer_upvr (readonly)
		[25]: game_DefineFastFlag_result1_upvr (readonly)
		[26]: ContactListHeader_upvr (readonly)
		[27]: ContactListSearchBar_upvr (readonly)
		[28]: PeekView_upvr (readonly)
	]]
	local useAnalytics_upvr_result1_upvr = useAnalytics_upvr()
	local var6_result1_upvr = useDispatch_upvr()
	local any_useRef_result1_upvr = React_upvr.useRef(nil)
	local any_useState_result1_upvr, any_useState_result2_upvr_3 = React_upvr.useState(0)
	local var37 = React_upvr
	if CurrentCamera_upvr.ViewportSize.X >= 640 then
		var37 = false
	else
		var37 = true
	end
	local any_useState_result1_upvr_3, any_useState_result2_upvr_5 = var37.useState(var37)
	local any_useState_result1_upvr_4, any_useState_result2_upvr_4 = React_upvr.useState("")
	local any_useState_result1_upvr_2, any_useState_result2_upvr_2 = React_upvr.useState(CurrentCamera_upvr.ViewportSize.Y - var10_upvr)
	local any_useState_result1_upvr_5, any_useState_result2_upvr = React_upvr.useState(nil)
	local any_useRef_result1_upvr_2 = React_upvr.useRef(Signal_upvr.new())
	local var12_result1_upvr = useSelector_upvr(React_upvr.useCallback(function(arg1) -- Line 87
		return arg1.Navigation.currentPage
	end, {}))
	local var7_result1_upvr = useIsSpatial_upvr()
	React_upvr.useEffect(function() -- Line 92
		--[[ Upvalues[17]:
			[1]: SocialService_upvr (copied, readonly)
			[2]: LocalPlayer_upvr (copied, readonly)
			[3]: var7_result1_upvr (readonly)
			[4]: var6_result1_upvr (readonly)
			[5]: SetCurrentTag_upvr (copied, readonly)
			[6]: useAnalytics_upvr_result1_upvr (readonly)
			[7]: EventNamesEnum_upvr (copied, readonly)
			[8]: var12_result1_upvr (readonly)
			[9]: Pages_upvr (copied, readonly)
			[10]: SetCurrentPage_upvr (copied, readonly)
			[11]: SoundManager_upvr (copied, readonly)
			[12]: Sounds_upvr (copied, readonly)
			[13]: SoundGroups_upvr (copied, readonly)
			[14]: OpenOrUpdateDialog_upvr (copied, readonly)
			[15]: RobloxTranslator_upvr (copied, readonly)
			[16]: any_useState_result2_upvr_3 (readonly)
			[17]: any_useState_result1_upvr (readonly)
		]]
		local any_Connect_result1_upvr = SocialService_upvr.PromptIrisInviteRequested:Connect(function(arg1, arg2) -- Line 94
			--[[ Upvalues[15]:
				[1]: LocalPlayer_upvr (copied, readonly)
				[2]: var7_result1_upvr (copied, readonly)
				[3]: var6_result1_upvr (copied, readonly)
				[4]: SetCurrentTag_upvr (copied, readonly)
				[5]: useAnalytics_upvr_result1_upvr (copied, readonly)
				[6]: EventNamesEnum_upvr (copied, readonly)
				[7]: var12_result1_upvr (copied, readonly)
				[8]: Pages_upvr (copied, readonly)
				[9]: SetCurrentPage_upvr (copied, readonly)
				[10]: SoundManager_upvr (copied, readonly)
				[11]: Sounds_upvr (copied, readonly)
				[12]: SoundGroups_upvr (copied, readonly)
				[13]: OpenOrUpdateDialog_upvr (copied, readonly)
				[14]: RobloxTranslator_upvr (copied, readonly)
				[15]: SocialService_upvr (copied, readonly)
			]]
			if LocalPlayer_upvr and LocalPlayer_upvr.UserId == arg1.UserId then
				if not var7_result1_upvr then
					var6_result1_upvr(SetCurrentTag_upvr(arg2))
					useAnalytics_upvr_result1_upvr.fireEvent(EventNamesEnum_upvr.PhoneBookNavigate, {
						eventTimestampMs = os.time() * 1000;
						startingPage = var12_result1_upvr;
						destinationPage = Pages_upvr.CallHistory;
					})
					var6_result1_upvr(SetCurrentPage_upvr(Pages_upvr.CallHistory))
					SoundManager_upvr:PlaySound(Sounds_upvr.Swipe.Name, {
						Volume = 0.5;
					}, SoundGroups_upvr.Iris)
					return
				end
				var6_result1_upvr(OpenOrUpdateDialog_upvr(RobloxTranslator_upvr:FormatByKey("Feature.Call.Error.Label.OhNo"), RobloxTranslator_upvr:FormatByKey("Feature.Call.Error.Description.DeviceNotSupported"), function() -- Line 111
					--[[ Upvalues[2]:
						[1]: SocialService_upvr (copied, readonly)
						[2]: LocalPlayer_upvr (copied, readonly)
					]]
					SocialService_upvr:InvokeIrisInvitePromptClosed(LocalPlayer_upvr)
				end))
			end
		end)
		local any_Connect_result1_upvr_2 = SocialService_upvr.PhoneBookPromptClosed:Connect(function(arg1) -- Line 123
			--[[ Upvalues[8]:
				[1]: LocalPlayer_upvr (copied, readonly)
				[2]: useAnalytics_upvr_result1_upvr (copied, readonly)
				[3]: EventNamesEnum_upvr (copied, readonly)
				[4]: var12_result1_upvr (copied, readonly)
				[5]: var6_result1_upvr (copied, readonly)
				[6]: SetCurrentPage_upvr (copied, readonly)
				[7]: any_useState_result2_upvr_3 (copied, readonly)
				[8]: any_useState_result1_upvr (copied, readonly)
			]]
			if LocalPlayer_upvr and LocalPlayer_upvr.UserId == arg1.UserId then
				useAnalytics_upvr_result1_upvr.fireEvent(EventNamesEnum_upvr.PhoneBookNavigate, {
					eventTimestampMs = os.time() * 1000;
					startingPage = tostring(var12_result1_upvr);
					destinationPage = nil;
				})
				var6_result1_upvr(SetCurrentPage_upvr(nil))
				any_useState_result2_upvr_3(any_useState_result1_upvr + 1)
			end
		end)
		return function() -- Line 136
			--[[ Upvalues[2]:
				[1]: any_Connect_result1_upvr (readonly)
				[2]: any_Connect_result1_upvr_2 (readonly)
			]]
			any_Connect_result1_upvr:Disconnect()
			any_Connect_result1_upvr_2:Disconnect()
		end
	end, dependencyArray_upvr(any_useState_result1_upvr, var12_result1_upvr))
	local any_useCallback_result1_upvr = React_upvr.useCallback(function() -- Line 142
		--[[ Upvalues[9]:
			[1]: any_useState_result1_upvr_3 (readonly)
			[2]: any_useRef_result1_upvr (readonly)
			[3]: SoundManager_upvr (copied, readonly)
			[4]: Sounds_upvr (copied, readonly)
			[5]: SoundGroups_upvr (copied, readonly)
			[6]: var10_upvr (copied, readonly)
			[7]: SocialService_upvr (copied, readonly)
			[8]: LocalPlayer_upvr (copied, readonly)
			[9]: any_useRef_result1_upvr_2 (readonly)
		]]
		if not any_useState_result1_upvr_3 and any_useRef_result1_upvr.current then
			SoundManager_upvr:PlaySound(Sounds_upvr.Swipe.Name, {
				Volume = 0.5;
			}, SoundGroups_upvr.Iris)
			pcall(function() -- Line 145
				--[[ Upvalues[4]:
					[1]: any_useRef_result1_upvr (copied, readonly)
					[2]: var10_upvr (copied, readonly)
					[3]: SocialService_upvr (copied, readonly)
					[4]: LocalPlayer_upvr (copied, readonly)
				]]
				any_useRef_result1_upvr.current:TweenPosition(UDim2.new(0, -376, 0, var10_upvr), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.3, true, function() -- Line 152
					--[[ Upvalues[2]:
						[1]: SocialService_upvr (copied, readonly)
						[2]: LocalPlayer_upvr (copied, readonly)
					]]
					SocialService_upvr:InvokeIrisInvitePromptClosed(LocalPlayer_upvr)
				end)
			end)
		elseif any_useRef_result1_upvr_2 and any_useRef_result1_upvr_2.current then
			any_useRef_result1_upvr_2.current:fire()
		end
	end, {any_useState_result1_upvr_3})
	React_upvr.useEffect(function() -- Line 169
		--[[ Upvalues[4]:
			[1]: CurrentCamera_upvr (copied, readonly)
			[2]: any_useState_result2_upvr_5 (readonly)
			[3]: any_useState_result2_upvr_2 (readonly)
			[4]: var10_upvr (copied, readonly)
		]]
		local any_Connect_result1_upvr_3 = CurrentCamera_upvr:GetPropertyChangedSignal("ViewportSize"):Connect(function() -- Line 170
			--[[ Upvalues[4]:
				[1]: CurrentCamera_upvr (copied, readonly)
				[2]: any_useState_result2_upvr_5 (copied, readonly)
				[3]: any_useState_result2_upvr_2 (copied, readonly)
				[4]: var10_upvr (copied, readonly)
			]]
			if CurrentCamera_upvr.ViewportSize.X < 640 then
				any_useState_result2_upvr_5(true)
			else
				any_useState_result2_upvr_5(false)
			end
			any_useState_result2_upvr_2(CurrentCamera_upvr.ViewportSize.Y - var10_upvr)
		end)
		return function() -- Line 180
			--[[ Upvalues[1]:
				[1]: any_Connect_result1_upvr_3 (readonly)
			]]
			any_Connect_result1_upvr_3:Disconnect()
		end
	end, {})
	React_upvr.useEffect(function() -- Line 185
		--[[ Upvalues[5]:
			[1]: var12_result1_upvr (readonly)
			[2]: any_useState_result1_upvr_3 (readonly)
			[3]: any_useRef_result1_upvr (readonly)
			[4]: var10_upvr (copied, readonly)
			[5]: any_useState_result2_upvr_4 (readonly)
		]]
		if var12_result1_upvr and not any_useState_result1_upvr_3 and any_useRef_result1_upvr.current then
			pcall(function() -- Line 187
				--[[ Upvalues[2]:
					[1]: any_useRef_result1_upvr (copied, readonly)
					[2]: var10_upvr (copied, readonly)
				]]
				any_useRef_result1_upvr.current:TweenPosition(UDim2.new(0, 12, 0, var10_upvr), Enum.EasingDirection.In, Enum.EasingStyle.Quad, 0.3, true)
			end)
		end
		any_useState_result2_upvr_4("")
	end, {any_useState_result1_upvr_3, var12_result1_upvr})
	local Theme_upvr = useStyle_upvr().Theme
	local any_useCallback_result1_upvr_2 = React_upvr.useCallback(function(arg1) -- Line 164
		--[[ Upvalues[1]:
			[1]: any_useState_result2_upvr_4 (readonly)
		]]
		any_useState_result2_upvr_4(arg1)
	end, {})
	local any_useCallback_result1_upvr_3 = React_upvr.useCallback(function() -- Line 214
		--[[ Upvalues[8]:
			[1]: useAnalytics_upvr_result1_upvr (readonly)
			[2]: EventNamesEnum_upvr (copied, readonly)
			[3]: var12_result1_upvr (readonly)
			[4]: Pages_upvr (copied, readonly)
			[5]: var6_result1_upvr (readonly)
			[6]: SetCurrentPage_upvr (copied, readonly)
			[7]: any_useState_result2_upvr (readonly)
			[8]: PeekViewState_upvr (copied, readonly)
		]]
		useAnalytics_upvr_result1_upvr.fireEvent(EventNamesEnum_upvr.PhoneBookSearchClicked, {
			eventTimestampMs = os.time() * 1000;
		})
		if var12_result1_upvr ~= Pages_upvr.FriendList then
			useAnalytics_upvr_result1_upvr.fireEvent(EventNamesEnum_upvr.PhoneBookNavigate, {
				eventTimestampMs = os.time() * 1000;
				startingPage = var12_result1_upvr;
				destinationPage = Pages_upvr.FriendList;
			})
		end
		var6_result1_upvr(SetCurrentPage_upvr(Pages_upvr.FriendList))
		any_useState_result2_upvr(PeekViewState_upvr.Full)
	end, {var12_result1_upvr})
	local function var80() -- Line 229
		--[[ Upvalues[19]:
			[1]: var12_result1_upvr (readonly)
			[2]: Pages_upvr (copied, readonly)
			[3]: React_upvr (copied, readonly)
			[4]: CallHistoryContainer_upvr (copied, readonly)
			[5]: any_useCallback_result1_upvr (readonly)
			[6]: any_useState_result1_upvr_3 (readonly)
			[7]: any_useState_result1_upvr_5 (readonly)
			[8]: PeekViewState_upvr (copied, readonly)
			[9]: any_useState_result1_upvr_4 (readonly)
			[10]: FriendListContainer_upvr (copied, readonly)
			[11]: any_useState_result1_upvr_2 (readonly)
			[12]: var10_upvr (copied, readonly)
			[13]: Theme_upvr (readonly)
			[14]: game_DefineFastFlag_result1_upvr (copied, readonly)
			[15]: any_useRef_result1_upvr (readonly)
			[16]: ContactListHeader_upvr (copied, readonly)
			[17]: ContactListSearchBar_upvr (copied, readonly)
			[18]: any_useCallback_result1_upvr_2 (readonly)
			[19]: any_useCallback_result1_upvr_3 (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var84
		if var12_result1_upvr == Pages_upvr.CallHistory then
			local tbl_6 = {}
			var84 = any_useCallback_result1_upvr
			tbl_6.dismissCallback = var84
			var84 = any_useState_result1_upvr_3
			tbl_6.isSmallScreen = var84
			var84 = not any_useState_result1_upvr_3
			if not var84 then
				if any_useState_result1_upvr_5 ~= PeekViewState_upvr.Full then
					var84 = false
				else
					var84 = true
				end
			end
			tbl_6.scrollingEnabled = var84
			tbl_6.searchText = any_useState_result1_upvr_4
		elseif var12_result1_upvr == Pages_upvr.FriendList then
			local tbl = {
				dismissCallback = any_useCallback_result1_upvr;
				isSmallScreen = any_useState_result1_upvr_3;
			}
			if not not any_useState_result1_upvr_3 then
				if any_useState_result1_upvr_5 ~= PeekViewState_upvr.Full then
				else
				end
			end
			tbl.scrollingEnabled = true
			tbl.searchText = any_useState_result1_upvr_4
		end
		local module_2 = {}
		if any_useState_result1_upvr_3 then
		else
		end
		module_2.Size = UDim2.new(0, 376, 1, -var10_upvr)
		if any_useState_result1_upvr_3 then
		else
		end
		module_2.Position = UDim2.new(0, -376, 0, var10_upvr)
		module_2.AutoButtonColor = false
		module_2.BackgroundColor3 = Theme_upvr.BackgroundDefault.Color
		if game_DefineFastFlag_result1_upvr then
		else
		end
		module_2.BackgroundTransparency = nil
		if game_DefineFastFlag_result1_upvr then
			-- KONSTANTWARNING: GOTO [143] #112
		end
		module_2.BorderSizePixel = nil
		local var88
		module_2.ref = any_useRef_result1_upvr
		if game_DefineFastFlag_result1_upvr and any_useState_result1_upvr_3 then
			var88 = nil
		else
			var88 = React_upvr.createElement
			var88 = var88("UICorner", {
				CornerRadius = UDim.new(0, 12);
			})
		end
		;({}).UICorner = var88
		var88 = React_upvr.createElement
		local tbl_5 = {}
		local var91
		if not game_DefineFastFlag_result1_upvr and any_useState_result1_upvr_3 then
			var91 = UDim.new(0, 0)
		else
			var91 = UDim.new(0, 8)
		end
		tbl_5.PaddingTop = var91
		var88 = var88("UIPadding", tbl_5)
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		;({}).UIPadding = var88
		var88 = React_upvr.createElement
		local tbl_7 = {}
		var91 = Enum.FillDirection.Vertical
		tbl_7.FillDirection = var91
		var91 = Enum.HorizontalAlignment.Center
		tbl_7.HorizontalAlignment = var91
		var91 = Enum.SortOrder.LayoutOrder
		tbl_7.SortOrder = var91
		var91 = UDim.new(0, 8)
		tbl_7.Padding = var91
		var88 = var88("UIListLayout", tbl_7)
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		;({}).Layout = var88
		var88 = React_upvr.createElement
		local tbl_4 = {}
		var91 = var12_result1_upvr
		tbl_4.currentPage = var91
		var91 = 36
		tbl_4.headerHeight = var91
		var91 = 1
		tbl_4.layoutOrder = var91
		var91 = any_useCallback_result1_upvr
		tbl_4.dismissCallback = var91
		var88 = var88(ContactListHeader_upvr, tbl_4)
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		;({}).Header = var88
		var88 = React_upvr.createElement
		local tbl_3 = {}
		var91 = 2
		tbl_3.layoutOrder = var91
		var91 = any_useCallback_result1_upvr_2
		tbl_3.onSearchChanged = var91
		var91 = 36
		tbl_3.searchBarHeight = var91
		var91 = any_useState_result1_upvr_4
		tbl_3.searchText = var91
		var91 = any_useCallback_result1_upvr_3
		tbl_3.onFocused = var91
		var88 = var88(ContactListSearchBar_upvr, tbl_3)
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		;({}).SearchBar = var88
		var88 = React_upvr.createElement
		local tbl_2 = {}
		var91 = 1
		tbl_2.BackgroundTransparency = var91
		var91 = 3
		tbl_2.LayoutOrder = var91
		var91 = UDim2.new(1, 0, 1, -88)
		tbl_2.Size = var91
		var91 = React_upvr.createElement(FriendListContainer_upvr, tbl)
		var88 = var88("Frame", tbl_2, var91)
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		;({}).ContentContainer = var88
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		return React_upvr.createElement("ImageButton", module_2, {})
	end
	local module = {}
	if any_useState_result1_upvr_3 then
		module["ContactListContent"..tostring(any_useState_result1_upvr)] = React_upvr.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, -var10_upvr);
			Position = UDim2.fromOffset(0, var10_upvr);
			BackgroundTransparency = 1;
		}, {React_upvr.createElement(PeekView_upvr, {
			briefViewContentHeight = UDim.new(0.6, 0);
			canDragFullViewToBrief = true;
			closeSignal = any_useRef_result1_upvr_2.current;
			elasticBehavior = Enum.ElasticBehavior.Never;
			peekViewState = any_useState_result1_upvr_5;
			viewStateChanged = React_upvr.useCallback(function(arg1, arg2) -- Line 202
				--[[ Upvalues[7]:
					[1]: PeekViewState_upvr (copied, readonly)
					[2]: LocalPlayer_upvr (copied, readonly)
					[3]: SocialService_upvr (copied, readonly)
					[4]: SoundManager_upvr (copied, readonly)
					[5]: Sounds_upvr (copied, readonly)
					[6]: SoundGroups_upvr (copied, readonly)
					[7]: any_useState_result2_upvr (readonly)
				]]
				if arg1 == PeekViewState_upvr.Closed then
					if LocalPlayer_upvr then
						SocialService_upvr:InvokeIrisInvitePromptClosed(LocalPlayer_upvr)
					end
					SoundManager_upvr:PlaySound(Sounds_upvr.Swipe.Name, {
						Volume = 0.5;
					}, SoundGroups_upvr.Iris)
				end
				any_useState_result2_upvr(arg1)
			end, {});
		}, {
			Content = React_upvr.useMemo(var80, dependencyArray_upvr(any_useState_result1_upvr_2, var12_result1_upvr, any_useCallback_result1_upvr, any_useState_result1_upvr_5, any_useState_result1_upvr_3, any_useState_result1_upvr_4));
		})})
	else
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		module.ContactListContent = React_upvr.useMemo(var80, dependencyArray_upvr(any_useState_result1_upvr_2, var12_result1_upvr, any_useCallback_result1_upvr, any_useState_result1_upvr_5, any_useState_result1_upvr_3, any_useState_result1_upvr_4))
	end
	if var12_result1_upvr then
		return React_upvr.createElement("TextButton", {
			Size = UDim2.fromScale(1, 1);
			BackgroundTransparency = 1;
			Text = "";
			[React_upvr.Event.Activated] = function() -- Line 337
				--[[ Upvalues[1]:
					[1]: any_useCallback_result1_upvr (readonly)
				]]
				any_useCallback_result1_upvr()
			end;
		}, module)
	end
	return nil
end