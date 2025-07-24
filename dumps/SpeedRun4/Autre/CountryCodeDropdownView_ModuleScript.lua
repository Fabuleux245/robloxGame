-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:20:20
-- Luau version 6, Types version 3
-- Time taken: 0.004142 seconds

local AuthCommon = script:FindFirstAncestor("AuthCommon")
local Parent = AuthCommon.Parent
local useStyle_upvr = require(Parent.UIBlox).Core.Style.useStyle
local React_upvr = require(Parent.React)
local FunctionalCountryCodeSelectorButton_upvr = require(AuthCommon.Components.FunctionalCountryCodeSelectorButton)
local Graphite_upvr = require(Parent.Style).Colors.Graphite
local ImageSetLabel_upvr = require(Parent.UIBlox).Core.ImageSet.ImageSetLabel
local GetImageData_upvr = require(Parent.RobloxAppAssets).GetImageData
return function(arg1) -- Line 28, Named "CountryCodeDropdownView"
	--[[ Upvalues[6]:
		[1]: useStyle_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: FunctionalCountryCodeSelectorButton_upvr (readonly)
		[4]: Graphite_upvr (readonly)
		[5]: ImageSetLabel_upvr (readonly)
		[6]: GetImageData_upvr (readonly)
	]]
	local countryCodeList = arg1.countryCodeList
	local maxHeight = arg1.maxHeight
	local var3_result1 = useStyle_upvr()
	local onCountryCodeSelected_upvr = arg1.onCountryCodeSelected
	if arg1.dropdownVisible then
		local module = {
			ZIndex = 2;
		}
		local size = arg1.size
		if not size then
			size = UDim2.new(1, 0, 0, maxHeight)
		end
		module.Size = size
		module.Position = arg1.position
		module.BackgroundTransparency = 1
		module.ScaleType = Enum.ScaleType.Slice
		module.SliceCenter = Rect.new(9, 9, 9, 9)
		module.Image = GetImageData_upvr("LuaApp/buttons/buttonFill")
		module.ImageColor3 = var3_result1.Theme.BackgroundUIDefault.Color
		module.ImageTransparency = 0
		return React_upvr.createElement(ImageSetLabel_upvr, module, {
			Boundary = React_upvr.createElement(ImageSetLabel_upvr, {
				ZIndex = 2;
				Size = UDim2.new(1, 0, 1, 0);
				BackgroundTransparency = 1;
				ScaleType = Enum.ScaleType.Slice;
				SliceCenter = Rect.new(9, 9, 9, 9);
				Image = GetImageData_upvr("LuaApp/buttons/buttonStroke");
				ImageColor3 = var3_result1.Theme.UIDefault.Color;
				ImageTransparency = var3_result1.Theme.UIDefault.Transparency;
			});
			ScrollingFrame = React_upvr.createElement("ScrollingFrame", {
				Position = UDim2.new(0, 0, 0, 0);
				Size = UDim2.new(1, 0, 1, 0);
				ScrollBarImageColor3 = Graphite_upvr;
				ScrollingDirection = Enum.ScrollingDirection.Y;
				BackgroundTransparency = 1;
				BorderSizePixel = 0;
				CanvasSize = UDim2.new(1, 0, 0, #countryCodeList * 49);
			}, {
				ListHolder = React_upvr.createElement("Frame", {
					Size = UDim2.new(1, -8, 1, maxHeight);
					BackgroundTransparency = 1;
				}, (function(arg1_2) -- Line 38, Named "getListButtons"
					--[[ Upvalues[4]:
						[1]: React_upvr (copied, readonly)
						[2]: FunctionalCountryCodeSelectorButton_upvr (copied, readonly)
						[3]: onCountryCodeSelected_upvr (readonly)
						[4]: Graphite_upvr (copied, readonly)
					]]
					local module_2 = {React_upvr.createElement("UIListLayout", {
						SortOrder = Enum.SortOrder.LayoutOrder;
					}), React_upvr.createElement("UIPadding", {
						PaddingLeft = UDim.new(0, 8);
					})}
					local var20 = 1
					for _, v in ipairs(arg1_2) do
						table.insert(module_2, React_upvr.createElement(FunctionalCountryCodeSelectorButton_upvr, {
							CountryCode = v;
							Size = UDim2.new(1, 0, 0, 48);
							LayoutOrder = var20;
							ListButtonProps = {
								TextSize = 14;
								SelectionCallback = onCountryCodeSelected_upvr;
							};
							BoldPrefixEnabled = true;
						}))
						var20 += 1
						table.insert(module_2, React_upvr.createElement("Frame", {
							Size = UDim2.new(1, 0, 0, 1);
							BackgroundColor3 = Graphite_upvr;
							LayoutOrder = var20;
							BorderSizePixel = 0;
						}))
						var20 += 1
					end
					return module_2
				end)(countryCodeList));
			});
		})
	end
	return nil
end