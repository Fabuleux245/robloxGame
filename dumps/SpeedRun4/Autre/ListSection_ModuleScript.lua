-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:59:54
-- Luau version 6, Types version 3
-- Time taken: 0.003734 seconds

local CorePackages = game:GetService("CorePackages")
local Roact_upvr = require(CorePackages.Packages.Roact)
local RoactGamepad_upvr = require(CorePackages.Packages.RoactGamepad)
local t = require(CorePackages.Packages.t)
local any_extend_result1_upvr = Roact_upvr.PureComponent:extend("ListSection")
any_extend_result1_upvr.validateProps = t.strictInterface({
	headerText = t.string;
	items = t.array(t.string);
	layoutOrder = t.integer;
	isFirstSection = t.boolean;
	isLastSection = t.boolean;
	NextSelectionLeft = t.optional(t.table);
	NextSelectionRight = t.optional(t.table);
	NextSelectionUp = t.optional(t.table);
	NextSelectionDown = t.optional(t.table);
	forwardRef = t.table;
})
function any_extend_result1_upvr.init(arg1) -- Line 29
	--[[ Upvalues[1]:
		[1]: RoactGamepad_upvr (readonly)
	]]
	arg1.listRefCache = RoactGamepad_upvr.createRefCache()
end
local ListEntry_upvr = require(script.Parent.ListEntry)
local RoactFitComponents_upvr = require(CorePackages.Packages.AvatarExperienceDeps).RoactFitComponents
function any_extend_result1_upvr.render(arg1) -- Line 33
	--[[ Upvalues[4]:
		[1]: Roact_upvr (readonly)
		[2]: RoactGamepad_upvr (readonly)
		[3]: ListEntry_upvr (readonly)
		[4]: RoactFitComponents_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local module = {}
	local tbl_2 = {
		text = arg1.props.headerText;
		hasBullet = false;
		layoutOrder = 0;
	}
	local var19
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var19 = arg1.firstEntryPositionChanged
		return var19
	end
	if not arg1.props.isFirstSection or not INLINED() then
		var19 = nil
	end
	tbl_2.positionChangedCallback = var19
	local function INLINED_2() -- Internal function, doesn't exist in bytecode
		var19 = arg1.listRefCache[1]
		return var19
	end
	if 0 >= #arg1.props.items or not INLINED_2() then
		var19 = nil
	end
	tbl_2.NextSelectionDown = var19
	var19 = Roact_upvr.Ref
	tbl_2[var19] = arg1.listRefCache[0]
	module[0] = Roact_upvr.createElement(RoactGamepad_upvr.Focusable[ListEntry_upvr], tbl_2)
	for i, v in ipairs(arg1.props.items) do
		local var23
		if arg1.props.isLastSection and i == #arg1.props.items then
			var23 = arg1.lastEntryPositionChanged
		end
		local tbl = {
			text = v;
			hasBullet = true;
			layoutOrder = i;
			positionChangedCallback = var23;
			NextSelectionUp = arg1.listRefCache[i - 1];
		}
		if i == #arg1.props.items or not arg1.listRefCache[i + 1] then
		end
		tbl.NextSelectionDown = nil
		tbl[Roact_upvr.Ref] = arg1.listRefCache[i]
		module[i] = Roact_upvr.createElement(RoactGamepad_upvr.Focusable[ListEntry_upvr], tbl)
	end
	return Roact_upvr.createElement(RoactGamepad_upvr.Focusable[RoactFitComponents_upvr.FitFrameVertical], {
		width = UDim.new(1, 0);
		FillDirection = Enum.FillDirection.Vertical;
		VerticalAlignment = Enum.VerticalAlignment.Top;
		BackgroundTransparency = 1;
		LayoutOrder = arg1.props.layoutOrder;
		defaultChild = arg1.listRefCache[0];
		NextSelectionLeft = arg1.props.NextSelectionLeft;
		NextSelectionRight = arg1.props.NextSelectionRight;
		NextSelectionUp = arg1.props.NextSelectionUp;
		NextSelectionDown = arg1.props.NextSelectionDown;
		[Roact_upvr.Ref] = arg1.props.forwardRef;
	}, module)
end
local Cryo_upvr = require(CorePackages.Packages.Cryo)
return Roact_upvr.forwardRef(function(arg1, arg2) -- Line 84
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: any_extend_result1_upvr (readonly)
		[3]: Cryo_upvr (readonly)
	]]
	local module_2 = {}
	module_2.forwardRef = arg2
	return Roact_upvr.createElement(any_extend_result1_upvr, Cryo_upvr.Dictionary.join(arg1, module_2))
end)