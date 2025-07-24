-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:34:08
-- Luau version 6, Types version 3
-- Time taken: 0.005310 seconds

local GameTile = script:FindFirstAncestor("GameTile")
local Parent = GameTile.Parent
local Roact_upvr = require(Parent.Roact)
local ImageSetLabel_upvr = require(Parent.UIBlox).Core.ImageSet.ImageSetLabel
local GetImageData_upvr = require(Parent.RobloxAppAssets).GetImageData
local SourceSans_upvr = Enum.Font.SourceSans
local Color3_fromRGB_result1_upvr = Color3.fromRGB(117, 117, 117)
local function NumberedIcon_upvr(arg1) -- Line 22, Named "NumberedIcon"
	--[[ Upvalues[5]:
		[1]: Roact_upvr (readonly)
		[2]: ImageSetLabel_upvr (readonly)
		[3]: GetImageData_upvr (readonly)
		[4]: SourceSans_upvr (readonly)
		[5]: Color3_fromRGB_result1_upvr (readonly)
	]]
	local size = arg1.size
	return Roact_upvr.createElement(ImageSetLabel_upvr, {
		Size = UDim2.new(0, size, 0, size);
		LayoutOrder = arg1.layoutOrder;
		Image = GetImageData_upvr("LuaApp/graphic/gr-counter-slot-32x32") or "LuaApp/graphic/gr-counter-slot-32x32";
		BackgroundTransparency = 1;
	}, {
		Count = Roact_upvr.createElement("TextLabel", {
			Size = UDim2.new(0.5, 0, 0.5, 0);
			AnchorPoint = Vector2.new(0.5, 0.5);
			Position = UDim2.new(0.5, 0, 0.5, 0);
			Font = SourceSans_upvr;
			TextSize = 15;
			Text = '+'..arg1.count;
			TextColor3 = Color3_fromRGB_result1_upvr;
			BackgroundTransparency = 1;
		});
	})
end
local any_extend_result1 = Roact_upvr.PureComponent:extend("UserIconList")
any_extend_result1.defaultProps = {
	users = {};
}
local FriendIcon_upvr = require(GameTile.Footer.FriendIcon)
function any_extend_result1.render(arg1) -- Line 52
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: FriendIcon_upvr (readonly)
		[3]: NumberedIcon_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local width = arg1.props.width
	local height = arg1.props.height
	local users = arg1.props.users
	local len = #users
	local maskColor = arg1.props.maskColor
	if len <= 0 then
		return nil
	end
	local function _(arg1_2, arg2) -- Line 65, Named "GetMaxNumberOfIconsInWidth"
		return math.floor((arg2 + 3) / (arg1_2 + 3))
	end
	local var24
	if 32 <= height and 3 <= math.floor((width + 3) / 35) then
		var24 = 32
	elseif 24 <= height then
		var24 = 24
	else
		var24 = height
	end
	local tbl = {}
	local var26
	local floored = math.floor((width + 3) / (var24 + 3))
	if 0 < floored then
		if floored < len then
			var26 = (len) - (floored - 1)
		end
		tbl.ListLayout = Roact_upvr.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal;
			HorizontalAlignment = Enum.HorizontalAlignment.Center;
			VerticalAlignment = Enum.VerticalAlignment.Center;
			SortOrder = Enum.SortOrder.LayoutOrder;
			Padding = UDim.new(0, 3);
		})
		if 0 >= var26 or not (floored - 1) then
		end
		for i = 1, math.min(floored, len) do
			tbl["UserIcon"..i] = Roact_upvr.createElement(FriendIcon_upvr, {
				user = users[i];
				itemSize = var24;
				layoutOrder = i;
				maskColor = maskColor;
			})
			local var30
		end
		local var31 = false
		if 0 < var26 then
			var31 = Roact_upvr.createElement
			i = {}
			i.size = var24
			i.layoutOrder = floored
			i.count = var26
			var31 = var31(NumberedIcon_upvr, i)
		end
		var30.NumberedIcon = var31
	end
	return Roact_upvr.createElement("Frame", {
		Size = UDim2.new(0, width, 0, height);
		LayoutOrder = arg1.props.layoutOrder;
		BackgroundTransparency = 1;
	}, var30)
end
return any_extend_result1