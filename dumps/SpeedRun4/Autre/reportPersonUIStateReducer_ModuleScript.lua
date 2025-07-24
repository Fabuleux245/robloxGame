-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:02:46
-- Luau version 6, Types version 3
-- Time taken: 0.001109 seconds

local Constants_upvr = require(script:FindFirstAncestor("AbuseReportMenu").Components.Constants)
local PlayerMenuActions_upvr = Constants_upvr.PlayerMenuActions
return function(arg1, arg2) -- Line 6, Named "reportPersonUIStateReducer"
	--[[ Upvalues[2]:
		[1]: PlayerMenuActions_upvr (readonly)
		[2]: Constants_upvr (readonly)
	]]
	local type = arg2.type
	local var5
	if type == PlayerMenuActions_upvr.UpdateAbuseReason then
		var5.abuseReason = arg2.abuseReason
		return var5
	end
	if type == PlayerMenuActions_upvr.UpdateComment then
		var5.comment = arg2.comment
		return var5
	end
	if type == PlayerMenuActions_upvr.UpdateMethodOfAbuse then
		var5.playerObjects = {}
		var5.abuseReason = nil
		var5.methodOfAbuse = arg2.methodOfAbuse
		return var5
	end
	if type == PlayerMenuActions_upvr.UpdateAbuser then
		var5.allegedAbuserId = arg2.abuseId
		var5.allegedAbuser = arg2.abuser
		return var5
	end
	if type == PlayerMenuActions_upvr.UpdatePlayerNameMap then
		var5.playerObjects = arg2.playerObjects
		return var5
	end
	if type == PlayerMenuActions_upvr.SetVoiceEnabled then
		var5.isVoiceEnabled = arg2.enabled
		return var5
	end
	if type == PlayerMenuActions_upvr.SetMenuOpenTimestamp then
		var5.menuOpenedUnixTimestampMilliseconds = arg2.timestamp
		return var5
	end
	if type == PlayerMenuActions_upvr.ClearState then
		var5 = table.clone(Constants_upvr.InitPersonUIState)
		return var5
	end
	if type == PlayerMenuActions_upvr.SetShowModalSelector then
		var5.isModalSelectorShown = arg2.isShown
		var5.modalSelectorCellData = arg2.cellData
		return var5
	end
	if type == PlayerMenuActions_upvr.SetPreselectedPlayer then
		var5.preselectedPlayer = arg2.player
	end
	return var5
end