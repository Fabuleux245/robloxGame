-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:51:52
-- Luau version 6, Types version 3
-- Time taken: 0.002422 seconds

local CorePackages = game:GetService("CorePackages")
local Parent = script.Parent.Parent
local Roact_upvr = require(CorePackages.Packages.Roact)
local any_extend_result1 = Roact_upvr.PureComponent:extend("InitialView")
local InspectAndBuyContext_upvr = require(Parent.Components.InspectAndBuyContext)
local AvatarHeadShot_upvr = require(Parent.Components.AvatarHeadShot)
local PlayerNameLabel_upvr = require(Parent.Components.PlayerNameLabel)
local AssetList_upvr = require(Parent.Components.AssetList)
local function render(arg1) -- Line 13
	--[[ Upvalues[5]:
		[1]: Roact_upvr (readonly)
		[2]: InspectAndBuyContext_upvr (readonly)
		[3]: AvatarHeadShot_upvr (readonly)
		[4]: PlayerNameLabel_upvr (readonly)
		[5]: AssetList_upvr (readonly)
	]]
	local module = {}
	local view_upvr = arg1.props.view
	local detailsInformation_upvr = arg1.props.detailsInformation
	function module.render(arg1_2) -- Line 18
		--[[ Upvalues[6]:
			[1]: view_upvr (readonly)
			[2]: Roact_upvr (copied, readonly)
			[3]: detailsInformation_upvr (readonly)
			[4]: AvatarHeadShot_upvr (copied, readonly)
			[5]: PlayerNameLabel_upvr (copied, readonly)
			[6]: AssetList_upvr (copied, readonly)
		]]
		local var12 = arg1_2[view_upvr]
		return Roact_upvr.createElement("ScrollingFrame", {
			BackgroundTransparency = 1;
			Position = UDim2.new(0, var12.BorderPaddingSize, 0, 10);
			Size = UDim2.new(1, -(2 * var12.BorderPaddingSize), 1, -36);
			ScrollBarThickness = 0;
			ScrollingDirection = Enum.ScrollingDirection.Y;
			Visible = not detailsInformation_upvr.viewingDetails;
			Selectable = false;
		}, {
			UIListLayout = Roact_upvr.createElement("UIListLayout", {
				Padding = UDim.new(0, 15);
				HorizontalAlignment = Enum.HorizontalAlignment.Left;
				SortOrder = Enum.SortOrder.LayoutOrder;
			});
			Top = Roact_upvr.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, var12.TopSizeY);
				BackgroundTransparency = 1;
				LayoutOrder = 2;
			}, {
				UIListLayout = Roact_upvr.createElement("UIListLayout", {
					Padding = UDim.new(0, 10);
					SortOrder = Enum.SortOrder.LayoutOrder;
					FillDirection = Enum.FillDirection.Horizontal;
				});
				AvatarHeadShot = Roact_upvr.createElement(AvatarHeadShot_upvr);
				PlayerNameLabel = Roact_upvr.createElement(PlayerNameLabel_upvr);
			});
			AssetList = Roact_upvr.createElement(AssetList_upvr);
		})
	end
	return Roact_upvr.createElement(InspectAndBuyContext_upvr.Consumer, module)
end
any_extend_result1.render = render
return require(CorePackages.Packages.RoactRodux).UNSTABLE_connect2(function(arg1, arg2) -- Line 53
	return {
		view = arg1.view;
		detailsInformation = arg1.detailsInformation;
	}
end)(any_extend_result1)