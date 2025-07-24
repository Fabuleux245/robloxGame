-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:01:19
-- Luau version 6, Types version 3
-- Time taken: 0.002423 seconds

local Roact_upvr = require(game:GetService("CorePackages").Packages.Roact)
local Components = script.Parent.Parent.Parent.Components
local CellLabel_upvr = require(Components.CellLabel)
local Constants = require(script.Parent.Parent.Parent.Constants)
local PathEntryFrameHeight_upvr = Constants.LuauHeapFormatting.PathEntryFrameHeight
local DepthIndent_upvr = Constants.LuauHeapFormatting.DepthIndent
local CellPadding_upvr = Constants.LuauHeapFormatting.CellPadding
local any_extend_result1 = Roact_upvr.PureComponent:extend("LuauHeapViewPathEntry")
function any_extend_result1.init(arg1) -- Line 25
	arg1.state = {
		expanded = false;
	}
	function arg1.onButtonPress() -- Line 30
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:setState(function(arg1_2) -- Line 31
			return {
				expanded = not arg1_2.expanded;
			}
		end)
	end
end
function any_extend_result1.renderChildren(arg1, arg2) -- Line 39
	--[[ Upvalues[5]:
		[1]: DepthIndent_upvr (readonly)
		[2]: CellPadding_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: CellLabel_upvr (readonly)
		[5]: PathEntryFrameHeight_upvr (readonly)
	]]
	local module_2 = {}
	local var18 = 2 * DepthIndent_upvr + CellPadding_upvr
	if arg1.state.expanded and arg2 and #arg2 then
		for i, v in ipairs(arg2) do
			module_2[i] = Roact_upvr.createElement(CellLabel_upvr, {
				text = v;
				layoutOrder = i;
				size = UDim2.new(UDim.new(1, -var18), UDim.new(0, PathEntryFrameHeight_upvr));
				pos = UDim2.new(0, var18, 0, 0);
			})
		end
	end
	return module_2
end
local BannerButton_upvr = require(Components.BannerButton)
function any_extend_result1.render(arg1) -- Line 58
	--[[ Upvalues[6]:
		[1]: PathEntryFrameHeight_upvr (readonly)
		[2]: DepthIndent_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: BannerButton_upvr (readonly)
		[5]: CellLabel_upvr (readonly)
		[6]: CellPadding_upvr (readonly)
	]]
	local props = arg1.props
	local size = props.size
	if not size then
		size = UDim2.new(1, 0, 0, PathEntryFrameHeight_upvr)
	end
	local data = props.data
	local var27 = props.depth * DepthIndent_upvr
	local module = {
		layout = Roact_upvr.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical;
			HorizontalAlignment = Enum.HorizontalAlignment.Right;
			SortOrder = Enum.SortOrder.LayoutOrder;
		});
	}
	local tbl = {
		size = UDim2.new(1, 0, 0, PathEntryFrameHeight_upvr);
		inset = var27;
	}
	local expanded = arg1.state.expanded
	tbl.isExpanded = expanded
	if #data == 0 then
		expanded = false
	else
		expanded = true
	end
	tbl.isExpandable = expanded
	tbl.onButtonPress = arg1.onButtonPress
	tbl.layoutOrder = -1
	module.button = Roact_upvr.createElement(BannerButton_upvr, tbl, {
		name = Roact_upvr.createElement(CellLabel_upvr, {
			text = props.name;
			size = UDim2.new(UDim.new(1, -var27), UDim.new(1, 0));
			pos = UDim2.new(0, CellPadding_upvr + var27, 0, 0);
		});
	})
	module.children = Roact_upvr.createFragment(arg1:renderChildren(data))
	return Roact_upvr.createElement("Frame", {
		Size = size;
		BackgroundTransparency = 1;
		LayoutOrder = props.layoutOrder or 0;
		AutomaticSize = Enum.AutomaticSize.Y;
	}, module)
end
return any_extend_result1