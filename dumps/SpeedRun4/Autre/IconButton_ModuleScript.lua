-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:48:11
-- Luau version 6, Types version 3
-- Time taken: 0.003811 seconds

local CorePackages = game:GetService("CorePackages")
local Roact_upvr = require(CorePackages.Packages.Roact)
local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.Packages.UIBlox)
local any_extend_result1 = Roact_upvr.PureComponent:extend("IconButton")
any_extend_result1.validateProps = t.strictInterface({
	size = t.UDim2;
	position = t.UDim2;
	backgroundColor = t.Color3;
	icon = t.union(t.string, t.table);
	showBackground = t.boolean;
	onActivated = t.optional(t.callback);
})
function any_extend_result1.init(arg1) -- Line 28
	arg1.state = {
		isHovered = false;
		isPressed = false;
	}
end
local WithLayoutValues_upvr = require(script.Parent.Parent.Connection.LayoutValues).WithLayoutValues
local withStyle_upvr = UIBlox.Style.withStyle
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
function any_extend_result1.render(arg1) -- Line 35
	--[[ Upvalues[4]:
		[1]: WithLayoutValues_upvr (readonly)
		[2]: withStyle_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: ImageSetLabel_upvr (readonly)
	]]
	return WithLayoutValues_upvr(function(arg1_2) -- Line 36
		--[[ Upvalues[4]:
			[1]: withStyle_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: Roact_upvr (copied, readonly)
			[4]: ImageSetLabel_upvr (copied, readonly)
		]]
		return withStyle_upvr(function(arg1_3) -- Line 37
			--[[ Upvalues[4]:
				[1]: arg1 (copied, readonly)
				[2]: Roact_upvr (copied, readonly)
				[3]: arg1_2 (readonly)
				[4]: ImageSetLabel_upvr (copied, readonly)
			]]
			local tbl = {
				Transparency = 1;
				Color = Color3.new(1, 1, 1);
			}
			local var14
			if arg1.props.onActivated then
				if arg1.state.isPressed then
					tbl = arg1_3.Theme.BackgroundOnPress
				elseif arg1.state.isHovered then
					tbl = arg1_3.Theme.BackgroundOnHover
				end
			end
			local module = {}
			var14 = ""
			module.Text = var14
			var14 = 0
			module.BorderSizePixel = var14
			local function INLINED() -- Internal function, doesn't exist in bytecode
				var14 = arg1_2.IconButtonBackgroundTransparency
				return var14
			end
			if not arg1.props.showBackground or not INLINED() then
				var14 = 1
			end
			module.BackgroundTransparency = var14
			var14 = arg1.props.backgroundColor
			module.BackgroundColor3 = var14
			var14 = arg1.props.position
			module.Position = var14
			var14 = arg1.props.size
			module.Size = var14
			var14 = Roact_upvr.Event.Activated
			module[var14] = arg1.props.onActivated
			var14 = Roact_upvr.Event.MouseButton1Down
			module[var14] = function() -- Line 61
				--[[ Upvalues[1]:
					[1]: arg1 (copied, readonly)
				]]
				arg1:setState({
					isPressed = true;
				})
			end
			var14 = Roact_upvr.Event.MouseButton1Up
			module[var14] = function() -- Line 66
				--[[ Upvalues[1]:
					[1]: arg1 (copied, readonly)
				]]
				arg1:setState({
					isPressed = false;
				})
			end
			var14 = Roact_upvr.Event.MouseEnter
			module[var14] = function() -- Line 72
				--[[ Upvalues[1]:
					[1]: arg1 (copied, readonly)
				]]
				arg1:setState({
					isHovered = true;
				})
			end
			var14 = Roact_upvr.Event.MouseLeave
			module[var14] = function() -- Line 78
				--[[ Upvalues[1]:
					[1]: arg1 (copied, readonly)
				]]
				arg1:setState({
					isHovered = false;
					isPressed = false;
				})
			end
			var14 = {}
			var14.HoverBackground = Roact_upvr.createElement("Frame", {
				ZIndex = 1;
				Size = UDim2.new(1, 0, 1, 0);
				BackgroundTransparency = tbl.Transparency;
				BackgroundColor3 = tbl.Color;
				BorderSizePixel = 0;
			})
			var14.ImageButton = Roact_upvr.createElement(ImageSetLabel_upvr, {
				Position = UDim2.new(0.5, 0, 0.5, 0);
				Size = UDim2.new(0, arg1_2.DropDownIconSize, 0, arg1_2.DropDownIconSize);
				Image = arg1.props.icon;
				AnchorPoint = Vector2.new(0.5, 0.5);
				BackgroundTransparency = 1;
				ZIndex = 2;
			})
			return Roact_upvr.createElement("TextButton", module, var14)
		end)
	end)
end
return any_extend_result1