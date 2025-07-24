-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:05:24
-- Luau version 6, Types version 3
-- Time taken: 0.000482 seconds

local module = {
	Name = "HapticFeedbackEvent";
}
local HapticService_upvr = game:GetService("HapticService")
function module.StartEvent() -- Line 10
	--[[ Upvalues[1]:
		[1]: HapticService_upvr (readonly)
	]]
	local Gamepad1 = Enum.UserInputType.Gamepad1
	local Gamepad2 = Enum.UserInputType.Gamepad2
	HapticService_upvr:SetMotor(Gamepad1, Enum.VibrationMotor.Large, 10)
	HapticService_upvr:SetMotor(Gamepad2, Enum.VibrationMotor.Large, 10)
	task.wait(1)
	HapticService_upvr:SetMotor(Gamepad1, Enum.VibrationMotor.Large, 0)
	HapticService_upvr:SetMotor(Gamepad2, Enum.VibrationMotor.Large, 0)
end
return module