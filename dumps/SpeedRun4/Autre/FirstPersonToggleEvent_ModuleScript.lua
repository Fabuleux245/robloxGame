-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:05:23
-- Luau version 6, Types version 3
-- Time taken: 0.001828 seconds

local ContextActionService_upvr = game:GetService("ContextActionService")
local module = {
	Name = "FirstPersonToggleEvent";
}
local var3_upvw = false
local var4_upvw
local function onFirstPersonToggleInput_upvr(arg1, arg2, arg3) -- Line 16, Named "onFirstPersonToggleInput"
	--[[ Upvalues[1]:
		[1]: var3_upvw (read and write)
	]]
	if arg1 == "FirstPersonToggleAction" and arg2 == Enum.UserInputState.Begin then
		var3_upvw = true
	end
	return Enum.ContextActionResult.Pass
end
function startFirstPersonToggleListener() -- Line 26
	--[[ Upvalues[2]:
		[1]: ContextActionService_upvr (readonly)
		[2]: onFirstPersonToggleInput_upvr (readonly)
	]]
	ContextActionService_upvr:BindCoreAction("FirstPersonToggleAction", onFirstPersonToggleInput_upvr, false, Enum.KeyCode.ButtonR3)
end
function stopFirstPersonToggleListener() -- Line 35
	--[[ Upvalues[1]:
		[1]: ContextActionService_upvr (readonly)
	]]
	ContextActionService_upvr:UnbindAction("FirstPersonToggleAction")
end
local RunService_upvr = game:GetService("RunService")
function module.StartEvent(arg1) -- Line 39
	--[[ Upvalues[3]:
		[1]: var3_upvw (read and write)
		[2]: var4_upvw (read and write)
		[3]: RunService_upvr (readonly)
	]]
	startFirstPersonToggleListener()
	var4_upvw = RunService_upvr.RenderStepped:Connect(function(arg1_2) -- Line 44, Named "onRenderStepped"
		--[[ Upvalues[3]:
			[1]: var3_upvw (copied, read and write)
			[2]: arg1 (readonly)
			[3]: var4_upvw (copied, read and write)
		]]
		if var3_upvw then
			stopFirstPersonToggleListener()
			task.wait(0.2)
			arg1()
			if var4_upvw then
				var4_upvw:Disconnect()
				var4_upvw = nil
			end
		end
	end)
end
function module.StopEvent() -- Line 64
	--[[ Upvalues[1]:
		[1]: var4_upvw (read and write)
	]]
	if var4_upvw then
		var4_upvw:Disconnect()
	end
	stopFirstPersonToggleListener()
end
return module