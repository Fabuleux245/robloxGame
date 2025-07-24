-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:04:43
-- Luau version 6, Types version 3
-- Time taken: 0.000376 seconds

local UserInputService_upvr = game:GetService("UserInputService")
return function(arg1, arg2, arg3, arg4) -- Line 4
	--[[ Upvalues[1]:
		[1]: UserInputService_upvr (readonly)
	]]
	if UserInputService_upvr:GetPlatform() == Enum.Platform.Windows then
		arg2(arg3.." TODO: EXPCHAT-812 Test disabled on Windows", arg4)
	else
		arg1(arg3, arg4)
	end
end