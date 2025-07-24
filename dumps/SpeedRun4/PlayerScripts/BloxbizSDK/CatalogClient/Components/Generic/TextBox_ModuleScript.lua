-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:41:29
-- Luau version 6, Types version 3
-- Time taken: 0.004730 seconds

local Utils = script.Parent.Parent.Parent.Parent:FindFirstChild("Utils")
local module_upvr_2 = require(Utils:WaitForChild("FusionProps"))
local module_upvr = require(Utils:WaitForChild("Fusion"))
return function(arg1) -- Line 26
	--[[ Upvalues[2]:
		[1]: module_upvr_2 (readonly)
		[2]: module_upvr (readonly)
	]]
	local any_GetValues_result1_upvw = module_upvr_2.GetValues(arg1, {
		Name = "SearchBox";
		Text = "";
		OnChange = module_upvr_2.Nil;
		FeedbackOnEnter = false;
		FocusLostCallback = module_upvr_2.Nil;
	})
	local any_Value_result1_upvr_2 = module_upvr.Value(nil)
	local any_Value_result1_upvr = module_upvr.Value(nil)
	local module = {
		Name = any_GetValues_result1_upvw.Name;
		PlaceholderColor3 = Color3.fromRGB(255, 255, 255);
		Text = any_GetValues_result1_upvw.Text;
		TextColor3 = Color3.fromRGB(255, 255, 255);
		TextScaled = true;
		TextWrapped = true;
	}
	local TextXAlignment_2 = any_GetValues_result1_upvw.TextXAlignment
	if not TextXAlignment_2 then
		TextXAlignment_2 = Enum.TextXAlignment.Left
	end
	module.TextXAlignment = TextXAlignment_2
	TextXAlignment_2 = any_GetValues_result1_upvw.AnchorPoint
	local var11 = TextXAlignment_2
	if not var11 then
		var11 = Vector2.new(0.5, 0.5)
	end
	module.AnchorPoint = var11
	var11 = any_GetValues_result1_upvw.BackgroundColor3
	local var12 = var11
	if not var12 then
		var12 = Color3.fromRGB(255, 255, 255)
	end
	module.BackgroundColor3 = var12
	module.BackgroundTransparency = any_GetValues_result1_upvw.BackgroundTransparency or 1
	local Position = any_GetValues_result1_upvw.Position
	if not Position then
		Position = UDim2.fromScale(0.5, 0.5)
	end
	module.Position = Position
	Position = any_GetValues_result1_upvw.Size
	local var14 = Position
	if not var14 then
		var14 = UDim2.fromScale(0.5, 0.5)
	end
	module.Size = var14
	module.ZIndex = 2
	module[module_upvr.Ref] = any_Value_result1_upvr_2
	module[module_upvr.OnEvent("Focused")] = function() -- Line 55
		--[[ Upvalues[3]:
			[1]: any_Value_result1_upvr_2 (readonly)
			[2]: any_Value_result1_upvr (readonly)
			[3]: any_GetValues_result1_upvw (read and write)
		]]
		local any_get_result1_4 = any_Value_result1_upvr_2:get()
		if any_get_result1_4 and any_Value_result1_upvr:get() then
			any_GetValues_result1_upvw.Text:set("")
			any_get_result1_4.TextSize = any_get_result1_4.TextBounds.Y
			any_get_result1_4.TextScaled = true
		end
	end
	module[module_upvr.OnChange("Text")] = function() -- Line 66
		--[[ Upvalues[2]:
			[1]: any_Value_result1_upvr_2 (readonly)
			[2]: any_GetValues_result1_upvw (read and write)
		]]
		local any_get_result1_6 = any_Value_result1_upvr_2:get()
		if any_get_result1_6 then
			local any_sub_result1 = any_get_result1_6.Text:sub(1, 90)
			local any_get_result1_5 = any_GetValues_result1_upvw.OnChange:get()
			if any_get_result1_5 then
				any_get_result1_5(any_sub_result1)
				return
			end
			any_GetValues_result1_upvw.Text:set(any_sub_result1)
		end
	end
	module[module_upvr.OnEvent("FocusLost")] = function(arg1_2) -- Line 80
		--[[ Upvalues[3]:
			[1]: any_Value_result1_upvr_2 (readonly)
			[2]: any_Value_result1_upvr (readonly)
			[3]: any_GetValues_result1_upvw (read and write)
		]]
		if any_Value_result1_upvr_2:get() and any_Value_result1_upvr:get() and any_GetValues_result1_upvw.FeedbackOnEnter:get() then
			if arg1_2 then
				any_GetValues_result1_upvw.Text:set("")
			end
			local any_get_result1 = any_GetValues_result1_upvw.FocusLostCallback:get()
			if any_get_result1 then
				any_get_result1(arg1_2)
			end
		end
	end
	module[module_upvr.OnChange("Text")] = function() -- Line 98
		--[[ Upvalues[2]:
			[1]: any_Value_result1_upvr_2 (readonly)
			[2]: any_Value_result1_upvr (readonly)
		]]
		local any_get_result1_3 = any_Value_result1_upvr_2:get()
		local any_get_result1_2 = any_Value_result1_upvr:get()
		local var26
		if any_get_result1_2 and any_get_result1_3 then
			if any_get_result1_3.Text ~= "" then
				var26 = false
			else
				var26 = true
			end
			any_get_result1_2.Visible = var26
		end
	end
	local tbl_2 = {}
	local tbl = {
		Name = "Placeholder";
		Text = any_GetValues_result1_upvw.PlaceholderText or "";
		TextSize = 24;
		TextScaled = true;
		TextColor3 = Color3.fromRGB(196, 196, 196);
		TextTransparency = 0.5;
		TextWrapped = true;
	}
	local TextXAlignment = any_GetValues_result1_upvw.TextXAlignment
	if not TextXAlignment then
		TextXAlignment = Enum.TextXAlignment.Left
	end
	tbl.TextXAlignment = TextXAlignment
	tbl.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	tbl.BackgroundTransparency = 1
	tbl.AnchorPoint = Vector2.new(0.5, 0.5)
	tbl.Position = UDim2.fromScale(0.5, 0.5)
	tbl.Size = UDim2.fromScale(1, 1)
	tbl[module_upvr.Ref] = any_Value_result1_upvr
	tbl_2[1] = module_upvr.New("TextLabel")(tbl)
	tbl_2[2] = module_upvr.New("UICorner")({
		Name = "UICorner";
		CornerRadius = UDim.new(0.065, 0);
	})
	module[module_upvr.Children] = tbl_2
	return module_upvr.New("TextBox")(module)
end