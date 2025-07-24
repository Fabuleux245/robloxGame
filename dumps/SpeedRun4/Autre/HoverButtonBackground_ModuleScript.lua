-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:47:18
-- Luau version 6, Types version 3
-- Time taken: 0.002535 seconds

local Parent = script:FindFirstAncestor("AppBlox").Parent
local Roact_upvr = require(Parent.Roact)
local UIBlox = require(Parent.UIBlox)
local t = require(Parent.t)
local any_extend_result1 = Roact_upvr.PureComponent:extend("HoverButtonBackground")
any_extend_result1.validateProps = t.strictInterface({
	sidePadding = t.optional(t.number);
	image = t.optional(UIBlox.Core.ImageSet.Validator.validateImage);
	sliceCenter = t.optional(t.Rect);
})
local withStyle_upvr = UIBlox.Core.Style.withStyle
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
function any_extend_result1.render(arg1) -- Line 31
	--[[ Upvalues[3]:
		[1]: withStyle_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: ImageSetLabel_upvr (readonly)
	]]
	local var9_upvr
	if arg1.props.sidePadding then
		var9_upvr = UDim2.new(arg1.props.sidePadding, UDim.new()) + UDim2.new(arg1.props.sidePadding, UDim.new())
	else
		var9_upvr = UDim2.new()
	end
	return withStyle_upvr(function(arg1_2) -- Line 36
		--[[ Upvalues[4]:
			[1]: Roact_upvr (copied, readonly)
			[2]: ImageSetLabel_upvr (copied, readonly)
			[3]: var9_upvr (readonly)
			[4]: arg1 (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 20 start (CF ANALYSIS FAILED)
		local BackgroundOnHover = arg1_2.Theme.BackgroundOnHover
		local module_2 = {
			Size = UDim2.fromScale(1, 1) + var9_upvr;
			AnchorPoint = Vector2.new(0.5, 0.5);
		}
		local udim2 = UDim2.fromScale(0.5, 0.5)
		module_2.Position = udim2
		local var14
		if var14 then
			udim2 = nil
		else
			udim2 = BackgroundOnHover.Color
		end
		module_2.BackgroundColor3 = udim2
		var14 = arg1.props.image
		if var14 then
			-- KONSTANTWARNING: GOTO [54] #39
		end
		-- KONSTANTERROR: [0] 1. Error Block 20 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [52] 38. Error Block 22 start (CF ANALYSIS FAILED)
		module_2.BackgroundTransparency = BackgroundOnHover.Transparency
		var14 = arg1.props
		module_2.Image = var14.image
		module_2.ImageColor3 = BackgroundOnHover.Color
		module_2.ImageTransparency = BackgroundOnHover.Transparency
		module_2.ScaleType = Enum.ScaleType.Slice
		var14 = arg1.props
		module_2.SliceCenter = var14.sliceCenter
		local module = {}
		if arg1.props.image then
			var14 = nil
		else
			var14 = Roact_upvr.createElement
			var14 = var14("UICorner", {
				CornerRadius = UDim.new(0, 8);
			})
		end
		module.corner = var14
		do
			return Roact_upvr.createElement(ImageSetLabel_upvr, module_2, module)
		end
		-- KONSTANTERROR: [52] 38. Error Block 22 end (CF ANALYSIS FAILED)
	end)
end
return any_extend_result1