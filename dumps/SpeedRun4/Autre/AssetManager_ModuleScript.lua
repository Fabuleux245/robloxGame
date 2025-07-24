-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:58:10
-- Luau version 6, Types version 3
-- Time taken: 0.000612 seconds

local module = {}
local Create_upvr = require(game:GetService("CorePackages").Workspace.Packages.AppCommonLib).Create
function module.CreateShadow(arg1) -- Line 14
	--[[ Upvalues[1]:
		[1]: Create_upvr (readonly)
	]]
	return Create_upvr("ImageLabel")({
		Name = "Shadow";
		Image = "rbxasset://textures/ui/Shell/Buttons/Generic9ScaleShadow.png";
		Size = UDim2.new(1, 3, 1, 3);
		Position = UDim2.new(0, 0, 0, 0);
		ScaleType = Enum.ScaleType.Slice;
		SliceCenter = Rect.new(10, 10, 28, 28);
		BackgroundTransparency = 1;
		ZIndex = arg1 or 1;
	})
end
return module