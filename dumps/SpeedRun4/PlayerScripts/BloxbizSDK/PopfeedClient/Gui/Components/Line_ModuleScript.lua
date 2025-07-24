-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:42:28
-- Luau version 6, Types version 3
-- Time taken: 0.001241 seconds

local New_upvr = require(script.Parent.Parent.Parent.Parent.Utils.Fusion).New
return function(arg1) -- Line 6
	--[[ Upvalues[1]:
		[1]: New_upvr (readonly)
	]]
	local module = {
		Name = "Line";
		Size = arg1.Size;
		ZIndex = arg1.ZIndex;
	}
	local Position = arg1.Position
	if not Position then
		Position = UDim2.fromScale(0.5, 1)
	end
	module.Position = Position
	Position = arg1.AnchorPoint
	local var5 = Position
	if not var5 then
		var5 = Vector2.new(0.5, 1)
	end
	module.AnchorPoint = var5
	module.LayoutOrder = arg1.LayoutOrder
	local BackgroundColor3 = arg1.BackgroundColor3
	if not BackgroundColor3 then
		BackgroundColor3 = Color3.fromRGB(50, 50, 50)
	end
	module.BackgroundColor3 = BackgroundColor3
	BackgroundColor3 = arg1.SizeConstraint
	local var7 = BackgroundColor3
	if not var7 then
		var7 = Enum.SizeConstraint.RelativeXY
	end
	module.SizeConstraint = var7
	return New_upvr("Frame")(module)
end