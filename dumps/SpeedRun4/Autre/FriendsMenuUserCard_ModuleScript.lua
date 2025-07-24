-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:31:23
-- Luau version 6, Types version 3
-- Time taken: 0.002700 seconds

local FriendsMenu = script:FindFirstAncestor("FriendsMenu")
local Parent = FriendsMenu.Parent
local UIBlox = require(Parent.UIBlox)
local React_upvr = require(Parent.React)
local SelectedUsersContext_upvr = require(FriendsMenu.Context.SelectedUsersContext)
local useStyle_upvr = UIBlox.Core.Style.useStyle
local getStandardSizeAvatarHeadShotRbxthumb_upvr = require(Parent.UserLib).Utils.getStandardSizeAvatarHeadShotRbxthumb
local SquadInviteChangesExperimentation_upvr = require(Parent.SocialExperiments).SquadInviteChangesExperimentation
local dependencyArray_upvr = require(Parent.RoactUtils).Hooks.dependencyArray
local Interactable_upvr = UIBlox.Core.Control.Interactable
local Constants_upvr = require(FriendsMenu.Constants)
local udim_upvr = UDim.new(1, 0)
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local Images_upvr = UIBlox.App.ImageSet.Images
return function(arg1) -- Line 24
	--[[ Upvalues[11]:
		[1]: React_upvr (readonly)
		[2]: SelectedUsersContext_upvr (readonly)
		[3]: useStyle_upvr (readonly)
		[4]: getStandardSizeAvatarHeadShotRbxthumb_upvr (readonly)
		[5]: SquadInviteChangesExperimentation_upvr (readonly)
		[6]: dependencyArray_upvr (readonly)
		[7]: Interactable_upvr (readonly)
		[8]: Constants_upvr (readonly)
		[9]: udim_upvr (readonly)
		[10]: ImageSetLabel_upvr (readonly)
		[11]: Images_upvr (readonly)
	]]
	local any_useContext_result1_upvr = React_upvr.useContext(SelectedUsersContext_upvr)
	local var7_result1 = useStyle_upvr()
	local Theme = var7_result1.Theme
	local Font = var7_result1.Font
	local module = {
		Size = UDim2.new(0, Constants_upvr.FRIEND_MENU_CARD_SIZE, 0, Constants_upvr.FRIEND_MENU_CARD_SIZE);
		BackgroundTransparency = 1;
		LayoutOrder = arg1.layoutOrder;
	}
	local var23
	if SquadInviteChangesExperimentation_upvr.getInviteChangesEnabled() and arg1.unremovable then
		var23 = nil
	else
		var23 = React_upvr.useCallback(function() -- Line 33
			--[[ Upvalues[3]:
				[1]: any_useContext_result1_upvr (readonly)
				[2]: arg1 (readonly)
				[3]: SquadInviteChangesExperimentation_upvr (copied, readonly)
			]]
			local var21 = arg1
			if SquadInviteChangesExperimentation_upvr.getInviteChangesEnabled() then
				var21 = arg1.displayName
			else
				var21 = nil
			end
			any_useContext_result1_upvr.removeFriend(var21.userId, var21)
		end, dependencyArray_upvr(arg1.userId, any_useContext_result1_upvr.removeFriend))
	end
	module[React_upvr.Event.Activated] = var23
	local var24
	local module_2 = {}
	var23 = React_upvr.createElement
	local tbl = {}
	var24 = 0.5
	tbl.AnchorPoint = Vector2.new(var24, 0)
	var24 = 0.5
	tbl.Position = UDim2.fromScale(var24, 0)
	var24 = 60
	tbl.Size = UDim2.fromOffset(var24, 60)
	tbl.BackgroundTransparency = 1
	local tbl_3 = {}
	var24 = React_upvr.createElement
	var24 = var24("UICorner", {
		CornerRadius = udim_upvr;
	})
	tbl_3.UICorner = var24
	var24 = React_upvr.createElement
	var24 = var24(ImageSetLabel_upvr, {
		Size = UDim2.fromOffset(60, 60);
		BackgroundColor3 = Theme.UIDefault.Color;
		Image = getStandardSizeAvatarHeadShotRbxthumb_upvr(arg1.userId);
		ZIndex = 1;
	}, {
		UICorner = React_upvr.createElement("UICorner", {
			CornerRadius = udim_upvr;
		});
	})
	tbl_3.Avatar = var24
	if SquadInviteChangesExperimentation_upvr.getInviteChangesEnabled() and arg1.unremovable then
		var24 = nil
	else
		var24 = React_upvr.createElement
		var24 = var24(ImageSetLabel_upvr, {
			AnchorPoint = Vector2.new(1, 0);
			Position = UDim2.fromScale(1, 0);
			Size = UDim2.fromOffset(16, 16);
			BackgroundTransparency = Theme.SystemPrimaryDefault.Transparency;
			BackgroundColor3 = Theme.SystemPrimaryDefault.Color;
			Image = Images_upvr["icons/navigation/close_small"];
			ImageColor3 = Theme.SystemPrimaryContent.Color;
			ZIndex = 2;
		}, {
			UICorner = React_upvr.createElement("UICorner", {
				CornerRadius = udim_upvr;
			});
		})
	end
	tbl_3.CloseButton = var24
	var23 = var23("Frame", tbl, tbl_3)
	module_2.AvatarContainer = var23
	var23 = React_upvr.createElement
	local tbl_2 = {}
	var24 = 0.5
	tbl_2.AnchorPoint = Vector2.new(var24, 1)
	tbl_2.AutomaticSize = Enum.AutomaticSize.Y
	var24 = 0.5
	tbl_2.Position = UDim2.fromScale(var24, 1)
	var24 = Constants_upvr.FRIEND_MENU_CARD_SIZE
	tbl_2.Size = UDim2.fromOffset(var24, 0)
	tbl_2.BackgroundTransparency = 1
	var24 = Font.Footer
	tbl_2.Font = var24.Font
	tbl_2.Text = arg1.displayName
	var24 = Theme.TextDefault
	tbl_2.TextColor3 = var24.Color
	var24 = Font.BaseSize
	tbl_2.TextSize = var24 * Font.Footer.RelativeSize
	var24 = Theme.TextDefault
	tbl_2.TextTransparency = var24.Transparency
	tbl_2.TextTruncate = Enum.TextTruncate.AtEnd
	var23 = var23("TextLabel", tbl_2)
	module_2.DisplayName = var23
	return React_upvr.createElement(Interactable_upvr, module, module_2)
end