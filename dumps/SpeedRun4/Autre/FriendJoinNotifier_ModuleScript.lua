-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:57:54
-- Luau version 6, Types version 3
-- Time taken: 0.002350 seconds

local var3_upvw = false
local var4_upvw
if var4_upvw then
	function var3_upvw() -- Line 16
		return UserSettings():IsUserFeatureEnabled("UserHandleFriendJoinNotifierOnClient")
	end
end
var4_upvw = nil
pcall(function() -- Line 26
	--[[ Upvalues[1]:
		[1]: var4_upvw (read and write)
	]]
	var4_upvw = require(game:GetService("Chat").ClientChatModules.ChatLocalization)
end)
if var4_upvw == nil then
	var4_upvw = {}
end
if not var4_upvw.FormatMessageToSend or not var4_upvw.LocalizeFormattedMessage then
	function var4_upvw.FormatMessageToSend(arg1, arg2, arg3) -- Line 29
		return arg3
	end
end
local tbl_upvr = {
	ChatColor = Color3.fromRGB(255, 255, 255);
}
local module_upvr = require(game:GetService("Chat"):WaitForChild("ClientChatModules"):WaitForChild("ChatSettings"))
local Players_upvr = game:GetService("Players")
return function(arg1) -- Line 35, Named "Run"
	--[[ Upvalues[5]:
		[1]: var3_upvw (read and write)
		[2]: module_upvr (readonly)
		[3]: var4_upvw (read and write)
		[4]: tbl_upvr (readonly)
		[5]: Players_upvr (readonly)
	]]
	local function _() -- Line 37, Named "ShowFriendJoinNotification"
		--[[ Upvalues[2]:
			[1]: var3_upvw (copied, read and write)
			[2]: module_upvr (copied, readonly)
		]]
		if var3_upvw == false and module_upvr.ShowFriendJoinNotification ~= nil then
			return module_upvr.ShowFriendJoinNotification
		end
		return false
	end
	local function SendFriendJoinNotification_upvr(arg1_2, arg2) -- Line 46, Named "SendFriendJoinNotification"
		--[[ Upvalues[4]:
			[1]: arg1 (readonly)
			[2]: module_upvr (copied, readonly)
			[3]: var4_upvw (copied, read and write)
			[4]: tbl_upvr (copied, readonly)
		]]
		local any_GetSpeaker_result1 = arg1:GetSpeaker(arg1_2.Name)
		if any_GetSpeaker_result1 then
			local Name = arg2.Name
			if module_upvr.PlayerDisplayNamesEnabled then
				Name = arg2.DisplayName
			end
			any_GetSpeaker_result1:SendSystemMessage(var4_upvw:FormatMessageToSend("GameChat_FriendChatNotifier_JoinMessage", string.format("Your friend %s has joined the game.", Name), "RBX_NAME", Name), "System", tbl_upvr)
		end
	end
	local function _(arg1_3, arg2) -- Line 62, Named "TrySendFriendNotification"
		--[[ Upvalues[1]:
			[1]: SendFriendJoinNotification_upvr (readonly)
		]]
		if arg1_3 ~= arg2 then
			coroutine.wrap(function() -- Line 64
				--[[ Upvalues[3]:
					[1]: arg1_3 (readonly)
					[2]: arg2 (readonly)
					[3]: SendFriendJoinNotification_upvr (copied, readonly)
				]]
				if arg1_3:IsFriendsWith(arg2.UserId) then
					SendFriendJoinNotification_upvr(arg1_3, arg2)
				end
			end)()
		end
	end
	local var12
	if var3_upvw == false and module_upvr.ShowFriendJoinNotification ~= nil then
		var12 = module_upvr.ShowFriendJoinNotification
	else
		var12 = false
	end
	if var12 then
		var12 = Players_upvr.PlayerAdded
		var12 = var12:connect
		var12(function(arg1_4) -- Line 73
			--[[ Upvalues[2]:
				[1]: Players_upvr (copied, readonly)
				[2]: SendFriendJoinNotification_upvr (readonly)
			]]
			local players = Players_upvr:GetPlayers()
			for i = 1, #players do
				local var16_upvr = players[i]
				if var16_upvr ~= arg1_4 then
					coroutine.wrap(function() -- Line 64
						--[[ Upvalues[3]:
							[1]: var16_upvr (readonly)
							[2]: arg1_4 (readonly)
							[3]: SendFriendJoinNotification_upvr (copied, readonly)
						]]
						if var16_upvr:IsFriendsWith(arg1_4.UserId) then
							SendFriendJoinNotification_upvr(var16_upvr, arg1_4)
						end
					end)()
				end
			end
		end)
	end
end