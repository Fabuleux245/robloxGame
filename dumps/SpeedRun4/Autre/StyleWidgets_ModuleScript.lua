-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:44:02
-- Luau version 6, Types version 3
-- Time taken: 0.000590 seconds

local module_upvr = {
	TabSelectionHeight = 6;
}
local Create_upvr = require(game:GetService("CorePackages").Workspace.Packages.AppCommonLib).Create
function module_upvr.MakeTabSelectionWidget(arg1) -- Line 23
	--[[ Upvalues[2]:
		[1]: Create_upvr (readonly)
		[2]: module_upvr (readonly)
	]]
	local module = {
		Name = "TabSelection";
		Image = "rbxasset://textures/ui/Settings/MenuBarAssets/MenuSelection.png";
		ScaleType = Enum.ScaleType.Slice;
		SliceCenter = Rect.new(3, 1, 4, 5);
		Visible = false;
		BackgroundTransparency = 1;
		Size = UDim2.new(1, 0, 0, module_upvr.TabSelectionHeight);
		Position = UDim2.new(0, 0, 1, -module_upvr.TabSelectionHeight);
	}
	module.Parent = arg1
	return Create_upvr("ImageLabel")(module)
end
return module_upvr