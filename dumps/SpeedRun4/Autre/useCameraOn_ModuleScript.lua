-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:05:09
-- Luau version 6, Types version 3
-- Time taken: 0.000479 seconds

local useTrackerMode_upvr = require(script.Parent.useTrackerMode)
return function() -- Line 5, Named "useCameraOn"
	--[[ Upvalues[1]:
		[1]: useTrackerMode_upvr (readonly)
	]]
	local useTrackerMode_upvr_result1 = useTrackerMode_upvr()
	local var3 = true
	if useTrackerMode_upvr_result1 ~= Enum.TrackerMode.Video then
		if useTrackerMode_upvr_result1 ~= Enum.TrackerMode.AudioVideo then
			var3 = false
		else
			var3 = true
		end
	end
	return var3
end