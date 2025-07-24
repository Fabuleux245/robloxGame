-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:14:43
-- Luau version 6, Types version 3
-- Time taken: 0.000414 seconds

local TextService_upvr = game:GetService("TextService")
return function(arg1) -- Line 5
	--[[ Upvalues[1]:
		[1]: TextService_upvr (readonly)
	]]
	local pcall_result1, pcall_result2 = pcall(function() -- Line 6
		--[[ Upvalues[2]:
			[1]: TextService_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		return TextService_upvr:GetTextSize("", 0, arg1, Vector2.new(math.huge, math.huge)).Y
	end)
	return pcall_result1, pcall_result2
end