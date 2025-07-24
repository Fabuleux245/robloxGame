-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:48:20
-- Luau version 6, Types version 3
-- Time taken: 0.011138 seconds

local CorePackages = game:GetService("CorePackages")
local Roact_upvr = require(CorePackages.Packages.Roact)
local Otter_upvr = require(CorePackages.Packages.Otter)
local Modules = game:GetService("CoreGui").RobloxGui.Modules
local Constants_upvr = require(Modules.TopBar.Constants)
local var6_upvr = require(Modules.Chrome.Enabled)()
local Parent_2 = script.Parent
local Parent = Parent_2.Parent.Parent
local FFlagPlayerListClosedNoRender_upvr = require(Parent.Flags.FFlagPlayerListClosedNoRender)
local Connection = Parent.Components.Connection
local tbl_6_upvr = {
	dampingRatio = 1;
	frequency = 4;
}
local function _(arg1, arg2, arg3, arg4, arg5) -- Line 52, Named "map"
	return (arg1 - arg2) * (arg5 - arg4) / (arg3 - arg2) + arg4
end
local any_extend_result1 = Roact_upvr.PureComponent:extend("PlayerListApp")
local function playerListSizeFromViewportSize_upvr(arg1) -- Line 58, Named "playerListSizeFromViewportSize"
	--[[ Upvalues[2]:
		[1]: var6_upvr (readonly)
		[2]: Constants_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local minimum = math.min(arg1.x, arg1.y)
	local maximum = math.max(arg1.x, arg1.y)
	local clamped_2 = math.clamp((minimum - 320) * 60 / 55 + 270, math.min(270, minimum - 24), 500)
	local clamped = math.clamp((maximum - 480) * 46 / 190 + 434, math.min(434, maximum - 24), 600)
	local var17
	if arg1.y >= var17 or not clamped then
	end
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var17 = clamped
		return var17
	end
	if arg1.x >= arg1.y or not INLINED() then
		var17 = clamped_2
	end
	if var6_upvr and arg1.y < arg1.x then
		var17 -= Constants_upvr.TopBarHeight - 24
	end
	return UDim2.fromOffset(clamped_2, var17)
end
local function _(arg1) -- Line 89, Named "shouldShowNeutralTeam"
	for _, v in ipairs(arg1) do
		if v.Team == nil then
			return true
		end
	end
	return false
end
local function getTeamCount_upvr(arg1, arg2) -- Line 98, Named "getTeamCount"
	-- KONSTANTERROR: [0] 1. Error Block 19 start (CF ANALYSIS FAILED)
	local tbl_4 = {}
	local var31
	for _, v_2 in pairs(arg1) do
		if not tbl_4[v_2.TeamColor.Number] then
			tbl_4[v_2.TeamColor.Number] = true
			var31 += 1
		end
	end
	-- KONSTANTERROR: [0] 1. Error Block 19 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [39] 28. Error Block 21 start (CF ANALYSIS FAILED)
	if false then
		var31 += 1
	end
	-- KONSTANTERROR: [39] 28. Error Block 21 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [42] 31. Error Block 13 start (CF ANALYSIS FAILED)
	do
		return var31
	end
	-- KONSTANTERROR: [42] 31. Error Block 13 end (CF ANALYSIS FAILED)
end
function any_extend_result1.init(arg1) -- Line 113
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: Otter_upvr (readonly)
		[3]: FFlagPlayerListClosedNoRender_upvr (readonly)
	]]
	arg1.state = {
		visible = false;
	}
	local any_createBinding_result1, any_createBinding_result2 = Roact_upvr.createBinding(0.5)
	arg1.bodyTransparency = any_createBinding_result1
	arg1.updateBodyTransparency = any_createBinding_result2
	arg1.bodyTransparencyMotor = Otter_upvr.createSingleMotor(1)
	arg1.bodyTransparencyMotor:onStep(function(arg1_2) -- Line 120
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: FFlagPlayerListClosedNoRender_upvr (copied, readonly)
		]]
		arg1.updateBodyTransparency(arg1_2)
		if not FFlagPlayerListClosedNoRender_upvr then
			if arg1_2 < 0.5 and arg1.props.displayOptions.isVisible then
				if not arg1.state.visible then
					arg1:setState({
						visible = true;
					})
					-- KONSTANTWARNING: GOTO [47] #35
				end
			elseif arg1.state.visible then
				arg1:setState({
					visible = false;
				})
			end
		end
		local var38 = true
		if arg1_2 >= 0.99 then
			var38 = arg1.props.displayOptions.isVisible
		end
		arg1.props.setLayerCollectorEnabled(var38)
	end)
	if FFlagPlayerListClosedNoRender_upvr then
		arg1.bodyTransparencyMotor:onComplete(function() -- Line 138
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			if not arg1.props.displayOptions.isVisible then
				arg1:setState({
					visible = false;
				})
			end
		end)
	end
	local any_createBinding_result1_3, any_createBinding_result2_2 = Roact_upvr.createBinding(0)
	arg1.bgTransparency = any_createBinding_result1_3
	arg1.updateBgTransparency = any_createBinding_result2_2
	arg1.bgTransparencyMotor = Otter_upvr.createSingleMotor(1)
	arg1.bgTransparencyMotor:onStep(arg1.updateBgTransparency)
	local any_createBinding_result1_2, any_createBinding_result2_3 = Roact_upvr.createBinding(1)
	arg1.frameScale = any_createBinding_result1_2
	arg1.updateFrameScale = any_createBinding_result2_3
	arg1.frameScaleMotor = Otter_upvr.createSingleMotor(0)
	arg1.frameScaleMotor:onStep(function(arg1_3) -- Line 153
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.updateFrameScale(arg1_3)
	end)
	arg1.titleRef = Roact_upvr.createRef()
	arg1.closeRef = Roact_upvr.createRef()
end
local AppFonts_upvr = require(CorePackages.Workspace.Packages.Style).AppFonts
local RobloxTranslator_upvr = require(CorePackages.Workspace.Packages.RobloxTranslator)
function any_extend_result1.renderBodyChildren(arg1, arg2, arg3) -- Line 161
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: AppFonts_upvr (readonly)
		[3]: RobloxTranslator_upvr (readonly)
	]]
	local visible = arg1.state.visible
	local isDropDownVisible = arg1.props.isDropDownVisible
	local module_2 = {
		UIScale = Roact_upvr.createElement("UIScale", {
			Scale = arg1.frameScale;
		});
		UICorner = Roact_upvr.createElement("UICorner", {
			CornerRadius = UDim.new(0, 6);
		});
	}
	local tbl_2 = {
		Size = UDim2.new(1, 0, 0, 44);
		Position = UDim2.new(0, 0, 0, 0);
		BackgroundTransparency = 1;
		Font = AppFonts_upvr.default:getBold();
	}
	local var54 = visible
	if var54 then
		var54 = not isDropDownVisible
	end
	tbl_2.Visible = var54
	tbl_2.TextSize = 22
	tbl_2.TextColor3 = Color3.fromRGB(240, 240, 240)
	tbl_2.TextXAlignment = Enum.TextXAlignment.Center
	tbl_2.TextYAlignment = Enum.TextYAlignment.Center
	tbl_2.Text = RobloxTranslator_upvr:FormatByKey("InGame.PlayerList.Leaderboard")
	tbl_2[Roact_upvr.Ref] = arg1.titleRef
	module_2.TitleText = Roact_upvr.createElement("TextLabel", tbl_2)
	local tbl_5 = {
		Image = "rbxasset://textures/ui/InspectMenu/x.png";
		ImageColor3 = Color3.fromRGB(255, 255, 255);
		AnchorPoint = Vector2.new(0, 0.5);
		Size = UDim2.fromOffset(22, 22);
		Position = UDim2.fromOffset(11, 22);
		BackgroundTransparency = 1;
	}
	local var56 = visible
	if var56 then
		var56 = not isDropDownVisible
	end
	tbl_5.Visible = var56
	tbl_5.ZIndex = 0
	tbl_5[Roact_upvr.Ref] = arg1.closeRef
	tbl_5[Roact_upvr.Event.Activated] = function() -- Line 199
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.props.setPlayerListVisible(false)
	end
	module_2.CloseButton = Roact_upvr.createElement("ImageButton", tbl_5)
	local tbl = {
		Position = UDim2.new(0.5, 0, 1, 0);
		AnchorPoint = Vector2.new(0.5, 1);
		Size = UDim2.new(1, 0, 1, -44);
		BackgroundTransparency = 1;
	}
	local var59 = visible
	if var59 then
		var59 = not isDropDownVisible
	end
	tbl.Visible = var59
	tbl.AutoLocalize = false
	module_2.ContentFrame = Roact_upvr.createElement("Frame", tbl, arg3)
	return module_2
end
local ContextActionsBinder_upvr = require(Connection.ContextActionsBinder)
local WithLayoutValues_upvr = require(Connection.LayoutValues).WithLayoutValues
local Players_upvr = game:GetService("Players")
local FFlagUseNewPlayerList_upvr = require(CorePackages.Workspace.Packages.PlayerList).Flags.FFlagUseNewPlayerList
local PlayerListDisplayContainer_upvr = require(Parent.Components.Container.PlayerListDisplayContainer)
local PlayerListSorter_upvr = require(Parent_2.PlayerListSorter)
local EventConnections_upvr = require(Connection.EventConnections)
local TopStatConnector_upvr = require(Connection.TopStatConnector)
local FFlagPlayerListFixMobileScrolling_upvr = require(Parent.Flags.FFlagPlayerListFixMobileScrolling)
local PlayerDropDown_upvr = require(Parent_2.PlayerDropDown)
function any_extend_result1.render(arg1) -- Line 215
	--[[ Upvalues[16]:
		[1]: FFlagPlayerListClosedNoRender_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: ContextActionsBinder_upvr (readonly)
		[4]: WithLayoutValues_upvr (readonly)
		[5]: Players_upvr (readonly)
		[6]: getTeamCount_upvr (readonly)
		[7]: FFlagUseNewPlayerList_upvr (readonly)
		[8]: PlayerListDisplayContainer_upvr (readonly)
		[9]: PlayerListSorter_upvr (readonly)
		[10]: EventConnections_upvr (readonly)
		[11]: TopStatConnector_upvr (readonly)
		[12]: FFlagPlayerListFixMobileScrolling_upvr (readonly)
		[13]: PlayerDropDown_upvr (readonly)
		[14]: var6_upvr (readonly)
		[15]: Constants_upvr (readonly)
		[16]: playerListSizeFromViewportSize_upvr (readonly)
	]]
	if FFlagPlayerListClosedNoRender_upvr and not arg1.state.visible then
		return Roact_upvr.createElement(ContextActionsBinder_upvr)
	end
	return WithLayoutValues_upvr(function(arg1_4) -- Line 219
		--[[ Upvalues[15]:
			[1]: arg1 (readonly)
			[2]: Players_upvr (copied, readonly)
			[3]: getTeamCount_upvr (copied, readonly)
			[4]: Roact_upvr (copied, readonly)
			[5]: FFlagUseNewPlayerList_upvr (copied, readonly)
			[6]: PlayerListDisplayContainer_upvr (copied, readonly)
			[7]: PlayerListSorter_upvr (copied, readonly)
			[8]: EventConnections_upvr (copied, readonly)
			[9]: ContextActionsBinder_upvr (copied, readonly)
			[10]: TopStatConnector_upvr (copied, readonly)
			[11]: FFlagPlayerListFixMobileScrolling_upvr (copied, readonly)
			[12]: PlayerDropDown_upvr (copied, readonly)
			[13]: var6_upvr (copied, readonly)
			[14]: Constants_upvr (copied, readonly)
			[15]: playerListSizeFromViewportSize_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var71
		if arg1_4.IsTenFoot then
			var71 = arg1_4.EntrySizeX
		else
			var71 = arg1_4.EntryBaseSizeX + 4 * arg1_4.EntrySizeIncreasePerStat
			local var72 = (arg1_4.ContainerPadding * 2) + (arg1_4.PlayerDropDownSizeXMobile + arg1_4.PlayerDropDownOffset)
			if arg1.props.screenSizeX - var72 < var71 then
				var71 = arg1.props.screenSizeX - var72
			end
		end
		var72 = false
		local var73 = var72
		if 6 <= Players_upvr.MaxPlayers then
			if Players_upvr.MaxPlayers > 12 then
				var73 = false
			else
				var73 = true
			end
		end
		if var73 then
		end
		local tbl_3 = {}
		if arg1.state.visible then
			local var75 = Roact_upvr
			if FFlagUseNewPlayerList_upvr then
				var75 = PlayerListDisplayContainer_upvr
			else
				var75 = PlayerListSorter_upvr
			end
			tbl_3.PlayerScrollList = var75.createElement(var75, {
				screenSizeY = arg1.props.screenSizeY;
				entrySize = var71;
			})
		end
		tbl_3.EventConnections = Roact_upvr.createElement(EventConnections_upvr)
		tbl_3.ContextActionsBindings = Roact_upvr.createElement(ContextActionsBinder_upvr)
		tbl_3.TopStatConnector = Roact_upvr.createElement(TopStatConnector_upvr)
		local module = {
			PlayerDropDown = Roact_upvr.createElement(PlayerDropDown_upvr, {
				contentsVisible = true;
				selectedPlayer = arg1.props.dropDownPlayer;
			});
		}
		local var81
		if var6_upvr and arg1.props.screenSizeY < arg1.props.screenSizeX then
			var81 = Roact_upvr.createElement
			var81 = var81("UIPadding", {
				PaddingTop = UDim.new(0, Constants_upvr.TopBarHeight);
			})
		else
			var81 = nil
		end
		module.BodyPadding = var81
		var81 = Roact_upvr.createElement
		var81 = var81("Frame", {
			Size = playerListSizeFromViewportSize_upvr(Vector2.new(arg1.props.screenSizeX, arg1.props.screenSizeY));
			AnchorPoint = Vector2.new(0.5, 0.5);
			Position = UDim2.new(0.5, 0, 0.5, 0);
			BackgroundColor3 = Color3.fromRGB(17, 18, 20);
			BackgroundTransparency = arg1.bodyTransparency;
			BorderColor3 = Color3.fromRGB(0, 0, 0);
			BorderSizePixel = 0;
		}, arg1:renderBodyChildren(Players_upvr.MaxPlayers * 26 + getTeamCount_upvr(arg1.props.teams, arg1.props.players) * 20, tbl_3))
		module.BodyBackground = var81
		return Roact_upvr.createElement("ImageButton", {
			Active = arg1.props.displayOptions.isVisible;
			Size = UDim2.new(1, 0, 1, 0);
			Position = UDim2.new(0, 0, 0, 0);
			BackgroundColor3 = Color3.fromRGB(17, 18, 20);
			BackgroundTransparency = arg1.bgTransparency;
			BorderColor3 = Color3.fromRGB(0, 0, 0);
			BorderSizePixel = 0;
			AutoLocalize = false;
			AutoButtonColor = false;
			Selectable = not FFlagPlayerListFixMobileScrolling_upvr;
			Image = "";
			[Roact_upvr.Event.Activated] = function() -- Line 267
				--[[ Upvalues[1]:
					[1]: arg1 (copied, readonly)
				]]
				arg1.props.setPlayerListVisible(false)
			end;
		}, module)
	end)
end
function any_extend_result1.didMount(arg1) -- Line 295
	arg1.props.setLayerCollectorEnabled(false)
	arg1:setState({
		visible = arg1.props.displayOptions.isVisible;
	})
end
function any_extend_result1.willUnmount(arg1) -- Line 302
	arg1.props.setLayerCollectorEnabled(true)
end
local GetFFlagFixDropDownVisibility_upvr = require(Parent.Flags.GetFFlagFixDropDownVisibility)
function any_extend_result1.didUpdate(arg1, arg2, arg3) -- Line 306
	--[[ Upvalues[4]:
		[1]: FFlagPlayerListClosedNoRender_upvr (readonly)
		[2]: Otter_upvr (readonly)
		[3]: tbl_6_upvr (readonly)
		[4]: GetFFlagFixDropDownVisibility_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local isVisible = arg1.props.displayOptions.isVisible
	local isDropDownVisible_2 = arg1.props.isDropDownVisible
	local var88
	if not FFlagPlayerListClosedNoRender_upvr and isVisible ~= arg2.displayOptions.isVisible and not isVisible then
		var88 = {}
		var88.visible = isVisible
		arg1:setState(var88)
	end
	local var89
	if var89 and isVisible then
		var88 = {}
		var88.visible = true
		var89 = arg1:setState
		var89(var88)
	end
	if isDropDownVisible_2 or isVisible then
		var89 = 0.7
	else
		var89 = 1
	end
	arg1.bgTransparencyMotor:setGoal(Otter_upvr.spring(var89, tbl_6_upvr))
	var88 = GetFFlagFixDropDownVisibility_upvr
	if var88 then
		local _ = isDropDownVisible_2 and isVisible
	else
	end
	var88 = 1.25
	if isDropDownVisible_2 then
		var88 = 0.95
	elseif isVisible then
		var88 = 1
	end
	arg1.frameScaleMotor:setGoal(Otter_upvr.spring(var88, tbl_6_upvr))
	local var91 = 1
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	if isDropDownVisible_2 then
		var91 = 0.8 * arg1.props.preferredTransparency
	elseif isVisible then
		var91 = 0.2 * arg1.props.preferredTransparency
	end
	arg1.bodyTransparencyMotor:setGoal(Otter_upvr.spring(var91, tbl_6_upvr))
end
local SetPlayerListVisibility_upvr = require(Parent.Actions.SetPlayerListVisibility)
return require(CorePackages.Packages.RoactRodux).connect(function(arg1) -- Line 350, Named "mapStateToProps"
	return {
		isDropDownVisible = arg1.playerDropDown.isVisible;
		screenSizeX = arg1.screenSize.X;
		screenSizeY = arg1.screenSize.Y;
		preferredTransparency = arg1.settings.preferredTransparency;
		displayOptions = arg1.displayOptions;
		players = arg1.players;
		playerStats = arg1.playerStats;
		playerIconInfo = arg1.playerIconInfo;
		playerRelationship = arg1.playerRelationship;
		gameStats = arg1.gameStats;
		teams = arg1.teams;
	}
end, function(arg1) -- Line 370, Named "mapDispatchToProps"
	--[[ Upvalues[1]:
		[1]: SetPlayerListVisibility_upvr (readonly)
	]]
	return {
		setPlayerListVisible = function(arg1_5) -- Line 372, Named "setPlayerListVisible"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: SetPlayerListVisibility_upvr (copied, readonly)
			]]
			return arg1(SetPlayerListVisibility_upvr(arg1_5))
		end;
	}
end)(any_extend_result1)