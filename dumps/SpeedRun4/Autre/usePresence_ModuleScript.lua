-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:55:54
-- Luau version 6, Types version 3
-- Time taken: 0.000658 seconds

local React_upvr = require(script.Parent.Parent.Parent.React)
local PresenceContext_upvr = require(script.Parent.PresenceContext)
local isPresent_upvr = require(script.Parent.PresenceUtils).isPresent
return function() -- Line 37, Named "usePresence"
	--[[ Upvalues[3]:
		[1]: React_upvr (readonly)
		[2]: PresenceContext_upvr (readonly)
		[3]: isPresent_upvr (readonly)
	]]
	local any_useContext_result1 = React_upvr.useContext(PresenceContext_upvr)
	local id_upvr = any_useContext_result1.id
	local onExitComplete_upvr = any_useContext_result1.onExitComplete
	return {
		isPresent = isPresent_upvr(any_useContext_result1);
		id = id_upvr;
		onExitComplete = React_upvr.useCallback(function() -- Line 49
			--[[ Upvalues[2]:
				[1]: onExitComplete_upvr (readonly)
				[2]: id_upvr (readonly)
			]]
			if onExitComplete_upvr then
				onExitComplete_upvr(id_upvr)
			end
		end, {onExitComplete_upvr, id_upvr});
		passThroughData = any_useContext_result1.passThroughData;
	}
end