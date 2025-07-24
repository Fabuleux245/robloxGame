-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:02:01
-- Luau version 6, Types version 3
-- Time taken: 0.000797 seconds

local SetRCCProfilerState_upvr = require(script.Parent.Parent.Actions.SetRCCProfilerState)
local Immutable_upvr = require(script.Parent.Parent.Immutable)
return function(arg1, arg2) -- Line 10
	--[[ Upvalues[2]:
		[1]: SetRCCProfilerState_upvr (readonly)
		[2]: Immutable_upvr (readonly)
	]]
	if not arg1 then
		local module = {
			waitingForRecording = false;
			lastFileOutputLocation = "";
		}
	end
	if arg2.type == SetRCCProfilerState_upvr.name then
		return Immutable_upvr.JoinDictionaries(module, {
			waitingForRecording = arg2.waitingForRecording;
			lastFileOutputLocation = arg2.lastFileOutputLocation;
		})
	end
	return module
end