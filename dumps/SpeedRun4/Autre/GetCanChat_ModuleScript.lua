-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:46:55
-- Luau version 6, Types version 3
-- Time taken: 0.001081 seconds

local Players = game:GetService("Players")
local var2_upvw
while not var2_upvw do
	Players:GetPropertyChangedSignal("LocalPlayer"):Wait()
	var2_upvw = Players.LocalPlayer
end
local RunService_upvr = game:GetService("RunService")
local Chat_upvr = game:GetService("Chat")
local SetCanChat_upvr = require(script.Parent.Parent.Actions.SetCanChat)
local ChatSelector_upvr = require(game:GetService("CoreGui"):WaitForChild("RobloxGui").Modules.ChatSelector)
return function(arg1) -- Line 19
	--[[ Upvalues[5]:
		[1]: RunService_upvr (readonly)
		[2]: Chat_upvr (readonly)
		[3]: var2_upvw (read and write)
		[4]: SetCanChat_upvr (readonly)
		[5]: ChatSelector_upvr (readonly)
	]]
	coroutine.wrap(function() -- Line 20
		--[[ Upvalues[6]:
			[1]: RunService_upvr (copied, readonly)
			[2]: Chat_upvr (copied, readonly)
			[3]: var2_upvw (copied, read and write)
			[4]: arg1 (readonly)
			[5]: SetCanChat_upvr (copied, readonly)
			[6]: ChatSelector_upvr (copied, readonly)
		]]
		local var9 = true
		if not RunService_upvr:IsStudio() then
			local pcall_result1, pcall_result2 = pcall(function() -- Line 23
				--[[ Upvalues[2]:
					[1]: Chat_upvr (copied, readonly)
					[2]: var2_upvw (copied, read and write)
				]]
				return Chat_upvr:CanUserChatAsync(var2_upvw.UserId)
			end)
			var9 = pcall_result1 and pcall_result2
		end
		arg1:dispatch(SetCanChat_upvr(var9))
		if not var9 then
			ChatSelector_upvr:SetVisible(false)
		end
	end)()
end