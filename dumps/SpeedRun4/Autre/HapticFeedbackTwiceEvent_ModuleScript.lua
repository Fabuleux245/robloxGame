-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:05:25
-- Luau version 6, Types version 3
-- Time taken: 0.001067 seconds

local module = {
	Name = "HapticFeedbackTwiceEvent";
}
local HapticService_upvr = game:GetService("HapticService")
function module.StartEvent() -- Line 10
	--[[ Upvalues[1]:
		[1]: HapticService_upvr (readonly)
	]]
	local Gamepad1 = Enum.UserInputType.Gamepad1
	local Gamepad2 = Enum.UserInputType.Gamepad2
	for _ = 1, 2 do
		HapticService_upvr:SetMotor(Gamepad1, Enum.VibrationMotor.Large, 5)
		HapticService_upvr:SetMotor(Gamepad2, Enum.VibrationMotor.Large, 5)
		task.wait(0.5)
		HapticService_upvr:SetMotor(Gamepad1, Enum.VibrationMotor.Large, 0)
		HapticService_upvr:SetMotor(Gamepad2, Enum.VibrationMotor.Large, 0)
		task.wait(0.125)
	end
end
return module