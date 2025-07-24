-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:59:25
-- Luau version 6, Types version 3
-- Time taken: 0.005539 seconds

local CoreGui_upvr = game:GetService("CoreGui")
local RobloxGui = CoreGui_upvr.RobloxGui
local Shell = RobloxGui:FindFirstChild("Modules"):FindFirstChild("Shell")
local Analytics_upvr = require(script.Parent.Analytics)
local AppState_upvr = require(script.Parent.AppState)
local GlobalSettings_upvr = require(script.Parent.GlobalSettings)
local module_upvr_4 = {}
local module_upvr_3 = {}
local module_upvr_2 = {RobloxGui}
local function _(arg1) -- Line 25, Named "getScreenPriority"
	--[[ Upvalues[1]:
		[1]: GlobalSettings_upvr (readonly)
	]]
	local DefaultPriority = GlobalSettings_upvr.DefaultPriority
	if arg1.GetPriority ~= nil then
		DefaultPriority = arg1:GetPriority()
	end
	return DefaultPriority
end
local function setRBXEventStream_Screen_upvr(arg1, arg2) -- Line 33, Named "setRBXEventStream_Screen"
	--[[ Upvalues[1]:
		[1]: Analytics_upvr (readonly)
	]]
	if arg1 and type(arg1.GetAnalyticsInfo) == "function" then
		local any_GetAnalyticsInfo_result1_2 = arg1:GetAnalyticsInfo()
		if type(any_GetAnalyticsInfo_result1_2) == "table" and any_GetAnalyticsInfo_result1_2[Analytics_upvr.WidgetNames("WidgetId")] then
			any_GetAnalyticsInfo_result1_2.Status = arg2
			Analytics_upvr.SetRBXEventStream("Widget", any_GetAnalyticsInfo_result1_2)
		end
	end
end
local Create_upvr = require(game:GetService("CorePackages").Workspace.Packages.AppCommonLib).Create
function module_upvr_4.GetScreenGuiByPriority(arg1, arg2) -- Line 43
	--[[ Upvalues[3]:
		[1]: module_upvr_2 (readonly)
		[2]: Create_upvr (readonly)
		[3]: CoreGui_upvr (readonly)
	]]
	local maximum = math.max(1, arg2)
	if not module_upvr_2[maximum] then
		for i = 1, maximum do
			if not module_upvr_2[i] then
				module_upvr_2[i] = Create_upvr("ScreenGui")({
					Name = "AppShell"..tostring(i);
					Parent = CoreGui_upvr;
				})
			end
		end
	end
	return module_upvr_2[maximum]
end
local ScreenItem_upvr = require(script.Parent.Models.ScreenItem)
local GetFIntXboxPrimaryNavABLogging_upvr = require(Shell.Flags.GetFIntXboxPrimaryNavABLogging)
local module_upvr = require(Shell.XboxPrimaryNav:FindFirstChild("contentHistory"))
local InsertScreen_upvr = require(script.Parent.Actions.InsertScreen)
function module_upvr_4.OpenScreen(arg1, arg2, arg3) -- Line 60
	--[[ Upvalues[8]:
		[1]: module_upvr_3 (readonly)
		[2]: ScreenItem_upvr (readonly)
		[3]: GlobalSettings_upvr (readonly)
		[4]: GetFIntXboxPrimaryNavABLogging_upvr (readonly)
		[5]: module_upvr_4 (readonly)
		[6]: module_upvr (readonly)
		[7]: AppState_upvr (readonly)
		[8]: InsertScreen_upvr (readonly)
	]]
	if arg3 == nil then
	end
	local tostring_result1_2 = tostring(arg2)
	local tbl_3 = {}
	tbl_3.screen = arg2
	tbl_3.isShown = false
	module_upvr_3[tostring_result1_2] = tbl_3
	local DefaultPriority_2 = GlobalSettings_upvr.DefaultPriority
	if arg2.GetPriority ~= nil then
		DefaultPriority_2 = arg2:GetPriority()
	end
	if 0 < GetFIntXboxPrimaryNavABLogging_upvr() then
		local any_GetTopScreen_result1 = module_upvr_4:GetTopScreen()
		if any_GetTopScreen_result1 then
			module_upvr:setLastSelectedContent(any_GetTopScreen_result1)
		end
	end
	AppState_upvr.store:dispatch(InsertScreen_upvr(ScreenItem_upvr.new(tostring_result1_2, DefaultPriority_2, {
		hidePrevious = true;
	})))
end
local RemoveScreen_upvr = require(script.Parent.Actions.RemoveScreen)
function module_upvr_4.CloseCurrent(arg1, arg2) -- Line 87
	--[[ Upvalues[3]:
		[1]: AppState_upvr (readonly)
		[2]: module_upvr_3 (readonly)
		[3]: RemoveScreen_upvr (readonly)
	]]
	local ScreenList_2 = AppState_upvr.store:getState().ScreenList
	local var32 = false
	if 0 < #ScreenList_2 then
		var32 = ScreenList_2[1]
	end
	if not var32 or not module_upvr_3[var32.id] then
	else
		if arg2 and var32.id ~= tostring(arg2) then return end
		AppState_upvr.store:dispatch(RemoveScreen_upvr(var32))
	end
end
local function handleScreensRemoved_upvr(arg1) -- Line 104, Named "handleScreensRemoved"
	--[[ Upvalues[2]:
		[1]: module_upvr_3 (readonly)
		[2]: setRBXEventStream_Screen_upvr (readonly)
	]]
	local tbl_4 = {}
	for _, v in ipairs(arg1) do
		tbl_4[v.id] = true
	end
	for i_3, _ in pairs(module_upvr_3) do
		if not tbl_4[i_3] then
			table.insert({}, i_3)
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	for _, v_3 in ipairs({}) do
		local var55 = module_upvr_3[v_3]
		if var55 then
			local screen = var55.screen
			screen:RemoveFocus()
			screen:Hide()
			if screen.ScreenRemoved then
				screen:ScreenRemoved()
			end
			setRBXEventStream_Screen_upvr(screen, "Close")
		end
		module_upvr_3[v_3] = nil
	end
end
local PageHeartbeatTimer_upvr = require(script.Parent.PageHeartbeatTimer)
local function handleScreensAdded_upvr(arg1) -- Line 136, Named "handleScreensAdded"
	--[[ Upvalues[4]:
		[1]: module_upvr_3 (readonly)
		[2]: setRBXEventStream_Screen_upvr (readonly)
		[3]: PageHeartbeatTimer_upvr (readonly)
		[4]: Analytics_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local _ = #arg1
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [88] 67. Error Block 19 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [88] 67. Error Block 19 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [4] 5. Error Block 32 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [88.5]
	if nil then
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [88.7]
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [88.197371]
		if nil < _ then
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [88.8]
			if nil then
				-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [88.9]
				if nil then
				end
			end
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			if nil then
			end
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
			if not nil and not nil then
				-- KONSTANTWARNING: GOTO [88] #67
			end
		else
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			if not nil then
			end
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			if nil then
			end
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			if nil then
			end
		end
	end
	-- KONSTANTERROR: [4] 5. Error Block 32 end (CF ANALYSIS FAILED)
end
local function _(arg1) -- Line 181, Named "update"
	--[[ Upvalues[2]:
		[1]: handleScreensRemoved_upvr (readonly)
		[2]: handleScreensAdded_upvr (readonly)
	]]
	handleScreensRemoved_upvr(arg1)
	handleScreensAdded_upvr(arg1)
end
AppState_upvr.store.changed:connect(function(arg1, arg2) -- Line 186
	--[[ Upvalues[2]:
		[1]: handleScreensRemoved_upvr (readonly)
		[2]: handleScreensAdded_upvr (readonly)
	]]
	local ScreenList_3 = arg1.ScreenList
	if ScreenList_3 == arg2.ScreenList then
	else
		handleScreensRemoved_upvr(ScreenList_3)
		handleScreensAdded_upvr(ScreenList_3)
	end
end)
function module_upvr_4.GetTopScreen(arg1) -- Line 197
	--[[ Upvalues[2]:
		[1]: AppState_upvr (readonly)
		[2]: module_upvr_3 (readonly)
	]]
	local ScreenList = AppState_upvr.store:getState().ScreenList
	if ScreenList then
		if 0 < #ScreenList then
			return module_upvr_3[ScreenList[1].id].screen
		end
	end
	return nil
end
return module_upvr_4