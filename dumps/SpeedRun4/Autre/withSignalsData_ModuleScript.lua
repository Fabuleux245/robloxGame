-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:03:01
-- Luau version 6, Types version 3
-- Time taken: 0.001594 seconds

local ExpChat = script:FindFirstAncestor("ExpChat")
local Parent = ExpChat.Parent
local var3_upvr = false
if require(ExpChat.Flags.FFlagUseNilSignalAsDefault) then
	var3_upvr = require(Parent.Signals).createSignal(nil)
else
	var3_upvr = function() -- Line 25
		return nil
	end
end
local var5_upvr = require(ExpChat.Stores.GetVoiceStore)(var3_upvr)
local useSignalState_upvr = require(Parent.SignalsReact).useSignalState
local React_upvr = require(Parent.React)
return function(arg1) -- Line 29, Named "withSignalsData"
	--[[ Upvalues[4]:
		[1]: var5_upvr (readonly)
		[2]: useSignalState_upvr (readonly)
		[3]: var3_upvr (readonly)
		[4]: React_upvr (readonly)
	]]
	return function(arg1_2) -- Line 30
		--[[ Upvalues[5]:
			[1]: var5_upvr (copied, readonly)
			[2]: useSignalState_upvr (copied, readonly)
			[3]: var3_upvr (copied, readonly)
			[4]: React_upvr (copied, readonly)
			[5]: arg1 (readonly)
		]]
		local userId = arg1_2.userId
		local var10
		if userId then
			var10 = var5_upvr.getOrCreateVoiceState(userId)
		else
			var10 = nil
		end
		local var11 = var10
		if not var11 then
			var11 = var3_upvr
		end
		local clone = table.clone(arg1_2)
		clone.voiceState = useSignalState_upvr(var11)
		return React_upvr.createElement(arg1, clone)
	end
end