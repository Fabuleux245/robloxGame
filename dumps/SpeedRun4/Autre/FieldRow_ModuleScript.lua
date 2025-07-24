-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:20:32
-- Luau version 6, Types version 3
-- Time taken: 0.002262 seconds

local Parent_2 = script.Parent
local Parent = Parent_2.Parent
local Foundation = require(Parent.Foundation)
local Enums = Foundation.Enums
local useTokens_upvr = Foundation.Hooks.useTokens
local createNextOrder_upvr = require(Parent.ReactUtils).createNextOrder
local React_upvr = require(Parent.React)
local ControlState_upvr = Enums.ControlState
local View_upvr = Foundation.View
local StateLayerAffordance_upvr = Enums.StateLayerAffordance
local Text_upvr = Foundation.Text
local Field_upvr = require(Parent_2.Field)
return function(arg1) -- Line 25
	--[[ Upvalues[8]:
		[1]: useTokens_upvr (readonly)
		[2]: createNextOrder_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: ControlState_upvr (readonly)
		[5]: View_upvr (readonly)
		[6]: StateLayerAffordance_upvr (readonly)
		[7]: Text_upvr (readonly)
		[8]: Field_upvr (readonly)
	]]
	local var6_result1 = useTokens_upvr()
	local var7_result1 = createNextOrder_upvr()
	local tbl_upvr = {
		Color3 = var6_result1.Color.Extended.Gray.Gray_700.Color3;
		Transparency = 0.9;
	}
	local tbl_upvr_2 = {
		Color3 = tbl_upvr.Color3;
		Transparency = 1;
	}
	local any_useBinding_result1_2, any_useBinding_result2_upvr = React_upvr.useBinding(tbl_upvr_2)
	local any_useBinding_result1, any_useBinding_result2_upvr_2 = React_upvr.useBinding(arg1.visibility:get())
	arg1.visibility:connect(function(arg1_3) -- Line 40
		--[[ Upvalues[1]:
			[1]: any_useBinding_result2_upvr_2 (readonly)
		]]
		any_useBinding_result2_upvr_2(arg1_3)
	end)
	local module = {}
	local tbl_2 = {}
	local any_createElement_result1 = React_upvr.createElement(Text_upvr, {
		LayoutOrder = var7_result1();
		tag = "auto-y grow size-full-0 text-align-x-left text-wrap text-label-large";
		textStyle = var6_result1.Color.Extended.White.White_100;
		Text = arg1.label;
	})
	tbl_2.Label = any_createElement_result1
	if arg1.description then
		any_createElement_result1 = React_upvr.createElement
		any_createElement_result1 = any_createElement_result1(View_upvr, {
			tag = "size-full-200";
			LayoutOrder = var7_result1();
		})
	else
		any_createElement_result1 = nil
	end
	tbl_2.Padding = any_createElement_result1
	if arg1.description then
		any_createElement_result1 = React_upvr.createElement
		any_createElement_result1 = any_createElement_result1(Text_upvr, {
			LayoutOrder = var7_result1();
			tag = "auto-y size-full-0 text-align-x-left text-wrap text-label-small";
			textStyle = var6_result1.Color.Extended.White.White_80;
			Text = arg1.description;
		})
	else
		any_createElement_result1 = nil
	end
	tbl_2.Description = any_createElement_result1
	module.LabelContainer = React_upvr.createElement(View_upvr, {
		tag = "auto-y gui-object-defaults col padding-left-small padding-y-large";
		Size = UDim2.fromScale(0.5, 1);
		LayoutOrder = var7_result1();
	}, tbl_2)
	local tbl = {}
	any_createElement_result1 = React_upvr.createElement
	any_createElement_result1 = any_createElement_result1(View_upvr, {
		tag = "row align-x-center align-y-center auto-xy padding-right-small padding-y-medium";
	}, React_upvr.createElement(Field_upvr, arg1))
	tbl[1] = any_createElement_result1
	module.FieldContainer = React_upvr.createElement(View_upvr, {
		Size = UDim2.fromScale(0.5, 1);
		tag = "row align-x-right align-y-center";
		LayoutOrder = var7_result1();
	}, tbl)
	return React_upvr.createElement(View_upvr, {
		tag = "auto-y row size-full-1300 radius-medium";
		backgroundStyle = any_useBinding_result1_2;
		onStateChanged = React_upvr.useCallback(function(arg1_2) -- Line 35
			--[[ Upvalues[4]:
				[1]: any_useBinding_result2_upvr (readonly)
				[2]: ControlState_upvr (copied, readonly)
				[3]: tbl_upvr_2 (readonly)
				[4]: tbl_upvr (readonly)
			]]
			local var21
			if arg1_2 == ControlState_upvr.Default then
				var21 = tbl_upvr_2
			else
				var21 = tbl_upvr
			end
			any_useBinding_result2_upvr(var21)
		end, {any_useBinding_result2_upvr});
		stateLayer = {
			affordance = StateLayerAffordance_upvr.None;
		};
		Visible = any_useBinding_result1;
		LayoutOrder = arg1.layoutOrder;
	}, module)
end