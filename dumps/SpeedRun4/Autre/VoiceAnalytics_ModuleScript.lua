-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:44:14
-- Luau version 6, Types version 3
-- Time taken: 0.001468 seconds

local Constants_upvr = require(script.Parent.Parent.Resources.Constants)
local module_2_upvr = {}
module_2_upvr.__index = module_2_upvr
function module_2_upvr.new(arg1, arg2) -- Line 6
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	local module = {}
	module._eventStreamImpl = arg1
	module._target = "EventIngest"
	module._context = arg2 or "SettingsHub"
	setmetatable(module, module_2_upvr)
	return module
end
function module_2_upvr.onToggleMuteAll(arg1, arg2) -- Line 17
	if arg2 then
		arg1:onMuteAll()
	else
		arg1:onUnmuteAll()
	end
end
function module_2_upvr.onToggleMuteSelf(arg1, arg2) -- Line 25
	if arg2 then
		arg1:onMuteSelf()
	else
		arg1:onUnmuteSelf()
	end
end
function module_2_upvr.onToggleMutePlayer(arg1, arg2, arg3) -- Line 33
	if arg3 then
		arg1:onMutePlayer(arg2)
	else
		arg1:onUnmutePlayer(arg2)
	end
end
function module_2_upvr.onMuteSelf(arg1) -- Line 41
	--[[ Upvalues[1]:
		[1]: Constants_upvr (readonly)
	]]
	arg1._eventStreamImpl:setRBXEventStream(arg1._target, arg1._context, Constants_upvr.VoiceAnalytics.MuteSelf, {})
end
function module_2_upvr.onUnmuteSelf(arg1) -- Line 46
	--[[ Upvalues[1]:
		[1]: Constants_upvr (readonly)
	]]
	arg1._eventStreamImpl:setRBXEventStream(arg1._target, arg1._context, Constants_upvr.VoiceAnalytics.UnmuteSelf, {})
end
function module_2_upvr.onMuteAll(arg1) -- Line 51
	--[[ Upvalues[1]:
		[1]: Constants_upvr (readonly)
	]]
	arg1._eventStreamImpl:setRBXEventStream(arg1._target, arg1._context, Constants_upvr.VoiceAnalytics.MuteAll, {})
end
function module_2_upvr.onUnmuteAll(arg1) -- Line 56
	--[[ Upvalues[1]:
		[1]: Constants_upvr (readonly)
	]]
	arg1._eventStreamImpl:setRBXEventStream(arg1._target, arg1._context, Constants_upvr.VoiceAnalytics.UnmuteAll, {})
end
function module_2_upvr.onMutePlayer(arg1, arg2) -- Line 61
	--[[ Upvalues[1]:
		[1]: Constants_upvr (readonly)
	]]
	local tbl = {}
	tbl.mutedUserId = arg2
	arg1._eventStreamImpl:setRBXEventStream(arg1._target, arg1._context, Constants_upvr.VoiceAnalytics.MutePlayer, tbl)
end
function module_2_upvr.onUnmutePlayer(arg1, arg2) -- Line 68
	--[[ Upvalues[1]:
		[1]: Constants_upvr (readonly)
	]]
	local tbl_2 = {}
	tbl_2.mutedUserId = arg2
	arg1._eventStreamImpl:setRBXEventStream(arg1._target, arg1._context, Constants_upvr.VoiceAnalytics.UnmutePlayer, tbl_2)
end
return module_2_upvr