-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:31:46
-- Luau version 6, Types version 3
-- Time taken: 0.000406 seconds

local TextService_upvr = game:GetService("TextService")
return function(...) -- Line 8
	--[[ Upvalues[1]:
		[1]: TextService_upvr (readonly)
	]]
	return TextService_upvr:GetTextSize(...) + Vector2.new(2, 2)
end