-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:01:54
-- Luau version 6, Types version 3
-- Time taken: 0.010454 seconds

local TextService_upvr = game:GetService("TextService")
local Roact_upvr = require(game:GetService("CorePackages").Packages.Roact)
local Constants_upvr = require(script.Parent.Parent.Constants)
local Parent = script.Parent
local any_extend_result1 = Roact_upvr.Component:extend("UtilAndTab")
function any_extend_result1.init(arg1) -- Line 29
	--[[ Upvalues[3]:
		[1]: TextService_upvr (readonly)
		[2]: Constants_upvr (readonly)
		[3]: Roact_upvr (readonly)
	]]
	local var10 = 0
	local var11 = 0
	for i, _ in pairs(arg1.props.tabList) do
		var10 += TextService_upvr:GetTextSize(i, Constants_upvr.DefaultFontSize.TabBar, Constants_upvr.Font.TabBar, Vector2.new(0, 0)).X
		var11 += 1
	end
	function arg1.showSearchBar() -- Line 41
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:setState({
			activeSearchTerm = true;
		})
	end
	function arg1.cancelInput(arg1_2, arg2) -- Line 47
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg2.UserInputType == Enum.UserInputType.MouseButton1 or arg2.UserInputType == Enum.UserInputType.Touch and arg2.UserInputState == Enum.UserInputState.End then
			if arg1.searchRef.current then
				arg1.searchRef.current.Text = ""
			end
			local onSearchTermChanged_2 = arg1.props.onSearchTermChanged
			if onSearchTermChanged_2 then
				onSearchTermChanged_2("")
			end
			arg1:setState({
				activeSearchTerm = false;
			})
		end
	end
	function arg1.focusLost(arg1_3, arg2, arg3) -- Line 68
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg2 then
			local text = arg1_3.text
			local onSearchTermChanged_3 = arg1.props.onSearchTermChanged
			if onSearchTermChanged_3 then
				onSearchTermChanged_3(text)
			end
			if text == "" then
				local _ = false
				-- KONSTANTWARNING: Skipped task `defvar` above
			else
			end
			if arg1.state.activeSearchTerm ~= true then
				local tbl_9 = {}
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				tbl_9.activeSearchTerm = true
				arg1:setState(tbl_9)
			end
		end
	end
	arg1.state = {
		totalTabWidth = var10;
		totalTabCount = var11;
		activeSearchTerm = false;
	}
	arg1.utilRef = Roact_upvr.createRef()
	arg1.searchRef = Roact_upvr.createRef()
end
local TabOverlapThreshold_upvr = Constants_upvr.TabRowFormatting.TabOverlapThreshold
local SmallFrameHeight_upvr = Constants_upvr.UtilityBarFormatting.SmallFrameHeight
local FrameHeight_upvr = Constants_upvr.UtilityBarFormatting.FrameHeight
local ClientServerButtonWidth_upvr = Constants_upvr.UtilityBarFormatting.ClientServerButtonWidth
local MainRowPadding_upvr = Constants_upvr.GeneralFormatting.MainRowPadding
local SmallUtilPadding_upvr = Constants_upvr.UtilityBarFormatting.SmallUtilPadding
local TabDropDownWidth_upvr = Constants_upvr.TabRowFormatting.TabDropDownWidth
local ClientServerDropDownWidth_upvr = Constants_upvr.UtilityBarFormatting.ClientServerDropDownWidth
local TabRowContainer_upvr = require(Parent.TabRowContainer)
local ClientServerButton_upvr = require(Parent.ClientServerButton)
local CheckBoxContainer_upvr = require(Parent.CheckBoxContainer)
local SearchBar_upvr = require(Parent.SearchBar)
local FrameHeight_upvr_2 = Constants_upvr.TabRowFormatting.FrameHeight
function any_extend_result1.render(arg1) -- Line 94
	--[[ Upvalues[16]:
		[1]: TabOverlapThreshold_upvr (readonly)
		[2]: Constants_upvr (readonly)
		[3]: SmallFrameHeight_upvr (readonly)
		[4]: FrameHeight_upvr (readonly)
		[5]: Roact_upvr (readonly)
		[6]: ClientServerButtonWidth_upvr (readonly)
		[7]: MainRowPadding_upvr (readonly)
		[8]: SmallUtilPadding_upvr (readonly)
		[9]: TabDropDownWidth_upvr (readonly)
		[10]: ClientServerDropDownWidth_upvr (readonly)
		[11]: TextService_upvr (readonly)
		[12]: TabRowContainer_upvr (readonly)
		[13]: ClientServerButton_upvr (readonly)
		[14]: CheckBoxContainer_upvr (readonly)
		[15]: SearchBar_upvr (readonly)
		[16]: FrameHeight_upvr_2 (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local windowWidth = arg1.props.windowWidth
	local formFactor = arg1.props.formFactor
	local onClientButton = arg1.props.onClientButton
	local onServerButton = arg1.props.onServerButton
	local onCheckBoxChanged = arg1.props.onCheckBoxChanged
	local activeSearchTerm = arg1.state.activeSearchTerm
	local var45 = false
	local var46
	if (windowWidth - arg1.state.totalTabWidth) / arg1.state.totalTabCount < TabOverlapThreshold_upvr then
		if 0 >= windowWidth then
			var45 = false
		else
			var45 = true
		end
	end
	var46 = Constants_upvr.FormFactor.Small
	if formFactor ~= var46 or not SmallFrameHeight_upvr then
		local var47 = FrameHeight_upvr
	end
	if formFactor == Constants_upvr.FormFactor.Small then
		var46 = 6
	else
		var46 = 7
	end
	if not arg1.props[Roact_upvr.Children] or not math.ceil(#arg1.props[Roact_upvr.Children] / 5) then
		local var48 = 1
	end
	local tbl = {
		Position = UDim2.new(1, -var46 * ClientServerButtonWidth_upvr - MainRowPadding_upvr, 0, 0);
		Size = UDim2.new(0, 5 * ClientServerButtonWidth_upvr, 0, var47 * var48);
		BackgroundTransparency = 1;
	}
	local tbl_4 = {
		Layout = Roact_upvr.createElement("UIGridLayout", {
			CellPadding = UDim2.new(0, MainRowPadding_upvr, 0, 0);
			CellSize = UDim2.new(0, ClientServerButtonWidth_upvr, 0, var47);
			SortOrder = Enum.SortOrder.LayoutOrder;
			HorizontalAlignment = Enum.HorizontalAlignment.Right;
			VerticalAlignment = Enum.VerticalAlignment.Top;
			FillDirectionMaxCells = 5;
		});
	}
	if not arg1.props[Roact_upvr.Children] then
	end
	tbl_4[1] = unpack({})
	local var52
	if formFactor == Constants_upvr.FormFactor.Small or var45 then
		var52 = SmallFrameHeight_upvr
		var52 = SmallUtilPadding_upvr
		local var53 = var52 * var48 + var52
		if activeSearchTerm then
			var52 = SmallFrameHeight_upvr
			var52 = SmallUtilPadding_upvr
			var53 = var53 + var52 + var52
		end
		local var54 = onClientButton and onServerButton
		var52 = windowWidth - SmallFrameHeight_upvr - TabDropDownWidth_upvr
		if var54 then
			var52 -= ClientServerDropDownWidth_upvr
		end
		local var55 = TextService_upvr:GetTextSize("Cancel", Constants_upvr.DefaultFontSize.UtilBar, Constants_upvr.Font.UtilBar, Vector2.new(0, 0)).X + 12
		local module_2 = {}
		local tbl_2 = {}
		local tbl_10 = {
			UIListLayout = Roact_upvr.createElement("UIListLayout", {
				HorizontalAlignment = Enum.HorizontalAlignment.Left;
				SortOrder = Enum.SortOrder.LayoutOrder;
				VerticalAlignment = Enum.VerticalAlignment.Top;
				FillDirection = Enum.FillDirection.Horizontal;
				Padding = UDim.new(0, SmallUtilPadding_upvr);
			});
			Tabs = Roact_upvr.createElement(TabRowContainer_upvr, {
				tabList = arg1.props.tabList;
				windowWidth = windowWidth;
				frameHeight = SmallFrameHeight_upvr;
				formFactor = formFactor;
				layoutOrder = 1;
			});
		}
		local var64 = var54
		if var64 then
			var64 = Roact_upvr.createElement
			var64 = var64(ClientServerButton_upvr, {
				frameHeight = SmallFrameHeight_upvr;
				formFactor = formFactor;
				useDropDown = var45;
				isClientView = arg1.props.isClientView;
				layoutOrder = 2;
				onClientButton = onClientButton;
				onServerButton = onServerButton;
			})
		end
		tbl_10.ClientServerButton = var64
		var64 = onCheckBoxChanged
		local var66 = var64
		if var66 then
			var66 = Roact_upvr.createElement
			var66 = var66(CheckBoxContainer_upvr, {
				orderedCheckBoxState = arg1.props.orderedCheckBoxState;
				frameWidth = var52;
				frameHeight = SmallFrameHeight_upvr;
				pos = UDim2.new(0, 2 * ClientServerButtonWidth_upvr + MainRowPadding_upvr, 0, 0);
				layoutOrder = 3;
				onCheckBoxChanged = onCheckBoxChanged;
			})
		end
		tbl_10.FilterCheckBoxes = var66
		tbl_2.MainRow = Roact_upvr.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0);
			BackgroundTransparency = 1;
		}, tbl_10)
		tbl_2.SearchButton = Roact_upvr.createElement("ImageButton", {
			Size = UDim2.new(0, SmallFrameHeight_upvr, 0, SmallFrameHeight_upvr);
			Position = UDim2.new(1, -SmallFrameHeight_upvr, 0, 0);
			BackgroundTransparency = 1;
			Image = Constants_upvr.Image.Search;
			Visible = not activeSearchTerm;
			[Roact_upvr.Event.Activated] = arg1.showSearchBar;
		})
		tbl_2.Buttons = Roact_upvr.createElement("Frame", tbl, tbl_4)
		module_2.MainFrame = Roact_upvr.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, SmallFrameHeight_upvr);
			BackgroundTransparency = 1;
			[Roact_upvr.Ref] = arg1.utilRef;
		}, tbl_2)
		module_2.SearchBarFrame = Roact_upvr.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, SmallFrameHeight_upvr);
			Position = UDim2.new(0, 0, 0, (SmallFrameHeight_upvr + SmallUtilPadding_upvr) * var48);
			Visible = activeSearchTerm;
			BorderSizePixel = 0;
			BackgroundTransparency = 1;
		}, {
			SearchBar = Roact_upvr.createElement(SearchBar_upvr, {
				size = UDim2.new(1, -var55, 0, SmallFrameHeight_upvr);
				searchTerm = arg1.props.searchTerm;
				showClear = activeSearchTerm;
				textSize = Constants_upvr.DefaultFontSize.Search;
				font = Constants_upvr.Font.Search;
				frameHeight = SmallFrameHeight_upvr;
				refForParent = arg1.searchRef;
				cancelInput = arg1.cancelInput;
				focusLost = arg1.focusLost;
			});
			CancelButton = Roact_upvr.createElement("TextButton", {
				Size = UDim2.new(0, var55, 1, 0);
				Position = UDim2.new(1, -var55, 0, 0);
				Text = "Cancel";
				TextSize = Constants_upvr.DefaultFontSize.UtilBar;
				TextColor3 = Constants_upvr.Color.Text;
				Font = Constants_upvr.Font.UtilBar;
				BorderSizePixel = 0;
				BackgroundTransparency = 1;
				[Roact_upvr.Event.Activated] = arg1.cancelInput;
			});
		})
		return Roact_upvr.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, var53);
			BackgroundTransparency = 1;
			LayoutOrder = arg1.props.layoutOrder;
			[Roact_upvr.Ref] = arg1.props.refForParent;
		}, module_2)
	end
	local var73 = onClientButton and onServerButton
	if var73 then
	end
	local module = {
		Size = UDim2.new(1, 0, 0, FrameHeight_upvr_2 + FrameHeight_upvr * var48 + MainRowPadding_upvr);
		BackgroundTransparency = 1;
	}
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	module.LayoutOrder = arg1.props.layoutOrder
	module[Roact_upvr.Ref] = arg1.props.refForParent
	local module_3 = {}
	local tbl_3 = {}
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	tbl_3.tabList = arg1.props.tabList
	tbl_3.windowWidth = windowWidth
	tbl_3.frameHeight = FrameHeight_upvr_2
	tbl_3.formFactor = formFactor
	module_3.Tabs = Roact_upvr.createElement(TabRowContainer_upvr, tbl_3)
	local tbl_11 = {}
	local tbl_7 = {
		UIListLayout = Roact_upvr.createElement("UIListLayout", {
			HorizontalAlignment = Enum.HorizontalAlignment.Left;
			SortOrder = Enum.SortOrder.LayoutOrder;
			VerticalAlignment = Enum.VerticalAlignment.Top;
			FillDirection = Enum.FillDirection.Horizontal;
			Padding = UDim.new(0, SmallUtilPadding_upvr);
		});
	}
	local var82 = var73
	if var82 then
		var82 = Roact_upvr.createElement
		local tbl_6 = {
			formFactor = formFactor;
		}
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		tbl_6.isClientView = arg1.props.isClientView
		tbl_6.onClientButton = onClientButton
		tbl_6.onServerButton = onServerButton
		var82 = var82(ClientServerButton_upvr, tbl_6)
	end
	tbl_7.ClientServerButton = var82
	var82 = onCheckBoxChanged
	local var84 = var82
	if var84 then
		var84 = Roact_upvr.createElement
		local tbl_5 = {}
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		tbl_5.orderedCheckBoxState = arg1.props.orderedCheckBoxState
		tbl_5.frameWidth = windowWidth - SmallUtilPadding_upvr * 3 - 3 * ClientServerButtonWidth_upvr - ClientServerButtonWidth_upvr
		tbl_5.frameHeight = FrameHeight_upvr
		tbl_5.pos = UDim2.new(0, 2 * ClientServerButtonWidth_upvr + MainRowPadding_upvr, 0, 0)
		tbl_5.onCheckBoxChanged = onCheckBoxChanged
		var84 = var84(CheckBoxContainer_upvr, tbl_5)
	end
	tbl_7.FilterCheckBoxes = var84
	tbl_11.MainRow = Roact_upvr.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0);
		BackgroundTransparency = 1;
	}, tbl_7)
	local onSearchTermChanged = arg1.props.onSearchTermChanged
	if onSearchTermChanged then
		onSearchTermChanged = Roact_upvr.createElement
		local tbl_8 = {
			size = UDim2.new(0, 2 * ClientServerButtonWidth_upvr, 0, FrameHeight_upvr);
			pos = UDim2.new(1, -2 * ClientServerButtonWidth_upvr, 0, 0);
		}
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		tbl_8.searchTerm = arg1.props.searchTerm
		tbl_8.showClear = activeSearchTerm
		tbl_8.textSize = Constants_upvr.DefaultFontSize.Search
		tbl_8.font = Constants_upvr.Font.Search
		tbl_8.frameHeight = Constants_upvr.UtilityBarFormatting.FrameHeight
		tbl_8.refForParent = arg1.searchRef
		tbl_8.cancelInput = arg1.cancelInput
		tbl_8.focusLost = arg1.focusLost
		onSearchTermChanged = onSearchTermChanged(SearchBar_upvr, tbl_8)
	end
	tbl_11.SearchBar = onSearchTermChanged
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	tbl_11.Buttons = Roact_upvr.createElement("Frame", tbl, tbl_4)
	module_3.UtilBar = Roact_upvr.createElement("Frame", {
		Position = UDim2.new(0, 4, 0, FrameHeight_upvr_2 + MainRowPadding_upvr);
		Size = UDim2.new(1, -8, 0, FrameHeight_upvr);
		BackgroundTransparency = 1;
		[Roact_upvr.Ref] = arg1.utilRef;
	}, tbl_11)
	return Roact_upvr.createElement("Frame", module, module_3)
end
return any_extend_result1