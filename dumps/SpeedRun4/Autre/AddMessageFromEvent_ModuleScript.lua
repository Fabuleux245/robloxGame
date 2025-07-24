-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:04:39
-- Luau version 6, Types version 3
-- Time taken: 0.001264 seconds

local maybeAssert_upvr = require(script.Parent.Parent.Helpers.maybeAssert)
local Types_upvr = require(script.Parent.Parent.Types)
local Players_upvr = game:GetService("Players")
local ExpChat_upvr = require(game:GetService("CorePackages").Workspace.Packages.ExpChat)
local AddMessageWithTimeout_upvr = require(script.Parent.AddMessageWithTimeout)
return function(arg1) -- Line 17, Named "addMessageFromEvent"
	--[[ Upvalues[5]:
		[1]: maybeAssert_upvr (readonly)
		[2]: Types_upvr (readonly)
		[3]: Players_upvr (readonly)
		[4]: ExpChat_upvr (readonly)
		[5]: AddMessageWithTimeout_upvr (readonly)
	]]
	maybeAssert_upvr(Types_upvr.IMessageData(arg1))
	return function(arg1_2) -- Line 20
		--[[ Upvalues[4]:
			[1]: Players_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: ExpChat_upvr (copied, readonly)
			[4]: AddMessageWithTimeout_upvr (copied, readonly)
		]]
		local pcall_result1, pcall_result2 = pcall(function() -- Line 21
			--[[ Upvalues[2]:
				[1]: Players_upvr (copied, readonly)
				[2]: arg1 (copied, readonly)
			]]
			return Players_upvr:GetPlayerByUserId(arg1.SpeakerUserId)
		end)
		if pcall_result1 and pcall_result2 and pcall_result2.Character then
			local module = {
				id = tostring(arg1.ID);
				userId = tostring(arg1.SpeakerUserId);
				name = arg1.FromSpeaker;
				text = arg1.Message or "";
				timestamp = arg1.Time;
			}
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			module.adornee = pcall_result2.Character
			ExpChat_upvr.Events.LegacyBubbleCreated(module)
			return arg1_2:dispatch(AddMessageWithTimeout_upvr(module))
		end
	end
end