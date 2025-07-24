-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:05:05
-- Luau version 6, Types version 3
-- Time taken: 0.001580 seconds

local Packages = game:GetService("CorePackages").Packages
local useStyle_upvr = require(Packages.UIBlox).Core.Style.useStyle
local React_upvr = require(Packages.React)
local vector2_upvr = Vector2.new(0.5, 0.5)
local udim2_upvr_2 = UDim2.fromOffset(4, 4)
local udim2_upvr = UDim2.fromScale(0.8, 0.8)
return function(arg1) -- Line 18, Named "CameraStatusDot"
	--[[ Upvalues[5]:
		[1]: useStyle_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: vector2_upvr (readonly)
		[4]: udim2_upvr_2 (readonly)
		[5]: udim2_upvr (readonly)
	]]
	local module = {}
	local var8
	if not var8 then
		var8 = vector2_upvr
	end
	module.AnchorPoint = var8
	if arg1.Size then
		var8 = arg1.Size
	else
		var8 = udim2_upvr_2
	end
	module.Size = var8
	var8 = useStyle_upvr().Theme.OnlineStatus.Color
	module.BackgroundColor3 = var8
	var8 = arg1.Position
	if not var8 then
		var8 = udim2_upvr
	end
	module.Position = var8
	var8 = arg1.ZIndex
	module.ZIndex = var8
	var8 = {}
	var8.UICorner = React_upvr.createElement("UICorner", {
		CornerRadius = UDim.new(1, 0);
	})
	return React_upvr.createElement("Frame", module, var8)
end