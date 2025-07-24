-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:00:58
-- Luau version 6, Types version 3
-- Time taken: 0.002154 seconds

local Roact_upvr = require(game:GetService("CorePackages").Packages.Roact)
local Constants = require(script.Parent.Parent.Constants)
local any_extend_result1 = Roact_upvr.Component:extend("BannerButton")
local DownArrow_upvr = Constants.Image.DownArrow
local RightArrow_upvr = Constants.Image.RightArrow
local ArrowWidth_upvr = Constants.GeneralFormatting.ArrowWidth
local LineWidth_upvr = Constants.GeneralFormatting.LineWidth
local LineColor_upvr = Constants.GeneralFormatting.LineColor
local Immutable_upvr = require(script.Parent.Parent.Immutable)
function any_extend_result1.render(arg1) -- Line 14
	--[[ Upvalues[7]:
		[1]: Roact_upvr (readonly)
		[2]: DownArrow_upvr (readonly)
		[3]: RightArrow_upvr (readonly)
		[4]: ArrowWidth_upvr (readonly)
		[5]: LineWidth_upvr (readonly)
		[6]: LineColor_upvr (readonly)
		[7]: Immutable_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var10 = arg1.props[Roact_upvr.Children]
	if not var10 then
		var10 = {}
	end
	local onButtonPress = arg1.props.onButtonPress
	local module = {}
	local var13
	if onButtonPress then
		local tbl = {
			Visible = arg1.props.isExpandable;
		}
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var13 = DownArrow_upvr
			return var13
		end
		if not arg1.props.isExpanded or not INLINED() then
			var13 = RightArrow_upvr
		end
		tbl.Image = var13
		var13 = 1
		tbl.BackgroundTransparency = var13
		var13 = UDim2.new(0, ArrowWidth_upvr, 0, ArrowWidth_upvr)
		tbl.Size = var13
		var13 = UDim2.new(0, arg1.props.inset or 0, 0.5, -ArrowWidth_upvr / 2)
		tbl.Position = var13
	end
	module.BannerButtonArrow = Roact_upvr.createElement("ImageLabel", tbl)
	module.HorizontalLineTop = Roact_upvr.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, LineWidth_upvr);
		BackgroundColor3 = LineColor_upvr;
		BorderSizePixel = 0;
	})
	module.HorizontalLineBottom = Roact_upvr.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, LineWidth_upvr);
		Position = UDim2.new(0, 0, 1, -LineWidth_upvr);
		BackgroundColor3 = LineColor_upvr;
		BorderSizePixel = 0;
	})
	return Roact_upvr.createElement("ImageButton", {
		Size = arg1.props.size;
		Position = arg1.props.pos;
		BackgroundTransparency = 1;
		LayoutOrder = arg1.props.layoutOrder;
		[Roact_upvr.Event.Activated] = onButtonPress;
		[Roact_upvr.Event.MouseEnter] = arg1.props.onMouseEnter;
		[Roact_upvr.Event.MouseLeave] = arg1.props.onMouseLeave;
		[Roact_upvr.Event.MouseMoved] = arg1.props.onMouseMove;
		[Roact_upvr.Event.MouseButton2Click] = arg1.props.onMouse2Click;
	}, Immutable_upvr.JoinDictionaries(module, var10))
end
return any_extend_result1