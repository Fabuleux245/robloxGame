-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:06:44
-- Luau version 6, Types version 3
-- Time taken: 0.001551 seconds

local Roact_upvr = require(script:FindFirstAncestor("SocialLibraries").dependencies).Roact
local any_extend_result1 = Roact_upvr.PureComponent:extend("SortedList")
any_extend_result1.defaultProps = {
	entries = {};
	renderEntry = nil;
	entryHeight = 48;
	sortComparator = function(arg1, arg2) -- Line 12, Named "sortComparator"
		return true
	end;
	LayoutOrder = 0;
}
function any_extend_result1.sortEntries(arg1) -- Line 19
	local module = {}
	for _, v in pairs(arg1.props.entries) do
		table.insert(module, v)
	end
	table.sort(module, arg1.props.sortComparator)
	return module
end
function any_extend_result1.render(arg1) -- Line 31
	--[[ Upvalues[1]:
		[1]: Roact_upvr (readonly)
	]]
	local any_sortEntries_result1 = arg1:sortEntries()
	local module_2 = {
		layout = Roact_upvr.createElement("UIListLayout", {
			VerticalAlignment = Enum.VerticalAlignment.Top;
			SortOrder = Enum.SortOrder.LayoutOrder;
		});
	}
	for i_2, v_2 in pairs(any_sortEntries_result1) do
		local var22
		if i_2 ~= #any_sortEntries_result1 then
			var22 = false
		else
			var22 = true
		end
		table.insert(module_2, Roact_upvr.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, arg1.props.entryHeight);
			BackgroundTransparency = 1;
			LayoutOrder = i_2;
		}, {
			entry = arg1.props.renderEntry(v_2, var22);
		}))
	end
	return Roact_upvr.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, #arg1.props.entries * arg1.props.entryHeight);
		BackgroundTransparency = 1;
		LayoutOrder = arg1.props.LayoutOrder;
	}, module_2)
end
return any_extend_result1