-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:29:53
-- Luau version 6, Types version 3
-- Time taken: 0.002870 seconds

local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)
local React_upvr = dependencies.React
local UIBlox = dependencies.UIBlox
local Dash_upvr = dependencies.Dash
local tbl_3_upvr = {
	layoutOrder = 0;
	friendRequestCount = 0;
	onActivated = Dash_upvr.noop;
	showTooltip = false;
}
local useState_upvr = React_upvr.useState
local getDeepValue_upvr = dependencies.SocialLibraries.Dictionary.getDeepValue
local useLocalization_upvr = dependencies.Hooks.useLocalization
local GetFFlagRenameFriendsToConnectionsFriendsPage_upvr = dependencies.GetFFlagRenameFriendsToConnectionsFriendsPage
local TextKeys_upvr = require(FriendsLanding.Common.TextKeys)
local IconButton_upvr = UIBlox.App.Button.IconButton
local Images_upvr = UIBlox.App.ImageSet.Images
local Badge_upvr = UIBlox.App.Indicator.Badge
local Tooltip_upvr = UIBlox.App.Dialog.Tooltip
return function(arg1) -- Line 36
	--[[ Upvalues[12]:
		[1]: Dash_upvr (readonly)
		[2]: tbl_3_upvr (readonly)
		[3]: useState_upvr (readonly)
		[4]: getDeepValue_upvr (readonly)
		[5]: useLocalization_upvr (readonly)
		[6]: GetFFlagRenameFriendsToConnectionsFriendsPage_upvr (readonly)
		[7]: TextKeys_upvr (readonly)
		[8]: React_upvr (readonly)
		[9]: IconButton_upvr (readonly)
		[10]: Images_upvr (readonly)
		[11]: Badge_upvr (readonly)
		[12]: Tooltip_upvr (readonly)
	]]
	local any_join_result1 = Dash_upvr.join(tbl_3_upvr, arg1)
	local useState_upvr_result1, var8_result2_upvr = useState_upvr(240)
	local tbl_2 = {}
	local var22
	if GetFFlagRenameFriendsToConnectionsFriendsPage_upvr() then
		var22 = TextKeys_upvr.NO_CONNECTIONS_TOOLTIP
	else
		var22 = TextKeys_upvr.NO_FRIENDS_TOOLTIP
	end
	tbl_2.tooltipMessage = var22
	var22 = React_upvr
	var22 = IconButton_upvr
	local module = {}
	local tbl = {}
	local var27 = false
	if 0 < any_join_result1.friendRequestCount then
		var27 = React_upvr.createElement
		var27 = var27(Badge_upvr, {
			position = UDim2.new(0.5, 0, 0.5, 0);
			anchorPoint = Vector2.new(0, 1);
			value = any_join_result1.friendRequestCount;
		})
	end
	tbl.FriendRequestsBadge = var27
	var27 = any_join_result1.showTooltip
	local var29 = var27
	if var29 then
		var29 = React_upvr.createElement
		var29 = var29(Tooltip_upvr, {
			position = UDim2.new(0, 42.5 - useState_upvr_result1, 0, 36);
			triggerPosition = Vector2.new(0, 0);
			triggerSize = Vector2.new(36, 0);
			bodyText = useLocalization_upvr(tbl_2).tooltipMessage;
			forceClickTriggerPoint = true;
			isDirectChild = true;
		})
	end
	tbl.CallToActionTooltip = var29
	module.ImagesContainer = React_upvr.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0);
		BackgroundTransparency = 1;
		[React_upvr.Change.AbsoluteSize] = function(arg1_2) -- Line 40
			--[[ Upvalues[2]:
				[1]: var8_result2_upvr (readonly)
				[2]: getDeepValue_upvr (copied, readonly)
			]]
			if arg1_2 and arg1_2:FindFirstChild("CallToActionTooltip", true) then
				var8_result2_upvr(getDeepValue_upvr(arg1_2, "CallToActionTooltip.TooltipContainer.AbsoluteSize.X") or 240)
			end
		end;
	}, tbl)
	return var22.createElement(var22, {
		size = UDim2.fromOffset(0, 0);
		icon = Images_upvr["icons/actions/friends/friendAdd"];
		position = any_join_result1.position;
		anchorPoint = Vector2.new(1, 0.5);
		layoutOrder = any_join_result1.layoutOrder;
		onActivated = any_join_result1.onActivated;
	}, module)
end