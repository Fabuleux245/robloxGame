-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:54:02
-- Luau version 6, Types version 3
-- Time taken: 0.005425 seconds

local InGameMenuDependencies = require(game:GetService("CorePackages").Packages.InGameMenuDependencies)
local Roact_upvr = InGameMenuDependencies.Roact
local UIBlox = InGameMenuDependencies.UIBlox
local t = InGameMenuDependencies.t
local Parent = script.Parent.Parent
local any_extend_result1 = Roact_upvr.PureComponent:extend("ThemedButton")
any_extend_result1.validateProps = t.strictInterface({
	normalThemeKey = t.string;
	hoverThemeKey = t.string;
	imageProps = t.strictInterface({
		Image = t.union(t.string, t.table);
		ScaleType = t.enum(Enum.ScaleType);
		SliceCenter = t.Rect;
	});
	enabled = t.optional(t.boolean);
	renderChildren = t.callback;
	onActivated = t.callback;
	AnchorPoint = t.optional(t.Vector2);
	LayoutOrder = t.optional(t.integer);
	Position = t.optional(t.UDim2);
	Size = t.optional(t.UDim2);
	Visible = t.optional(t.boolean);
	ButtonRef = t.optional(t.union(t.callback, t.table));
})
any_extend_result1.defaultProps = {
	imageProps = require(Parent.Resources.Assets).Images.RoundedRect;
	enabled = true;
}
function any_extend_result1.init(arg1) -- Line 67
	arg1:setState({
		hover = false;
		press = false;
	})
end
local withStyle_upvr = UIBlox.Core.Style.withStyle
local divideTransparency_upvr = require(Parent.Utility.divideTransparency)
local ImageSetButton_upvr = UIBlox.Core.ImageSet.ImageSetButton
local CursorKind_upvr = UIBlox.App.SelectionImage.CursorKind
function any_extend_result1.renderWithSelectionCursor(arg1, arg2) -- Line 74
	--[[ Upvalues[5]:
		[1]: withStyle_upvr (readonly)
		[2]: divideTransparency_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: ImageSetButton_upvr (readonly)
		[5]: CursorKind_upvr (readonly)
	]]
	local props_upvr = arg1.props
	local var16_upvw
	if props_upvr.enabled and arg1.state.hover then
		var16_upvw = props_upvr.hoverThemeKey
	end
	return withStyle_upvr(function(arg1_2) -- Line 82
		--[[ Upvalues[8]:
			[1]: var16_upvw (read and write)
			[2]: divideTransparency_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: props_upvr (readonly)
			[5]: Roact_upvr (copied, readonly)
			[6]: ImageSetButton_upvr (copied, readonly)
			[7]: arg2 (readonly)
			[8]: CursorKind_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var18 = var16_upvw
		local var19 = arg1_2.Theme[var18]
		local var20
		if var19 == nil then
			var18 = false
		else
			var18 = true
		end
		var20 = "theme key "..var16_upvw.." is nil"
		assert(var18, var20)
		if arg1.state.press then
			var20 = 2
		else
			var20 = 1
		end
		var20 = props_upvr
		if not var20.enabled then
			local var21 = 0.5
		end
		var20 = Roact_upvr
		var20 = ImageSetButton_upvr
		local enabled_2 = props_upvr.enabled
		if enabled_2 then
			enabled_2 = arg1.state.hover
		end
		local enabled = props_upvr.enabled
		if enabled then
			enabled = arg1.state.press
		end
		return var20.createElement(var20, {
			Visible = props_upvr.Visible;
			BackgroundTransparency = 1;
			ImageColor3 = var19.Color;
			Position = props_upvr.Position;
			Size = props_upvr.Size;
			AnchorPoint = props_upvr.AnchorPoint;
			ImageTransparency = var21;
			LayoutOrder = props_upvr.LayoutOrder;
			ScaleType = props_upvr.imageProps.ScaleType;
			SliceCenter = props_upvr.imageProps.SliceCenter;
			Image = props_upvr.imageProps.Image;
			SelectionImageObject = arg2(CursorKind_upvr.RoundedRectNoInset);
			[Roact_upvr.Event.Activated] = function() -- Line 102
				--[[ Upvalues[1]:
					[1]: props_upvr (copied, readonly)
				]]
				if props_upvr.enabled then
					props_upvr.onActivated()
				end
			end;
			[Roact_upvr.Event.MouseEnter] = function() -- Line 107
				--[[ Upvalues[1]:
					[1]: arg1 (copied, readonly)
				]]
				arg1:setState({
					hover = true;
				})
			end;
			[Roact_upvr.Event.MouseLeave] = function() -- Line 112
				--[[ Upvalues[1]:
					[1]: arg1 (copied, readonly)
				]]
				arg1:setState({
					hover = false;
					press = false;
				})
			end;
			[Roact_upvr.Event.InputBegan] = function(arg1_3, arg2_2) -- Line 118
				--[[ Upvalues[1]:
					[1]: arg1 (copied, readonly)
				]]
				if arg2_2.UserInputType == Enum.UserInputType.MouseButton1 or arg2_2.UserInputType == Enum.UserInputType.Touch then
					arg1:setState({
						press = true;
					})
				end
			end;
			[Roact_upvr.Event.InputEnded] = function(arg1_4, arg2_3) -- Line 128
				--[[ Upvalues[1]:
					[1]: arg1 (copied, readonly)
				]]
				if arg2_3.UserInputType == Enum.UserInputType.MouseButton1 or arg2_3.UserInputType == Enum.UserInputType.Touch then
					arg1:setState({
						press = false;
					})
				end
			end;
			[Roact_upvr.Ref] = arg1.props.ButtonRef;
		}, props_upvr.renderChildren(var21, enabled_2, enabled))
	end)
end
local withSelectionCursorProvider_upvr = UIBlox.App.SelectionImage.withSelectionCursorProvider
function any_extend_result1.render(arg1) -- Line 143
	--[[ Upvalues[1]:
		[1]: withSelectionCursorProvider_upvr (readonly)
	]]
	return withSelectionCursorProvider_upvr(function(arg1_5) -- Line 144
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1:renderWithSelectionCursor(arg1_5)
	end)
end
return any_extend_result1