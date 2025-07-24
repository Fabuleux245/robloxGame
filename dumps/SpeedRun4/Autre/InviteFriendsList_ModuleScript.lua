-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:53:37
-- Luau version 6, Types version 3
-- Time taken: 0.006797 seconds

local CorePackages = game:GetService("CorePackages")
local InGameMenuDependencies = require(CorePackages.Packages.InGameMenuDependencies)
local Roact_upvr = InGameMenuDependencies.Roact
local t = InGameMenuDependencies.t
local Parent = script.Parent.Parent.Parent
local GetFFlagIGMGamepadSelectionHistory_upvr = require(Parent.Flags.GetFFlagIGMGamepadSelectionHistory)
local PlayerSearchPredicate_upvr = require(Parent.Utility.PlayerSearchPredicate)
local Constants_upvr = require(Parent.Resources.Constants)
local any_extend_result1 = Roact_upvr.PureComponent:extend("InviteFriendsList")
local tbl = {
	friends = t.array(t.strictInterface({
		IsOnline = t.boolean;
		Id = t.integer;
		Username = t.string;
		DisplayName = t.string;
	}));
	invitesState = t.table;
}
local var73
local function INLINED() -- Internal function, doesn't exist in bytecode
	var73 = t.optional(t.boolean)
	return var73
end
if not GetFFlagIGMGamepadSelectionHistory_upvr() or not INLINED() then
	var73 = nil
end
tbl.shouldForgetPreviousSelection = var73
var73 = t.callback
tbl.dispatchInviteUserToPlaceId = var73
var73 = t.boolean
tbl.canCaptureFocus = var73
var73 = t.table
tbl.searchBoxRef = var73
any_extend_result1.validateProps = t.strictInterface(tbl)
local RoactGamepad_upvr = require(CorePackages.Packages.RoactGamepad)
function any_extend_result1.init(arg1) -- Line 54
	--[[ Upvalues[1]:
		[1]: RoactGamepad_upvr (readonly)
	]]
	arg1.playerRefs = RoactGamepad_upvr.createRefCache()
	arg1.state = {
		searchText = "";
	}
	arg1.inviteAnimationInProgress = {}
end
local PlayerLabelV2_upvr = require(Parent.Components.PlayerLabelV2)
local InviteStatus_upvr = Constants_upvr.InviteStatus
local tostring_result1_upvr = tostring(game.PlaceId)
local SendInviteButton_upvr = require(script.Parent.SendInviteButton)
local Divider_upvr = require(Parent.Components.Divider)
function any_extend_result1.renderListEntries(arg1) -- Line 63
	--[[ Upvalues[7]:
		[1]: Roact_upvr (readonly)
		[2]: PlayerSearchPredicate_upvr (readonly)
		[3]: PlayerLabelV2_upvr (readonly)
		[4]: InviteStatus_upvr (readonly)
		[5]: tostring_result1_upvr (readonly)
		[6]: SendInviteButton_upvr (readonly)
		[7]: Divider_upvr (readonly)
	]]
	local friends = arg1.props.friends
	local var25 = 1
	local module = {
		ListLayout = Roact_upvr.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder;
			HorizontalAlignment = Enum.HorizontalAlignment.Right;
		});
	}
	local var31
	for i, v_upvr in pairs(friends) do
		local tostring_result1_upvr_2 = tostring(v_upvr.Id)
		local var33_upvr = arg1.props.invitesState[tostring_result1_upvr_2]
		local var7_result1 = PlayerSearchPredicate_upvr(arg1.state.searchText, v_upvr.Username, v_upvr.DisplayName)
		if var7_result1 then
			var31 += 1
		end
		local tbl_2 = {
			username = v_upvr.Username;
			displayName = v_upvr.DisplayName;
			userId = v_upvr.Id;
			isOnline = v_upvr.IsOnline;
			isSelected = false;
			LayoutOrder = var25;
			Visible = var7_result1;
			[Roact_upvr.Ref] = arg1.playerRefs[i];
		}
		local function onActivated() -- Line 96
			--[[ Upvalues[6]:
				[1]: var33_upvr (readonly)
				[2]: InviteStatus_upvr (copied, readonly)
				[3]: arg1 (readonly)
				[4]: v_upvr (readonly)
				[5]: tostring_result1_upvr_2 (readonly)
				[6]: tostring_result1_upvr (copied, readonly)
			]]
			-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
			local var36
			if var33_upvr ~= InviteStatus_upvr.Pending then
				var36 = false
			else
				var36 = true
			end
			if var33_upvr ~= InviteStatus_upvr.Success then
			else
			end
			if not var36 and not true and not arg1.inviteAnimationInProgress[v_upvr.Id] then
				arg1.props.dispatchInviteUserToPlaceId(tostring_result1_upvr_2, tostring_result1_upvr)
			end
		end
		tbl_2.onActivated = onActivated
		module["friend_"..i] = Roact_upvr.createElement(PlayerLabelV2_upvr, tbl_2, {
			InviteButton = Roact_upvr.createElement(SendInviteButton_upvr, {
				userInviteStatus = var33_upvr;
				onActivated = function() -- Line 107, Named "onActivated"
					--[[ Upvalues[3]:
						[1]: arg1 (readonly)
						[2]: tostring_result1_upvr_2 (readonly)
						[3]: tostring_result1_upvr (copied, readonly)
					]]
					arg1.props.dispatchInviteUserToPlaceId(tostring_result1_upvr_2, tostring_result1_upvr)
				end;
				animationBegun = function() -- Line 110, Named "animationBegun"
					--[[ Upvalues[2]:
						[1]: arg1 (readonly)
						[2]: v_upvr (readonly)
					]]
					arg1.inviteAnimationInProgress[v_upvr.Id] = true
				end;
				animationEnded = function() -- Line 113, Named "animationEnded"
					--[[ Upvalues[2]:
						[1]: arg1 (readonly)
						[2]: v_upvr (readonly)
					]]
					arg1.inviteAnimationInProgress[v_upvr.Id] = nil
				end;
			});
		})
		local var39 = var25 + 1
		if i < #friends then
			module["divider_"..var39] = Roact_upvr.createElement(Divider_upvr, {
				LayoutOrder = var39;
				Size = UDim2.new(1, -104, 0, 1);
				Visible = var7_result1;
			})
		end
	end
	return module, var31
end
local SearchBox_upvr = require(script.Parent.SearchBox)
local GuiService_upvr = game:GetService("GuiService")
local BarOnTopScrollingFrame_upvr = require(Parent.Components.BarOnTopScrollingFrame)
local RootedConnection_upvr = require(Parent.Components.Connection.RootedConnection)
local FocusHandler_upvr = require(Parent.Components.Connection.FocusHandler)
local function render(arg1) -- Line 135
	--[[ Upvalues[7]:
		[1]: Roact_upvr (readonly)
		[2]: SearchBox_upvr (readonly)
		[3]: GuiService_upvr (readonly)
		[4]: BarOnTopScrollingFrame_upvr (readonly)
		[5]: GetFFlagIGMGamepadSelectionHistory_upvr (readonly)
		[6]: RootedConnection_upvr (readonly)
		[7]: FocusHandler_upvr (readonly)
	]]
	local any_renderListEntries_result1, any_renderListEntries_result2 = arg1:renderListEntries()
	local var54_upvw
	if GetFFlagIGMGamepadSelectionHistory_upvr() then
		var54_upvw = arg1.props.shouldForgetPreviousSelection
	end
	local module_3 = {}
	local any_createElement_result1_upvr = Roact_upvr.createElement("Frame", {
		BackgroundTransparency = 1;
		Size = UDim2.new(1, 0, 1, 0);
	}, {
		SearchBox = Roact_upvr.createElement(SearchBox_upvr, {
			Size = UDim2.new(1, -48, 0, 36);
			Position = UDim2.new(0.5, 0, 0, 8);
			AnchorPoint = Vector2.new(0.5, 0);
			searchUpdated = function(arg1_2) -- Line 148, Named "searchUpdated"
				--[[ Upvalues[1]:
					[1]: arg1 (readonly)
				]]
				local tbl_3 = {}
				tbl_3.searchText = arg1_2
				arg1:setState(tbl_3)
			end;
			searchCleared = function() -- Line 153, Named "searchCleared"
				--[[ Upvalues[2]:
					[1]: arg1 (readonly)
					[2]: GuiService_upvr (copied, readonly)
				]]
				arg1:setState({
					searchText = "";
				})
				if arg1.props.canCaptureFocus then
					GuiService_upvr.SelectedCoreObject = arg1.props.searchBoxRef:getValue()
				end
			end;
			itemRef = arg1.props.searchBoxRef;
		});
		List = Roact_upvr.createElement(BarOnTopScrollingFrame_upvr, {
			Position = UDim2.new(0, 0, 0, 64);
			Size = UDim2.new(1, 0, 1, -64);
			CanvasSize = UDim2.new(1, 0, 0, any_renderListEntries_result2 * 72);
		}, any_renderListEntries_result1);
	})
	function module_3.render(arg1_3) -- Line 177
		--[[ Upvalues[7]:
			[1]: Roact_upvr (copied, readonly)
			[2]: FocusHandler_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: var54_upvw (read and write)
			[5]: GetFFlagIGMGamepadSelectionHistory_upvr (copied, readonly)
			[6]: GuiService_upvr (copied, readonly)
			[7]: any_createElement_result1_upvr (readonly)
		]]
		local module_2 = {
			isFocused = arg1.props.canCaptureFocus and arg1_3;
			shouldForgetPreviousSelection = var54_upvw;
		}
		local var62
		local function INLINED_2() -- Internal function, doesn't exist in bytecode
			function var62(arg1_4) -- Line 181
				--[[ Upvalues[2]:
					[1]: GuiService_upvr (copied, readonly)
					[2]: arg1 (copied, readonly)
				]]
				local var61 = arg1_4
				if not var61 then
					var61 = arg1:getFirstVisiblePlayerRef()
					if not var61 then
						var61 = arg1.props.searchBoxRef:getValue()
					end
				end
				GuiService_upvr.SelectedCoreObject = var61
			end
			return var62
		end
		if not GetFFlagIGMGamepadSelectionHistory_upvr() or not INLINED_2() then
			function var62() -- Line 185
				--[[ Upvalues[2]:
					[1]: GuiService_upvr (copied, readonly)
					[2]: arg1 (copied, readonly)
				]]
				local any_getFirstVisiblePlayerRef_result1 = arg1:getFirstVisiblePlayerRef()
				if not any_getFirstVisiblePlayerRef_result1 then
					any_getFirstVisiblePlayerRef_result1 = arg1.props.searchBoxRef:getValue()
				end
				GuiService_upvr.SelectedCoreObject = any_getFirstVisiblePlayerRef_result1
			end
		end
		module_2.didFocus = var62
		var62 = {}
		var62.FriendsList = any_createElement_result1_upvr
		return Roact_upvr.createElement(FocusHandler_upvr, module_2, var62)
	end
	return Roact_upvr.createElement(RootedConnection_upvr, module_3)
end
any_extend_result1.render = render
function any_extend_result1.getFirstVisiblePlayerRef(arg1) -- Line 196
	--[[ Upvalues[1]:
		[1]: PlayerSearchPredicate_upvr (readonly)
	]]
	for i_2, v_2 in pairs(arg1.props.friends) do
		if PlayerSearchPredicate_upvr(arg1.state.searchText, v_2.Username, v_2.DisplayName) then
			return arg1.playerRefs[i_2]:getValue()
		end
	end
	return nil
end
local InviteUserToPlaceId_upvr = require(Parent.Thunks.InviteUserToPlaceId)
function var73(arg1) -- Line 217
	--[[ Upvalues[1]:
		[1]: InviteUserToPlaceId_upvr (readonly)
	]]
	return {
		dispatchInviteUserToPlaceId = function(arg1_5, arg2) -- Line 219, Named "dispatchInviteUserToPlaceId"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: InviteUserToPlaceId_upvr (copied, readonly)
			]]
			arg1(InviteUserToPlaceId_upvr(arg1_5, arg2))
		end;
	}
end
return InGameMenuDependencies.RoactRodux.UNSTABLE_connect2(function(arg1, arg2) -- Line 207
	--[[ Upvalues[2]:
		[1]: GetFFlagIGMGamepadSelectionHistory_upvr (readonly)
		[2]: Constants_upvr (readonly)
	]]
	local var70
	if GetFFlagIGMGamepadSelectionHistory_upvr() then
		local var71 = true
		if arg1.menuPage ~= Constants_upvr.MainPagePageKey then
			if arg1.currentZone ~= 0 then
				var71 = false
			else
				var71 = true
			end
		end
		var70 = var71
	end
	return {
		invitesState = arg1.invites;
		shouldForgetPreviousSelection = var70;
	}
end, var73)(any_extend_result1)