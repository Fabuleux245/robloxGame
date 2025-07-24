-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:04:35
-- Luau version 6, Types version 3
-- Time taken: 0.002872 seconds

local function getCounterName_upvr(arg1) -- Line 5, Named "getCounterName"
	if arg1.Status == Enum.TextChatMessageStatus.Success then
		local TextChannel = arg1.TextChannel
		if TextChannel then
			local Name = TextChannel.Name
			if string.find(Name, "^RBX") == nil then
				return "expChatMessageReceivedSuccessCustom"
			end
			if Name == "RBXGeneral" then
				return "expChatMessageReceivedSuccessGeneral"
			end
			if Name == "RBXSystem" then
				return "expChatMessageReceivedSuccessSystem"
			end
			if string.find(Name, "^RBXWhisper") then
				return "expChatMessageReceivedSuccessWhisper"
			end
			if string.find(Name, "^RBXTeam") then
				return "expChatMessageReceivedSuccessTeam"
			end
			return "expChatMessageReceivedSuccessCustom"
		end
	end
	if arg1.Status == Enum.TextChatMessageStatus.Unknown then
		return "expChatMessageReceivedUnknown"
	end
	if arg1.Status == Enum.TextChatMessageStatus.InvalidTextChannelPermissions then
		return "expChatMessageReceivedInvalidTextChannelPermissions"
	end
	if arg1.Status == Enum.TextChatMessageStatus.InvalidPrivacySettings then
		return "expChatMessageReceivedInvalidPrivacySettings"
	end
	if arg1.Status == Enum.TextChatMessageStatus.TextFilterFailed then
		return "expChatMessageReceivedTextFilterFailed"
	end
	if arg1.Status == Enum.TextChatMessageStatus.Floodchecked then
		return "expChatMessageReceivedFloodchecked"
	end
	if arg1.Status == Enum.TextChatMessageStatus.MessageTooLong then
		return "expChatMessageReceivedMessageTooLong"
	end
	if arg1.Status == Enum.TextChatMessageStatus.ModerationTimeout then
		return "expChatMessageReceivedModerationTimeout"
	end
	return nil
end
local Analytics_upvr = require(script:FindFirstAncestor("ExpChat").Parent.ExpChatShared).Analytics
return function(arg1, arg2) -- Line 47
	--[[ Upvalues[2]:
		[1]: getCounterName_upvr (readonly)
		[2]: Analytics_upvr (readonly)
	]]
	local TextSource = arg2.TextSource
	if TextSource then
		if arg1 == TextSource.UserId then
			local getCounterName_upvr_result1 = getCounterName_upvr(arg2)
			if getCounterName_upvr_result1 then
				Analytics_upvr.reportCounter(getCounterName_upvr_result1)
			end
		end
	end
end