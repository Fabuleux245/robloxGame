-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:45:34
-- Luau version 6, Types version 3
-- Time taken: 0.001296 seconds

local CorePackages = game:GetService("CorePackages")
local Constants_upvr_2 = require(game:GetService("CoreGui").RobloxGui.Modules.Settings.Pages.ShareGame.Constants)
local Constants_upvr = require(CorePackages.Workspace.Packages.UserLib).Utils.Constants
local InviteAvatarThumbnailSize_upvr = Constants_upvr_2.InviteAvatarThumbnailSize
local getRbxthumbWithTypeSizeAndOptions_upvr = require(CorePackages.Workspace.Packages.UserLib).Utils.getRbxthumbWithTypeSizeAndOptions
local React_upvr = require(CorePackages.Packages.React)
local COLORS_upvr = require(CorePackages.Workspace.Packages.CoreScriptsCommon).Constants.COLORS
return function(arg1) -- Line 27
	--[[ Upvalues[6]:
		[1]: Constants_upvr (readonly)
		[2]: InviteAvatarThumbnailSize_upvr (readonly)
		[3]: getRbxthumbWithTypeSizeAndOptions_upvr (readonly)
		[4]: Constants_upvr_2 (readonly)
		[5]: React_upvr (readonly)
		[6]: COLORS_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local user = arg1.user
	if user then
	end
	if not getRbxthumbWithTypeSizeAndOptions_upvr(user.id, Constants_upvr_2.InviteAvatarRbxthumbType, Constants_upvr.RbxThumbnailSizeToNumberSize[InviteAvatarThumbnailSize_upvr]) then
	end
	local module_2 = {
		Size = arg1.size;
		Position = arg1.position;
		AnchorPoint = arg1.anchorPoint;
		Image = "rbxasset://textures/ui/LuaApp/graphic/ph-avatar-portrait.png";
		BorderSizePixel = 0;
	}
	local var11 = COLORS_upvr
	module_2.BackgroundColor3 = var11.FLINT
	module_2.BackgroundTransparency = arg1.backgroundTransparency
	local module = {}
	if arg1.square then
		var11 = nil
	else
		var11 = React_upvr.createElement
		var11 = var11("UICorner", {
			CornerRadius = UDim.new(0.5, 0);
		})
	end
	module.Corner = var11
	return React_upvr.createElement("ImageLabel", module_2, module)
end