-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:53:11
-- Luau version 6, Types version 3
-- Time taken: 0.003586 seconds

local InGameMenuDependencies = require(game:GetService("CorePackages").Packages.InGameMenuDependencies)
local Roact_upvr = InGameMenuDependencies.Roact
local t = InGameMenuDependencies.t
local Parent = script.Parent.Parent.Parent
local ThemedTextLabel_upvr = require(Parent.Components.ThemedTextLabel)
local function renderHorizontalSpacer_upvr(arg1, arg2, arg3) -- Line 30, Named "renderHorizontalSpacer"
	--[[ Upvalues[2]:
		[1]: Roact_upvr (readonly)
		[2]: ThemedTextLabel_upvr (readonly)
	]]
	if not arg3 or not UDim2.new(0, 19, 0, 24) then
	end
	local var7 = arg3
	if var7 then
		var7 = Enum.TextYAlignment.Bottom
	end
	local module_4 = {
		themeKey = "TextEmphasis";
		fontKey = "Header1";
	}
	module_4.Text = arg1
	module_4.Size = UDim2.new(0, 19, 0, 16)
	module_4.TextYAlignment = var7
	module_4.LayoutOrder = arg2
	return Roact_upvr.createElement(ThemedTextLabel_upvr, module_4)
end
local KeyLabel_upvr = InGameMenuDependencies.UIBlox.App.Menu.KeyLabel
local PointerLabel_upvr = require(Parent.Components.PointerLabel)
local function renderKey_upvr(arg1, arg2) -- Line 44, Named "renderKey"
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: KeyLabel_upvr (readonly)
		[3]: PointerLabel_upvr (readonly)
	]]
	if arg1.EnumType == Enum.KeyCode then
		local module_5 = {}
		module_5.keyCode = arg1
		module_5.textThemeKey = "TextEmphasis"
		module_5.LayoutOrder = arg2
		return Roact_upvr.createElement(KeyLabel_upvr, module_5)
	end
	local module = {}
	module.input = arg1
	module.LayoutOrder = arg2
	return Roact_upvr.createElement(PointerLabel_upvr, module)
end
local function renderInputIconContainer_upvr(arg1, arg2) -- Line 60, Named "renderInputIconContainer"
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: renderKey_upvr (readonly)
		[3]: renderHorizontalSpacer_upvr (readonly)
	]]
	local module_3 = {}
	local var22
	if not arg2 then
		var22 = 7
	else
		var22 = 0
	end
	module_3.ListLayout = Roact_upvr.createElement("UIListLayout", {
		FillDirection = Enum.FillDirection.Horizontal;
		VerticalAlignment = Enum.VerticalAlignment.Center;
		HorizontalAlignment = Enum.HorizontalAlignment.Right;
		SortOrder = Enum.SortOrder.LayoutOrder;
		Padding = UDim.new(0, var22);
	})
	for i, v in ipairs(arg1) do
		local var27
		if typeof(v) ~= "table" then
			module_3["input"..i] = renderKey_upvr(v, var27)
			var27 += 1
			if arg2 and i == #arg1 then
				module_3.Elipses = renderHorizontalSpacer_upvr("...", var27, true)
				-- KONSTANTWARNING: GOTO [105] #84
			end
		else
			for i_2, v_2 in ipairs(v) do
				local formatted = string.format("%d_%d", i, i_2)
				module_3["groupedInput"..formatted] = renderKey_upvr(v_2, var27)
				var27 += 1
				if i_2 < #v then
					module_3["groupedDivider"..formatted] = renderHorizontalSpacer_upvr('+', var27)
					var27 += 1
				end
			end
		end
		if not arg2 and i < #arg1 then
			i_2 = var27
			module_3["divider"..i] = renderHorizontalSpacer_upvr('/', i_2)
			var27 += 1
		end
	end
	return Roact_upvr.createElement("Frame", {
		BackgroundTransparency = 1;
		Size = UDim2.new(0, 0, 1, 0);
		Position = UDim2.new(1, 0, 0, 0);
	}, module_3)
end
local GlobalConfig_upvr = require(Parent.GlobalConfig)
local any_strictInterface_result1_upvr = t.strictInterface({
	actionDescription = t.string;
	inputs = t.table;
	isList = t.optional(t.boolean);
	hasDivider = t.boolean;
	LayoutOrder = t.integer;
})
local withLocalization_upvr = require(Parent.Localization.withLocalization)
local Divider_upvr = require(Parent.Components.Divider)
return function(arg1) -- Line 115, Named "ControlEntry"
	--[[ Upvalues[7]:
		[1]: GlobalConfig_upvr (readonly)
		[2]: any_strictInterface_result1_upvr (readonly)
		[3]: withLocalization_upvr (readonly)
		[4]: Roact_upvr (readonly)
		[5]: ThemedTextLabel_upvr (readonly)
		[6]: Divider_upvr (readonly)
		[7]: renderInputIconContainer_upvr (readonly)
	]]
	if GlobalConfig_upvr.propValidation then
		assert(any_strictInterface_result1_upvr(arg1))
	end
	return withLocalization_upvr({
		actionDescription = arg1.actionDescription;
	})(function(arg1_2) -- Line 122
		--[[ Upvalues[5]:
			[1]: Roact_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: ThemedTextLabel_upvr (copied, readonly)
			[4]: Divider_upvr (copied, readonly)
			[5]: renderInputIconContainer_upvr (copied, readonly)
		]]
		local module_2 = {
			ActionLabel = Roact_upvr.createElement(ThemedTextLabel_upvr, {
				fontKey = "Header2";
				themeKey = "TextEmphasis";
				TextXAlignment = Enum.TextXAlignment.Left;
				Size = UDim2.new(0, 200, 0, 22);
				AnchorPoint = Vector2.new(0, 0.5);
				Position = UDim2.new(0, 0, 0.5, 0);
				Text = arg1_2.actionDescription;
			});
		}
		local hasDivider = arg1.hasDivider
		if hasDivider then
			hasDivider = Roact_upvr.createElement
			hasDivider = hasDivider(Divider_upvr, {
				Size = UDim2.new(1, 0, 0, 1);
				Position = UDim2.new(0, 0, 1, -1);
			})
		end
		module_2.Divider = hasDivider
		module_2.Inputs = renderInputIconContainer_upvr(arg1.inputs, arg1.isList)
		return Roact_upvr.createElement("Frame", {
			LayoutOrder = arg1.LayoutOrder;
			BackgroundTransparency = 1;
			Size = UDim2.new(1, 0, 0, 50);
		}, module_2)
	end)
end