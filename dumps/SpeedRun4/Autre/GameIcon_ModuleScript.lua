-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:53:19
-- Luau version 6, Types version 3
-- Time taken: 0.002539 seconds

local InGameMenuDependencies = require(game:GetService("CorePackages").Packages.InGameMenuDependencies)
local Roact_upvr = InGameMenuDependencies.Roact
local UIBlox = InGameMenuDependencies.UIBlox
local t = InGameMenuDependencies.t
local Parent = script.Parent.Parent
local any_extend_result1 = Roact_upvr.PureComponent:extend("GameIcon")
any_extend_result1.validateProps = t.strictInterface({
	gameId = t.number;
	iconSize = t.numberMin(0);
	layoutOrder = t.optional(t.number);
	cornerRadius = t.optional(t.UDim);
	Position = t.optional(t.UDim2);
	AnchorPoint = t.optional(t.Vector2);
})
local getGameIconRequestSize_upvr = require(Parent.Components.getGameIconRequestSize)
local withStyle_upvr = UIBlox.Core.Style.withStyle
local AssetImage_upvr = require(Parent.Components.AssetImage)
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local Images_upvr = UIBlox.App.ImageSet.Images
function any_extend_result1.render(arg1) -- Line 33
	--[[ Upvalues[6]:
		[1]: getGameIconRequestSize_upvr (readonly)
		[2]: withStyle_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: AssetImage_upvr (readonly)
		[5]: ImageSetLabel_upvr (readonly)
		[6]: Images_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local iconSize_upvr = arg1.props.iconSize
	local getGameIconRequestSize_upvr_result1 = getGameIconRequestSize_upvr(iconSize_upvr)
	local gameId = arg1.props.gameId
	local cornerRadius_upvr = arg1.props.cornerRadius
	local var17
	if gameId ~= 0 then
		var17 = false
	else
		var17 = true
	end
	if var17 then
		local var18_upvw = 44
		if iconSize_upvr <= 44 then
			var18_upvw = iconSize_upvr
		end
		return withStyle_upvr(function(arg1_2) -- Line 49
			--[[ Upvalues[8]:
				[1]: Roact_upvr (copied, readonly)
				[2]: AssetImage_upvr (copied, readonly)
				[3]: iconSize_upvr (readonly)
				[4]: arg1 (readonly)
				[5]: ImageSetLabel_upvr (copied, readonly)
				[6]: var18_upvw (read and write)
				[7]: Images_upvr (copied, readonly)
				[8]: cornerRadius_upvr (readonly)
			]]
			local module = {}
			local tbl_3 = {}
			local var24
			local function INLINED() -- Internal function, doesn't exist in bytecode
				var24 = var24("UICorner", tbl_2)
				tbl_2.CornerRadius = cornerRadius_upvr
				local tbl_2 = {}
				var24 = Roact_upvr.createElement
				return var24
			end
			if not cornerRadius_upvr or cornerRadius_upvr == UDim.new(0, 0) or not INLINED() then
				var24 = nil
			end
			tbl_3.UICorner = var24
			module.PlaceholderIcon = Roact_upvr.createElement(ImageSetLabel_upvr, {
				BackgroundTransparency = 1;
				Size = UDim2.fromOffset(var18_upvw, var18_upvw);
				Position = UDim2.fromScale(0.5, 0.5);
				Image = Images_upvr["icons/imageUnavailable"];
				ImageColor3 = arg1_2.Theme.UIDefault.Color;
				ImageTransparency = arg1_2.Theme.UIDefault.Transparency;
				AnchorPoint = Vector2.new(0.5, 0.5);
			}, tbl_3)
			return Roact_upvr.createElement(AssetImage_upvr.Label, {
				imageKey = "RoundedRect";
				Size = UDim2.fromOffset(iconSize_upvr, iconSize_upvr);
				ImageColor3 = arg1_2.Theme.PlaceHolder.Color;
				ImageTransparency = arg1_2.Theme.PlaceHolder.Transparency;
				LayoutOrder = arg1.props.layoutOrder;
				Position = arg1.props.Position;
				AnchorPoint = arg1.props.AnchorPoint;
			}, module)
		end)
	end
	local module_2 = {}
	local function INLINED_2() -- Internal function, doesn't exist in bytecode
		tbl.CornerRadius = cornerRadius_upvr
		local tbl = {}
		return Roact_upvr.createElement("UICorner", tbl)
	end
	if not cornerRadius_upvr or cornerRadius_upvr == UDim.new(0, 0) or not INLINED_2() then
	end
	module_2.UICorner = nil
	return Roact_upvr.createElement("ImageLabel", {
		Image = "rbxthumb://type=GameIcon&id=%d&w=%d&h=%d":format(gameId, getGameIconRequestSize_upvr_result1, getGameIconRequestSize_upvr_result1);
		Size = UDim2.fromOffset(iconSize_upvr, iconSize_upvr);
		BackgroundTransparency = 1;
		LayoutOrder = arg1.props.layoutOrder;
		Position = arg1.props.Position;
		AnchorPoint = arg1.props.AnchorPoint;
	}, module_2)
end
return any_extend_result1