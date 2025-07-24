-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:10:45
-- Luau version 6, Types version 3
-- Time taken: 0.000341 seconds

local New_upvr = require(script.Parent.Parent.Parent.Parent.Utils.Fusion).New
return function(arg1) -- Line 6
	--[[ Upvalues[1]:
		[1]: New_upvr (readonly)
	]]
	return New_upvr("UICorner")({
		CornerRadius = UDim.new(0, arg1.Radius or 16);
	})
end