-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:14:03
-- Luau version 6, Types version 3
-- Time taken: 0.000449 seconds

local createImageSetComponent = require(script.Parent.createImageSetComponent)
local GuiService = game:GetService("GuiService")
local pcall_result1, pcall_result2 = pcall(GuiService.GetResolutionScale, GuiService)
if not pcall_result1 or not script:FindFirstAncestor("CorePackages") then
end
local ImagesResolutionScale = require(script.Parent.Parent.Parent.App.ImageSet.Images).ImagesResolutionScale
return {
	Button = createImageSetComponent("ImageButton", ImagesResolutionScale);
	Label = createImageSetComponent("ImageLabel", ImagesResolutionScale);
}