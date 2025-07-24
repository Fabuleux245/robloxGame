-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:50:38
-- Luau version 6, Types version 3
-- Time taken: 0.002160 seconds

local Parent = script:FindFirstAncestor("AppChat").Parent
local Roact_upvr = require(Parent.Roact)
local UIBlox = require(Parent.UIBlox)
local any_extend_result1 = Roact_upvr.PureComponent:extend("LoadingAvatar")
any_extend_result1.defaultProps = {
	avatarImage = UIBlox.App.ImageSet.Images["component_assets/circle_49_mask"];
	cellHeight = 64;
	avatarSize = 36;
	LayoutOrder = 0;
}
local withStyle_upvr = require(Parent.UIBlox).Style.withStyle
local ShimmerPanel_upvr = UIBlox.App.Loading.ShimmerPanel
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("AppChatLoadingIndicatorTransparency", false)
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
function any_extend_result1.render(arg1) -- Line 22
	--[[ Upvalues[5]:
		[1]: withStyle_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: ShimmerPanel_upvr (readonly)
		[4]: game_DefineFastFlag_result1_upvr (readonly)
		[5]: ImageSetLabel_upvr (readonly)
	]]
	local var11_upvr = arg1.props.cellHeight / 2 - arg1.props.avatarSize / 2
	return withStyle_upvr(function(arg1_2) -- Line 25
		--[[ Upvalues[6]:
			[1]: Roact_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: ShimmerPanel_upvr (copied, readonly)
			[4]: var11_upvr (readonly)
			[5]: game_DefineFastFlag_result1_upvr (copied, readonly)
			[6]: ImageSetLabel_upvr (copied, readonly)
		]]
		local module = {}
		local any_createElement_result1 = Roact_upvr.createElement(ShimmerPanel_upvr, {
			Size = UDim2.fromOffset(arg1.props.avatarSize, arg1.props.avatarSize);
			Position = UDim2.fromOffset(var11_upvr, var11_upvr);
			cornerRadius = UDim.new(0, arg1.props.cellHeight);
		})
		module.avatarShimmer = any_createElement_result1
		if game_DefineFastFlag_result1_upvr then
			any_createElement_result1 = nil
		else
			any_createElement_result1 = Roact_upvr.createElement
			any_createElement_result1 = any_createElement_result1(ImageSetLabel_upvr, {
				Size = UDim2.fromOffset(arg1.props.avatarSize, arg1.props.avatarSize);
				Position = UDim2.fromOffset(var11_upvr, var11_upvr);
				Image = arg1.props.avatarImage;
				BackgroundTransparency = 1;
				ImageColor3 = arg1_2.Theme.BackgroundDefault.Color;
			})
		end
		module.avatarMask = any_createElement_result1
		return Roact_upvr.createElement("Frame", {
			Size = UDim2.new(0, arg1.props.cellHeight, 0, arg1.props.cellHeight);
			BackgroundTransparency = 1;
			LayoutOrder = arg1.props.LayoutOrder;
			BorderSizePixel = 0;
		}, module)
	end)
end
return any_extend_result1