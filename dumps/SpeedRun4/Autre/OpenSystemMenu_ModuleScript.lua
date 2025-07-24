-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:54:36
-- Luau version 6, Types version 3
-- Time taken: 0.001127 seconds

local Parent = script.Parent.Parent
local GuiService_upvr = game:GetService("GuiService")
local SetMenuOpen_upvr = require(Parent.Actions.SetMenuOpen)
local SetCurrentPage_upvr = require(Parent.Actions.SetCurrentPage)
local Constants_upvr = require(Parent.Resources.Constants)
local SetMenuIconTooltipOpen_upvr = require(Parent.Actions.SetMenuIconTooltipOpen)
local SendAnalytics_upvr = require(Parent.Utility.SendAnalytics)
return function(arg1) -- Line 10
	--[[ Upvalues[6]:
		[1]: GuiService_upvr (readonly)
		[2]: SetMenuOpen_upvr (readonly)
		[3]: SetCurrentPage_upvr (readonly)
		[4]: Constants_upvr (readonly)
		[5]: SetMenuIconTooltipOpen_upvr (readonly)
		[6]: SendAnalytics_upvr (readonly)
	]]
	return function(arg1_2) -- Line 11
		--[[ Upvalues[7]:
			[1]: GuiService_upvr (copied, readonly)
			[2]: SetMenuOpen_upvr (copied, readonly)
			[3]: SetCurrentPage_upvr (copied, readonly)
			[4]: Constants_upvr (copied, readonly)
			[5]: SetMenuIconTooltipOpen_upvr (copied, readonly)
			[6]: SendAnalytics_upvr (copied, readonly)
			[7]: arg1 (readonly)
		]]
		GuiService_upvr:SetMenuIsOpen(true, "InGameMenu")
		arg1_2:dispatch(SetMenuOpen_upvr(true))
		arg1_2:dispatch(SetCurrentPage_upvr(Constants_upvr.MainPagePageKey))
		if arg1_2:getState().nativeClosePrompt.menuIconTooltipOpen then
			arg1_2:dispatch(SetMenuIconTooltipOpen_upvr(false))
		end
		local tbl = {}
		tbl.source = arg1
		SendAnalytics_upvr(Constants_upvr.AnalyticsMenuOpenName, Constants_upvr.AnalyticsMenuActionName, tbl)
	end
end