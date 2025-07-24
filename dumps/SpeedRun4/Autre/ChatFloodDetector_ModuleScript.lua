-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:57:52
-- Luau version 6, Types version 3
-- Time taken: 0.002851 seconds

local var1 = false
local pcall_result1, pcall_result2 = pcall(function() -- Line 11
	return UserSettings():IsUserFeatureEnabled("UserAddChatThrottlingToAllChannels")
end)
local var5_upvw
if pcall_result1 then
	var1 = pcall_result2
end
pcall_result1 = true
local var6_upvw = pcall_result1
if var1 then
	var6_upvw = false
end
var5_upvw = nil
pcall(function() -- Line 33
	--[[ Upvalues[1]:
		[1]: var5_upvw (read and write)
	]]
	var5_upvw = require(game:GetService("Chat").ClientChatModules.ChatLocalization)
end)
if var5_upvw == nil then
	var5_upvw = {}
end
if not var5_upvw.FormatMessageToSend or not var5_upvw.LocalizeFormattedMessage then
	function var5_upvw.FormatMessageToSend(arg1, arg2, arg3) -- Line 37
		return arg3
	end
end
local function _(arg1) -- Line 40, Named "EnterTimeIntoLog"
	table.insert(arg1, tick() + 15)
end
local tbl_upvr = {}
local tbl_upvr_2 = {}
local module_upvr = require(game:GetService("Chat"):WaitForChild("ClientChatModules"):WaitForChild("ChatConstants"))
return function(arg1) -- Line 44, Named "Run"
	--[[ Upvalues[5]:
		[1]: tbl_upvr (readonly)
		[2]: tbl_upvr_2 (readonly)
		[3]: var6_upvw (read and write)
		[4]: var5_upvw (read and write)
		[5]: module_upvr (readonly)
	]]
	arg1:RegisterProcessCommandsFunction("flood_detection", function(arg1_2, arg2, arg3) -- Line 45, Named "FloodDetectionProcessCommandsFunction"
		--[[ Upvalues[5]:
			[1]: tbl_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: tbl_upvr_2 (copied, readonly)
			[4]: var6_upvw (copied, read and write)
			[5]: var5_upvw (copied, read and write)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var11
		if tbl_upvr[arg1_2] then
			return false
		end
		local any_GetSpeaker_result1 = arg1:GetSpeaker(arg1_2)
		if not any_GetSpeaker_result1 then
			var11 = false
			return var11
		end
		var11 = any_GetSpeaker_result1:GetPlayer()
		if not var11 then
			var11 = false
			return var11
		end
		var11 = tbl_upvr_2[arg1_2]
		if not var11 then
			var11 = tbl_upvr_2
			var11[arg1_2] = {}
		end
		var11 = nil
		if var6_upvw then
			if not tbl_upvr_2[arg1_2][arg3] then
				tbl_upvr_2[arg1_2][arg3] = {}
			end
			var11 = tbl_upvr_2[arg1_2][arg3]
		else
			var11 = tbl_upvr_2[arg1_2]
		end
		while 0 < #var11 and var11[1] < tick() do
			table.remove(var11, 1)
		end
		if #var11 < 7 then
			table.insert(var11, tick() + 15)
			return false
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		local ceiled = math.ceil(var11[1] - tick())
		if 1 < ceiled then
		else
		end
		any_GetSpeaker_result1:SendSystemMessage(var5_upvw:FormatMessageToSend("GameChat_ChatFloodDetector_MessageDisplaySeconds", string.format("You must wait %d %s before sending another message!", ceiled, "second"), "RBX_NUMBER", tostring(ceiled)), arg3)
		return true
	end, module_upvr.LowPriority)
	arg1.SpeakerRemoved:connect(function(arg1_3) -- Line 102
		--[[ Upvalues[1]:
			[1]: tbl_upvr_2 (copied, readonly)
		]]
		tbl_upvr_2[arg1_3] = nil
	end)
end