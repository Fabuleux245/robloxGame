-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:39:26
-- Luau version 6, Types version 3
-- Time taken: 0.000637 seconds

local Parent = script:FindFirstAncestor("ProfileQRCode").Parent
local React_upvr = require(Parent.React)
local ShimmerPanel_upvr = require(Parent.UIBlox).App.Loading.ShimmerPanel
return function() -- Line 10
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: ShimmerPanel_upvr (readonly)
	]]
	return React_upvr.createElement(ShimmerPanel_upvr, {
		Size = UDim2.new(1, 0, 1, 0);
		cornerRadius = UDim.new(0.05, 0);
	})
end