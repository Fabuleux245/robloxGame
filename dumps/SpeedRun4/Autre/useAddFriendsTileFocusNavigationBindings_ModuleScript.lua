-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:29:31
-- Luau version 6, Types version 3
-- Time taken: 0.001728 seconds

local Parent = script:FindFirstAncestor("FriendsLanding").Parent
local FocusNavigationEventNameEnum_upvr = require(Parent.FocusNavigationUtils).FocusNavigationEventNameEnum
local React_upvr = require(Parent.React)
local InputHandlers_upvr = require(Parent.InputHandlers)
local ReactFocusNavigation_upvr = require(Parent.ReactFocusNavigation)
return function(arg1, arg2) -- Line 12, Named "useAddFriendsTileFocusNavigationBindings"
	--[[ Upvalues[4]:
		[1]: FocusNavigationEventNameEnum_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: InputHandlers_upvr (readonly)
		[4]: ReactFocusNavigation_upvr (readonly)
	]]
	local tbl = {}
	local var8
	if not arg2 then
		var8 = FocusNavigationEventNameEnum_upvr.AddFriend
	else
		var8 = FocusNavigationEventNameEnum_upvr.AcceptFriendRequest
	end
	tbl[Enum.KeyCode.ButtonX] = var8
	var8 = FocusNavigationEventNameEnum_upvr.IgnoreFriendRequest
	tbl[Enum.KeyCode.ButtonR3] = var8
	var8 = React_upvr
	function var8() -- Line 20
		--[[ Upvalues[4]:
			[1]: arg2 (readonly)
			[2]: FocusNavigationEventNameEnum_upvr (copied, readonly)
			[3]: InputHandlers_upvr (copied, readonly)
			[4]: arg1 (readonly)
		]]
		if not arg2 then
			return {
				[FocusNavigationEventNameEnum_upvr.AddFriend] = {
					handler = InputHandlers_upvr.onRelease(arg1.requestFriendship);
				};
			}
		end
		return {
			[FocusNavigationEventNameEnum_upvr.AcceptFriendRequest] = {
				handler = InputHandlers_upvr.onRelease(arg1.acceptFriendRequest);
			};
			[FocusNavigationEventNameEnum_upvr.IgnoreFriendRequest] = {
				handler = InputHandlers_upvr.onRelease(arg1.declineFriendRequest);
			};
		}
	end
	var8 = ReactFocusNavigation_upvr.useEventMap(tbl)
	return ReactFocusNavigation_upvr.useEventHandlerMap(var8.useMemo(var8, {arg1.acceptFriendRequest, arg1.declineFriendRequest, arg1.requestFriendship}), var8)
end