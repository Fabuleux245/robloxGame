-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:09:58
-- Luau version 6, Types version 3
-- Time taken: 0.002297 seconds

local module = require(script.Parent.Parent.Parent.Parent.Parent:FindFirstChild("Utils"):WaitForChild("Fusion"))
local tbl_upvr = {
	DefaultFont = Font.new("rbxasset://fonts/families/GothamSSm.json");
	ItemColor = {
		Default = Color3.fromRGB(79, 84, 95);
		Hover = Color3.fromRGB(107, 114, 129);
		MouseDown = Color3.fromRGB(76, 80, 90);
	};
	ButtonColor = {
		Default = Color3.fromRGB(255, 255, 255);
		MouseDown = Color3.fromRGB(153, 153, 153);
	};
	TextColor = {
		Enabled = Color3.fromRGB(255, 255, 255);
		Disabled = Color3.fromRGB(120, 125, 136);
	};
	Size = {
		Default = UDim2.fromScale(0.9, 0.2);
		Hover = UDim2.fromScale(0.925, 0.205);
	};
}
local Value_upvr = module.Value
local Spring_upvr = module.Spring
local Computed_upvr = module.Computed
local ItemButton_upvr = require(script.Parent.Parent.ItemButton)
return function(arg1, arg2) -- Line 36
	--[[ Upvalues[5]:
		[1]: Value_upvr (readonly)
		[2]: Spring_upvr (readonly)
		[3]: Computed_upvr (readonly)
		[4]: tbl_upvr (readonly)
		[5]: ItemButton_upvr (readonly)
	]]
	local Value_upvr_result1_upvr = Value_upvr(false)
	local var8_result1_upvr = Value_upvr(false)
	local tbl = {}
	tbl.TextTransparency = arg2
	tbl.ButtonBackgroundColor = Spring_upvr(Computed_upvr(function() -- Line 54
		--[[ Upvalues[2]:
			[1]: var8_result1_upvr (readonly)
			[2]: tbl_upvr (copied, readonly)
		]]
		local var17
		local function INLINED_2() -- Internal function, doesn't exist in bytecode
			var17 = tbl_upvr.ButtonColor.MouseDown
			return var17
		end
		if not var8_result1_upvr:get() or not INLINED_2() then
			var17 = tbl_upvr.ButtonColor.Default
		end
		return var17
	end), 40, 1)
	tbl.ButtonSize = Spring_upvr(Computed_upvr(function() -- Line 46
		--[[ Upvalues[2]:
			[1]: Value_upvr_result1_upvr (readonly)
			[2]: tbl_upvr (copied, readonly)
		]]
		local var15
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var15 = tbl_upvr.Size.Hover
			return var15
		end
		if not Value_upvr_result1_upvr:get() or not INLINED() then
			var15 = tbl_upvr.Size.Default
		end
		return var15
	end), 40, 1)
	local ItemButton_upvr_result1, ItemButton_upvr_result2 = ItemButton_upvr("See Items", Color3.new(), tbl, {
		Held = var8_result1_upvr;
		Hovering = Value_upvr_result1_upvr;
	}, function() -- Line 77
	end, arg1)
	return ItemButton_upvr_result1
end