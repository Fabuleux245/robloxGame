-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:09:34
-- Luau version 6, Types version 3
-- Time taken: 0.000365 seconds

local module_upvr = require(script.Parent.Parent.Parent.Parent:FindFirstChild("Utils"):WaitForChild("Fusion"))
return function(arg1) -- Line 7
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	return module_upvr.New("UICorner")({
		CornerRadius = UDim.new(0, arg1 or 16);
	})
end