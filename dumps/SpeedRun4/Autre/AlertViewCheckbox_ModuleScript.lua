-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:06:24
-- Luau version 6, Types version 3
-- Time taken: 0.001593 seconds

local dependencies = require(script:FindFirstAncestor("SocialLibraries").dependencies)
local Roact_upvr = dependencies.Roact
local any_extend_result1 = Roact_upvr.Component:extend("AlertViewCheckbox")
any_extend_result1.defaultProps = {
	Text = "";
	LayoutOrder = 0;
	onActivated = function() -- Line 12, Named "onActivated"
	end;
	checked = false;
}
local UIBlox_upvr = dependencies.UIBlox
local CheckIcon_upvr = require(script.Parent.CheckIcon)
function any_extend_result1.render(arg1) -- Line 16
	--[[ Upvalues[3]:
		[1]: UIBlox_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: CheckIcon_upvr (readonly)
	]]
	return UIBlox_upvr.Style.withStyle(function(arg1_2) -- Line 17
		--[[ Upvalues[3]:
			[1]: Roact_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: CheckIcon_upvr (copied, readonly)
		]]
		local module = {
			List = Roact_upvr.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Horizontal;
				SortOrder = Enum.SortOrder.LayoutOrder;
				VerticalAlignment = Enum.VerticalAlignment.Center;
				Padding = UDim.new(0, 10);
			});
			Checkbox = Roact_upvr.createElement(CheckIcon_upvr, {
				BackgroundTransparency = 1;
				BorderSizePixel = 0;
				LayoutOrder = 1;
				checked = arg1.props.checked;
				onActivated = arg1.props.onActivated;
			});
		}
		local tbl = {
			BackgroundTransparency = 1;
			BorderSizePixel = 0;
			LayoutOrder = 2;
			Size = UDim2.new(0.7, 0, 1, 0);
			Text = arg1.props.Text;
		}
		local TextColor3 = arg1.props.TextColor3
		if not TextColor3 then
			TextColor3 = arg1_2.Theme.TextDefault.Color
		end
		tbl.TextColor3 = TextColor3
		TextColor3 = arg1.props.TextSize
		local var14 = TextColor3
		if not var14 then
			var14 = arg1_2.Font.Body.RelativeSize * arg1_2.Font.BaseSize
		end
		tbl.TextSize = var14
		var14 = arg1.props.Font
		local var15 = var14
		if not var15 then
			var15 = arg1_2.Font.CaptionSubHeader.Font
		end
		tbl.Font = var15
		tbl.TextXAlignment = Enum.TextXAlignment.Left
		module.Label = Roact_upvr.createElement("TextLabel", tbl)
		return Roact_upvr.createElement("Frame", {
			BackgroundTransparency = 1;
			BorderSizePixel = 0;
			LayoutOrder = arg1.props.LayoutOrder;
			Size = UDim2.new(1, 0, 0, 35);
		}, module)
	end)
end
return any_extend_result1