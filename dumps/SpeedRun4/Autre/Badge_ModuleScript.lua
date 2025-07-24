-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:46:20
-- Luau version 6, Types version 3
-- Time taken: 0.002624 seconds

local CorePackages = game:GetService("CorePackages")
local React_upvr = require(CorePackages.Packages.React)
local UIBlox = require(CorePackages.Packages.UIBlox)
local Parent = script.Parent.Parent.Parent.Parent
function noop() -- Line 20
end
local useStyle_upvr = UIBlox.Core.Style.useStyle
local useDispatch_upvr = require(CorePackages.Workspace.Packages.RoactUtils).Hooks.RoactRodux.useDispatch
local var8_upvr = require(Parent.Flags.GetFFlagEnableChromeBackwardsSignalAPI)()
local SetKeepOutArea_upvr = require(Parent.Actions.SetKeepOutArea)
local Constants_upvr = require(Parent.Constants)
local createElement_upvr = React_upvr.createElement
local Interactable_upvr = UIBlox.Core.Control.Interactable
local ControlState_upvr = UIBlox.Core.Control.Enum.ControlState
local AppFonts_upvr = require(CorePackages.Workspace.Packages.Style).AppFonts
return function(arg1) -- Line 28
	--[[ Upvalues[10]:
		[1]: useStyle_upvr (readonly)
		[2]: useDispatch_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: var8_upvr (readonly)
		[5]: SetKeepOutArea_upvr (readonly)
		[6]: Constants_upvr (readonly)
		[7]: createElement_upvr (readonly)
		[8]: Interactable_upvr (readonly)
		[9]: ControlState_upvr (readonly)
		[10]: AppFonts_upvr (readonly)
	]]
	local var6_result1 = useStyle_upvr()
	local any_useState_result1, any_useState_result2_upvr = React_upvr.useState(false)
	local var7_result1_upvr = useDispatch_upvr()
	local function var18(arg1_2) -- Line 33
		--[[ Upvalues[4]:
			[1]: var8_upvr (copied, readonly)
			[2]: var7_result1_upvr (readonly)
			[3]: SetKeepOutArea_upvr (copied, readonly)
			[4]: Constants_upvr (copied, readonly)
		]]
		if var8_upvr and arg1_2 then
			var7_result1_upvr(SetKeepOutArea_upvr(Constants_upvr.BadgeOver13KeepOutAreaId, Vector2.new(arg1_2.AbsolutePosition.X - 2, arg1_2.AbsolutePosition.Y - 2), Vector2.new(arg1_2.AbsoluteSize.X + 4, arg1_2.AbsoluteSize.Y + 4)))
		end
	end
	local module = {
		constraint = createElement_upvr("UISizeConstraint", {
			MinSize = Vector2.new(32, 32);
		});
	}
	local tbl = {
		AnchorPoint = Vector2.new(0.5, 0.5);
		Position = UDim2.fromScale(0.5, 0.5);
		Text = "13+";
		Font = AppFonts_upvr.default:getBold();
		TextSize = 12;
	}
	local Color = var6_result1.Theme.TextEmphasis.Color
	tbl.BackgroundColor3 = Color
	if any_useState_result1 then
		Color = 0.25
	else
		Color = var6_result1.Theme.TextEmphasis.Transparency
	end
	tbl.BackgroundTransparency = Color
	tbl.AutomaticSize = Enum.AutomaticSize.XY
	module.text = createElement_upvr("TextLabel", tbl, {
		padding = createElement_upvr("UIPadding", {
			PaddingTop = UDim.new(0, 3);
			PaddingBottom = UDim.new(0, 3);
			PaddingLeft = UDim.new(0, 6);
			PaddingRight = UDim.new(0, 6);
		});
		shape = createElement_upvr("UICorner", {
			CornerRadius = UDim.new(0, 4);
		});
		stroke = createElement_upvr("UIStroke", {
			Thickness = 2;
			Color = var6_result1.Theme.BackgroundMuted.Color;
			ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
		});
	})
	return createElement_upvr(Interactable_upvr, {
		BackgroundTransparency = 1;
		AutomaticSize = Enum.AutomaticSize.XY;
		isDisabled = false;
		LayoutOrder = arg1.layoutOrder;
		onStateChanged = React_upvr.useCallback(function(arg1_3, arg2) -- Line 49
			--[[ Upvalues[2]:
				[1]: any_useState_result2_upvr (readonly)
				[2]: ControlState_upvr (copied, readonly)
			]]
			local var22 = true
			if arg2 ~= ControlState_upvr.Hover then
				if arg2 ~= ControlState_upvr.Pressed then
					var22 = false
				else
					var22 = true
				end
			end
			any_useState_result2_upvr(var22)
		end);
		[React_upvr.Event.Activated] = React_upvr.useCallback(function() -- Line 52
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1.setIsPopupVisible(not arg1.isPopupVisible)
		end);
		[React_upvr.Change.AbsoluteSize] = var18;
		[React_upvr.Change.AbsolutePosition] = var18;
	}, module)
end