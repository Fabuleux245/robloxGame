-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:45:29
-- Luau version 6, Types version 3
-- Time taken: 0.002485 seconds

local Roact_upvr = require(game:GetService("CorePackages").Packages.Roact)
local any_extend_result1 = Roact_upvr.PureComponent:extend("RectangleButton")
any_extend_result1.defaultProps = {
	visible = true;
}
function any_extend_result1.init(arg1) -- Line 12
	arg1.state = {
		isHovering = false;
	}
end
local Theme_upvr = require(game:GetService("CoreGui").RobloxGui.Modules.Settings.Theme)
function any_extend_result1.render(arg1) -- Line 18
	--[[ Upvalues[2]:
		[1]: Roact_upvr (readonly)
		[2]: Theme_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local zIndex = arg1.props.zIndex
	local var7 = arg1.props[Roact_upvr.Children]
	if not var7 then
		var7 = {}
	end
	var7.Border = Roact_upvr.createElement("UIStroke", {
		Color = Theme_upvr.color("DefaultButtonStroke");
		Transparency = Theme_upvr.transparency("DefaultButtonStroke");
		Thickness = Theme_upvr.DefaultStokeThickness;
	})
	var7.UICorner = Roact_upvr.createElement("UICorner", {
		CornerRadius = Theme_upvr.DefaultCornerRadius;
	})
	local module_2 = {
		BackgroundTransparency = 1;
		Image = "";
		Selectable = false;
		Size = arg1.props.size;
		Position = arg1.props.position;
		AnchorPoint = arg1.props.anchorPoint;
		LayoutOrder = arg1.props.layoutOrder;
		ZIndex = zIndex;
		Visible = arg1.props.visible;
		[Roact_upvr.Event.InputBegan] = function() -- Line 51
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1:setState({
				isHovering = true;
			})
		end;
		[Roact_upvr.Event.InputEnded] = function() -- Line 54
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1:setState({
				isHovering = false;
			})
		end;
	}
	local onClick_upvr = arg1.props.onClick
	module_2[Roact_upvr.Event.Activated] = function() -- Line 58
		--[[ Upvalues[2]:
			[1]: onClick_upvr (readonly)
			[2]: arg1 (readonly)
		]]
		if onClick_upvr then
			arg1:setState({
				isHovering = false;
			})
			onClick_upvr()
		end
	end
	local module = {}
	local tbl = {}
	if arg1.state.isHovering then
	else
	end
	tbl.BackgroundColor3 = Theme_upvr.color("DefaultButton")
	if arg1.state.isHovering then
	else
	end
	tbl.BackgroundTransparency = Theme_upvr.transparency("DefaultButton")
	tbl.Position = UDim2.new(0, 0, 0, 0)
	tbl.Size = UDim2.new(1, 0, 1, 0)
	tbl.ZIndex = zIndex
	module.ButtonBackgroundUIBlox = Roact_upvr.createElement("ImageLabel", tbl, var7)
	return Roact_upvr.createElement("ImageButton", module_2, module)
end
return any_extend_result1