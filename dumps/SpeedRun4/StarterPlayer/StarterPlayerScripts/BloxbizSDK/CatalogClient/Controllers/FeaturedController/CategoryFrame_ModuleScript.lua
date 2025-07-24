-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:41:37
-- Luau version 6, Types version 3
-- Time taken: 0.004834 seconds

local Parent = script.Parent.Parent.Parent.Parent
local Utils = Parent:FindFirstChild("Utils")
local module_2_upvr = require(Utils:WaitForChild("Fusion"))
local module_3_upvr = require(Utils:WaitForChild("FusionProps"))
local Computed_upvr = module_2_upvr.Computed
local Utils_2_upvr = require(Utils)
local Value_upvr = module_2_upvr.Value
local New_upvr = module_2_upvr.New
local Spring_upvr = module_2_upvr.Spring
local OnEvent_upvr = module_2_upvr.OnEvent
local Children_upvr = module_2_upvr.Children
local ScaledText_upvr = require(Parent.CatalogClient.Components.ScaledText)
local Carousel_upvr = require(script.Parent.Carousel)
local ForValues_upvr = module_2_upvr.ForValues
local ItemFrame_upvr = require(script.Parent.ItemFrame)
return function(arg1) -- Line 25
	--[[ Upvalues[13]:
		[1]: module_3_upvr (readonly)
		[2]: Computed_upvr (readonly)
		[3]: Utils_2_upvr (readonly)
		[4]: Value_upvr (readonly)
		[5]: New_upvr (readonly)
		[6]: Spring_upvr (readonly)
		[7]: OnEvent_upvr (readonly)
		[8]: Children_upvr (readonly)
		[9]: ScaledText_upvr (readonly)
		[10]: Carousel_upvr (readonly)
		[11]: ForValues_upvr (readonly)
		[12]: ItemFrame_upvr (readonly)
		[13]: module_2_upvr (readonly)
	]]
	local any_GetValues_result1_upvw = module_3_upvr.GetValues(arg1, {
		Category = '?';
		Name = "";
		Color = "7f7fa5";
		Items = {};
		CornerRadius = 5;
		TopBarHeight = 30;
		OnClick = module_3_upvr.Nil;
		Pause = false;
	})
	local Computed_upvr_result1 = Computed_upvr(function() -- Line 37
		--[[ Upvalues[1]:
			[1]: any_GetValues_result1_upvw (read and write)
		]]
		return UDim.new(0, any_GetValues_result1_upvw.TopBarHeight:get() / 2)
	end)
	local Computed_upvr_result1_upvr_2 = Computed_upvr(function() -- Line 41
		--[[ Upvalues[1]:
			[1]: any_GetValues_result1_upvw (read and write)
		]]
		local any_get_result1_2 = any_GetValues_result1_upvw.Color:get()
		if type(any_get_result1_2) ~= "string" then
			return Color3.new(0.6, 0.6, 0.65)
		end
		return Color3.fromHex(any_get_result1_2)
	end)
	local var8_result1_upvr = Value_upvr(false)
	local module_4 = {
		Name = any_GetValues_result1_upvw.Category;
		Size = UDim2.fromScale(1, 1);
		BackgroundColor3 = Spring_upvr(Computed_upvr(function() -- Line 63
			--[[ Upvalues[1]:
				[1]: var8_result1_upvr (readonly)
			]]
			if not var8_result1_upvr:get() then
				return Color3.new(1, 1, 1)
			end
			return Color3.new(0.9, 0.9, 0.9)
		end), 30);
		Text = "";
		[OnEvent_upvr("MouseEnter")] = function() -- Line 72
			--[[ Upvalues[1]:
				[1]: var8_result1_upvr (readonly)
			]]
			var8_result1_upvr:set(true)
		end;
		[OnEvent_upvr("MouseLeave")] = function() -- Line 75
			--[[ Upvalues[1]:
				[1]: var8_result1_upvr (readonly)
			]]
			var8_result1_upvr:set(false)
		end;
		[OnEvent_upvr("Activated")] = function() -- Line 79
			--[[ Upvalues[1]:
				[1]: any_GetValues_result1_upvw (read and write)
			]]
			local any_get_result1 = any_GetValues_result1_upvw.OnClick:get()
			if any_get_result1 then
				any_get_result1()
			end
		end;
	}
	local tbl_2 = {}
	local tbl = {}
	local Computed_upvr_result1_upvr = Computed_upvr(function() -- Line 49
		--[[ Upvalues[1]:
			[1]: Computed_upvr_result1_upvr_2 (readonly)
		]]
		local any_ToHSV_result1, any_ToHSV_result2, any_ToHSV_result3 = Computed_upvr_result1_upvr_2:get():ToHSV()
		return Color3.fromHSV((any_ToHSV_result1 + 0.08) % 1, any_ToHSV_result2, any_ToHSV_result3 * 0.9)
	end)
	tbl.Color = Computed_upvr(function() -- Line 88
		--[[ Upvalues[2]:
			[1]: Computed_upvr_result1_upvr_2 (readonly)
			[2]: Computed_upvr_result1_upvr (readonly)
		]]
		return ColorSequence.new(Computed_upvr_result1_upvr_2:get(), Computed_upvr_result1_upvr:get())
	end)
	tbl.Rotation = 45
	tbl_2[1] = New_upvr("UIGradient")(tbl)
	tbl_2[2] = New_upvr("UICorner")({
		CornerRadius = Computed_upvr(function() -- Line 94
			--[[ Upvalues[1]:
				[1]: any_GetValues_result1_upvw (read and write)
			]]
			return UDim.new(0, any_GetValues_result1_upvw.CornerRadius:get())
		end);
	})
	tbl_2[3] = New_upvr("UIPadding")({
		PaddingTop = Computed_upvr_result1;
		PaddingBottom = Computed_upvr_result1;
	})
	tbl_2[4] = ScaledText_upvr({
		Size = Computed_upvr(function() -- Line 102
			--[[ Upvalues[1]:
				[1]: any_GetValues_result1_upvw (read and write)
			]]
			return UDim2.new(1, -any_GetValues_result1_upvw.TopBarHeight:get() / 2, 0, any_GetValues_result1_upvw.TopBarHeight:get() / 2)
		end);
		Position = Computed_upvr(function() -- Line 105
			--[[ Upvalues[1]:
				[1]: any_GetValues_result1_upvw (read and write)
			]]
			return UDim2.new(0, any_GetValues_result1_upvw.TopBarHeight:get() / 2, 0, 0)
		end);
		TextXAlignment = Enum.TextXAlignment.Left;
		TextColor3 = Computed_upvr(function() -- Line 54
			--[[ Upvalues[2]:
				[1]: Utils_2_upvr (copied, readonly)
				[2]: Computed_upvr_result1_upvr_2 (readonly)
			]]
			return Utils_2_upvr.getTextColor(Computed_upvr_result1_upvr_2:get())
		end);
		Text = any_GetValues_result1_upvw.Name;
	})
	tbl_2[5] = Carousel_upvr({
		Position = Computed_upvr(function() -- Line 114
			--[[ Upvalues[1]:
				[1]: any_GetValues_result1_upvw (read and write)
			]]
			return UDim2.new(0, 0, 0, any_GetValues_result1_upvw.TopBarHeight:get() * 3 / 4)
		end);
		Size = Computed_upvr(function() -- Line 117
			--[[ Upvalues[1]:
				[1]: any_GetValues_result1_upvw (read and write)
			]]
			return UDim2.new(1, 0, 1, -any_GetValues_result1_upvw.TopBarHeight:get() * 3 / 4)
		end);
		Items = ForValues_upvr(any_GetValues_result1_upvw.Items, function(arg1_2) -- Line 121
			--[[ Upvalues[1]:
				[1]: ItemFrame_upvr (copied, readonly)
			]]
			local module = {}
			local id = arg1_2.id
			module.ItemId = id
			if arg1_2.itemType == "Asset" then
				id = false
			else
				id = true
			end
			module.IsBundle = id
			return ItemFrame_upvr(module)
		end, module_2_upvr.cleanup);
		ItemRatio = 1;
		Pause = any_GetValues_result1_upvw.Pause;
	})
	module_4[Children_upvr] = tbl_2
	return New_upvr("TextButton")(module_4)
end