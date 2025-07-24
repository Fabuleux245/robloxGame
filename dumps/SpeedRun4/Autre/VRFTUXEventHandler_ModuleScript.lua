-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:05:28
-- Luau version 6, Types version 3
-- Time taken: 0.001766 seconds

local Parent = script.Parent.Parent.Parent
local FirstPersonToggleEvent_upvr = require(Parent.Events.VR.FirstPersonToggleEvent)
local JumpEvent_upvr = require(Parent.Events.VR.JumpEvent)
local MoveToGoalEvent_upvr = require(Parent.Events.VR.MoveToGoalEvent)
local PerspectiveTooltipEvent_upvr = require(Parent.Events.VR.PerspectiveTooltipEvent)
local MovementTooltipEvent_upvr = require(Parent.Events.VR.MovementTooltipEvent)
local LeaveGameIconHighlightEvent_upvr = require(Parent.Events.VR.LeaveGameIconHighlightEvent)
local var8_upvr = require(Parent.Resources.FTUXEventTypes)[require(Parent.Enums.PlatformEnum).QuestVR]
local module = {
	Name = "VRFTUXEventHandler";
}
local HapticFeedbackEvent_upvr = require(Parent.Events.VR.HapticFeedbackEvent)
local SoundFeedbackEvent_upvr = require(Parent.Events.VR.SoundFeedbackEvent)
local HapticFeedbackTwiceEvent_upvr = require(Parent.Events.VR.HapticFeedbackTwiceEvent)
function module.StartEvent(arg1, arg2) -- Line 25
	--[[ Upvalues[10]:
		[1]: var8_upvr (readonly)
		[2]: FirstPersonToggleEvent_upvr (readonly)
		[3]: MoveToGoalEvent_upvr (readonly)
		[4]: JumpEvent_upvr (readonly)
		[5]: PerspectiveTooltipEvent_upvr (readonly)
		[6]: MovementTooltipEvent_upvr (readonly)
		[7]: HapticFeedbackEvent_upvr (readonly)
		[8]: SoundFeedbackEvent_upvr (readonly)
		[9]: HapticFeedbackTwiceEvent_upvr (readonly)
		[10]: LeaveGameIconHighlightEvent_upvr (readonly)
	]]
	if arg1 == var8_upvr.FirstPersonToggleEvent then
		task.spawn(FirstPersonToggleEvent_upvr.StartEvent, arg2)
	else
		if arg1 == var8_upvr.MoveToGoalEvent then
			task.spawn(MoveToGoalEvent_upvr.StartEvent, arg2)
			return
		end
		if arg1 == var8_upvr.JumpEvent then
			task.spawn(JumpEvent_upvr.StartEvent, arg2)
			return
		end
		if arg1 == var8_upvr.PerspectiveTooltipEvent then
			task.spawn(PerspectiveTooltipEvent_upvr.StartEvent)
			return
		end
		if arg1 == var8_upvr.MovementTooltipEvent then
			task.spawn(MovementTooltipEvent_upvr.StartEvent)
			return
		end
		if arg1 == var8_upvr.HapticFeedbackEvent then
			task.spawn(HapticFeedbackEvent_upvr.StartEvent)
			return
		end
		if arg1 == var8_upvr.SoundFeedbackEvent then
			task.spawn(SoundFeedbackEvent_upvr.StartEvent)
			return
		end
		if arg1 == var8_upvr.HapticFeedbackTwiceEvent then
			task.spawn(HapticFeedbackTwiceEvent_upvr.StartEvent)
			return
		end
		if arg1 == var8_upvr.LeaveGameIconHighlightEvent then
			task.spawn(LeaveGameIconHighlightEvent_upvr.StartEvent)
			return
		end
		warn("Unmapped VRFTUX event type: "..tostring(arg1))
	end
end
function module.StopEvent(arg1) -- Line 49
	--[[ Upvalues[7]:
		[1]: var8_upvr (readonly)
		[2]: FirstPersonToggleEvent_upvr (readonly)
		[3]: MoveToGoalEvent_upvr (readonly)
		[4]: JumpEvent_upvr (readonly)
		[5]: PerspectiveTooltipEvent_upvr (readonly)
		[6]: MovementTooltipEvent_upvr (readonly)
		[7]: LeaveGameIconHighlightEvent_upvr (readonly)
	]]
	if arg1 == var8_upvr.FirstPersonToggleEvent then
		task.spawn(FirstPersonToggleEvent_upvr.StopEvent)
	else
		if arg1 == var8_upvr.MoveToGoalEvent then
			task.spawn(MoveToGoalEvent_upvr.StopEvent)
			return
		end
		if arg1 == var8_upvr.JumpEvent then
			task.spawn(JumpEvent_upvr.StopEvent)
			return
		end
		if arg1 == var8_upvr.PerspectiveTooltipEvent then
			task.spawn(PerspectiveTooltipEvent_upvr.StopEvent)
			return
		end
		if arg1 == var8_upvr.MovementTooltipEvent then
			task.spawn(MovementTooltipEvent_upvr.StopEvent)
			return
		end
		if arg1 == var8_upvr.LeaveGameIconHighlightEvent then
			task.spawn(LeaveGameIconHighlightEvent_upvr.StopEvent)
			return
		end
		if arg1 == var8_upvr.HapticFeedbackTwiceEvent then return end
		if arg1 == var8_upvr.HapticFeedbackEvent then return end
		if arg1 == var8_upvr.SoundFeedbackEvent then return end
		warn("Unmapped VRFTUX event type: "..tostring(arg1))
	end
end
return module