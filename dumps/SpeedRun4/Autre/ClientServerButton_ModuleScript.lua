-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:01:02
-- Luau version 6, Types version 3
-- Time taken: 0.002479 seconds

local Roact_upvr = require(game:GetService("CorePackages").Packages.Roact)
local Constants_upvr = require(script.Parent.Parent.Constants)
local FrameHeight_upvr = Constants_upvr.UtilityBarFormatting.FrameHeight
local ClientServerButtonWidth_upvr = Constants_upvr.UtilityBarFormatting.ClientServerButtonWidth
local tbl_upvr = {"Client", "Server"}
local any_extend_result1 = Roact_upvr.Component:extend("ClientServerButton")
function any_extend_result1.init(arg1) -- Line 21
	function arg1.dropDownCallback(arg1_2) -- Line 22
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1_2 == 1 then
			arg1.props.onClientButton()
		elseif arg1_2 == 2 then
			arg1.props.onServerButton()
		end
	end
end
local FullScreenDropDownButton_upvr = require(script.Parent.FullScreenDropDownButton)
local ClientServerDropDownWidth_upvr = Constants_upvr.UtilityBarFormatting.ClientServerDropDownWidth
local SmallFrameHeight_upvr = Constants_upvr.UtilityBarFormatting.SmallFrameHeight
local DropDown_upvr = require(script.Parent.DropDown)
local UtilBar_upvr_2 = Constants_upvr.DefaultFontSize.UtilBar
local Text_upvr = Constants_upvr.Color.Text
local UtilBar_upvr = Constants_upvr.Font.UtilBar
local udim2_upvr = UDim2.new(0, ClientServerButtonWidth_upvr, 0, FrameHeight_upvr)
function any_extend_result1.render(arg1) -- Line 31
	--[[ Upvalues[13]:
		[1]: Constants_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: FullScreenDropDownButton_upvr (readonly)
		[4]: ClientServerDropDownWidth_upvr (readonly)
		[5]: SmallFrameHeight_upvr (readonly)
		[6]: tbl_upvr (readonly)
		[7]: DropDown_upvr (readonly)
		[8]: ClientServerButtonWidth_upvr (readonly)
		[9]: FrameHeight_upvr (readonly)
		[10]: UtilBar_upvr_2 (readonly)
		[11]: Text_upvr (readonly)
		[12]: UtilBar_upvr (readonly)
		[13]: udim2_upvr (readonly)
	]]
	local isClientView = arg1.props.isClientView
	local layoutOrder = arg1.props.layoutOrder
	local SelectedBlue = Constants_upvr.Color.SelectedBlue
	local UnselectedGray = Constants_upvr.Color.UnselectedGray
	if isClientView then
		UnselectedGray = Constants_upvr.Color.SelectedBlue
		SelectedBlue = Constants_upvr.Color.UnselectedGray
	end
	if arg1.props.formFactor == Constants_upvr.FormFactor.Small then
		local module_2 = {
			buttonSize = UDim2.new(0, ClientServerDropDownWidth_upvr, 0, SmallFrameHeight_upvr);
		}
		local var21 = tbl_upvr
		module_2.dropDownList = var21
		if isClientView then
			var21 = 1
		else
			var21 = 2
		end
		module_2.selectedIndex = var21
		module_2.onSelection = arg1.dropDownCallback
		module_2.layoutOrder = layoutOrder
		return Roact_upvr.createElement(FullScreenDropDownButton_upvr, module_2)
	end
	if arg1.props.useDropDown then
		local module = {
			buttonSize = UDim2.new(0, ClientServerDropDownWidth_upvr, 0, SmallFrameHeight_upvr);
		}
		local var23 = tbl_upvr
		module.dropDownList = var23
		if isClientView then
			var23 = 1
		else
			var23 = 2
		end
		module.selectedIndex = var23
		module.onSelection = arg1.dropDownCallback
		module.layoutOrder = layoutOrder
		return Roact_upvr.createElement(DropDown_upvr, module)
	end
	return Roact_upvr.createElement("Frame", {
		Size = UDim2.new(0, 2 * ClientServerButtonWidth_upvr, 0, FrameHeight_upvr);
		BackgroundTransparency = 1;
		LayoutOrder = layoutOrder;
	}, {
		ClientButton = Roact_upvr.createElement("TextButton", {
			Text = tbl_upvr[1];
			TextSize = UtilBar_upvr_2;
			TextColor3 = Text_upvr;
			Font = UtilBar_upvr;
			Size = udim2_upvr;
			AutoButtonColor = false;
			BackgroundColor3 = UnselectedGray;
			BackgroundTransparency = 0;
			LayoutOrder = 1;
			[Roact_upvr.Event.Activated] = arg1.props.onClientButton;
		});
		ServerButton = Roact_upvr.createElement("TextButton", {
			Text = tbl_upvr[2];
			TextSize = UtilBar_upvr_2;
			TextColor3 = Text_upvr;
			Font = UtilBar_upvr;
			Size = udim2_upvr;
			AutoButtonColor = false;
			Position = UDim2.new(0, ClientServerButtonWidth_upvr, 0, 0);
			BackgroundColor3 = SelectedBlue;
			BackgroundTransparency = 0;
			LayoutOrder = 2;
			[Roact_upvr.Event.Activated] = arg1.props.onServerButton;
		});
	})
end
return any_extend_result1