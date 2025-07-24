-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:05:22
-- Luau version 6, Types version 3
-- Time taken: 0.001595 seconds

local Parent = script.Parent.Parent
local Events_upvr = require(Parent.Events.Events)
local tbl_upvr = {
	[require(Parent.Enums.PlatformEnum).QuestVR] = require(Parent.Events.VR.VRFTUXEventHandler);
}
return {
	StartEvents = function(arg1, arg2, arg3) -- Line 14, Named "StartEvents"
		--[[ Upvalues[2]:
			[1]: tbl_upvr (readonly)
			[2]: Events_upvr (readonly)
		]]
		local var9 = tbl_upvr[arg1]
		local var10 = Events_upvr[arg1][arg2]
		if var10 then
			for _, v in pairs(var10) do
				var9.StartEvent(v, arg3)
			end
		end
	end;
	StopEvents = function(arg1, arg2) -- Line 25, Named "StopEvents"
		--[[ Upvalues[2]:
			[1]: tbl_upvr (readonly)
			[2]: Events_upvr (readonly)
		]]
		local var18 = tbl_upvr[arg1]
		local var19 = Events_upvr[arg1][arg2]
		if var19 then
			for _, v_2 in pairs(var19) do
				var18.StopEvent(v_2)
			end
		end
	end;
}