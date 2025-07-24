-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:11:11
-- Luau version 6, Types version 3
-- Time taken: 0.002211 seconds

local Parent = script.Parent.Parent.Parent.Parent
local Roact_upvr = require(Parent.Roact)
local t = require(Parent.t)
local any_extend_result1 = Roact_upvr.Component:extend("PageMargin")
any_extend_result1.validateProps = t.interface({
	anchorPoint = t.optional(t.Vector2);
	position = t.optional(t.UDim2);
	backgroundColor3 = t.optional(t.Color3);
	backgroundTransparency = t.optional(t.number);
	layoutOrder = t.optional(t.number);
	size = t.optional(t.UDim2);
	useAutomaticSizing = t.optional(t.boolean);
	zIndex = t.optional(t.number);
})
any_extend_result1.defaultProps = {
	anchorPoint = Vector2.new(0, 0);
	position = UDim2.new();
	size = UDim2.fromScale(1, 1);
	backgroundTransparency = 0;
	layoutOrder = 0;
	useAutomaticSizing = false;
}
local getPageMargin_upvr = require(script.Parent.getPageMargin)
function any_extend_result1.init(arg1) -- Line 41
	--[[ Upvalues[2]:
		[1]: Roact_upvr (readonly)
		[2]: getPageMargin_upvr (readonly)
	]]
	arg1.state = {}
	arg1.ref = Roact_upvr.createRef()
	function arg1.onResize(arg1_2) -- Line 44
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: getPageMargin_upvr (copied, readonly)
		]]
		if arg1.mounted then
			local X_upvr = arg1_2.AbsoluteSize.X
			arg1:setState(function(arg1_3) -- Line 47
				--[[ Upvalues[2]:
					[1]: getPageMargin_upvr (copied, readonly)
					[2]: X_upvr (readonly)
				]]
				local getPageMargin_upvr_result1 = getPageMargin_upvr(X_upvr)
				if arg1_3.margin ~= getPageMargin_upvr_result1 then
					return {
						margin = getPageMargin_upvr_result1;
					}
				end
				return nil
			end)
		end
	end
end
local Cryo_upvr = require(Parent.Cryo)
function any_extend_result1.render(arg1) -- Line 61
	--[[ Upvalues[2]:
		[1]: Roact_upvr (readonly)
		[2]: Cryo_upvr (readonly)
	]]
	local module = {
		AnchorPoint = arg1.props.anchorPoint;
	}
	local var15
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var15 = Enum.AutomaticSize.Y
		return var15
	end
	if not arg1.props.useAutomaticSizing or not INLINED() then
		var15 = Enum.AutomaticSize.None
	end
	module.AutomaticSize = var15
	var15 = arg1.props.backgroundColor3
	module.BackgroundColor3 = var15
	var15 = arg1.props.backgroundTransparency
	module.BackgroundTransparency = var15
	var15 = 0
	module.BorderSizePixel = var15
	var15 = arg1.props.position
	module.Position = var15
	var15 = arg1.props.size
	module.Size = var15
	var15 = Roact_upvr.Change.AbsoluteSize
	module[var15] = arg1.onResize
	var15 = Roact_upvr.Ref
	module[var15] = arg1.ref
	var15 = arg1.props.layoutOrder
	module.LayoutOrder = var15
	var15 = arg1.props.zIndex
	module.ZIndex = var15
	var15 = Cryo_upvr.Dictionary.join
	var15 = var15(arg1.props[Roact_upvr.Children], {
		padding = Roact_upvr.createElement("UIPadding", {
			PaddingLeft = UDim.new(0, arg1.state.margin);
			PaddingRight = UDim.new(0, arg1.state.margin);
		});
	})
	return Roact_upvr.createElement("Frame", module, var15)
end
function any_extend_result1.didMount(arg1) -- Line 86
	arg1.mounted = true
	if arg1.ref.current then
		arg1.onResize(arg1.ref.current)
	end
end
function any_extend_result1.willUnmount(arg1) -- Line 93
	arg1.mounted = false
end
return any_extend_result1