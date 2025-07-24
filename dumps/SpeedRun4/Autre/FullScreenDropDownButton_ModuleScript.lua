-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:01:10
-- Luau version 6, Types version 3
-- Time taken: 0.008266 seconds

local CorePackages = game:GetService("CorePackages")
local RobloxGui_upvr = game:GetService("CoreGui").RobloxGui
local Roact_upvr = require(CorePackages.Packages.Roact)
local Constants_upvr = require(script.Parent.Parent.Constants)
local DropDownArrowHeight_upvr = Constants_upvr.GeneralFormatting.DropDownArrowHeight
local any_extend_result1 = Roact_upvr.Component:extend("FullScreenDropDownButton")
function any_extend_result1.init(arg1) -- Line 19
	--[[ Upvalues[1]:
		[1]: RobloxGui_upvr (readonly)
	]]
	function arg1.startDropDownView() -- Line 20
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:setState({
			selectionScreenExpanded = true;
		})
	end
	function arg1.noSelection(arg1_2, arg2) -- Line 26
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg2.UserInputType == Enum.UserInputType.MouseButton1 or arg2.UserInputType == Enum.UserInputType.Touch and arg2.UserInputState == Enum.UserInputState.End then
			arg1:setState({
				selectionScreenExpanded = false;
			})
		end
	end
	arg1.state = {
		selectionScreenExpanded = false;
		guiSizeY = RobloxGui_upvr.AbsoluteSize.Y;
	}
end
local DropDownEntryHeight_upvr = Constants_upvr.GeneralFormatting.DropDownEntryHeight
local ExternalEventConnection_upvr = require(CorePackages.Workspace.Packages.RoactUtils).ExternalEventConnection
local var14_upvr = DropDownArrowHeight_upvr / 2
local DownArrow_upvr = Constants_upvr.Image.DownArrow
function any_extend_result1.render(arg1) -- Line 43
	--[[ Upvalues[8]:
		[1]: Roact_upvr (readonly)
		[2]: Constants_upvr (readonly)
		[3]: DropDownEntryHeight_upvr (readonly)
		[4]: ExternalEventConnection_upvr (readonly)
		[5]: RobloxGui_upvr (readonly)
		[6]: DropDownArrowHeight_upvr (readonly)
		[7]: var14_upvr (readonly)
		[8]: DownArrow_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local dropDownList = arg1.props.dropDownList
	local selectionScreenExpanded = arg1.state.selectionScreenExpanded
	local portalTarget = arg1.props.portalTarget
	local tbl_14 = {}
	local var62 = 16
	if selectionScreenExpanded then
		tbl_14.UIListLayout = Roact_upvr.createElement("UIListLayout", {
			HorizontalAlignment = Enum.HorizontalAlignment.Center;
			SortOrder = Enum.SortOrder.LayoutOrder;
			VerticalAlignment = Enum.VerticalAlignment.Top;
			FillDirection = Enum.FillDirection.Vertical;
		})
		if dropDownList then
			for i_upvr, v in ipairs(dropDownList) do
				if i_upvr ~= arg1.props.selectedIndex or not Constants_upvr.Color.SelectedGray then
				end
				local tbl_4 = {
					Text = v;
					Font = Constants_upvr.Font.TabBar;
					TextSize = Constants_upvr.DefaultFontSize.DropDownTabBar;
					TextColor3 = Constants_upvr.Color.Text;
					AutoButtonColor = false;
					Size = UDim2.new(1, 0, 0, DropDownEntryHeight_upvr);
					BackgroundColor3 = Constants_upvr.Color.UnselectedGray;
					LayoutOrder = i_upvr;
					BorderSizePixel = 0;
				}
				local onSelection_upvr_2 = arg1.props.onSelection
				tbl_4[Roact_upvr.Event.Activated] = function(arg1_4) -- Line 80
					--[[ Upvalues[3]:
						[1]: arg1 (readonly)
						[2]: onSelection_upvr_2 (readonly)
						[3]: i_upvr (readonly)
					]]
					arg1:setState({
						selectionScreenExpanded = false;
					})
					onSelection_upvr_2(i_upvr)
				end
				tbl_14[i_upvr] = Roact_upvr.createElement("TextButton", tbl_4)
				var62 += DropDownEntryHeight_upvr
			end
		end
	end
	local var71
	local module = {
		SizeChangeEvent = Roact_upvr.createElement(ExternalEventConnection_upvr, {
			event = RobloxGui_upvr:GetPropertyChangedSignal("AbsoluteSize");
			callback = function() -- Line 106, Named "callback"
				--[[ Upvalues[2]:
					[1]: arg1 (readonly)
					[2]: RobloxGui_upvr (copied, readonly)
				]]
				arg1:setState({
					guiSizeY = RobloxGui_upvr.AbsoluteSize.Y;
				})
			end;
		});
	}
	local tbl_7 = {
		Size = UDim2.new(1, -DropDownArrowHeight_upvr - var14_upvr, 1, 0);
	}
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	tbl_7.Text = dropDownList[arg1.props.selectedIndex]
	tbl_7.Font = Constants_upvr.Font.TabBar
	tbl_7.TextSize = Constants_upvr.DefaultFontSize.DropDownTabBar
	tbl_7.TextXAlignment = Enum.TextXAlignment.Center
	tbl_7.TextColor3 = Constants_upvr.Color.Text
	tbl_7.BackgroundTransparency = 1
	module.text = Roact_upvr.createElement("TextLabel", tbl_7)
	module.arrow = Roact_upvr.createElement("ImageLabel", {
		Image = DownArrow_upvr;
		BackgroundTransparency = 1;
		Size = UDim2.new(0, DropDownArrowHeight_upvr, 0, DropDownArrowHeight_upvr);
		Position = UDim2.new(1, -DropDownArrowHeight_upvr - var14_upvr, 0.5, -var14_upvr);
	})
	if selectionScreenExpanded then
		local tbl_17 = {}
		if portalTarget == nil or not portalTarget then
		end
		tbl_17.target = game:GetService("CoreGui").DevConsoleMaster
	end
	module.selectionView = Roact_upvr.createElement(Roact_upvr.Portal, tbl_17, {
		GreyOutFrame = Roact_upvr.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0);
			BackgroundColor3 = Constants_upvr.Color.Black;
			BackgroundTransparency = 0.36;
			Active = true;
			[Roact_upvr.Event.InputEnded] = arg1.noSelection;
		}, {
			BorderFrame = Roact_upvr.createElement("Frame", {
				Size = UDim2.new(0, 375, 0, var62);
				Position = UDim2.new(0.5, -187.5, 0, 0);
				BackgroundColor3 = Constants_upvr.Color.UnselectedGray;
				BorderSizePixel = 0;
			}, {
				SelectionFrame = Roact_upvr.createElement("ScrollingFrame", {
					Size = UDim2.new(1, -30, 1, -16);
					Position = UDim2.new(0, 15, 0, 8);
					BackgroundTransparency = 1;
					CanvasSize = UDim2.new(1, -30, 1, var62 - 16 - arg1.state.guiSizeY);
					BorderSizePixel = 0;
					ScrollBarThickness = 0;
				}, tbl_14);
			});
		});
	})
	return Roact_upvr.createElement("TextButton", {
		Size = arg1.props.buttonSize;
		BackgroundColor3 = Constants_upvr.Color.UnselectedGray;
		Text = "";
		AutoButtonColor = false;
		LayoutOrder = arg1.props.layoutOrder;
		[Roact_upvr.Event.Activated] = arg1.startDropDownView;
	}, module)
end
return any_extend_result1