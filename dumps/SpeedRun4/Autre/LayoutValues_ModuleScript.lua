-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:50:47
-- Luau version 6, Types version 3
-- Time taken: 0.005545 seconds

local Parent = script.Parent.Parent
local function _(arg1, arg2) -- Line 7, Named "makeImageData"
	local module = {
		Path = "rbxasset://textures/"..arg1;
	}
	module.SliceCenter = arg2
	return module
end
local module_upvr = {
	__tostring = function() -- Line 15
		return "Service(LayoutValues)"
	end;
}
local createSignal_upvr = require(Parent.Misc.createSignal)
function module_upvr.new(arg1) -- Line 19
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: createSignal_upvr (readonly)
	]]
	local module_2 = {}
	setmetatable(module_2, {
		__index = module_upvr;
	})
	module_2.signal = createSignal_upvr()
	module_2.layout = module_2:generate(arg1)
	return module_2
end
function module_upvr.update(arg1, arg2) -- Line 31
	arg1.layout = arg1:generate(arg2)
	arg1.signal:fire(arg1.layout)
end
local strict_upvr = require(Parent.strict)
function module_upvr.generate(arg1, arg2) -- Line 36
	--[[ Upvalues[1]:
		[1]: strict_upvr (readonly)
	]]
	if arg2 then
		local const_number = 3
	else
	end
	local var10 = 44 * 1
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	local var11 = 30 * 1
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	local var12 = 6 * 1
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	local var13 = 16 * 1
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
	local var14 = 210 * 1
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	local var15 = 106 * 1
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x3)
	local var16 = 25 * 1
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	local var17 = 2 * 1
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	local var18 = 64 * 1
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	local var19 = 64 * 1
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
	local var20 = var18 + 2 * var17
	local var21 = var19 + 2 * var17
	local var22 = var20 + 2 * var16
	local var23 = var21 + 2 * var16
	local tbl_9 = {}
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	tbl_9.Default = 18 * 1
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	tbl_9.ProductDescription = 18 * 1
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	tbl_9.Button = 24 * 1
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	tbl_9.AdditionalDetails = 14 * 1
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	tbl_9.Purchasing = 36 * 1
	local tbl_10 = {}
	local function INLINED() -- Internal function, doesn't exist in bytecode
		tbl_5.SliceCenter = Rect.new(17, 17, 19, 19)
		tbl_5.Path = "rbxasset://textures/".."ui/PurchasePrompt/PurchasePromptBG@2x.png"
		local tbl_5 = {}
		return tbl_5
	end
	if not arg2 or not INLINED() then
	end
	tbl_10.PromptBackground = {
		Path = "rbxasset://textures/".."ui/PurchasePrompt/PurchasePromptBG.png";
		SliceCenter = Rect.new(8, 9, 10, 10);
	}
	local function INLINED_2() -- Internal function, doesn't exist in bytecode
		tbl_12.SliceCenter = Rect.new(17, 17, 19, 19)
		tbl_12.Path = "rbxasset://textures/".."ui/PurchasePrompt/LoadingBG@2x.png"
		local tbl_12 = {}
		return tbl_12
	end
	if not arg2 or not INLINED_2() then
	end
	tbl_10.InProgressBackground = {
		Path = "rbxasset://textures/".."ui/PurchasePrompt/LoadingBG.png";
		SliceCenter = Rect.new(9, 9, 11, 11);
	}
	local function INLINED_3() -- Internal function, doesn't exist in bytecode
		tbl_14.SliceCenter = Rect.new(18, 5, 20, 7)
		tbl_14.Path = "rbxasset://textures/".."ui/PurchasePrompt/LeftButton@2x.png"
		local tbl_14 = {}
		return tbl_14
	end
	if not arg2 or not INLINED_3() then
	end
	tbl_10.ButtonUpLeft = {
		Path = "rbxasset://textures/".."ui/PurchasePrompt/LeftButton.png";
		SliceCenter = Rect.new(8, 3, 10, 4);
	}
	local function INLINED_4() -- Internal function, doesn't exist in bytecode
		tbl_3.SliceCenter = Rect.new(18, 5, 20, 7)
		tbl_3.Path = "rbxasset://textures/".."ui/PurchasePrompt/LeftButtonDown@2x.png"
		local tbl_3 = {}
		return tbl_3
	end
	if not arg2 or not INLINED_4() then
	end
	tbl_10.ButtonDownLeft = {
		Path = "rbxasset://textures/".."ui/PurchasePrompt/LeftButtonDown.png";
		SliceCenter = Rect.new(8, 3, 10, 4);
	}
	local function INLINED_5() -- Internal function, doesn't exist in bytecode
		tbl_11.SliceCenter = Rect.new(3, 5, 5, 7)
		tbl_11.Path = "rbxasset://textures/".."ui/PurchasePrompt/RightButton@2x.png"
		local tbl_11 = {}
		return tbl_11
	end
	if not arg2 or not INLINED_5() then
	end
	tbl_10.ButtonUpRight = {
		Path = "rbxasset://textures/".."ui/PurchasePrompt/RightButton.png";
		SliceCenter = Rect.new(2, 3, 3, 4);
	}
	local function INLINED_6() -- Internal function, doesn't exist in bytecode
		tbl_7.SliceCenter = Rect.new(3, 5, 5, 7)
		tbl_7.Path = "rbxasset://textures/".."ui/PurchasePrompt/RightButtonDown@2x.png"
		local tbl_7 = {}
		return tbl_7
	end
	if not arg2 or not INLINED_6() then
	end
	tbl_10.ButtonDownRight = {
		Path = "rbxasset://textures/".."ui/PurchasePrompt/RightButtonDown.png";
		SliceCenter = Rect.new(2, 3, 3, 4);
	}
	local function INLINED_7() -- Internal function, doesn't exist in bytecode
		tbl_8.SliceCenter = Rect.new(18, 5, 20, 7)
		tbl_8.Path = "rbxasset://textures/".."ui/PurchasePrompt/SingleButton@2x.png"
		local tbl_8 = {}
		return tbl_8
	end
	if not arg2 or not INLINED_7() then
	end
	tbl_10.ButtonUp = {
		Path = "rbxasset://textures/".."ui/PurchasePrompt/SingleButton.png";
		SliceCenter = Rect.new(8, 3, 10, 4);
	}
	local function INLINED_8() -- Internal function, doesn't exist in bytecode
		tbl_6.SliceCenter = Rect.new(18, 5, 20, 7)
		tbl_6.Path = "rbxasset://textures/".."ui/PurchasePrompt/SingleButtonDown@2x.png"
		local tbl_6 = {}
		return tbl_6
	end
	if not arg2 or not INLINED_8() then
	end
	tbl_10.ButtonDown = {
		Path = "rbxasset://textures/".."ui/PurchasePrompt/SingleButtonDown.png";
		SliceCenter = Rect.new(8, 3, 10, 4);
	}
	tbl_10.PremiumIcon = {
		Path = "rbxasset://textures/".."ui/PurchasePrompt/Premium.png";
		SliceCenter = nil;
	}
	local function INLINED_9() -- Internal function, doesn't exist in bytecode
		tbl_13.SliceCenter = nil
		tbl_13.Path = "rbxasset://textures/".."ui/common/robux_small@2x.png"
		local tbl_13 = {}
		return tbl_13
	end
	if not arg2 or not INLINED_9() then
	end
	tbl_10.RobuxIcon = {
		Path = "rbxasset://textures/".."ui/common/robux_small.png";
		SliceCenter = nil;
	}
	local function INLINED_10() -- Internal function, doesn't exist in bytecode
		tbl.SliceCenter = nil
		tbl.Path = "rbxasset://textures/".."ui/ErrorIcon.png"
		local tbl = {}
		return tbl
	end
	if not arg2 or not INLINED_10() then
	end
	tbl_10.ErrorIcon = {
		Path = "rbxasset://textures/".."ui/ErrorIcon.png";
		SliceCenter = nil;
	}
	local function INLINED_11() -- Internal function, doesn't exist in bytecode
		tbl_2.SliceCenter = nil
		tbl_2.Path = "rbxasset://textures/".."ui/Settings/Help/AButtonDark@2x.png"
		local tbl_2 = {}
		return tbl_2
	end
	if not arg2 or not INLINED_11() then
	end
	tbl_10.ButtonA = {
		Path = "rbxasset://textures/".."ui/Settings/Help/AButtonDark.png";
		SliceCenter = nil;
	}
	local function INLINED_12() -- Internal function, doesn't exist in bytecode
		tbl_4.SliceCenter = nil
		tbl_4.Path = "rbxasset://textures/".."ui/Settings/Help/BButtonDark@2x.png"
		local tbl_4 = {}
		return tbl_4
	end
	if not arg2 or not INLINED_12() then
	end
	tbl_10.ButtonB = {
		Path = "rbxasset://textures/".."ui/Settings/Help/BButtonDark.png";
		SliceCenter = nil;
	}
	return strict_upvr({
		Size = strict_upvr({
			AdditionalDetailsLabel = UDim2.new(1, 0, 0, var11);
			ItemPreview = UDim2.new(0, var18, 0, var19);
			ItemPreviewWhiteFrame = UDim2.new(0, var20, 0, var21);
			ItemPreviewContainerFrame = UDim2.new(0, var22, 0, var23);
			HorizontalPadding = var16;
			ProductDescription = UDim2.new(0, var14, 0, var15);
			ProductDescriptionPaddingTop = 18 * 1;
			RobuxIconContainerFrame = UDim2.new(0, var13 + var12, 0, var13 + 2 * var12);
			RobuxIcon = UDim2.new(0, var13, 0, var13);
			PriceTextLabel = UDim2.new(0, (var14) - (var13 + var12), 0, var13);
			PurchasingAnimation = UDim2.new(0, 96 * 1, 0, 20 * 1);
			ButtonIconPadding = 3 * 1;
			ButtonIconYOffset = 2 * 1;
			ButtonHeight = var10;
			Dialog = UDim2.new(0, var22 + var14, 0, math.max(var23, var15) + var11 + var10);
		}, "LayoutValues.Size");
		TextSize = strict_upvr(tbl_9, "LayoutValues.TextSize");
		TextColor = strict_upvr({
			PriceLabel = Color3.new(1, 1, 1);
		}, "LayoutValues.TextColor");
		Image = strict_upvr(tbl_10, "LayoutValues.Image");
	}, "LayoutValues")
end
return module_upvr