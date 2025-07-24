-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:48:05
-- Luau version 6, Types version 3
-- Time taken: 0.002077 seconds

local CorePackages = game:GetService("CorePackages")
local Roact_upvr = require(CorePackages.Packages.Roact)
local t = require(CorePackages.Packages.t)
local any_extend_result1_upvr = Roact_upvr.PureComponent:extend("EntryFrame")
any_extend_result1_upvr.validateProps = t.strictInterface(require(CorePackages.Workspace.Packages.RoactUtils).validatePropsWithForwardRef({
	sizeX = t.integer;
	sizeY = t.integer;
	isTeamFrame = t.boolean;
	onActivated = t.optional(t.callback);
	onSelectionGained = t.optional(t.callback);
	onSelectionLost = t.optional(t.callback);
	onMouseEnter = t.optional(t.callback);
	onMouseLeave = t.optional(t.callback);
	onMouseDown = t.optional(t.callback);
	onInputEnded = t.optional(t.callback);
	backgroundStyle = t.strictInterface({
		Color = t.Color3;
		Transparency = t.number;
	});
	overlayStyle = t.strictInterface({
		Color = t.Color3;
		Transparency = t.number;
	});
	doubleOverlay = t.optional(t.boolean);
	[Roact_upvr.Ref] = t.optional(t.table);
	[Roact_upvr.Children] = t.optional(t.table);
}))
function any_extend_result1_upvr.render(arg1) -- Line 37
	--[[ Upvalues[1]:
		[1]: Roact_upvr (readonly)
	]]
	return Roact_upvr.createElement("TextButton", {
		Size = UDim2.new(0, arg1.props.sizeX, 0, arg1.props.sizeY);
		BackgroundTransparency = arg1.props.backgroundStyle.Transparency;
		BackgroundColor3 = arg1.props.backgroundStyle.Color;
		BorderSizePixel = 0;
		AutoButtonColor = false;
		Text = "";
		AutoLocalize = false;
		Selectable = not arg1.props.isTeamFrame;
		Active = not arg1.props.isTeamFrame;
		[Roact_upvr.Event.Activated] = arg1.props.onActivated;
		[Roact_upvr.Event.SelectionGained] = arg1.props.onSelectionGained;
		[Roact_upvr.Event.SelectionLost] = arg1.props.onSelectionLost;
		[Roact_upvr.Event.MouseEnter] = arg1.props.onMouseEnter;
		[Roact_upvr.Event.MouseLeave] = arg1.props.onMouseLeave;
		[Roact_upvr.Event.MouseButton1Down] = arg1.props.onMouseDown;
		[Roact_upvr.Event.MouseButton1Up] = arg1.props.onInputEnded;
		[Roact_upvr.Event.InputEnded] = function(arg1_2, arg2) -- Line 58
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			if arg2.UserInputType == Enum.UserInputType.Touch then
				if arg1.props.onMouseLeave then
					arg1.props.onMouseLeave()
				end
				if arg1.props.onInputEnded then
					arg1.props.onInputEnded()
				end
			end
		end or nil;
		[Roact_upvr.Ref] = arg1.props.forwardRef;
	}, {
		DoubleOverLay = Roact_upvr.createElement("Frame", {
			ZIndex = 1;
			Visible = arg1.props.doubleOverlay;
			Size = UDim2.new(1, 0, 1, 0);
			BackgroundTransparency = arg1.props.overlayStyle.Transparency;
			BackgroundColor3 = arg1.props.overlayStyle.Color;
			BorderSizePixel = 0;
		});
		OverlayFrame = Roact_upvr.createElement("Frame", {
			ZIndex = 2;
			Size = UDim2.new(1, 0, 1, 0);
			BackgroundTransparency = arg1.props.overlayStyle.Transparency;
			BackgroundColor3 = arg1.props.overlayStyle.Color;
			BorderSizePixel = 0;
		}, arg1.props[Roact_upvr.Children]);
	})
end
local Cryo_upvr = require(CorePackages.Packages.Cryo)
return Roact_upvr.forwardRef(function(arg1, arg2) -- Line 90
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: any_extend_result1_upvr (readonly)
		[3]: Cryo_upvr (readonly)
	]]
	local module = {}
	module.forwardRef = arg2
	return Roact_upvr.createElement(any_extend_result1_upvr, Cryo_upvr.Dictionary.join(arg1, module))
end)