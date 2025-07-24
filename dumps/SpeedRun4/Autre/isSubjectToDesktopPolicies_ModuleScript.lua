-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:27:33
-- Luau version 6, Types version 3
-- Time taken: 0.000653 seconds

local any_GetPlatform_result1_upvr = game:GetService("UserInputService"):GetPlatform()
return function() -- Line 4
	--[[ Upvalues[1]:
		[1]: any_GetPlatform_result1_upvr (readonly)
	]]
	local var4 = true
	if any_GetPlatform_result1_upvr ~= Enum.Platform.Windows then
		var4 = true
		if any_GetPlatform_result1_upvr ~= Enum.Platform.OSX then
			if any_GetPlatform_result1_upvr ~= Enum.Platform.UWP then
				var4 = false
			else
				var4 = true
			end
		end
	end
	return var4
end