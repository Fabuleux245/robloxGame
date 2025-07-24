-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:54:33
-- Luau version 6, Types version 3
-- Time taken: 0.000837 seconds

local Parent = script.Parent.Parent
local GuiService_upvr = game:GetService("GuiService")
local SetMenuOpen_upvr = require(Parent.Actions.SetMenuOpen)
local SetCurrentPage_upvr = require(Parent.Actions.SetCurrentPage)
local Constants_upvr = require(Parent.Resources.Constants)
local SendAnalytics_upvr = require(Parent.Utility.SendAnalytics)
return function(arg1) -- Line 9
	--[[ Upvalues[5]:
		[1]: GuiService_upvr (readonly)
		[2]: SetMenuOpen_upvr (readonly)
		[3]: SetCurrentPage_upvr (readonly)
		[4]: Constants_upvr (readonly)
		[5]: SendAnalytics_upvr (readonly)
	]]
	GuiService_upvr:SetMenuIsOpen(false, "InGameMenu")
	GuiService_upvr.SelectedCoreObject = nil
	arg1:dispatch(SetMenuOpen_upvr(false))
	arg1:dispatch(SetCurrentPage_upvr(Constants_upvr.InitalPageKey))
	SendAnalytics_upvr(Constants_upvr.AnalyticsMenuCloseName, Constants_upvr.AnalyticsMenuActionName, {})
end