-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:13:12
-- Luau version 6, Types version 3
-- Time taken: 0.003149 seconds

local Parent_2 = script.Parent.Parent.Parent
local Parent = Parent_2.Parent
local t = require(Parent.t)
local Roact_upvr = require(Parent.Roact)
local any_extend_result1 = Roact_upvr.PureComponent:extend("ListTable")
any_extend_result1.validateProps = t.strictInterface({
	layoutOrder = t.optional(t.integer);
	size = t.optional(t.UDim2);
	showDividers = t.optional(t.boolean);
	dividerStartOffset = t.optional(t.number);
	anchorPoint = t.optional(t.Vector2);
	position = t.optional(t.UDim2);
	automaticSize = t.optional(t.enum(Enum.AutomaticSize));
	cells = t.array(t.table);
})
any_extend_result1.defaultProps = {
	showDividers = true;
	dividerStartOffset = 24;
}
local withStyle_upvr = require(Parent_2.Core.Style.withStyle)
function any_extend_result1.render(arg1) -- Line 49
	--[[ Upvalues[2]:
		[1]: withStyle_upvr (readonly)
		[2]: Roact_upvr (readonly)
	]]
	return withStyle_upvr(function(arg1_2) -- Line 50
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: Roact_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local size = arg1.props.size
		local automaticSize = arg1.props.automaticSize
		if not size then
			if automaticSize then
				if automaticSize == Enum.AutomaticSize.X then
					size = UDim2.fromScale(0, 1)
				elseif automaticSize == Enum.AutomaticSize.Y then
					size = UDim2.fromScale(1, 0)
				elseif automaticSize == Enum.AutomaticSize.XY then
					size = UDim2.fromScale(0, 0)
				else
					size = UDim2.fromScale(1, 1)
				end
			else
				size = UDim2.fromScale(1, 1)
			end
		end
		local module = {
			ListLayout = Roact_upvr.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder;
				FillDirection = Enum.FillDirection.Vertical;
			});
		}
		local cells = arg1.props.cells
		for i, v in ipairs(cells) do
			local showDividers = arg1.props.showDividers
			if showDividers then
				if i >= #cells then
					showDividers = false
				else
					showDividers = true
				end
			end
			local tbl_2 = {
				Content = v;
			}
			local function INLINED() -- Internal function, doesn't exist in bytecode
				tbl.ZIndex = 100
				tbl.BackgroundTransparency = arg1_2.Theme.Divider.Transparency
				tbl.BackgroundColor3 = arg1_2.Theme.Divider.Color
				tbl.BorderSizePixel = 0
				tbl.Position = UDim2.new(0, arg1.props.dividerStartOffset, 1, -1)
				tbl.Size = UDim2.new(1, -arg1.props.dividerStartOffset, 0, 1)
				local tbl = {}
				return Roact_upvr.createElement("Frame", tbl)
			end
			if not showDividers or not INLINED() then
			end
			tbl_2.Divider = nil
			module["Cell "..i] = Roact_upvr.createElement("Frame", {
				LayoutOrder = i;
				Size = UDim2.fromScale(1, 0);
				BackgroundTransparency = 1;
				BorderSizePixel = 0;
				AutomaticSize = Enum.AutomaticSize.Y;
			}, tbl_2)
		end
		return Roact_upvr.createElement("Frame", {
			LayoutOrder = arg1.props.layoutOrder;
			Size = size;
			AutomaticSize = automaticSize;
			AnchorPoint = arg1.props.anchorPoint;
			Position = arg1.props.position;
			BackgroundTransparency = 1;
		}, module)
	end)
end
return any_extend_result1