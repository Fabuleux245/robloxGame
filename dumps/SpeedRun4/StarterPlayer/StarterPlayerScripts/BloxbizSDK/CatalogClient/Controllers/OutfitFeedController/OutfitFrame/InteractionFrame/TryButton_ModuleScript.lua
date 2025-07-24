-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:41:33
-- Luau version 6, Types version 3
-- Time taken: 0.003199 seconds

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
local Observer_upvr = module.Observer
local Spring_upvr = module.Spring
local Computed_upvr = module.Computed
local ItemButton_upvr = require(script.Parent.Parent.ItemButton)
return function(arg1, arg2, arg3) -- Line 36
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
	local var15_upvw = arg1
	local var16
	if type(var15_upvw) == "boolean" then
		var15_upvw = Value_upvr(var15_upvw)
	end
	local var18_upvw
	local tbl = {}
	tbl.TextTransparency = arg3
	tbl.ButtonBackgroundColor = Spring_upvr(Computed_upvr(function() -- Line 67
		--[[ Upvalues[2]:
			[1]: var8_result1_upvr (readonly)
			[2]: tbl_upvr (copied, readonly)
		]]
		local var23
		local function INLINED_2() -- Internal function, doesn't exist in bytecode
			var23 = tbl_upvr.ButtonColor.MouseDown
			return var23
		end
		if not var8_result1_upvr:get() or not INLINED_2() then
			var23 = tbl_upvr.ButtonColor.Default
		end
		return var23
	end), 40, 1)
	tbl.ButtonSize = Spring_upvr(Computed_upvr(function() -- Line 59
		--[[ Upvalues[2]:
			[1]: Value_upvr_result1_upvr (readonly)
			[2]: tbl_upvr (copied, readonly)
		]]
		local var21
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var21 = tbl_upvr.Size.Hover
			return var21
		end
		if not Value_upvr_result1_upvr:get() or not INLINED() then
			var21 = tbl_upvr.Size.Default
		end
		return var21
	end), 40, 1)
	local any_onChange_result1_upvr = Observer_upvr(var15_upvw):onChange(function() -- Line 52
		--[[ Upvalues[2]:
			[1]: var18_upvw (read and write)
			[2]: var15_upvw (read and write)
		]]
		local var19
		if var18_upvw then
			if var15_upvw:get() then
				var19 = "Remove"
			else
				var19 = "Try On"
			end
			var18_upvw.Text = var19
		end
	end)
	if var15_upvw:get() then
		var16 = "Remove"
	else
		var16 = "Try On"
	end
	local var12_result1, ItemButton_upvr_result2 = ItemButton_upvr(var16, Color3.new(), tbl, {
		Held = var8_result1_upvr;
		Hovering = Value_upvr_result1_upvr;
	}, function() -- Line 85, Named "cleanUpCallback"
		--[[ Upvalues[1]:
			[1]: any_onChange_result1_upvr (readonly)
		]]
		any_onChange_result1_upvr()
	end, arg2)
	var18_upvw = ItemButton_upvr_result2
	return var12_result1
end