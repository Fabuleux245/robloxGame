-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:01:09
-- Luau version 6, Types version 3
-- Time taken: 0.006838 seconds

local Roact_upvr = require(game:GetService("CorePackages").Packages.Roact)
local Constants_upvr = require(script.Parent.Parent.Constants)
local DropDownArrowHeight_upvr = Constants_upvr.GeneralFormatting.DropDownArrowHeight
local any_extend_result1 = Roact_upvr.Component:extend("DropDown")
function any_extend_result1.init(arg1) -- Line 16
	--[[ Upvalues[1]:
		[1]: Roact_upvr (readonly)
	]]
	function arg1.onMainButtonPressed(arg1_2, arg2) -- Line 17
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:setState({
			showDropDown = true;
		})
	end
	function arg1.nonDropDownSelection(arg1_3, arg2) -- Line 23
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg2.UserInputType == Enum.UserInputType.MouseButton1 or arg2.UserInputType == Enum.UserInputType.Touch and arg2.UserInputState == Enum.UserInputState.End then
			arg1:setState({
				showDropDown = false;
			})
		end
	end
	arg1.state = {
		showDropDown = false;
	}
	arg1.ref = Roact_upvr.createRef()
end
local UtilBar_upvr_2 = Constants_upvr.DefaultFontSize.UtilBar
local UtilBar_upvr = Constants_upvr.Font.UtilBar
local DownArrow_upvr = Constants_upvr.Image.DownArrow
local var13_upvr = DropDownArrowHeight_upvr / 2
function any_extend_result1.render(arg1) -- Line 41
	--[[ Upvalues[7]:
		[1]: Roact_upvr (readonly)
		[2]: Constants_upvr (readonly)
		[3]: UtilBar_upvr_2 (readonly)
		[4]: UtilBar_upvr (readonly)
		[5]: DownArrow_upvr (readonly)
		[6]: DropDownArrowHeight_upvr (readonly)
		[7]: var13_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local dropDownList = arg1.props.dropDownList
	local dropDownTargetParent = arg1.props.dropDownTargetParent
	local var24
	if var24 then
		var24 = arg1.state.showDropDown
	end
	local tbl = {}
	local var26
	local var27
	if arg1.ref.current and var24 then
		local AbsolutePosition = arg1.ref.current.AbsolutePosition
		local AbsoluteSize = arg1.ref.current.AbsoluteSize
		local X = AbsoluteSize.X
		tbl.UIListLayout = Roact_upvr.createElement("UIListLayout", {
			HorizontalAlignment = Enum.HorizontalAlignment.Left;
			SortOrder = Enum.SortOrder.LayoutOrder;
			VerticalAlignment = Enum.VerticalAlignment.Top;
		})
		local var35
		for i_upvr, v in pairs(dropDownList) do
			local function INLINED() -- Internal function, doesn't exist in bytecode
				var35 = Constants_upvr.Color.SelectedGray
				return var35
			end
			if i_upvr ~= arg1.props.selectedIndex or not INLINED() then
				var35 = Constants_upvr.Color.UnselectedGray
			end
			local tbl_2 = {
				Size = arg1.props.buttonSize;
				Text = v;
				TextColor3 = Constants_upvr.Color.Text;
				TextSize = UtilBar_upvr_2;
				Font = UtilBar_upvr;
				AutoButtonColor = false;
				BackgroundColor3 = var35;
				BackgroundTransparency = 0;
				BorderSizePixel = 0;
				LayoutOrder = i_upvr;
			}
			local onSelection_upvr = arg1.props.onSelection
			tbl_2[Roact_upvr.Event.Activated] = function() -- Line 88
				--[[ Upvalues[3]:
					[1]: onSelection_upvr (readonly)
					[2]: i_upvr (readonly)
					[3]: arg1 (readonly)
				]]
				onSelection_upvr(i_upvr)
				arg1:setState({
					showDropDown = false;
				})
			end
			tbl[v] = Roact_upvr.createElement("TextButton", tbl_2)
			var27 += AbsoluteSize.Y
		end
		var26 = UDim2.new(0, X + 24, 0, var27 + 24)
	end
	local module_2 = {}
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	module_2.Size = arg1.props.buttonSize
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	module_2.Text = dropDownList[arg1.props.selectedIndex]
	module_2.TextColor3 = Constants_upvr.Color.Text
	module_2.TextSize = UtilBar_upvr_2
	module_2.Font = UtilBar_upvr
	module_2.AutoButtonColor = false
	module_2.BackgroundColor3 = Constants_upvr.Color.UnselectedGray
	module_2.BackgroundTransparency = 0
	module_2.LayoutOrder = arg1.props.layoutOrder
	module_2[Roact_upvr.Event.Activated] = arg1.onMainButtonPressed
	module_2[Roact_upvr.Ref] = arg1.ref
	local module = {
		arrow = Roact_upvr.createElement("ImageLabel", {
			Image = DownArrow_upvr;
			BackgroundTransparency = 1;
			Size = UDim2.new(0, DropDownArrowHeight_upvr, 0, DropDownArrowHeight_upvr);
			Position = UDim2.new(1, -DropDownArrowHeight_upvr - var13_upvr, 0.5, -var13_upvr);
		});
	}
	local var43
	if var24 then
		local tbl_3 = {}
		local function INLINED_2() -- Internal function, doesn't exist in bytecode
			var43 = dropDownTargetParent
			return var43
		end
		if dropDownTargetParent == nil or not INLINED_2() then
			var43 = game:GetService("CoreGui").DevConsoleMaster
		end
		tbl_3.target = var43
		var43 = {}
		var43.InputCatcher = Roact_upvr.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0);
			Position = UDim2.new(0, 0, 0, 0);
			BackgroundTransparency = 1;
			[Roact_upvr.Event.InputEnded] = arg1.nonDropDownSelection;
		}, {
			OuterFrame = Roact_upvr.createElement("ImageButton", {
				Size = var26;
				AutoButtonColor = false;
				Position = UDim2.new(0, AbsolutePosition.X, 0, AbsolutePosition.Y + AbsoluteSize.Y);
				BackgroundColor3 = Constants_upvr.Color.TextBoxGray;
				BackgroundTransparency = 0;
			}, {
				innerFrame = Roact_upvr.createElement("Frame", {
					Position = UDim2.new(0, 12, 0, 12);
					Size = UDim2.new(0, X, 0, var27);
					BackgroundTransparency = 1;
				}, tbl);
			});
		})
	end
	module.DropDown = Roact_upvr.createElement(Roact_upvr.Portal, tbl_3, var43)
	return Roact_upvr.createElement("TextButton", module_2, module)
end
return any_extend_result1