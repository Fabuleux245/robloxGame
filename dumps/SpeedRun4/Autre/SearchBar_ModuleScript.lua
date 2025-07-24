-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:01:48
-- Luau version 6, Types version 3
-- Time taken: 0.002246 seconds

local Roact_upvr = require(game:GetService("CorePackages").Packages.Roact)
local any_extend_result1 = Roact_upvr.Component:extend("SearchBar")
local Constants_upvr = require(script.Parent.Parent.Constants)
local ScrollingTextBox_upvr = require(script.Parent.ScrollingTextBox)
function any_extend_result1.render(arg1) -- Line 18
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: Constants_upvr (readonly)
		[3]: ScrollingTextBox_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local frameHeight = arg1.props.frameHeight
	local searchTerm = arg1.props.searchTerm
	local var7 = frameHeight * 0.6
	local module = {
		SearchImage = Roact_upvr.createElement("ImageLabel", {
			Name = "SearchIcon";
			Size = UDim2.new(0, var7, 0, var7);
			Position = UDim2.new(0, 10, 0.5, -var7 / 2);
			BackgroundTransparency = 1;
			Image = Constants_upvr.Image.Search;
		});
	}
	local showClear = arg1.props.showClear
	if showClear then
		showClear = Roact_upvr.createElement
		showClear = showClear("ImageButton", {
			Size = UDim2.new(0, -var7, 0, var7);
			Position = UDim2.new(1, -10, 0.5, -var7 / 2);
			BackgroundTransparency = 1;
			Image = Constants_upvr.Image.Clear;
			[Roact_upvr.Event.InputEnded] = arg1.props.cancelInput;
		})
	end
	module.ClearButton = showClear
	local tbl = {}
	if not searchTerm or not searchTerm then
	end
	tbl.Text = ""
	tbl.TextSize = arg1.props.textSize
	tbl.Font = arg1.props.font
	tbl.Size = UDim2.new(1, -(2 * frameHeight), 1, 0)
	tbl.Position = UDim2.new(0, 20 + var7, 0, 0)
	tbl.ShowNativeInput = true
	tbl.TextColor3 = Constants_upvr.Color.Text
	tbl.BackgroundTransparency = 1
	tbl.TextXAlignment = 0
	tbl.ClearTextOnFocus = false
	tbl.PlaceholderText = "Search"
	tbl[Roact_upvr.Ref] = arg1.props.refForParent
	tbl.TextBoxFocusLost = arg1.props.focusLost
	module.InputField = Roact_upvr.createElement(ScrollingTextBox_upvr, tbl)
	return Roact_upvr.createElement("Frame", {
		Size = arg1.props.size;
		Position = arg1.props.pos;
		BackgroundColor3 = Constants_upvr.Color.UnselectedGray;
		BorderColor3 = Constants_upvr.Color.BorderGray;
		Visible = arg1.props.visible;
		LayoutOrder = arg1.props.layoutOrder;
	}, module)
end
return any_extend_result1