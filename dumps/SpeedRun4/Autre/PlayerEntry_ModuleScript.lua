-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:48:19
-- Luau version 6, Types version 3
-- Time taken: 0.007735 seconds

local CorePackages = game:GetService("CorePackages")
local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
local Roact_upvr = require(CorePackages.Packages.Roact)
local t = require(CorePackages.Packages.t)
local Parent_2 = script.Parent.Parent
local Parent = Parent_2.Parent
local FFlagPlayerListReduceRerenders_upvr = require(Parent.Flags.FFlagPlayerListReduceRerenders)
local any_extend_result1 = Roact_upvr.PureComponent:extend("PlayerEntry")
local tbl = {
	topDiv = t.optional(t.boolean);
	bottomDiv = t.optional(t.boolean);
	player = require(game:GetService("CoreGui"):WaitForChild("RobloxGui").Modules.Interfaces.playerInterface);
	titlePlayerEntry = t.boolean;
	entrySize = t.integer;
	layoutOrder = t.optional(t.integer);
	playerStats = t.map(t.string, t.any);
	playerIconInfo = t.strictInterface({
		isPlaceOwner = t.boolean;
		avatarIcon = t.optional(t.table);
		specialGroupIcon = t.optional(t.table);
	});
}
local any_strictInterface_result1 = t.strictInterface({
	isBlocked = t.boolean;
	friendStatus = t.enum(Enum.FriendStatus);
	isFollowing = t.boolean;
	isFollower = t.boolean;
})
tbl.playerRelationship = any_strictInterface_result1
if FFlagPlayerListReduceRerenders_upvr then
	any_strictInterface_result1 = nil
else
	any_strictInterface_result1 = t.array
	any_strictInterface_result1 = any_strictInterface_result1(t.strictInterface({
		name = t.string;
		text = t.string;
		addId = t.integer;
		isPrimary = t.boolean;
		priority = t.number;
	}))
end
tbl.gameStats = any_strictInterface_result1
if FFlagPlayerListReduceRerenders_upvr then
	any_strictInterface_result1 = t.array(t.string)
else
	any_strictInterface_result1 = nil
end
tbl.gameStatNames = any_strictInterface_result1
any_strictInterface_result1 = Roact_upvr.Ref
tbl[any_strictInterface_result1] = t.optional(t.table)
any_strictInterface_result1 = t.optional(t.instanceIsA("Player"))
tbl.selectedPlayer = any_strictInterface_result1
any_strictInterface_result1 = t.boolean
tbl.dropDownOpen = any_strictInterface_result1
any_strictInterface_result1 = t.boolean
tbl.isSmallTouchDevice = any_strictInterface_result1
any_strictInterface_result1 = t.callback
tbl.closeDropDown = any_strictInterface_result1
any_strictInterface_result1 = t.callback
tbl.openDropDown = any_strictInterface_result1
any_strictInterface_result1 = t.optional(t.UDim2)
tbl.Position = any_strictInterface_result1
any_extend_result1.validateProps = t.strictInterface(tbl)
local GetFFlagGateLeaderboardPlayerDropdownViaGUAC_upvr = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagGateLeaderboardPlayerDropdownViaGUAC
local InExperienceCapabilities_upvr = require(CorePackages.Workspace.Packages.InExperienceCapabilities).InExperienceCapabilities
function any_extend_result1.init(arg1) -- Line 91
	--[[ Upvalues[2]:
		[1]: GetFFlagGateLeaderboardPlayerDropdownViaGUAC_upvr (readonly)
		[2]: InExperienceCapabilities_upvr (readonly)
	]]
	arg1.state = {
		isHovered = false;
		isPressed = false;
	}
	function arg1.onActivated() -- Line 97
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: GetFFlagGateLeaderboardPlayerDropdownViaGUAC_upvr (copied, readonly)
			[3]: InExperienceCapabilities_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [6] 5. Error Block 2 start (CF ANALYSIS FAILED)
		arg1.props.closeDropDown()
		do
			return
		end
		-- KONSTANTERROR: [6] 5. Error Block 2 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [13] 10. Error Block 3 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [13] 10. Error Block 3 end (CF ANALYSIS FAILED)
	end
	function arg1.onSelectionGained() -- Line 111
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:setState({
			isHovered = true;
		})
	end
	function arg1.onSelectionLost() -- Line 117
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:setState({
			isHovered = false;
		})
	end
	function arg1.onMouseEnter() -- Line 123
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:setState({
			isHovered = true;
		})
	end
	function arg1.onMouseLeave() -- Line 129
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:setState({
			isHovered = false;
			isPressed = false;
		})
	end
	function arg1.onMouseDown() -- Line 136
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:setState({
			isPressed = true;
		})
	end
	function arg1.onInputEnded() -- Line 142
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:setState({
			isPressed = false;
		})
	end
end
function any_extend_result1.getBackgroundColor(arg1, arg2) -- Line 149
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local isHovered = arg1.state.isHovered
	if not isHovered then
		isHovered = arg1.state.isPressed
	end
	if not isHovered or not arg2.RowHoverColor then
	end
	return arg2.RowDefaultColor
end
function any_extend_result1.getTextStyle(arg1, arg2, arg3) -- Line 154
	--[[ Upvalues[1]:
		[1]: LocalPlayer_upvr (readonly)
	]]
	local var32
	if var32 then
		var32 = arg1.state.isHovered
		if var32 then
			var32 = arg2.HoveredTextStyle
			return var32, arg2.PlayerNameTextSizeMobile
		end
		var32 = arg2.DefaultTextStyle
		return var32, arg2.PlayerNameTextSizeMobile
	end
	if arg1.props.player ~= LocalPlayer_upvr then
		var32 = false
	else
		var32 = true
	end
	if var32 then
		return arg3.Theme.TextEmphasis
	end
	return arg3.Theme.TextDefault
end
local AppFonts_upvr = require(CorePackages.Workspace.Packages.Style).AppFonts
function any_extend_result1.getPlayerNameFont(arg1, arg2, arg3) -- Line 170
	--[[ Upvalues[2]:
		[1]: LocalPlayer_upvr (readonly)
		[2]: AppFonts_upvr (readonly)
	]]
	local var34
	if arg1.props.player ~= LocalPlayer_upvr then
		var34 = false
	else
		var34 = true
	end
	if var34 then
		return {
			Font = AppFonts_upvr.default:getMedium();
			Size = arg3.Font.CaptionHeader.RelativeSize * arg3.Font.BaseSize;
			MinSize = arg3.Font.Footer.RelativeMinSize * arg3.Font.BaseSize;
		}
	end
	return {
		Font = AppFonts_upvr.default:getDefault();
		Size = arg3.Font.CaptionBody.RelativeSize * arg3.Font.BaseSize;
		MinSize = arg3.Font.Footer.RelativeMinSize * arg3.Font.BaseSize;
	}
end
local WithLayoutValues_upvr = require(Parent_2.Connection.LayoutValues).WithLayoutValues
local withStyle_upvr = require(CorePackages.Packages.UIBlox).Style.withStyle
local PlayerIcon_upvr = require(Parent_2.PresentationCommon.PlayerIcon)
local PlayerNameTag_upvr = require(script.Parent.PlayerNameTag)
local StatEntry_upvr = require(script.Parent.StatEntry)
function any_extend_result1.render(arg1) -- Line 187
	--[[ Upvalues[7]:
		[1]: WithLayoutValues_upvr (readonly)
		[2]: withStyle_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: PlayerIcon_upvr (readonly)
		[5]: PlayerNameTag_upvr (readonly)
		[6]: FFlagPlayerListReduceRerenders_upvr (readonly)
		[7]: StatEntry_upvr (readonly)
	]]
	return WithLayoutValues_upvr(function(arg1_2) -- Line 188
		--[[ Upvalues[7]:
			[1]: withStyle_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: Roact_upvr (copied, readonly)
			[4]: PlayerIcon_upvr (copied, readonly)
			[5]: PlayerNameTag_upvr (copied, readonly)
			[6]: FFlagPlayerListReduceRerenders_upvr (copied, readonly)
			[7]: StatEntry_upvr (copied, readonly)
		]]
		return withStyle_upvr(function(arg1_3) -- Line 189
			--[[ Upvalues[7]:
				[1]: arg1 (copied, readonly)
				[2]: arg1_2 (readonly)
				[3]: Roact_upvr (copied, readonly)
				[4]: PlayerIcon_upvr (copied, readonly)
				[5]: PlayerNameTag_upvr (copied, readonly)
				[6]: FFlagPlayerListReduceRerenders_upvr (copied, readonly)
				[7]: StatEntry_upvr (copied, readonly)
			]]
			-- KONSTANTERROR: [173] 116. Error Block 5 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [173] 116. Error Block 5 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [0] 1. Error Block 32 start (CF ANALYSIS FAILED)
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [173.4]
			if nil then
				-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [173.9]
				-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [173.3277988]
				-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [173.7]
				if nil >= nil then
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [173.5]
					-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [173.6]
					-- KONSTANTWARNING: GOTO [134] #90
				end
			else
				for i, v in ipairs(arg1.props.gameStats) do
					if arg1_2.MaxLeaderstats < i then break end
					local tbl_2 = {
						statValue = arg1.props.playerStats[v.name];
						isTitleEntry = arg1.props.titlePlayerEntry;
						isTeamEntry = false;
						layoutOrder = i;
					}
					-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [219.1]
					tbl_2.textStyle = nil
					-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [222.3]
					nil["GameStat_"..v.name] = Roact_upvr.createElement(StatEntry_upvr, tbl_2)
				end
			end
			-- KONSTANTERROR: [0] 1. Error Block 32 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [225] 150. Error Block 24 start (CF ANALYSIS FAILED)
			i = arg1
			v = arg1
			i = v.props
			i = Roact_upvr
			i = "ImageButton"
			v = {}
			local var52 = v
			var52.Position = arg1.props.Position
			var52.Size = UDim2.new(1, arg1_2.EntryXOffset, 0, arg1_2.PlayerEntrySizeY)
			var52.AutoButtonColor = false
			var52.BackgroundColor3 = arg1:getBackgroundColor(arg1_2)
			var52.BackgroundTransparency = 0.8
			var52.BorderSizePixel = 0
			var52.Image = ""
			var52.LayoutOrder = arg1.props.layoutOrder
			var52[Roact_upvr.Event.Activated] = arg1.onActivated
			var52[Roact_upvr.Event.SelectionGained] = arg1.onSelectionGained
			var52[Roact_upvr.Event.SelectionLost] = arg1.onSelectionLost
			var52[Roact_upvr.Event.MouseButton1Down] = arg1.onMouseDown
			var52[Roact_upvr.Event.InputEnded] = arg1.onInputEnded
			local module = {}
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			module.ChildrenFrame = Roact_upvr.createElement("Frame", {
				Size = UDim2.fromScale(1, 1);
				Position = UDim2.new(0, 0, 0, 0);
				BackgroundTransparency = 1;
			}, nil)
			local function INLINED() -- Internal function, doesn't exist in bytecode
				tbl_3.BackgroundTransparency = 0.8
				tbl_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				tbl_3.AnchorPoint = Vector2.new(0, 0)
				tbl_3.Position = UDim2.new(0, 0, 0, 0)
				tbl_3.Size = UDim2.new(1, 0, 0, 1)
				local tbl_3 = {}
				return Roact_upvr.createElement("Frame", tbl_3)
			end
			if not (i.props.topDiv or false) or not INLINED() then
			end
			module.TopDiv = nil
			local function INLINED_2() -- Internal function, doesn't exist in bytecode
				tbl_4.BackgroundTransparency = 0.8
				tbl_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				tbl_4.AnchorPoint = Vector2.new(0, 1)
				tbl_4.Position = UDim2.new(0, 0, 1, 0)
				tbl_4.Size = UDim2.new(1, 0, 0, 1)
				local tbl_4 = {}
				return Roact_upvr.createElement("Frame", tbl_4)
			end
			if not (i.bottomDiv or false) or not INLINED_2() then
			end
			module.BottomDiv = nil
			do
				return i.createElement(i, var52, module)
			end
			-- KONSTANTERROR: [225] 150. Error Block 24 end (CF ANALYSIS FAILED)
		end)
	end)
end
local ClosePlayerDropDown_upvr = require(Parent.Actions.ClosePlayerDropDown)
local OpenPlayerDropDown_upvr = require(Parent.Actions.OpenPlayerDropDown)
if FFlagPlayerListReduceRerenders_upvr then
	any_strictInterface_result1 = require(CorePackages.Packages.React).memo
	any_strictInterface_result1 = any_strictInterface_result1(require(CorePackages.Packages.RoactRodux).connect(function(arg1) -- Line 295, Named "mapStateToProps"
		return {
			selectedPlayer = arg1.playerDropDown.selectedPlayer;
			dropDownOpen = arg1.playerDropDown.isVisible;
			isSmallTouchDevice = arg1.displayOptions.isSmallTouchDevice;
		}
	end, function(arg1) -- Line 304, Named "mapDispatchToProps"
		--[[ Upvalues[2]:
			[1]: ClosePlayerDropDown_upvr (readonly)
			[2]: OpenPlayerDropDown_upvr (readonly)
		]]
		return {
			closeDropDown = function() -- Line 306, Named "closeDropDown"
				--[[ Upvalues[2]:
					[1]: arg1 (readonly)
					[2]: ClosePlayerDropDown_upvr (copied, readonly)
				]]
				return arg1(ClosePlayerDropDown_upvr())
			end;
			openDropDown = function(arg1_4) -- Line 309, Named "openDropDown"
				--[[ Upvalues[2]:
					[1]: arg1 (readonly)
					[2]: OpenPlayerDropDown_upvr (copied, readonly)
				]]
				return arg1(OpenPlayerDropDown_upvr(arg1_4))
			end;
		}
	end)(any_extend_result1), require(Parent.createShallowEqualAndTables)({"gameStatNames"}))
	return any_strictInterface_result1
end
any_strictInterface_result1 = require(CorePackages.Packages.RoactRodux).connect(function(arg1) -- Line 295, Named "mapStateToProps"
	return {
		selectedPlayer = arg1.playerDropDown.selectedPlayer;
		dropDownOpen = arg1.playerDropDown.isVisible;
		isSmallTouchDevice = arg1.displayOptions.isSmallTouchDevice;
	}
end, function(arg1) -- Line 304, Named "mapDispatchToProps"
	--[[ Upvalues[2]:
		[1]: ClosePlayerDropDown_upvr (readonly)
		[2]: OpenPlayerDropDown_upvr (readonly)
	]]
	return {
		closeDropDown = function() -- Line 306, Named "closeDropDown"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: ClosePlayerDropDown_upvr (copied, readonly)
			]]
			return arg1(ClosePlayerDropDown_upvr())
		end;
		openDropDown = function(arg1_4) -- Line 309, Named "openDropDown"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: OpenPlayerDropDown_upvr (copied, readonly)
			]]
			return arg1(OpenPlayerDropDown_upvr(arg1_4))
		end;
	}
end)(any_extend_result1)
return any_strictInterface_result1