-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:03:11
-- Luau version 6, Types version 3
-- Time taken: 0.001222 seconds

local ContactList = game:GetService("CoreGui"):WaitForChild("RobloxGui").Modules.ContactList
local dependencies = require(ContactList.dependencies)
local Pages_upvr = require(ContactList.Enums.Pages)
local UIBlox = dependencies.UIBlox
local function _(arg1) -- Line 33
	--[[ Upvalues[1]:
		[1]: Pages_upvr (readonly)
	]]
	if arg1 == Pages_upvr.FriendList then
		return "Feature.Call.Label.StartNewCall"
	end
	if arg1 == Pages_upvr.CallHistory then
		return "Feature.Call.Label.RecentCalls"
	end
	return ""
end
local useAnalytics_upvr = require(ContactList.Analytics.useAnalytics)
local useStyle_upvr = UIBlox.Core.Style.useStyle
local useDispatch_upvr = dependencies.Hooks.useDispatch
local useLocalization_upvr = dependencies.Hooks.useLocalization
local React_upvr = require(game:GetService("CorePackages").Packages.React)
local EventNamesEnum_upvr = require(ContactList.Analytics.EventNamesEnum)
local SetCurrentPage_upvr = require(ContactList.Actions.SetCurrentPage)
local ImageSetButton_upvr = UIBlox.Core.ImageSet.ImageSetButton
local Images_upvr = UIBlox.App.ImageSet.Images
return function(arg1) -- Line 42
	--[[ Upvalues[10]:
		[1]: useAnalytics_upvr (readonly)
		[2]: useStyle_upvr (readonly)
		[3]: useDispatch_upvr (readonly)
		[4]: useLocalization_upvr (readonly)
		[5]: Pages_upvr (readonly)
		[6]: React_upvr (readonly)
		[7]: EventNamesEnum_upvr (readonly)
		[8]: SetCurrentPage_upvr (readonly)
		[9]: ImageSetButton_upvr (readonly)
		[10]: Images_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 30 start (CF ANALYSIS FAILED)
	local useStyle_upvr_result1 = useStyle_upvr()
	local currentPage = arg1.currentPage
	if currentPage == Pages_upvr.FriendList then
		-- KONSTANTWARNING: GOTO [29] #23
	end
	-- KONSTANTERROR: [0] 1. Error Block 30 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [21] 17. Error Block 26 start (CF ANALYSIS FAILED)
	if currentPage == Pages_upvr.CallHistory then
		-- KONSTANTWARNING: GOTO [29] #23
	end
	-- KONSTANTERROR: [21] 17. Error Block 26 end (CF ANALYSIS FAILED)
end