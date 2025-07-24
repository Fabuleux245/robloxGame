-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:48:20
-- Luau version 6, Types version 3
-- Time taken: 0.002668 seconds

local Parent = script:FindFirstAncestor("AppChat").Parent
local React_upvr = require(Parent.React)
local memo = React_upvr.memo
local UIBlox = require(Parent.UIBlox)
local tbl_upvr = {
	Size = UDim2.new(1, 0, 0, 48);
	BackgroundColor3 = Color3.fromRGB(255, 255, 255);
	BackgroundTransparency = 0;
	onPressedBackgroundColor3 = Color3.fromRGB(242, 242, 242);
	onPressedBackgroundTransparency = 1;
	LayoutOrder = 0;
	isDisabled = false;
	onActivated = function() -- Line 51, Named "onActivated"
		print("BaseCell onActivated")
	end;
	showDivider = true;
	dividerTransparency = 0;
	dividerColor3 = Color3.fromRGB(227, 227, 227);
	avatarCircleCellWidth = 60;
}
local Cryo_upvr = require(Parent.Cryo)
local useState_upvr = React_upvr.useState
local ControlState_upvr = UIBlox.Core.Control.Enum.ControlState
local FFlagUIBloxUseFoundationInteractable_upvr = require(Parent.SharedFlags).UIBlox.FFlagUIBloxUseFoundationInteractable
local useMemo_upvr = React_upvr.useMemo
local dependencyArray_upvr = require(Parent.RoactUtils).Hooks.dependencyArray
local var4_result1_upvr = memo(UIBlox.Core.Control.Interactable)
return memo(function(arg1) -- Line 61, Named "BaseCell"
	--[[ Upvalues[9]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: useState_upvr (readonly)
		[4]: ControlState_upvr (readonly)
		[5]: React_upvr (readonly)
		[6]: FFlagUIBloxUseFoundationInteractable_upvr (readonly)
		[7]: useMemo_upvr (readonly)
		[8]: dependencyArray_upvr (readonly)
		[9]: var4_result1_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 26 start (CF ANALYSIS FAILED)
	local any_join_result1_upvr = Cryo_upvr.Dictionary.join(tbl_upvr, arg1)
	local var8_result1_upvr, var8_result2_upvr = useState_upvr(ControlState_upvr.Initialize)
	local tbl = {}
	local var21_upvr
	if FFlagUIBloxUseFoundationInteractable_upvr then
		var21_upvr = any_join_result1_upvr.isDisabled
	else
		var21_upvr = nil
	end
	tbl[1] = var21_upvr
	if FFlagUIBloxUseFoundationInteractable_upvr then
		local function _() -- Line 76
			--[[ Upvalues[1]:
				[1]: any_join_result1_upvr (readonly)
			]]
			if not any_join_result1_upvr.isDisabled then
				any_join_result1_upvr.onActivated()
			end
		end
		var21_upvr = {}
		var21_upvr[1] = any_join_result1_upvr.isDisabled
		var21_upvr[2] = any_join_result1_upvr.onActivated
		-- KONSTANTWARNING: GOTO [49] #38
	end
	-- KONSTANTERROR: [0] 1. Error Block 26 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [48] 37. Error Block 29 start (CF ANALYSIS FAILED)
	function var21_upvr() -- Line 83
		--[[ Upvalues[4]:
			[1]: var8_result1_upvr (readonly)
			[2]: ControlState_upvr (copied, readonly)
			[3]: React_upvr (copied, readonly)
			[4]: any_join_result1_upvr (readonly)
		]]
		if var8_result1_upvr == ControlState_upvr.Pressed then
			return React_upvr.createElement("ImageLabel", {
				Size = UDim2.new(1, 0, 1, 0);
				BackgroundTransparency = any_join_result1_upvr.onPressedBackgroundTransparency;
				BackgroundColor3 = any_join_result1_upvr.onPressedBackground3;
				BorderSizePixel = 0;
			})
		end
		return nil
	end
	local useMemo_upvr_result1_upvr = useMemo_upvr(var21_upvr, dependencyArray_upvr(var8_result1_upvr, any_join_result1_upvr.onPressedBackground3, any_join_result1_upvr.onPressedBackgroundTransparency))
	var21_upvr = useMemo_upvr
	var21_upvr = var21_upvr(function() -- Line 94
		--[[ Upvalues[2]:
			[1]: any_join_result1_upvr (readonly)
			[2]: React_upvr (copied, readonly)
		]]
		if any_join_result1_upvr.showDivider then
			return React_upvr.createElement("Frame", {
				Size = UDim2.new(1, 0, 1, 0);
				BackgroundTransparency = 1;
			}, {
				layout = React_upvr.createElement("UIListLayout", {
					VerticalAlignment = Enum.VerticalAlignment.Bottom;
					HorizontalAlignment = Enum.HorizontalAlignment.Right;
				});
				divider = React_upvr.createElement("Frame", {
					BackgroundTransparency = any_join_result1_upvr.dividerTransparency;
					BackgroundColor3 = any_join_result1_upvr.dividerColor3;
					BorderSizePixel = 0;
					Size = UDim2.new(1, -any_join_result1_upvr.avatarCircleCellWidth, 0, 1);
				});
			})
		end
		return nil
	end, dependencyArray_upvr(any_join_result1_upvr.showDivider, any_join_result1_upvr.dividerTransparency, any_join_result1_upvr.dividerColor3, any_join_result1_upvr.avatarCircleCellWidth))
	local function _() -- Line 117
		--[[ Upvalues[4]:
			[1]: Cryo_upvr (copied, readonly)
			[2]: any_join_result1_upvr (readonly)
			[3]: useMemo_upvr_result1_upvr (readonly)
			[4]: var21_upvr (readonly)
		]]
		local children = any_join_result1_upvr.children
		if not children then
			children = {}
		end
		return Cryo_upvr.Dictionary.join(children, {
			overlay = useMemo_upvr_result1_upvr;
			divider = var21_upvr;
		})
	end
	;({}).onStateChanged = React_upvr.useCallback(function(arg1_2, arg2) -- Line 65
		--[[ Upvalues[3]:
			[1]: FFlagUIBloxUseFoundationInteractable_upvr (copied, readonly)
			[2]: any_join_result1_upvr (readonly)
			[3]: var8_result2_upvr (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [6] 6. Error Block 3 start (CF ANALYSIS FAILED)
		var8_result2_upvr(arg2)
		do
			return
		end
		-- KONSTANTERROR: [6] 6. Error Block 3 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [10] 10. Error Block 4 start (CF ANALYSIS FAILED)
		var8_result2_upvr(arg2)
		-- KONSTANTERROR: [10] 10. Error Block 4 end (CF ANALYSIS FAILED)
	end, tbl)
	if FFlagUIBloxUseFoundationInteractable_upvr then
		-- KONSTANTWARNING: GOTO [105] #83
	end
	-- KONSTANTERROR: [48] 37. Error Block 29 end (CF ANALYSIS FAILED)
end)