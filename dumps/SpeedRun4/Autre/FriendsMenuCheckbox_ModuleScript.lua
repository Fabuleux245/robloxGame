-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:31:21
-- Luau version 6, Types version 3
-- Time taken: 0.002454 seconds

local FriendsMenu = script:FindFirstAncestor("FriendsMenu")
local Parent = FriendsMenu.Parent
local FFlagMakeAddFriendsCheckboxNotFocusSelectable_upvr = FriendsMenu.Flags.FFlagMakeAddFriendsCheckboxNotFocusSelectable
local var3_2_upvr = require(FFlagMakeAddFriendsCheckboxNotFocusSelectable_upvr)
if var3_2_upvr then
	FFlagMakeAddFriendsCheckboxNotFocusSelectable_upvr = require(Parent.Foundation).Checkbox
else
	FFlagMakeAddFriendsCheckboxNotFocusSelectable_upvr = require(Parent.UIBlox).App.InputButton.Checkbox
end
local React_upvr = require(Parent.React)
local SelectedUsersContext_upvr = require(FriendsMenu.Context.SelectedUsersContext)
local dependencyArray_upvr = require(Parent.RoactUtils).Hooks.dependencyArray
local FFlagFriendsRowPreferredTextSizeFix_upvr = require(FriendsMenu.Flags.FFlagFriendsRowPreferredTextSizeFix)
return function(arg1) -- Line 30
	--[[ Upvalues[6]:
		[1]: React_upvr (readonly)
		[2]: SelectedUsersContext_upvr (readonly)
		[3]: var3_2_upvr (readonly)
		[4]: dependencyArray_upvr (readonly)
		[5]: FFlagFriendsRowPreferredTextSizeFix_upvr (readonly)
		[6]: FFlagMakeAddFriendsCheckboxNotFocusSelectable_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local any_useContext_result1_upvr = React_upvr.useContext(SelectedUsersContext_upvr)
	local var11_upvr
	if var3_2_upvr then
		var11_upvr = React_upvr.useRef(nil)
	else
		var11_upvr = nil
	end
	local function var12() -- Line 35
		--[[ Upvalues[2]:
			[1]: any_useContext_result1_upvr (readonly)
			[2]: arg1 (readonly)
		]]
		if any_useContext_result1_upvr.isFriendSelected(arg1.friend.id) then
			any_useContext_result1_upvr.removeFriend(arg1.friend.id)
		else
			any_useContext_result1_upvr.addFriend(arg1.friend.id, arg1.friend.displayName)
		end
	end
	if var3_2_upvr then
		React_upvr.useEffect(function() -- Line 51
			--[[ Upvalues[1]:
				[1]: var11_upvr (readonly)
			]]
			if var11_upvr and var11_upvr.current then
				var11_upvr.current.Selectable = false
			end
		end, {var11_upvr})
	end
	local module = {
		AutomaticSize = Enum.AutomaticSize.XY;
		AnchorPoint = arg1.anchorPoint;
		Position = arg1.position;
	}
	local var16 = 1
	module.BackgroundTransparency = var16
	if FFlagFriendsRowPreferredTextSizeFix_upvr then
		var16 = arg1.layoutOrder
	else
		var16 = nil
	end
	module.LayoutOrder = var16
	local module_2 = {
		CheckboxAlignment = React_upvr.createElement("UIListLayout", {
			VerticalAlignment = Enum.VerticalAlignment.Center;
		});
	}
	if var3_2_upvr then
		local any_createElement_result1 = React_upvr.createElement(FFlagMakeAddFriendsCheckboxNotFocusSelectable_upvr, {
			onActivated = React_upvr.useCallback(var12, dependencyArray_upvr(any_useContext_result1_upvr.isFriendSelected(arg1.friend.id), any_useContext_result1_upvr.removeFriend, any_useContext_result1_upvr.addFriend, arg1.friend.id));
			isChecked = any_useContext_result1_upvr.isFriendSelected(arg1.friend.id);
			label = "";
			isDisabled = arg1.isDisabled;
			ref = var11_upvr;
		})
	else
		local tbl = {}
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		tbl.onActivated = React_upvr.useCallback(var12, dependencyArray_upvr(any_useContext_result1_upvr.isFriendSelected(arg1.friend.id), any_useContext_result1_upvr.removeFriend, any_useContext_result1_upvr.addFriend, arg1.friend.id))
		tbl.isSelected = any_useContext_result1_upvr.isFriendSelected(arg1.friend.id)
		tbl.text = ""
		tbl.isDisabled = arg1.isDisabled
	end
	module_2.Button = React_upvr.createElement(FFlagMakeAddFriendsCheckboxNotFocusSelectable_upvr, tbl)
	return React_upvr.createElement("Frame", module, module_2)
end