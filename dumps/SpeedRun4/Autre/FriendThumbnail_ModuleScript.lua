-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:31:24
-- Luau version 6, Types version 3
-- Time taken: 0.003006 seconds

local Parent = script:FindFirstAncestor("FriendsMenu").Parent
local UIBlox = require(Parent.UIBlox)
local UserModel_upvr = require(Parent.UserLib).Models.UserModel
local Constants_upvr = require(Parent.UserLib).Utils.Constants
local tbl_upvr = {
	[UserModel_upvr.PresenceType.ONLINE] = {
		Image = "component_assets/circle_16";
		Color = Color3.fromRGB(0, 180, 109);
		Size = UDim2.new(0, 12, 0, 12);
	};
	[UserModel_upvr.PresenceType.IN_GAME] = {
		Image = "icons/menu/games_small";
	};
	[UserModel_upvr.PresenceType.IN_STUDIO] = {
		Image = "icons/logo/studiologo_small";
	};
}
local useStyle_upvr = UIBlox.Core.Style.useStyle
local React_upvr = require(Parent.React)
local Size150x150_upvr = Constants_upvr.RbxThumbnailSizes.Size150x150
local getRbxthumbWithTypeSizeAndOptions_upvr = require(Parent.UserLib).Utils.getRbxthumbWithTypeSizeAndOptions
local AvatarHeadShot_upvr = Constants_upvr.RbxthumbTypes.AvatarHeadShot
local ShimmerPanel_upvr = UIBlox.App.Loading.ShimmerPanel
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local Images_upvr = UIBlox.App.ImageSet.Images
local IconSize_upvr = UIBlox.App.Constant.IconSize
return function(arg1) -- Line 52
	--[[ Upvalues[12]:
		[1]: useStyle_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: Constants_upvr (readonly)
		[4]: Size150x150_upvr (readonly)
		[5]: getRbxthumbWithTypeSizeAndOptions_upvr (readonly)
		[6]: AvatarHeadShot_upvr (readonly)
		[7]: UserModel_upvr (readonly)
		[8]: tbl_upvr (readonly)
		[9]: ShimmerPanel_upvr (readonly)
		[10]: ImageSetLabel_upvr (readonly)
		[11]: Images_upvr (readonly)
		[12]: IconSize_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 41 start (CF ANALYSIS FAILED)
	local friend_upvr = arg1.friend
	assert(friend_upvr, "friend should be non-nil. Silence type checker.")
	local useStyle_upvr_result1 = useStyle_upvr()
	local function _() -- Line 57
		--[[ Upvalues[5]:
			[1]: friend_upvr (readonly)
			[2]: Constants_upvr (copied, readonly)
			[3]: Size150x150_upvr (copied, readonly)
			[4]: getRbxthumbWithTypeSizeAndOptions_upvr (copied, readonly)
			[5]: AvatarHeadShot_upvr (copied, readonly)
		]]
		local var23
		if friend_upvr then
			var23 = getRbxthumbWithTypeSizeAndOptions_upvr(friend_upvr.id, AvatarHeadShot_upvr, Constants_upvr.RbxThumbnailSizeToNumberSize[Size150x150_upvr])
		end
		if not var23 then
			var23 = "rbxasset://textures/ui/LuaApp/graphic/ph-avatar-portrait.png"
		end
		return var23
	end
	local tbl = {friend_upvr}
	if friend_upvr.presence ~= UserModel_upvr.PresenceType.OFFLINE then
	else
	end
	local _ = {
		Size = arg1.size;
		Position = arg1.position;
		AnchorPoint = arg1.anchorPoint;
		BackgroundTransparency = 1;
	}
	-- KONSTANTERROR: [0] 1. Error Block 41 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [71] 50. Error Block 6 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [71] 50. Error Block 6 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [121] 81. Error Block 7 start (CF ANALYSIS FAILED)
	;({}).Background = React_upvr.createElement("Frame", {
		Size = arg1.size;
		Position = arg1.position;
		AnchorPoint = arg1.anchorPoint;
		BackgroundColor3 = useStyle_upvr_result1.Theme.UIDefault.Color;
		BackgroundTransparency = useStyle_upvr_result1.Theme.UIDefault.Transparency;
	}, {
		Corner = React_upvr.createElement("UICorner", {
			CornerRadius = UDim.new(0.5, 0);
		});
	})
	-- KONSTANTERROR: [121] 81. Error Block 7 end (CF ANALYSIS FAILED)
end