-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:41:04
-- Luau version 6, Types version 3
-- Time taken: 0.002290 seconds

local module = require(script.Parent.Parent.Parent.Parent:FindFirstChild("Utils"):WaitForChild("Fusion"))
local tbl_upvr = {
	DefaultFont = Font.new("rbxasset://fonts/families/GothamSSm.json");
}
local Value_upvr = module.Value
local New_upvr = module.New
local Cleanup_upvr = module.Cleanup
local OnEvent_upvr = module.OnEvent
local Children_upvr = module.Children
local Ref_upvr = module.Ref
return function(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 18
	--[[ Upvalues[7]:
		[1]: Value_upvr (readonly)
		[2]: New_upvr (readonly)
		[3]: Cleanup_upvr (readonly)
		[4]: OnEvent_upvr (readonly)
		[5]: Children_upvr (readonly)
		[6]: tbl_upvr (readonly)
		[7]: Ref_upvr (readonly)
	]]
	local Value_upvr_result1 = Value_upvr()
	local module_2 = {}
	module_2.Name = arg1
	module_2.Text = ""
	module_2.TextColor3 = Color3.fromRGB(0, 0, 0)
	module_2.TextScaled = true
	module_2.TextSize = 14
	module_2.TextWrapped = true
	module_2.AutoButtonColor = false
	module_2.AnchorPoint = Vector2.new(0.5, 0)
	module_2.BackgroundColor3 = arg3.ButtonBackgroundColor
	module_2.BackgroundTransparency = arg3.TextTransparency
	module_2.Position = UDim2.fromScale(0.5, 0.275)
	module_2.Size = arg3.ButtonSize
	module_2.ZIndex = 2
	module_2[Cleanup_upvr] = function() -- Line 43
		--[[ Upvalues[1]:
			[1]: arg5 (readonly)
		]]
		arg5()
	end
	module_2[OnEvent_upvr("Activated")] = function(...) -- Line 47
		--[[ Upvalues[1]:
			[1]: arg6 (readonly)
		]]
		arg6(...)
	end
	module_2[OnEvent_upvr("MouseButton1Down")] = function() -- Line 51
		--[[ Upvalues[1]:
			[1]: arg4 (readonly)
		]]
		arg4.Held:set(true)
	end
	module_2[OnEvent_upvr("MouseButton1Up")] = function() -- Line 55
		--[[ Upvalues[1]:
			[1]: arg4 (readonly)
		]]
		arg4.Held:set(false)
	end
	module_2[OnEvent_upvr("MouseEnter")] = function() -- Line 59
		--[[ Upvalues[1]:
			[1]: arg4 (readonly)
		]]
		arg4.Hovering:set(true)
	end
	module_2[OnEvent_upvr("MouseLeave")] = function() -- Line 63
		--[[ Upvalues[1]:
			[1]: arg4 (readonly)
		]]
		arg4.Hovering:set(false)
		arg4.Held:set(false)
	end
	local tbl_2 = {}
	local tbl = {
		Name = "TextLabel";
	}
	tbl.Text = arg1
	tbl.TextColor3 = arg2
	tbl.FontFace = tbl_upvr.DefaultFont
	tbl.TextScaled = true
	tbl.TextSize = 14
	tbl.TextTransparency = arg3.TextTransparency
	tbl.TextWrapped = true
	tbl.AnchorPoint = Vector2.new(0.5, 0.5)
	tbl.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	tbl.BackgroundTransparency = 1
	tbl.Position = UDim2.fromScale(0.5, 0.5)
	tbl.Size = UDim2.fromScale(0.8, 0.4)
	tbl[Ref_upvr] = Value_upvr_result1
	tbl_2[1] = New_upvr("UICorner")({
		Name = "UICorner";
		CornerRadius = UDim.new(0.15, 0);
	})
	tbl_2[2] = New_upvr("TextLabel")(tbl)
	module_2[Children_upvr] = tbl_2
	return New_upvr("TextButton")(module_2), Value_upvr_result1:get()
end