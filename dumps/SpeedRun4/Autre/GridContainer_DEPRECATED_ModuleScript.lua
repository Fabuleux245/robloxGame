-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:14:06
-- Luau version 6, Types version 3
-- Time taken: 0.002068 seconds

local Parent_3 = script.Parent
local Responsive = Parent_3.Parent.Responsive
local Parent_2 = Parent_3.Parent.Parent.Parent
local Parent = Parent_2.Parent
local Roact_upvr = require(Parent.Roact)
local t = require(Parent.t)
local ResponsiveLayoutConfigReader_upvr = require(Responsive.ResponsiveLayoutConfigReader)
local any_extend_result1 = Roact_upvr.PureComponent:extend("GridContainer_DEPRECATED")
any_extend_result1.validateProps = t.strictInterface({
	config = t.optional(t.table);
	layoutOrder = t.optional(t.integer);
	padding = t.optional(t.UDim);
	[Roact_upvr.Children] = t.optional(t.table);
})
any_extend_result1.defaultProps = {
	config = {
		columns = 1;
		margin = 0;
		gutter = 0;
	};
}
local bind_upvr = require(Parent_2.Utility.bind)
function any_extend_result1.init(arg1) -- Line 36
	--[[ Upvalues[3]:
		[1]: ResponsiveLayoutConfigReader_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: bind_upvr (readonly)
	]]
	arg1:setState({
		breakpoint = ResponsiveLayoutConfigReader_upvr.findBreakpoint(arg1.props.config, -1);
	})
	arg1.frameRef = Roact_upvr.createRef()
	arg1.updateBreakpoint = bind_upvr(arg1.updateBreakpoint, arg1)
end
function any_extend_result1.updateBreakpoint(arg1, arg2) -- Line 45
	--[[ Upvalues[1]:
		[1]: ResponsiveLayoutConfigReader_upvr (readonly)
	]]
	local X = arg2.AbsoluteSize.X
	local breakpoint = arg1.state.breakpoint
	if X < breakpoint.min or breakpoint.max < X then
		local any_findBreakpoint_result1 = ResponsiveLayoutConfigReader_upvr.findBreakpoint(arg1.props.config, X)
		if any_findBreakpoint_result1 ~= arg1.state.breakpoint then
			arg1:setState({
				breakpoint = any_findBreakpoint_result1;
			})
		end
	end
end
local ResponsiveLayoutContext_upvr = require(Responsive.ResponsiveLayoutContext)
local Object_upvr = require(Parent.LuauPolyfill).Object
function any_extend_result1.render(arg1) -- Line 58
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: ResponsiveLayoutContext_upvr (readonly)
		[3]: Object_upvr (readonly)
	]]
	return Roact_upvr.createElement(ResponsiveLayoutContext_upvr.Provider, {
		value = {
			config = arg1.props.config;
			breakpoint = arg1.state.breakpoint.name;
		};
	}, {
		GridContainer_DEPRECATED = Roact_upvr.createElement("Frame", {
			Size = UDim2.fromScale(1, 0);
			AutomaticSize = Enum.AutomaticSize.Y;
			BackgroundTransparency = 1;
			LayoutOrder = arg1.props.layoutOrder;
			[Roact_upvr.Ref] = arg1.frameRef;
			[Roact_upvr.Change.AbsoluteSize] = arg1.updateBreakpoint;
		}, Object_upvr.assign({
			_uiblox_grid_layout_ = Roact_upvr.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical;
				HorizontalAlignment = Enum.HorizontalAlignment.Center;
				SortOrder = Enum.SortOrder.LayoutOrder;
				Padding = arg1.props.padding;
			});
		}, arg1.props[Roact_upvr.Children]));
	})
end
function any_extend_result1.didMount(arg1) -- Line 87
	arg1:updateBreakpoint(arg1.frameRef:getValue())
end
function any_extend_result1.didUpdate(arg1, arg2) -- Line 91
	if arg2.config ~= arg1.props.config then
		arg1:updateBreakpoint(arg1.frameRef:getValue())
	end
end
return any_extend_result1