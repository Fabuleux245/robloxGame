-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:09:21
-- Luau version 6, Types version 3
-- Time taken: 0.002961 seconds

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
		Enabled = Color3.fromRGB(248, 51, 51);
		Disabled = Color3.fromRGB(120, 125, 136);
	};
	Size = {
		Default = UDim2.fromScale(0.9, 0.2);
		Hover = UDim2.fromScale(0.925, 0.205);
	};
}
local Value_upvr = module.Value
local Observer_upvr = module.Observer
local Spring_upvr = module.Spring
local Computed_upvr = module.Computed
local ItemButton_upvr = require(script.Parent.Parent.Parent.ItemButton)
return function(arg1, arg2) -- Line 37
	--[[ Upvalues[6]:
		[1]: Value_upvr (readonly)
		[2]: Observer_upvr (readonly)
		[3]: Spring_upvr (readonly)
		[4]: Computed_upvr (readonly)
		[5]: tbl_upvr (readonly)
		[6]: ItemButton_upvr (readonly)
	]]
	local Value_upvr_result1_upvr = Value_upvr(false)
	local var8_result1_upvr = Value_upvr(false)
	local var8_result1_upvr_2 = Value_upvr(false)
	local var17_upvw
	local tbl = {}
	tbl.TextTransparency = arg2
	tbl.ButtonBackgroundColor = Spring_upvr(Computed_upvr(function() -- Line 63
		--[[ Upvalues[2]:
			[1]: var8_result1_upvr (readonly)
			[2]: tbl_upvr (copied, readonly)
		]]
		local var22
		local function INLINED_2() -- Internal function, doesn't exist in bytecode
			var22 = tbl_upvr.ButtonColor.MouseDown
			return var22
		end
		if not var8_result1_upvr:get() or not INLINED_2() then
			var22 = tbl_upvr.ButtonColor.Default
		end
		return var22
	end), 40, 1)
	tbl.ButtonSize = Spring_upvr(Computed_upvr(function() -- Line 55
		--[[ Upvalues[2]:
			[1]: Value_upvr_result1_upvr (readonly)
			[2]: tbl_upvr (copied, readonly)
		]]
		local var20
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var20 = tbl_upvr.Size.Hover
			return var20
		end
		if not Value_upvr_result1_upvr:get() or not INLINED() then
			var20 = tbl_upvr.Size.Default
		end
		return var20
	end), 40, 1)
	local any_onChange_result1_upvr = Observer_upvr(var8_result1_upvr_2):onChange(function() -- Line 48
		--[[ Upvalues[2]:
			[1]: var17_upvw (read and write)
			[2]: var8_result1_upvr_2 (readonly)
		]]
		local var18
		if var17_upvw then
			if var8_result1_upvr_2:get() then
				var18 = "Confirm?"
			else
				var18 = "Delete"
			end
			var17_upvw.Text = var18
		end
	end)
	local ItemButton_upvr_result1, var12_result2 = ItemButton_upvr("Delete", Color3.fromRGB(248, 51, 51), tbl, {
		Held = var8_result1_upvr;
		Hovering = Value_upvr_result1_upvr;
	}, function() -- Line 81, Named "cleanUpCallback"
		--[[ Upvalues[1]:
			[1]: any_onChange_result1_upvr (readonly)
		]]
		any_onChange_result1_upvr()
	end, function() -- Line 85, Named "onDelete"
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: var8_result1_upvr_2 (readonly)
		]]
		arg1(var8_result1_upvr_2)
	end)
	var17_upvw = var12_result2
	return var8_result1_upvr_2, ItemButton_upvr_result1
end