-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:53:29
-- Luau version 6, Types version 3
-- Time taken: 0.009040 seconds

local CoreGui = game:GetService("CoreGui")
local RunService_upvr = game:GetService("RunService")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local InGameMenuDependencies = require(game:GetService("CorePackages").Packages.InGameMenuDependencies)
local Roact_upvr = InGameMenuDependencies.Roact
local t = InGameMenuDependencies.t
local Parent = script.Parent.Parent.Parent
local game_GetEngineFeature_result1_upvr = game:GetEngineFeature("CoreScriptVersionEnabled")
local any_extend_result1 = Roact_upvr.PureComponent:extend("VersionReporter")
any_extend_result1.validateProps = t.strictInterface({
	LayoutOrder = t.integer;
})
local Constants_upvr = require(Parent.Resources.Constants)
local RbxAnalyticsService_upvr = game:GetService("RbxAnalyticsService")
local GetFFlagNewEventIngestPlayerScriptsDimensions_upvr = require(RobloxGui.Modules.Flags.GetFFlagNewEventIngestPlayerScriptsDimensions)
local function inferPlayerScriptStatus_upvr(arg1) -- Line 44, Named "inferPlayerScriptStatus"
	--[[ Upvalues[3]:
		[1]: Constants_upvr (readonly)
		[2]: RbxAnalyticsService_upvr (readonly)
		[3]: GetFFlagNewEventIngestPlayerScriptsDimensions_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local PlayerScriptsLoader = arg1:FindFirstChild("PlayerScriptsLoader")
	local PlayerModule = arg1:FindFirstChild("PlayerModule")
	local var16
	if PlayerScriptsLoader ~= nil and PlayerModule ~= nil then
		if not PlayerModule.Archivable and not PlayerScriptsLoader.Archivable then
			var16 = Constants_upvr.PlayerScriptStatusStrings.Default
		else
			var16 = Constants_upvr.PlayerScriptStatusStrings.PossiblyCustom
		end
	elseif arg1:FindFirstChild("CameraScript") ~= nil or arg1:FindFirstChild("ControlScript") ~= nil then
		var16 = Constants_upvr.PlayerScriptStatusStrings.CustomOld
	else
		var16 = Constants_upvr.PlayerScriptStatusStrings.Custom
	end
	local tbl_9 = {}
	if var16 ~= Constants_upvr.PlayerScriptStatusStrings.Default then
	else
	end
	tbl_9.defaultPlayerScripts = true
	tbl_9.placeID = tostring(game.PlaceId)
	if GetFFlagNewEventIngestPlayerScriptsDimensions_upvr() then
		-- KONSTANTWARNING: GOTO [88] #62
	end
	tbl_9.rawValue = nil
	if GetFFlagNewEventIngestPlayerScriptsDimensions_upvr() then
	else
	end
	tbl_9.context = nil
	RbxAnalyticsService_upvr:SetRBXEventStream(Constants_upvr.AnalyticsTargetName, "player_scripts_status", "player_scripts_status_action", tbl_9)
	return var16
end
local StarterPlayer_upvr = game:GetService("StarterPlayer")
local ContentProvider_upvr = game:GetService("ContentProvider")
function any_extend_result1.init(arg1) -- Line 80
	--[[ Upvalues[5]:
		[1]: StarterPlayer_upvr (readonly)
		[2]: inferPlayerScriptStatus_upvr (readonly)
		[3]: ContentProvider_upvr (readonly)
		[4]: RunService_upvr (readonly)
		[5]: game_GetEngineFeature_result1_upvr (readonly)
	]]
	local var20 = "PlayerScript Status: Unknown"
	local StarterPlayerScripts = StarterPlayer_upvr:FindFirstChild("StarterPlayerScripts")
	local var22
	if StarterPlayerScripts then
		var20 = inferPlayerScriptStatus_upvr(StarterPlayerScripts)
	else
		arg1.playerScriptsAddedConnection = StarterPlayer_upvr.ChildAdded:Connect(function(arg1_2) -- Line 86
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: inferPlayerScriptStatus_upvr (copied, readonly)
			]]
			if arg1_2.Name == "StarterPlayerScripts" then
				arg1.playerScriptsAddedConnection:Disconnect()
				arg1.playerScriptsAddedConnection = nil
				arg1:setState({
					playerScriptStatus = inferPlayerScriptStatus_upvr(arg1_2);
				})
			end
		end)
	end
	local tbl_16 = {}
	var22 = ContentProvider_upvr.BaseUrl
	tbl_16.baseUrl = var22
	var22 = RunService_upvr:GetRobloxVersion()
	tbl_16.clientVersion = var22
	var22 = false
	tbl_16.isAdmin = var22
	var22 = nil
	tbl_16.latestPlaceVersion = var22
	var22 = game.PlaceVersion
	tbl_16.placeVersion = var22
	var22 = nil
	tbl_16.serverVersion = var22
	tbl_16.playerScriptStatus = var20
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var22 = RunService_upvr:GetCoreScriptVersion()
		return var22
	end
	if not game_GetEngineFeature_result1_upvr or not INLINED() then
		var22 = nil
	end
	tbl_16.coreScriptVersion = var22
	arg1:setState(tbl_16)
end
local withLocalization_upvr = require(Parent.Localization.withLocalization)
local ThemedTextLabel_upvr = require(Parent.Components.ThemedTextLabel)
local UIBlox_upvr = InGameMenuDependencies.UIBlox
local Divider_upvr = require(Parent.Components.Divider)
local ExternalEventConnection_upvr = require(Parent.Utility.ExternalEventConnection)
function any_extend_result1.render(arg1) -- Line 109
	--[[ Upvalues[8]:
		[1]: withLocalization_upvr (readonly)
		[2]: game_GetEngineFeature_result1_upvr (readonly)
		[3]: RunService_upvr (readonly)
		[4]: Roact_upvr (readonly)
		[5]: ThemedTextLabel_upvr (readonly)
		[6]: UIBlox_upvr (readonly)
		[7]: Divider_upvr (readonly)
		[8]: ExternalEventConnection_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var31
	if var31 == nil then
	else
	end
	if arg1.state.latestPlaceVersion == nil then
		var31 = false
	else
		var31 = true
	end
	local var32_upvr = not arg1.state.baseUrl:find("www.roblox.com")
	if not var32_upvr then
	end
	local module_3 = {
		clientVersion = {
			CLIENT_VERSION = arg1.state.clientVersion;
			"CoreScripts.InGameMenu.GameSettings.ClientVersion"
		};
	}
	local tbl_4 = {}
	local var36 = "CoreScripts.InGameMenu.GameSettings.ServerVersion"
	tbl_4[1] = var36
	tbl_4.SERVER_VERSION = arg1.state.serverVersion
	module_3.serverVersion = tbl_4
	local tbl_8 = {}
	if var31 then
		var36 = "CoreScripts.InGameMenu.GameSettings.PlaceVersionWithLatest"
	else
		var36 = "CoreScripts.InGameMenu.GameSettings.PlaceVersion"
	end
	tbl_8[1] = var36
	tbl_8.PLACE_VERSION = arg1.state.placeVersion
	tbl_8.LATEST_PLACE_VERSION = arg1.state.latestPlaceVersion
	module_3.placeVersion = tbl_8
	local function INLINED_2() -- Internal function, doesn't exist in bytecode
		tbl_7.CLIENT_CORESCRIPT_VERSION = arg1.state.coreScriptVersion
		tbl_7[1] = "CoreScripts.InGameMenu.GameSettings.ClientCoreScriptVersion"
		local tbl_7 = {}
		return tbl_7
	end
	if not game_GetEngineFeature_result1_upvr or not INLINED_2() then
	end
	module_3.coreScriptVersion = nil
	local var40_upvr = true
	local isAdmin_upvr = arg1.state.isAdmin
	return withLocalization_upvr(module_3)(function(arg1_3) -- Line 134
		--[[ Upvalues[11]:
			[1]: RunService_upvr (copied, readonly)
			[2]: Roact_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: ThemedTextLabel_upvr (copied, readonly)
			[5]: var40_upvr (readonly)
			[6]: UIBlox_upvr (copied, readonly)
			[7]: var32_upvr (readonly)
			[8]: isAdmin_upvr (readonly)
			[9]: Divider_upvr (copied, readonly)
			[10]: game_GetEngineFeature_result1_upvr (copied, readonly)
			[11]: ExternalEventConnection_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local clientVersion = arg1_3.clientVersion
		local pcall_result1, pcall_result2 = pcall(function() -- Line 137
			--[[ Upvalues[1]:
				[1]: RunService_upvr (copied, readonly)
			]]
			return RunService_upvr.ClientGitHash
		end)
		local callback
		if pcall_result1 then
			clientVersion = string.format("%s (%.6s)", clientVersion, pcall_result2)
		end
		local module_2 = {
			BackgroundTransparency = 1;
		}
		callback = 80
		module_2.Size = UDim2.new(1, 0, 0, callback)
		module_2.LayoutOrder = arg1.props.LayoutOrder
		local module = {}
		local tbl_3 = {}
		callback = UDim.new(0, 14)
		tbl_3.PaddingTop = callback
		callback = UDim.new(0, 24)
		tbl_3.PaddingLeft = callback
		callback = UDim.new(0, 14)
		tbl_3.PaddingBottom = callback
		module.Padding = Roact_upvr.createElement("UIPadding", tbl_3)
		local tbl_6 = {}
		callback = Enum.SortOrder.LayoutOrder
		tbl_6.SortOrder = callback
		callback = UDim.new(0, 10)
		tbl_6.Padding = callback
		module.Layout = Roact_upvr.createElement("UIListLayout", tbl_6)
		local tbl_15 = {}
		callback = "TextDefault"
		tbl_15.themeKey = callback
		callback = "Footer"
		tbl_15.fontKey = callback
		tbl_15.Text = clientVersion
		callback = 1
		tbl_15.LayoutOrder = callback
		callback = UDim2.new(1, -24, 0, 14)
		tbl_15.Size = callback
		module.ClientVersion = Roact_upvr.createElement(ThemedTextLabel_upvr, tbl_15)
		local tbl_10 = {}
		callback = "TextDefault"
		tbl_10.themeKey = callback
		callback = "Footer"
		tbl_10.fontKey = callback
		local function INLINED_3() -- Internal function, doesn't exist in bytecode
			callback = arg1_3.serverVersion
			return callback
		end
		if not var40_upvr or not INLINED_3() then
			callback = ""
		end
		tbl_10.Text = callback
		callback = 2
		tbl_10.LayoutOrder = callback
		callback = UDim2.new(1, -24, 0, 14)
		tbl_10.Size = callback
		callback = {}
		if not var40_upvr then
		end
		callback[1] = Roact_upvr.createElement(UIBlox_upvr.App.Loading.ShimmerPanel, {
			Size = UDim2.new(1, 0, 1, 0);
			shimmerSpeed = 2;
		})
		module.ServerVersion = Roact_upvr.createElement(ThemedTextLabel_upvr, tbl_10, callback)
		local tbl = {}
		callback = "TextDefault"
		tbl.themeKey = callback
		callback = "Footer"
		tbl.fontKey = callback
		callback = arg1_3.placeVersion
		tbl.Text = callback
		callback = 3
		tbl.LayoutOrder = callback
		callback = UDim2.new(1, -24, 0, 14)
		tbl.Size = callback
		module.PlaceVersion = Roact_upvr.createElement(ThemedTextLabel_upvr, tbl)
		if var32_upvr or isAdmin_upvr then
			local tbl_14 = {}
			callback = UDim2.new(1, 0, 0, 1)
			tbl_14.Size = callback
			callback = 4
			tbl_14.LayoutOrder = callback
		end
		module.Divider = Roact_upvr.createElement(Divider_upvr, tbl_14)
		local var56 = isAdmin_upvr
		if var56 then
			var56 = Roact_upvr.createElement
			local tbl_12 = {}
			callback = "TextDefault"
			tbl_12.themeKey = callback
			callback = "Footer"
			tbl_12.fontKey = callback
			callback = arg1.state.playerScriptStatus
			tbl_12.Text = callback
			callback = 5
			tbl_12.LayoutOrder = callback
			callback = UDim2.new(1, -24, 0, 14)
			tbl_12.Size = callback
			var56 = var56(ThemedTextLabel_upvr, tbl_12)
		end
		module.PlayerScriptStatus = var56
		var56 = var32_upvr
		local var58 = var56
		if var58 then
			var58 = Roact_upvr.createElement
			local tbl_5 = {}
			callback = "TextDefault"
			tbl_5.themeKey = callback
			callback = "Footer"
			tbl_5.fontKey = callback
			callback = "Base URL: %s":format(arg1.state.baseUrl)
			tbl_5.Text = callback
			callback = 6
			tbl_5.LayoutOrder = callback
			callback = UDim2.new(1, -24, 0, 14)
			tbl_5.Size = callback
			var58 = var58(ThemedTextLabel_upvr, tbl_5)
		end
		module.Environment = var58
		var58 = game_GetEngineFeature_result1_upvr
		local var60 = var58
		if var60 then
			var60 = Roact_upvr.createElement
			local tbl_13 = {}
			callback = UDim2.new(1, 0, 0, 1)
			tbl_13.Size = callback
			callback = 7
			tbl_13.LayoutOrder = callback
			var60 = var60(Divider_upvr, tbl_13)
		end
		module.Divider2 = var60
		var60 = game_GetEngineFeature_result1_upvr
		local var62 = var60
		if var62 then
			var62 = Roact_upvr.createElement
			local tbl_2 = {}
			callback = "TextDefault"
			tbl_2.themeKey = callback
			callback = "Footer"
			tbl_2.fontKey = callback
			callback = arg1_3.coreScriptVersion
			tbl_2.Text = callback
			callback = 8
			tbl_2.LayoutOrder = callback
			callback = UDim2.new(1, -24, 0, 14)
			tbl_2.Size = callback
			var62 = var62(ThemedTextLabel_upvr, tbl_2)
		end
		module.CoreScriptVersion = var62
		local tbl_11 = {}
		callback = game:GetPropertyChangedSignal("PlaceVersion")
		tbl_11.event = callback
		function callback() -- Line 216
			--[[ Upvalues[1]:
				[1]: arg1 (copied, readonly)
			]]
			arg1:setState({
				placeVersion = game.PlaceVersion;
			})
		end
		tbl_11.callback = callback
		module.VersionWatcher = Roact_upvr.createElement(ExternalEventConnection_upvr, tbl_11)
		return Roact_upvr.createElement("Frame", module_2, module)
	end)
end
local RobloxReplicatedStorage_upvr = game:GetService("RobloxReplicatedStorage")
local GetFFlagRemoveAssetVersionEndpoint_upvr = require(RobloxGui.Modules.Flags.GetFFlagRemoveAssetVersionEndpoint)
local HttpRbxApiService_upvr = game:GetService("HttpRbxApiService")
local HttpService_upvr = game:GetService("HttpService")
local PlayerPermissionsModule_upvr = require(CoreGui.RobloxGui.Modules.PlayerPermissionsModule)
local Players_upvr = game:GetService("Players")
function any_extend_result1.didMount(arg1) -- Line 226
	--[[ Upvalues[6]:
		[1]: RobloxReplicatedStorage_upvr (readonly)
		[2]: GetFFlagRemoveAssetVersionEndpoint_upvr (readonly)
		[3]: HttpRbxApiService_upvr (readonly)
		[4]: HttpService_upvr (readonly)
		[5]: PlayerPermissionsModule_upvr (readonly)
		[6]: Players_upvr (readonly)
	]]
	arg1.mounted = true
	coroutine.wrap(function() -- Line 229
		--[[ Upvalues[2]:
			[1]: RobloxReplicatedStorage_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		if arg1.mounted then
			arg1:setState({
				serverVersion = RobloxReplicatedStorage_upvr:WaitForChild("GetServerVersion", math.huge):InvokeServer();
			})
		end
	end)()
	if not GetFFlagRemoveAssetVersionEndpoint_upvr() then
		coroutine.wrap(function() -- Line 243
			--[[ Upvalues[3]:
				[1]: HttpRbxApiService_upvr (copied, readonly)
				[2]: HttpService_upvr (copied, readonly)
				[3]: arg1 (readonly)
			]]
			pcall(function() -- Line 244
				--[[ Upvalues[3]:
					[1]: HttpRbxApiService_upvr (copied, readonly)
					[2]: HttpService_upvr (copied, readonly)
					[3]: arg1 (copied, readonly)
				]]
				if arg1.mounted then
					arg1:setState({
						latestPlaceVersion = HttpService_upvr:JSONDecode(HttpRbxApiService_upvr:GetAsync(string.format("assets/%d/versions", game.PlaceId)))[1].VersionNumber;
					})
				end
			end)
		end)()
	end
	coroutine.wrap(function() -- Line 258
		--[[ Upvalues[3]:
			[1]: PlayerPermissionsModule_upvr (copied, readonly)
			[2]: Players_upvr (copied, readonly)
			[3]: arg1 (readonly)
		]]
		if arg1.mounted then
			arg1:setState({
				isAdmin = PlayerPermissionsModule_upvr.IsPlayerAdminAsync(Players_upvr.LocalPlayer);
			})
		end
	end)()
end
function any_extend_result1.willUnmount(arg1) -- Line 269
	arg1.mounted = false
	if arg1.playerScriptsAddedConnection then
		arg1.playerScriptsAddedConnection:Disconnect()
	end
end
return any_extend_result1