-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:47:19
-- Luau version 6, Types version 3
-- Time taken: 0.002881 seconds

local Parent = script:FindFirstAncestor("AppBlox").Parent
local UIBlox = require(Parent.UIBlox)
local tbl_upvr = {
	numItemsShown = 3.5;
	itemAspectRatio = 1.7777777777777777;
	itemPadding = 16;
	borderRadius = UDim.new(0, 8);
}
local Cryo_upvr = require(Parent.Cryo)
local React_upvr = require(Parent.React)
local Button_upvr = UIBlox.App.Button.Button
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
local udim2_upvr_2 = UDim2.fromScale(0.4, 0.512)
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local udim2_upvr = UDim2.fromScale(0.25, 0.33)
local Images_upvr = UIBlox.App.ImageSet.Images
return function(arg1) -- Line 40, Named "MediaGalleryCarousel"
	--[[ Upvalues[9]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: Button_upvr (readonly)
		[5]: ButtonType_upvr (readonly)
		[6]: udim2_upvr_2 (readonly)
		[7]: ImageSetLabel_upvr (readonly)
		[8]: udim2_upvr (readonly)
		[9]: Images_upvr (readonly)
	]]
	local any_join_result1_upvr = Cryo_upvr.Dictionary.join(tbl_upvr, arg1)
	local any_useState_result1, any_useState_result2_upvr = React_upvr.useState(Vector2.zero)
	local any_useCallback_result1_upvr = React_upvr.useCallback(function(arg1_3) -- Line 55
		--[[ Upvalues[1]:
			[1]: any_join_result1_upvr (readonly)
		]]
		if any_join_result1_upvr.onVideoPlayActivated and any_join_result1_upvr.items[arg1_3].isYouTubeVideo then
			return any_join_result1_upvr.onVideoPlayActivated(arg1_3)
		end
		if any_join_result1_upvr.onPreviewActivated then
			return any_join_result1_upvr.onPreviewActivated(arg1_3)
		end
	end, {any_join_result1_upvr.items, any_join_result1_upvr.onVideoPlayActivated, any_join_result1_upvr.onPreviewActivated})
	local tbl = {}
	for i_upvr, v in any_join_result1_upvr.items do
		local tbl_2 = {}
		local any_createElement_result1 = React_upvr.createElement("UICorner", {
			CornerRadius = any_join_result1_upvr.borderRadius;
		})
		tbl_2.Corner = any_createElement_result1
		if v.isYouTubeVideo then
			any_createElement_result1 = React_upvr.createElement
			any_createElement_result1 = any_createElement_result1(Button_upvr, {
				buttonType = ButtonType_upvr.PrimaryContextual;
				size = udim2_upvr_2;
				anchorPoint = Vector2.new(0.5, 0.5);
				position = UDim2.fromScale(0.5, 0.5);
				onActivated = function() -- Line 95, Named "onActivated"
					--[[ Upvalues[2]:
						[1]: any_useCallback_result1_upvr (readonly)
						[2]: i_upvr (readonly)
					]]
					any_useCallback_result1_upvr(i_upvr)
				end;
			})
		else
			any_createElement_result1 = nil
		end
		tbl_2.PlayButton = any_createElement_result1
		if v.isYouTubeVideo then
			any_createElement_result1 = React_upvr.createElement
			any_createElement_result1 = any_createElement_result1(ImageSetLabel_upvr, {
				Size = udim2_upvr;
				AnchorPoint = Vector2.new(0.5, 0.5);
				Position = UDim2.fromScale(0.5, 0.5);
				Image = Images_upvr["icons/common/play"];
				BackgroundTransparency = 1;
				ZIndex = 2;
			})
		else
			any_createElement_result1 = nil
		end
		tbl_2.PlayIcon = any_createElement_result1
		tbl["Item"..i_upvr] = React_upvr.createElement("ImageButton", {
			LayoutOrder = i_upvr;
			Size = UDim2.fromOffset(any_useState_result1.X, any_useState_result1.Y);
			Image = v.imageId;
			ScaleType = Enum.ScaleType.Crop;
			BackgroundTransparency = 1;
			AutoButtonColor = false;
			[React_upvr.Event.Activated] = function() -- Line 82
				--[[ Upvalues[2]:
					[1]: any_useCallback_result1_upvr (readonly)
					[2]: i_upvr (readonly)
				]]
				any_useCallback_result1_upvr(i_upvr)
			end;
		}, tbl_2)
	end
	return React_upvr.createElement("ScrollingFrame", {
		BackgroundTransparency = 1;
		Size = UDim2.fromScale(1, 0);
		AutomaticSize = Enum.AutomaticSize.Y;
		AutomaticCanvasSize = Enum.AutomaticSize.XY;
		ScrollBarImageTransparency = 1;
		ScrollingDirection = Enum.ScrollingDirection.X;
		ClipsDescendants = false;
		[React_upvr.Change.AbsoluteSize] = React_upvr.useCallback(function(arg1_2) -- Line 44
			--[[ Upvalues[2]:
				[1]: any_join_result1_upvr (readonly)
				[2]: any_useState_result2_upvr (readonly)
			]]
			local var20 = (arg1_2.AbsoluteSize.X - any_join_result1_upvr.itemPadding * (any_join_result1_upvr.numItemsShown - 1)) / any_join_result1_upvr.numItemsShown
			any_useState_result2_upvr(Vector2.new(var20, var20 / any_join_result1_upvr.itemAspectRatio))
		end, {any_join_result1_upvr.itemAspectRatio, any_join_result1_upvr.numItemsShown});
	}, {
		Layout = React_upvr.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder;
			FillDirection = Enum.FillDirection.Horizontal;
			Padding = UDim.new(0, any_join_result1_upvr.itemPadding);
		});
		Items = React_upvr.createElement(React_upvr.Fragment, {}, tbl);
	})
end