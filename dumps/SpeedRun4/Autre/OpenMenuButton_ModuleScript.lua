-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:53:42
-- Luau version 6, Types version 3
-- Time taken: 0.001119 seconds

local InGameMenuDependencies = require(game:GetService("CorePackages").Packages.InGameMenuDependencies)
local t = InGameMenuDependencies.t
local Parent = script.Parent.Parent
local GlobalConfig_upvr = require(Parent.GlobalConfig)
local any_strictInterface_result1_upvr = t.strictInterface({
	onClick = t.callback;
})
local Roact_upvr = InGameMenuDependencies.Roact
local ImageSetButton_upvr = InGameMenuDependencies.UIBlox.Core.ImageSet.ImageSetButton
local Assets_upvr = require(Parent.Resources.Assets)
return function(arg1) -- Line 24, Named "OpenMenuButton"
	--[[ Upvalues[5]:
		[1]: GlobalConfig_upvr (readonly)
		[2]: any_strictInterface_result1_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: ImageSetButton_upvr (readonly)
		[5]: Assets_upvr (readonly)
	]]
	if GlobalConfig_upvr.propValidation then
		assert(any_strictInterface_result1_upvr(arg1))
	end
	return Roact_upvr.createElement(ImageSetButton_upvr, {
		AnchorPoint = Vector2.new(0.5, 0.5);
		BackgroundTransparency = 1;
		Image = Assets_upvr.Images.RobloxLogo;
		Position = UDim2.new(0, 50, 0.5, 0);
		Size = UDim2.new(0, 32, 0, 32);
		[Roact_upvr.Event.Activated] = arg1.onClick;
	})
end