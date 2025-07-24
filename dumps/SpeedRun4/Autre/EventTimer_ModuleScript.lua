-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:35:46
-- Luau version 6, Types version 3
-- Time taken: 0.001275 seconds

local VirtualEvents = script:FindFirstAncestor("VirtualEvents")
local UIBlox = require(VirtualEvents.Parent.UIBlox)
local useStyle_upvr = UIBlox.Core.Style.useStyle
local useLocalization_upvr = require(VirtualEvents.Parent.Localization).Hooks.useLocalization
local React_upvr = require(VirtualEvents.Parent.React)
local getVirtualEventDates_upvr = require(VirtualEvents.Common.getVirtualEventDates)
local StyledTextLabel_upvr = UIBlox.App.Text.StyledTextLabel
local formatDate_upvr = require(VirtualEvents.Common.formatDate)
local utf8_char_result1_upvr = utf8.char(8226)
return function(arg1) -- Line 19, Named "EventTimer"
	--[[ Upvalues[7]:
		[1]: useStyle_upvr (readonly)
		[2]: useLocalization_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: getVirtualEventDates_upvr (readonly)
		[5]: StyledTextLabel_upvr (readonly)
		[6]: formatDate_upvr (readonly)
		[7]: utf8_char_result1_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 20 start (CF ANALYSIS FAILED)
	local var3_result1 = useStyle_upvr()
	local tbl = {
		cancelled = "Feature.VirtualEvents.EventCancelledText";
	}
	if arg1.virtualEvent.eventStatus ~= "cancelled" then
		tbl = false
	else
		tbl = true
	end
	local any_useMemo_result1 = React_upvr.useMemo(function() -- Line 26
		--[[ Upvalues[2]:
			[1]: getVirtualEventDates_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		return getVirtualEventDates_upvr(arg1.virtualEvent)
	end, {arg1.virtualEvent})
	local module = {}
	if tbl then
		-- KONSTANTWARNING: GOTO [51] #39
	end
	-- KONSTANTERROR: [0] 1. Error Block 20 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [38] 29. Error Block 15 start (CF ANALYSIS FAILED)
	module.text = "%s %s %s":format(formatDate_upvr(any_useMemo_result1.startDate), utf8_char_result1_upvr, formatDate_upvr(any_useMemo_result1.endDate))
	module.automaticSize = Enum.AutomaticSize.XY
	local CaptionHeader = var3_result1.Font.CaptionHeader
	module.fontStyle = CaptionHeader
	if tbl then
		CaptionHeader = var3_result1.Theme.Alert
	else
		CaptionHeader = var3_result1.Theme.TextMuted
	end
	module.colorStyle = CaptionHeader
	do
		return React_upvr.createElement(StyledTextLabel_upvr, module)
	end
	-- KONSTANTERROR: [38] 29. Error Block 15 end (CF ANALYSIS FAILED)
end