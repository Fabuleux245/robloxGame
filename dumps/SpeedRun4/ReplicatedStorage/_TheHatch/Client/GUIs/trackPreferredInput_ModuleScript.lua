-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:11:10
-- Luau version 6, Types version 3
-- Time taken: 0.000406 seconds

local UserInputService_upvr = game:GetService("UserInputService")
return function(arg1) -- Line 3, Named "trackPreferredInput"
	--[[ Upvalues[1]:
		[1]: UserInputService_upvr (readonly)
	]]
	arg1(UserInputService_upvr.PreferredInput)
	return UserInputService_upvr:GetPropertyChangedSignal("PreferredInput"):Connect(function() -- Line 6
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: UserInputService_upvr (copied, readonly)
		]]
		arg1(UserInputService_upvr.PreferredInput)
	end)
end