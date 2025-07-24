-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:35:21
-- Luau version 6, Types version 3
-- Time taken: 0.004168 seconds

local Parent = script:FindFirstAncestor("GenericAbuseReporting").Parent
local React_upvr = require(Parent.React)
local Foundation = require(Parent.Foundation)
local View_upvr = Foundation.View
local useTokens_upvr = Foundation.Hooks.useTokens
local ControlState_upvr = Foundation.Enums.ControlState
local InputLabel_upvr = Foundation.InputLabel
local InputLabelSize_upvr = Foundation.Enums.InputLabelSize
local Icon_upvr = Foundation.Icon
local IconSize_upvr = Foundation.Enums.IconSize
local function createButtons_upvr(arg1, arg2, arg3, arg4, arg5) -- Line 30, Named "createButtons"
	--[[ Upvalues[8]:
		[1]: useTokens_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: ControlState_upvr (readonly)
		[4]: View_upvr (readonly)
		[5]: InputLabel_upvr (readonly)
		[6]: InputLabelSize_upvr (readonly)
		[7]: Icon_upvr (readonly)
		[8]: IconSize_upvr (readonly)
	]]
	local var5_result1 = useTokens_upvr()
	local module = {}
	local any_useState_result1, any_useState_result2_upvr_2 = React_upvr.useState(arg5 or "")
	for i, v_upvr in pairs(arg1) do
		local any_useState_result1_2, any_useState_result2_upvr = React_upvr.useState(false)
		local tbl_5 = {}
		tbl_5[1] = arg3
		tbl_5[2] = arg4
		tbl_5[3] = any_useState_result2_upvr
		local any_useCallback_result1 = React_upvr.useCallback(function() -- Line 43
			--[[ Upvalues[6]:
				[1]: any_useState_result2_upvr_2 (readonly)
				[2]: v_upvr (readonly)
				[3]: arg3 (readonly)
				[4]: arg4 (readonly)
				[5]: arg2 (readonly)
				[6]: any_useState_result2_upvr (readonly)
			]]
			any_useState_result2_upvr_2(v_upvr.value)
			arg3(v_upvr.value, v_upvr.text)
			if arg4 then
				arg4(arg2[v_upvr.value])
			end
			any_useState_result2_upvr(true)
		end, tbl_5)
		local tbl_4 = {}
		local tbl_6 = {
			UIPadding = React_upvr.createElement("UIPadding", {
				PaddingLeft = UDim.new(0, 4);
				PaddingRight = UDim.new(0, 4);
				PaddingTop = UDim.new(0, 10);
				PaddingBottom = UDim.new(0, 10);
			});
		}
		local tbl = {}
		local text = v_upvr.text
		tbl.Text = text
		local var36
		if any_useState_result1_2 then
			text = var5_result1.Color.Content.Emphasis
		else
			text = var5_result1.Color.Content.Default
		end
		tbl.textStyle = text
		tbl.onActivated = any_useCallback_result1
		tbl.onHover = any_useState_result2_upvr
		tbl.size = InputLabelSize_upvr.Medium
		var36 = var36(InputLabel_upvr, tbl)
		tbl_6.Button = var36
		if v_upvr.value == any_useState_result1 then
			var36 = React_upvr.createElement
			var36 = var36(Icon_upvr, {
				name = "icons/status/success_small";
				size = IconSize_upvr.Small;
			})
		else
			var36 = nil
		end
		tbl_6.Icon = var36
		tbl_4.ButtonContainer = React_upvr.createElement(View_upvr, {
			tag = "size-full-0 auto-y radius-medium row flex-between";
			onStateChanged = React_upvr.useCallback(function(arg1_2) -- Line 52
				--[[ Upvalues[2]:
					[1]: ControlState_upvr (copied, readonly)
					[2]: any_useState_result2_upvr (readonly)
				]]
				if arg1_2 == ControlState_upvr.Hover or arg1_2 == ControlState_upvr.Pressed then
					any_useState_result2_upvr(true)
				else
					any_useState_result2_upvr(false)
				end
			end, {any_useState_result2_upvr, any_useCallback_result1});
			onActivated = any_useCallback_result1;
		}, tbl_6)
		local tbl_3 = {
			tag = "size-full-0 auto-y";
		}
		local tbl_2 = {
			Thickness = 0.5;
			Color = var5_result1.Color.Content.Default.Color3;
		}
		if next(arg1, i) == nil or not var5_result1.Color.Content.Default.Transparency then
		end
		tbl_2.Transparency = 1
		tbl_3.stroke = tbl_2
		tbl_4.Divider = React_upvr.createElement(View_upvr, tbl_3)
		table.insert(module, React_upvr.createElement(View_upvr, {
			tag = "auto-xy col gap-xsmall padding-bottom-xsmall";
		}, tbl_4))
	end
	return module
end
local Cryo_upvr = require(Parent.Cryo)
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
return function(arg1) -- Line 112, Named "ButtonList"
	--[[ Upvalues[5]:
		[1]: React_upvr (readonly)
		[2]: Cryo_upvr (readonly)
		[3]: useLocalization_upvr (readonly)
		[4]: createButtons_upvr (readonly)
		[5]: View_upvr (readonly)
	]]
	local useLocalization_upvr_result1_upvr = useLocalization_upvr(React_upvr.useMemo(function() -- Line 113
		--[[ Upvalues[2]:
			[1]: Cryo_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		return Cryo_upvr.Dictionary.map(arg1.options, function(arg1_3) -- Line 114
			return arg1_3.localizationKey, arg1_3.value
		end)
	end))
	return React_upvr.createElement(View_upvr, {
		tag = "size-full col";
	}, {createButtons_upvr(React_upvr.useMemo(function() -- Line 128
		--[[ Upvalues[3]:
			[1]: Cryo_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: useLocalization_upvr_result1_upvr (readonly)
		]]
		return Cryo_upvr.List.map(arg1.options, function(arg1_5) -- Line 129
			--[[ Upvalues[1]:
				[1]: useLocalization_upvr_result1_upvr (copied, readonly)
			]]
			return {
				text = useLocalization_upvr_result1_upvr[arg1_5.value] or "";
				value = arg1_5.value;
			}
		end)
	end, {arg1.options, useLocalization_upvr_result1_upvr}), useLocalization_upvr(React_upvr.useMemo(function() -- Line 119
		--[[ Upvalues[2]:
			[1]: Cryo_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		return Cryo_upvr.Dictionary.map(arg1.options, function(arg1_4) -- Line 120
			return arg1_4.descriptionLocalizationKey, arg1_4.value
		end)
	end)), arg1.onSelected, arg1.setDescription, arg1.defaultValue)})
end