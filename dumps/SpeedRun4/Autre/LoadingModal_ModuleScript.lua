-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:45:27
-- Luau version 6, Types version 3
-- Time taken: 0.000846 seconds

local CorePackages = game:GetService("CorePackages")
local Roact_upvr = require(CorePackages.Packages.Roact)
local Color3_fromRGB_result1_upvr = Color3.fromRGB(41, 41, 41)
local LoadingBar_upvr = require(CorePackages.Workspace.Packages.AppBlox).LoadingBar
return function() -- Line 9
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: Color3_fromRGB_result1_upvr (readonly)
		[3]: LoadingBar_upvr (readonly)
	]]
	return Roact_upvr.createElement("Frame", {
		Size = UDim2.new(0, 160, 0, 160);
		Position = UDim2.new(0.5, 0, 0.5, 0);
		AnchorPoint = Vector2.new(0.5, 0.5);
		BackgroundColor3 = Color3_fromRGB_result1_upvr;
		BackgroundTransparency = 0.1;
	}, {Roact_upvr.createElement("UICorner", {
		CornerRadius = UDim.new(0, 4);
	}), Roact_upvr.createElement(LoadingBar_upvr)})
end