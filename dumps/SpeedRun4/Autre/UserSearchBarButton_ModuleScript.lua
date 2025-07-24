-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:28:03
-- Luau version 6, Types version 3
-- Time taken: 0.001180 seconds

local SocialCommon = script:FindFirstAncestor("SocialCommon")
local Parent = SocialCommon.Parent
local UIBlox = require(Parent.UIBlox)
local useIsWideMode_upvr = require(SocialCommon.Hooks.useIsWideMode)
local useSelector_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useSelector
local getPageMargin_upvr = UIBlox.App.Container.getPageMargin
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local React_upvr = require(Parent.React)
local ImageSetButton_upvr = UIBlox.Core.ImageSet.ImageSetButton
local UserSearchBar_upvr = require(SocialCommon.Components.UserSearchBar.UserSearchBar)
return function(arg1) -- Line 29
	--[[ Upvalues[7]:
		[1]: useIsWideMode_upvr (readonly)
		[2]: useSelector_upvr (readonly)
		[3]: getPageMargin_upvr (readonly)
		[4]: useLocalization_upvr (readonly)
		[5]: React_upvr (readonly)
		[6]: ImageSetButton_upvr (readonly)
		[7]: UserSearchBar_upvr (readonly)
	]]
	local var7_result1 = getPageMargin_upvr(useSelector_upvr(function(arg1_2) -- Line 33
		return arg1_2.ScreenSize
	end).X)
	local module = {}
	local var16 = 1
	module.BackgroundTransparency = var16
	if useIsWideMode_upvr() then
		var16 = UDim2.fromOffset(400, 48)
	else
		var16 = UDim2.new(1, -2 * var7_result1, 0, 48)
	end
	module.Size = var16
	module.Position = UDim2.new(0, var7_result1, 0, 0)
	module[React_upvr.Event.Activated] = arg1.onActivated
	return React_upvr.createElement(ImageSetButton_upvr, module, {
		SearchBar = React_upvr.createElement(UserSearchBar_upvr, {
			isDisabled = true;
			searchPlaceholderText = useLocalization_upvr({
				searchPlaceholderText = "Feature.AddFriends.Label.InputPlaceholder.SearchForPeople";
			}).searchPlaceholderText;
		});
	})
end