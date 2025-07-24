-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:48:24
-- Luau version 6, Types version 3
-- Time taken: 0.001928 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local React_upvr = require(Parent.React)
local Cryo_upvr = require(Parent.Cryo)
local tbl_upvr = {
	subTitleText = "subTitleText";
	user = {};
	childWidth = 0;
	style = Cryo_upvr.Dictionary.join(require(AppChat.SocialLibraries).Components.TestStyle, {
		Tokens = {
			Global = {
				Color = {
					None = {};
				};
			};
		};
	});
	showDivider = true;
	boldTitle = true;
}
local PresenceBubbleCellStyled_upvr = require(script.Parent.PresenceBubbleCellStyled)
local UserModel_upvr = require(Parent.UserLib).Models.UserModel
local component_assets_circle_25_upvr = require(Parent.UIBlox).App.ImageSet.Images["component_assets/circle_25"]
return React_upvr.memo(function(arg1) -- Line 47, Named "UserCell"
	--[[ Upvalues[6]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: PresenceBubbleCellStyled_upvr (readonly)
		[5]: UserModel_upvr (readonly)
		[6]: component_assets_circle_25_upvr (readonly)
	]]
	local any_join_result1_upvr = Cryo_upvr.Dictionary.join(tbl_upvr, arg1)
	local user_upvr = any_join_result1_upvr.user
	local metadata = user_upvr.metadata
	if metadata then
		metadata = user_upvr.metadata.isPending
	end
	local module = {
		style = any_join_result1_upvr.style;
		childWidth = any_join_result1_upvr.childWidth;
		onActivated = React_upvr.useCallback(function() -- Line 49
			--[[ Upvalues[1]:
				[1]: any_join_result1_upvr (readonly)
			]]
			if any_join_result1_upvr.onActivated then
				any_join_result1_upvr.onActivated(any_join_result1_upvr.user)
			end
		end);
		onCircleActivated = any_join_result1_upvr.onCircleActivated;
		subTitleText = any_join_result1_upvr.subTitleText;
		showDivider = any_join_result1_upvr.showDivider;
	}
	if metadata then
	else
	end
	module.boldTitle = any_join_result1_upvr.boldTitle
	local var21
	if user_upvr.presence ~= UserModel_upvr.PresenceType.OFFLINE and user_upvr.presence ~= nil then
		var21 = component_assets_circle_25_upvr
	else
		var21 = nil
	end
	module.avatarCirclePresenceImage = var21
	var21 = user_upvr.displayName
	module.titleText = var21
	var21 = user_upvr.alias
	module.secondaryTitleText = var21
	module.thumbnails = React_upvr.useMemo(function() -- Line 58
		--[[ Upvalues[1]:
			[1]: user_upvr (readonly)
		]]
		return {user_upvr.thumbnail}
	end, {user_upvr.thumbnail})
	var21 = any_join_result1_upvr.children
	if not var21 then
		var21 = {}
	end
	return React_upvr.createElement(PresenceBubbleCellStyled_upvr, module, var21)
end)