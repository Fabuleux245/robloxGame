-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:37:18
-- Luau version 6, Types version 3
-- Time taken: 0.000408 seconds

local VRService_upvr = game:GetService("VRService")
return function() -- Line 4
	--[[ Upvalues[1]:
		[1]: VRService_upvr (readonly)
	]]
	local any_GetUserCFrame_result1 = VRService_upvr:GetUserCFrame(Enum.UserCFrame.Floor)
	local CurrentCamera = workspace.CurrentCamera
	if CurrentCamera then
		return any_GetUserCFrame_result1.Rotation + any_GetUserCFrame_result1.Position * CurrentCamera.HeadScale
	end
	return CFrame.new(0, 0, 0)
end