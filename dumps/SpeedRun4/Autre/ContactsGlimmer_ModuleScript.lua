-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:24:20
-- Luau version 6, Types version 3
-- Time taken: 0.002714 seconds

local dependencies = require(script:FindFirstAncestor("ContactImporter").dependencies)
local Roact_upvr = dependencies.Roact
local UIBlox = dependencies.UIBlox
local any_extend_result1 = Roact_upvr.PureComponent:extend("ContactsGlimmer")
local withStyle_upvr = UIBlox.Style.withStyle
local ShimmerPanel_upvr = UIBlox.App.Loading.ShimmerPanel
function any_extend_result1.render(arg1) -- Line 24
	--[[ Upvalues[3]:
		[1]: withStyle_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: ShimmerPanel_upvr (readonly)
	]]
	local props_upvr = arg1.props
	return withStyle_upvr(function(arg1_2) -- Line 27
		--[[ Upvalues[4]:
			[1]: Roact_upvr (copied, readonly)
			[2]: props_upvr (readonly)
			[3]: arg1 (readonly)
			[4]: ShimmerPanel_upvr (copied, readonly)
		]]
		return Roact_upvr.createElement("Frame", {
			LayoutOrder = props_upvr.layoutOrder;
			Size = UDim2.new(1, 0, 0, 72);
			BackgroundTransparency = 1;
		}, {
			entryContent = Roact_upvr.createElement("Frame", {
				Size = UDim2.new(1, 0, 1, 0);
				BackgroundTransparency = 1;
			}, {
				Layout = Roact_upvr.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Horizontal;
					VerticalAlignment = Enum.VerticalAlignment.Bottom;
					SortOrder = Enum.SortOrder.LayoutOrder;
					Padding = UDim.new(0, 0);
				});
				middleGroup = Roact_upvr.createElement("Frame", {
					Size = UDim2.new(1, -68, 1, 0);
					BackgroundTransparency = 1;
					[Roact_upvr.Event.Activated] = arg1.openBlankProfileView;
					LayoutOrder = 2;
					BackgroundColor3 = Color3.fromRGB(222, 22, 222);
				}, {
					Layout = Roact_upvr.createElement("UIListLayout", {
						FillDirection = Enum.FillDirection.Vertical;
						HorizontalAlignment = Enum.HorizontalAlignment.Left;
						VerticalAlignment = Enum.VerticalAlignment.Center;
						SortOrder = Enum.SortOrder.LayoutOrder;
						Padding = UDim.new(0, 10);
					});
					Padding = Roact_upvr.createElement("UIPadding", {
						PaddingLeft = UDim.new(0, 12);
					});
					PlayerName = Roact_upvr.createElement(ShimmerPanel_upvr, {
						LayoutOrder = 1;
						Size = UDim2.fromOffset(90, 14);
					});
					ContextualInfo = Roact_upvr.createElement(ShimmerPanel_upvr, {
						LayoutOrder = 2;
						Size = UDim2.fromOffset(160, 14);
					});
				});
			});
			Divider = Roact_upvr.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, 1);
				Position = UDim2.new(0, 0, 1, 0);
				BorderSizePixel = 0;
				BackgroundColor3 = arg1_2.Theme.Divider.Color;
				BackgroundTransparency = arg1_2.Theme.Divider.Transparency;
			});
		})
	end)
end
return any_extend_result1