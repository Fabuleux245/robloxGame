-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:48:28
-- Luau version 6, Types version 3
-- Time taken: 0.002641 seconds

local Parent = script:FindFirstAncestor("AppChat").Parent
local Roact_upvr = require(Parent.Roact)
local any_extend_result1 = Roact_upvr.PureComponent:extend("AssetCard_Coπtent")
any_extend_result1.defaultProps = {
	cardIcon = nil;
	cardBodyText = nil;
	bodyActivated = nil;
	contentLoadedCallback = nil;
}
function any_extend_result1.init(arg1) -- Line 18
	--[[ Upvalues[1]:
		[1]: Roact_upvr (readonly)
	]]
	arg1.iconRef = Roact_upvr.createRef()
end
local UIBlox_upvr = require(Parent.UIBlox)
function any_extend_result1.render(arg1) -- Line 22
	--[[ Upvalues[2]:
		[1]: UIBlox_upvr (readonly)
		[2]: Roact_upvr (readonly)
	]]
	return UIBlox_upvr.Style.withStyle(function(arg1_2) -- Line 23
		--[[ Upvalues[3]:
			[1]: Roact_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: UIBlox_upvr (copied, readonly)
		]]
		local module = {
			layout = Roact_upvr.createElement("UIListLayout", {
				Padding = UDim.new(0, 12);
				FillDirection = Enum.FillDirection.Horizontal;
				SortOrder = Enum.SortOrder.LayoutOrder;
			});
			Icon = Roact_upvr.createElement(UIBlox_upvr.App.Loading.LoadableImage, {
				BackgroundTransparency = 1;
				Size = UDim2.new(0, 64, 0, 64);
				LayoutOrder = 1;
				Image = arg1.props.cardIcon;
				useShimmerAnimationWhileLoading = true;
				cornerRadius = UDim.new(0, 4);
			});
		}
		local var11
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var11 = var11("TextLabel", tbl, arg1.props[Roact_upvr.Children])
			tbl.LayoutOrder = 2
			tbl.TextWrapped = true
			tbl.TextYAlignment = Enum.TextYAlignment.Top
			tbl.TextXAlignment = Enum.TextXAlignment.Left
			tbl.TextSize = 17
			tbl.Font = arg1_2.Font.Body.Font
			tbl.TextColor3 = arg1_2.Theme.TextEmphasis.Color
			tbl.Text = arg1.props.cardBodyText
			tbl.Size = UDim2.new(1, -76, 0, 64)
			tbl.BackgroundTransparency = 1
			local tbl = {}
			var11 = Roact_upvr.createElement
			return var11
		end
		if arg1.props.isLoading or not INLINED() then
			var11 = Roact_upvr.createElement
			var11 = var11(UIBlox_upvr.App.Loading.ShimmerPanel, {
				Size = UDim2.new(1, -76, 0, 64);
				cornerRadius = UDim.new(0, 4);
				LayoutOrder = 2;
			})
		end
		module.Details = var11
		return Roact_upvr.createElement("ImageButton", {
			Size = UDim2.new(1, 0, 0, 64);
			BackgroundTransparency = 1;
			[Roact_upvr.Event.Activated] = arg1.props.bodyActivated;
		}, module)
	end)
end
return any_extend_result1