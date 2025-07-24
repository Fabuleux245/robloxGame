-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:02:18
-- Luau version 6, Types version 3
-- Time taken: 0.003773 seconds

local AbuseReportMenu = script:FindFirstAncestor("AbuseReportMenu")
local CorePackages = game:GetService("CorePackages")
local Constants_upvr = require(AbuseReportMenu.Components.Constants)
local function alphabeticalSort_upvr(arg1, arg2) -- Line 28, Named "alphabeticalSort"
	local var5
	if arg1.Name:lower() >= arg2.Name:lower() then
		var5 = false
	else
		var5 = true
	end
	return var5
end
local getMenuItemSizings_upvr = require(AbuseReportMenu.Utility.getMenuItemSizings)
local React_upvr = require(CorePackages.Packages.React)
local reportPersonUIStateReducer_upvr = require(AbuseReportMenu.Reducers.reportPersonUIStateReducer)
local default_upvr = require(game:GetService("CoreGui").RobloxGui.Modules.VoiceChat.VoiceChatServiceManager).default
local handlePreselectedPlayer_upvr = require(AbuseReportMenu.Utility.handlePreselectedPlayer)
local PlayerMenuActions_upvr = Constants_upvr.PlayerMenuActions
local Players_upvr = game:GetService("Players")
local Cryo_upvr = require(CorePackages.Packages.Cryo)
local getMenuItemsFromConfigs_upvr = require(AbuseReportMenu.MenuConfigs.getMenuItemsFromConfigs)
local ReportPlayerMenuItemConfigList_upvr = require(AbuseReportMenu.MenuConfigs.Players.ReportPlayerMenuItemConfigList)
return function(arg1) -- Line 32, Named "ReportPersonMenuItemsContainer"
	--[[ Upvalues[12]:
		[1]: getMenuItemSizings_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: reportPersonUIStateReducer_upvr (readonly)
		[4]: Constants_upvr (readonly)
		[5]: default_upvr (readonly)
		[6]: handlePreselectedPlayer_upvr (readonly)
		[7]: PlayerMenuActions_upvr (readonly)
		[8]: alphabeticalSort_upvr (readonly)
		[9]: Players_upvr (readonly)
		[10]: Cryo_upvr (readonly)
		[11]: getMenuItemsFromConfigs_upvr (readonly)
		[12]: ReportPlayerMenuItemConfigList_upvr (readonly)
	]]
	local any_useReducer_result1_upvr, any_useReducer_result2_upvr = React_upvr.useReducer(reportPersonUIStateReducer_upvr, Constants_upvr.InitPersonUIState)
	React_upvr.useEffect(function() -- Line 36
		--[[ Upvalues[6]:
			[1]: arg1 (readonly)
			[2]: Constants_upvr (copied, readonly)
			[3]: default_upvr (copied, readonly)
			[4]: handlePreselectedPlayer_upvr (copied, readonly)
			[5]: any_useReducer_result2_upvr (readonly)
			[6]: PlayerMenuActions_upvr (copied, readonly)
		]]
		if arg1.utilityProps.isReportTabVisible ~= true then
		else
			arg1.utilityProps.analyticsDispatch({
				type = Constants_upvr.AnalyticsActions.SwitchToPersonInitialSelections;
			})
			default_upvr:asyncInit():andThen(function() -- Line 44
				--[[ Upvalues[4]:
					[1]: arg1 (copied, readonly)
					[2]: handlePreselectedPlayer_upvr (copied, readonly)
					[3]: any_useReducer_result2_upvr (copied, readonly)
					[4]: PlayerMenuActions_upvr (copied, readonly)
				]]
				if arg1.utilityProps.preselectedPlayer then
					handlePreselectedPlayer_upvr(arg1.utilityProps.preselectedPlayer, true, any_useReducer_result2_upvr, arg1.utilityProps.analyticsDispatch)
				end
				any_useReducer_result2_upvr({
					type = PlayerMenuActions_upvr.SetVoiceEnabled;
					enabled = true;
				})
			end):catch(function() -- Line 58
				--[[ Upvalues[3]:
					[1]: arg1 (copied, readonly)
					[2]: handlePreselectedPlayer_upvr (copied, readonly)
					[3]: any_useReducer_result2_upvr (copied, readonly)
				]]
				if arg1.utilityProps.preselectedPlayer then
					handlePreselectedPlayer_upvr(arg1.utilityProps.preselectedPlayer, false, any_useReducer_result2_upvr, arg1.utilityProps.analyticsDispatch)
				end
			end)
		end
	end, {arg1.utilityProps.isReportTabVisible})
	React_upvr.useEffect(function() -- Line 73
		--[[ Upvalues[8]:
			[1]: any_useReducer_result1_upvr (readonly)
			[2]: Constants_upvr (copied, readonly)
			[3]: default_upvr (copied, readonly)
			[4]: alphabeticalSort_upvr (copied, readonly)
			[5]: Players_upvr (copied, readonly)
			[6]: Cryo_upvr (copied, readonly)
			[7]: any_useReducer_result2_upvr (readonly)
			[8]: PlayerMenuActions_upvr (copied, readonly)
		]]
		local tbl = {}
		if any_useReducer_result1_upvr.methodOfAbuse == Constants_upvr.AbuseMethods.VoiceChat then
			for _, v in pairs(default_upvr:getRecentUsersInteractionData()) do
				table.insert(tbl, v.player)
			end
			table.sort(tbl, alphabeticalSort_upvr)
		elseif any_useReducer_result1_upvr.methodOfAbuse == Constants_upvr.AbuseMethods.TextChat or any_useReducer_result1_upvr.methodOfAbuse == Constants_upvr.AbuseMethods.Other or any_useReducer_result1_upvr.methodOfAbuse == Constants_upvr.AbuseMethods.Avatar or any_useReducer_result1_upvr.methodOfAbuse == nil then
			tbl = Players_upvr:GetPlayers()
			table.sort(tbl, alphabeticalSort_upvr)
		end
		local var33_upvw = false
		local var34_upvw = false
		tbl = Cryo_upvr.List.filter(tbl, function(arg1_2) -- Line 152
			--[[ Upvalues[4]:
				[1]: any_useReducer_result1_upvr (copied, readonly)
				[2]: var33_upvw (read and write)
				[3]: var34_upvw (read and write)
				[4]: Players_upvr (copied, readonly)
			]]
			if any_useReducer_result1_upvr.preselectedPlayer and arg1_2.UserId == any_useReducer_result1_upvr.preselectedPlayer.UserId then
				var33_upvw = true
			end
			if any_useReducer_result1_upvr.allegedAbuser and arg1_2.UserId == any_useReducer_result1_upvr.allegedAbuserId then
				var34_upvw = true
			end
			local var36 = false
			if arg1_2 ~= Players_upvr.LocalPlayer then
				if 0 >= arg1_2.UserId then
					var36 = false
				else
					var36 = true
				end
			end
			return var36
		end)
		any_useReducer_result2_upvr({
			type = PlayerMenuActions_upvr.UpdatePlayerNameMap;
			playerObjects = tbl;
		})
		if any_useReducer_result1_upvr.preselectedPlayer and var33_upvw then
			any_useReducer_result2_upvr({
				type = Constants_upvr.PlayerMenuActions.UpdateAbuser;
				abuseId = any_useReducer_result1_upvr.preselectedPlayer.UserId;
				abuser = any_useReducer_result1_upvr.preselectedPlayer;
			})
			any_useReducer_result2_upvr({
				type = Constants_upvr.PlayerMenuActions.SetPreselectedPlayer;
				player = nil;
			})
		elseif not var34_upvw then
			any_useReducer_result2_upvr({
				type = Constants_upvr.PlayerMenuActions.UpdateAbuser;
				abuseId = nil;
				abuser = nil;
			})
		end
	end, {any_useReducer_result1_upvr.methodOfAbuse, any_useReducer_result1_upvr.isVoiceEnabled, arg1.utilityProps.isReportTabVisible, any_useReducer_result1_upvr.preselectedPlayer})
	return React_upvr.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0);
		BackgroundTransparency = 1;
	}, {
		MenuItems = React_upvr.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0);
			BackgroundTransparency = 1;
		}, Cryo_upvr.Dictionary.join({
			Layout = React_upvr.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical;
				SortOrder = Enum.SortOrder.LayoutOrder;
				Padding = UDim.new(0, getMenuItemSizings_upvr().ItemPadding);
			});
		}, getMenuItemsFromConfigs_upvr(any_useReducer_result1_upvr, any_useReducer_result2_upvr, arg1.utilityProps, ReportPlayerMenuItemConfigList_upvr, arg1.isSmallPortraitViewport)));
	})
end