-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:48:21
-- Luau version 6, Types version 3
-- Time taken: 0.008267 seconds

local CorePackages = game:GetService("CorePackages")
local Roact_upvr = require(CorePackages.Packages.Roact)
local t = require(CorePackages.Packages.t)
local playerInterface = require(game:GetService("CoreGui"):WaitForChild("RobloxGui").Modules.Interfaces.playerInterface)
local Parent_2 = script.Parent
local Parent = Parent_2.Parent.Parent
local any_extend_result1 = Roact_upvr.PureComponent:extend("PlayerListDisplay")
any_extend_result1.validateProps = t.strictInterface({
	isVisible = t.boolean;
	isMinimized = t.boolean;
	isTenFootInterface = t.boolean;
	isUsingGamepad = t.boolean;
	screenSizeY = t.integer;
	entrySize = t.integer;
	sortedPlayers = t.array(playerInterface);
	sortedTeams = t.optional(t.any);
	teamColorToPlayerMap = t.optional(t.map(t.integer, t.array(playerInterface)));
	teamScores = t.optional(t.map(t.instanceIsA("Team"), t.map(t.string, t.any)));
	teamNames = t.map(t.instanceIsA("Team"), t.string);
	teamColors = t.map(t.instanceIsA("Team"), t.BrickColor);
	playerTeam = t.map(t.integer, t.instanceIsA("Team"));
	playerStats = t.map(t.integer, t.map(t.string, t.any));
	gameStats = t.array(t.strictInterface({
		name = t.string;
		text = t.string;
		addId = t.integer;
		isPrimary = t.boolean;
		priority = t.number;
	}));
	playerIconInfo = t.map(t.integer, t.strictInterface({
		isPlaceOwner = t.boolean;
		avatarIcon = t.optional(t.table);
		specialGroupIcon = t.optional(t.table);
	}));
	playerRelationship = t.map(t.integer, t.strictInterface({
		isBlocked = t.boolean;
		friendStatus = t.enum(Enum.FriendStatus);
		isFollowing = t.boolean;
		isFollower = t.boolean;
	}));
	dropDownPlayer = t.optional(playerInterface);
	dropDownVisible = t.boolean;
})
function any_extend_result1.init(arg1) -- Line 91
	--[[ Upvalues[1]:
		[1]: Roact_upvr (readonly)
	]]
	arg1.scrollingFrameRef = Roact_upvr.createRef()
	arg1.firstPlayerRef = Roact_upvr.createRef()
	arg1.state = {
		lastCanvasPosition = Vector2.new(0, 0);
		containerSizeY = 100;
		contentsVisible = true;
	}
	function arg1.absoluteSizeChanged(arg1_2) -- Line 101
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:setState({
			containerSizeY = arg1_2.AbsoluteSize.Y;
		})
	end
	function arg1.canvasPositionChanged(arg1_3) -- Line 107
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:setState({
			lastCanvasPosition = arg1_3.CanvasPosition;
		})
	end
end
function any_extend_result1.getShowTitlePlayer(arg1) -- Line 114
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var19
	local function INLINED_2() -- Internal function, doesn't exist in bytecode
		var19 = true
		return 1 >= #arg1.props.sortedPlayers
	end
	if not arg1.props.sortedPlayers or INLINED_2() then
		var19 = false
	end
	if not arg1.props.sortedTeams or 0 >= #arg1.props.sortedTeams then
	end
	if 0 >= #arg1.props.gameStats then
	else
	end
	if not var19 then
		if not false then
		end
	end
	return true
end
function any_extend_result1.inVerticalScrollWindow(arg1, arg2, arg3) -- Line 121
	if arg2 + arg3 + arg3 * 3 < arg1.state.lastCanvasPosition.Y then
		return false
	end
	if arg1.state.lastCanvasPosition.Y + arg1.state.containerSizeY < arg2 - arg3 * 3 then
		return false
	end
	return true
end
function any_extend_result1.isPastEndOfContent(arg1, arg2, arg3) -- Line 135
	if arg1.state.lastCanvasPosition.Y + arg1.state.containerSizeY < arg2 - arg3 * 3 then
		return true
	end
	return false
end
local WithLayoutValues_upvr = require(Parent_2.Parent.Connection.LayoutValues).WithLayoutValues
local withStyle_upvr = require(CorePackages.Packages.UIBlox).Style.withStyle
local FFlagPlayerListReduceRerenders_upvr = require(Parent.Flags.FFlagPlayerListReduceRerenders)
local PlayerEntry_upvr = require(script.Parent.PlayerEntry)
local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
local TitleBar_upvr = require(script.Parent.TitleBar)
local GetFakeNeutralTeam_upvr = require(Parent.GetFakeNeutralTeam)
local TeamEntry_upvr = require(script.Parent.TeamEntry)
local FFlagPlayerListFixMobileScrolling_upvr = require(Parent.Flags.FFlagPlayerListFixMobileScrolling)
function any_extend_result1.render(arg1) -- Line 144
	--[[ Upvalues[10]:
		[1]: WithLayoutValues_upvr (readonly)
		[2]: withStyle_upvr (readonly)
		[3]: FFlagPlayerListReduceRerenders_upvr (readonly)
		[4]: Roact_upvr (readonly)
		[5]: PlayerEntry_upvr (readonly)
		[6]: LocalPlayer_upvr (readonly)
		[7]: TitleBar_upvr (readonly)
		[8]: GetFakeNeutralTeam_upvr (readonly)
		[9]: TeamEntry_upvr (readonly)
		[10]: FFlagPlayerListFixMobileScrolling_upvr (readonly)
	]]
	return WithLayoutValues_upvr(function(arg1_4) -- Line 145
		--[[ Upvalues[10]:
			[1]: withStyle_upvr (copied, readonly)
			[2]: FFlagPlayerListReduceRerenders_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: Roact_upvr (copied, readonly)
			[5]: PlayerEntry_upvr (copied, readonly)
			[6]: LocalPlayer_upvr (copied, readonly)
			[7]: TitleBar_upvr (copied, readonly)
			[8]: GetFakeNeutralTeam_upvr (copied, readonly)
			[9]: TeamEntry_upvr (copied, readonly)
			[10]: FFlagPlayerListFixMobileScrolling_upvr (copied, readonly)
		]]
		return withStyle_upvr(function(arg1_5) -- Line 146
			--[[ Upvalues[10]:
				[1]: arg1_4 (readonly)
				[2]: FFlagPlayerListReduceRerenders_upvr (copied, readonly)
				[3]: arg1 (copied, readonly)
				[4]: Roact_upvr (copied, readonly)
				[5]: PlayerEntry_upvr (copied, readonly)
				[6]: LocalPlayer_upvr (copied, readonly)
				[7]: TitleBar_upvr (copied, readonly)
				[8]: GetFakeNeutralTeam_upvr (copied, readonly)
				[9]: TeamEntry_upvr (copied, readonly)
				[10]: FFlagPlayerListFixMobileScrolling_upvr (copied, readonly)
			]]
			-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
			-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
			local var39_upvw = 0
			local function _() -- Line 152, Named "getLayoutOrder"
				--[[ Upvalues[1]:
					[1]: var39_upvw (read and write)
				]]
				var39_upvw += 1
				return var39_upvw
			end
			-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [18] 15. Error Block 103 start (CF ANALYSIS FAILED)
			for _, v in arg1.props.gameStats do
				table.insert({}, v.name)
				local _
			end
			-- KONSTANTERROR: [18] 15. Error Block 103 end (CF ANALYSIS FAILED)
		end)
	end)
end
local GuiService_upvr = game:GetService("GuiService")
local UserInputService_upvr = game:GetService("UserInputService")
function any_extend_result1.didUpdate(arg1, arg2) -- Line 326
	--[[ Upvalues[2]:
		[1]: GuiService_upvr (readonly)
		[2]: UserInputService_upvr (readonly)
	]]
	if arg1.props.isVisible ~= arg2.isVisible then
		if arg1.props.isVisible then
			if arg1.props.isTenFootInterface and arg1.props.isUsingGamepad then
				GuiService_upvr.SelectedCoreObject = arg1.firstPlayerRef.current
				UserInputService_upvr.OverrideMouseIconBehavior = Enum.OverrideMouseIconBehavior.ForceHide
				-- KONSTANTWARNING: GOTO [70] #44
			end
		else
			if arg1.props.isTenFootInterface and arg1.props.isUsingGamepad then
				UserInputService_upvr.OverrideMouseIconBehavior = Enum.OverrideMouseIconBehavior.None
			end
			if GuiService_upvr.SelectedCoreObject and GuiService_upvr.SelectedCoreObject:IsDescendantOf(arg1.scrollingFrameRef.current) then
				GuiService_upvr.SelectedCoreObject = nil
			end
		end
	end
	if arg1.props.isMinimized ~= arg2.isMinimized then
		arg1:setState({
			contentsVisible = not arg1.props.isMinimized;
		})
	end
end
return require(CorePackages.Packages.RoactRodux).connect(function(arg1) -- Line 353, Named "mapStateToProps"
	return {
		isVisible = arg1.displayOptions.isVisible;
		isMinimized = arg1.displayOptions.isMinimized;
		isTenFootInterface = arg1.displayOptions.isTenFootInterface;
		isUsingGamepad = arg1.displayOptions.isUsingGamepad;
		gameStats = arg1.gameStats;
		teamNames = arg1.teamNames;
		teamColors = arg1.teamColors;
		playerStats = arg1.playerStats;
		playerIconInfo = arg1.playerIconInfo;
		playerRelationship = arg1.playerRelationship;
		playerTeam = arg1.playerTeam;
		dropDownPlayer = arg1.playerDropDown.selectedPlayer;
		dropDownVisible = arg1.playerDropDown.isVisible;
	}
end, nil)(any_extend_result1)