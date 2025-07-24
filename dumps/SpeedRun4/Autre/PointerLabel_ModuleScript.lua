-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:53:52
-- Luau version 6, Types version 3
-- Time taken: 0.001398 seconds

local InGameMenuDependencies = require(game:GetService("CorePackages").Packages.InGameMenuDependencies)
local t = InGameMenuDependencies.t
local Parent = script.Parent.Parent
local Assets = require(Parent.Resources.Assets)
local tbl_upvr = {
	[Enum.UserInputType.MouseButton1] = Assets.Images.Mouse1Press;
	[Enum.UserInputType.MouseButton2] = Assets.Images.Mouse2Press;
	[Enum.UserInputType.MouseWheel] = Assets.Images.MouseWheelScroll;
}
local GlobalConfig_upvr = require(Parent.GlobalConfig)
local any_strictInterface_result1_upvr = t.strictInterface({
	input = t.enum(Enum.UserInputType);
	AnchorPoint = t.optional(t.Vector2);
	Position = t.optional(t.UDim2);
	LayoutOrder = t.optional(t.integer);
})
local Roact_upvr = InGameMenuDependencies.Roact
local ImageSetLabel_upvr = InGameMenuDependencies.UIBlox.Core.ImageSet.ImageSetLabel
return function(arg1) -- Line 29, Named "PointerLabel"
	--[[ Upvalues[5]:
		[1]: GlobalConfig_upvr (readonly)
		[2]: any_strictInterface_result1_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: ImageSetLabel_upvr (readonly)
		[5]: tbl_upvr (readonly)
	]]
	if GlobalConfig_upvr.propValidation then
		assert(any_strictInterface_result1_upvr(arg1))
	end
	return Roact_upvr.createElement(ImageSetLabel_upvr, {
		BackgroundTransparency = 1;
		Image = tbl_upvr[arg1.input];
		Size = UDim2.new(0, 36, 0, 36);
		Position = arg1.Position;
		AnchorPoint = arg1.AnchorPoint;
		LayoutOrder = arg1.LayoutOrder;
	})
end