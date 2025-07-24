-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:11:07
-- Luau version 6, Types version 3
-- Time taken: 0.004112 seconds

local spr_upvr = require(script.Parent.spr)
local module_upvr = {}
local Maid_upvr = require(script.Parent.Maid)
local Sounds_upvr = require(script.Parent.Sounds)
function module_upvr.new(arg1) -- Line 33
	--[[ Upvalues[4]:
		[1]: Maid_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: Sounds_upvr (readonly)
		[4]: spr_upvr (readonly)
	]]
	local tbl_2 = {}
	tbl_2.instance = arg1
	local Parent = arg1.Parent
	if Parent then
		Parent = arg1.Parent:FindFirstChild("CloseRibbon")
	end
	tbl_2.tail = Parent
	tbl_2.window = arg1:GetAttribute("Window")
	tbl_2.maid = Maid_upvr.new()
	tbl_2.hovered = false
	tbl_2.pressed = false
	tbl_2.selected = false
	local setmetatable_result1_upvr = setmetatable(tbl_2, {
		__index = module_upvr;
	})
	setmetatable_result1_upvr.maid:Add(arg1.Activated:Connect(function() -- Line 44
		--[[ Upvalues[1]:
			[1]: setmetatable_result1_upvr (readonly)
		]]
		setmetatable_result1_upvr:close()
	end))
	setmetatable_result1_upvr.maid:Add(arg1.MouseEnter:Connect(function() -- Line 48
		--[[ Upvalues[2]:
			[1]: setmetatable_result1_upvr (readonly)
			[2]: Sounds_upvr (copied, readonly)
		]]
		setmetatable_result1_upvr.hovered = true
		setmetatable_result1_upvr:update()
		Sounds_upvr.play(Sounds_upvr.assets.hover)
	end))
	setmetatable_result1_upvr.maid:Add(arg1.MouseLeave:Connect(function() -- Line 54
		--[[ Upvalues[1]:
			[1]: setmetatable_result1_upvr (readonly)
		]]
		setmetatable_result1_upvr.hovered = false
		setmetatable_result1_upvr.pressed = false
		setmetatable_result1_upvr:update()
	end))
	setmetatable_result1_upvr.maid:Add(arg1.SelectionGained:Connect(function() -- Line 60
		--[[ Upvalues[2]:
			[1]: setmetatable_result1_upvr (readonly)
			[2]: Sounds_upvr (copied, readonly)
		]]
		setmetatable_result1_upvr.selected = true
		setmetatable_result1_upvr:update()
		Sounds_upvr.play(Sounds_upvr.assets.hover)
	end))
	setmetatable_result1_upvr.maid:Add(arg1.SelectionLost:Connect(function() -- Line 66
		--[[ Upvalues[1]:
			[1]: setmetatable_result1_upvr (readonly)
		]]
		setmetatable_result1_upvr.selected = false
		setmetatable_result1_upvr:update()
	end))
	setmetatable_result1_upvr.maid:Add(arg1.MouseButton1Down:Connect(function() -- Line 71
		--[[ Upvalues[1]:
			[1]: setmetatable_result1_upvr (readonly)
		]]
		setmetatable_result1_upvr.pressed = true
		setmetatable_result1_upvr:update()
	end))
	setmetatable_result1_upvr.maid:Add(arg1.MouseButton1Up:Connect(function() -- Line 76
		--[[ Upvalues[1]:
			[1]: setmetatable_result1_upvr (readonly)
		]]
		setmetatable_result1_upvr.pressed = false
		setmetatable_result1_upvr:update()
	end))
	setmetatable_result1_upvr.maid:Add(function() -- Line 81
		--[[ Upvalues[2]:
			[1]: spr_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		spr_upvr.stop(arg1)
	end)
	setmetatable_result1_upvr:update()
	setmetatable_result1_upvr:createGamepadShortcut()
	return setmetatable_result1_upvr
end
function module_upvr.close(arg1) -- Line 91
end
local UserInputService_upvr = game:GetService("UserInputService")
local trackPreferredInput_upvr = require(script.Parent.trackPreferredInput)
function module_upvr.createGamepadShortcut(arg1) -- Line 101
	--[[ Upvalues[2]:
		[1]: UserInputService_upvr (readonly)
		[2]: trackPreferredInput_upvr (readonly)
	]]
	if arg1.window == "None" then
	else
		local any_Add_result1_upvr = arg1.maid:Add(Instance.new("ImageLabel"))
		any_Add_result1_upvr.Image = UserInputService_upvr:GetImageForKeyCode(Enum.KeyCode.ButtonB)
		any_Add_result1_upvr.BackgroundTransparency = 1
		any_Add_result1_upvr.AnchorPoint = Vector2.new(0.5, 0.5)
		any_Add_result1_upvr.Position = UDim2.new(0.75, 0, 1, -36)
		any_Add_result1_upvr.Size = UDim2.fromOffset(36, 36)
		any_Add_result1_upvr.Visible = false
		any_Add_result1_upvr.Parent = arg1.instance
		arg1.maid:Add(trackPreferredInput_upvr(function(arg1_2) -- Line 116
			--[[ Upvalues[1]:
				[1]: any_Add_result1_upvr (readonly)
			]]
			local var21
			if arg1_2 ~= Enum.PreferredInput.Gamepad then
				var21 = false
			else
				var21 = true
			end
			any_Add_result1_upvr.Visible = var21
		end))
		arg1.maid:Add(UserInputService_upvr.InputBegan:Connect(function(arg1_3, arg2) -- Line 120
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			if not arg2 and arg1_3.KeyCode == Enum.KeyCode.ButtonB then
				arg1:close()
			end
		end))
	end
end
local udim2_upvr = UDim2.fromOffset(86, 114)
local udim_upvr = UDim.new(1, -128)
function module_upvr.update(arg1) -- Line 127
	--[[ Upvalues[3]:
		[1]: spr_upvr (readonly)
		[2]: udim2_upvr (readonly)
		[3]: udim_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var25
	if not var25 then
		var25 = arg1.selected
	end
	local tbl_4 = {}
	local var27
	if var25 and not arg1.pressed then
		var27 = 40
	else
		var27 = 10
	end
	tbl_4.Size = udim2_upvr + UDim2.fromOffset(0, var27)
	spr_upvr.target(arg1.instance, 0.6, 4, tbl_4)
	local tbl_3 = {}
	if arg1.pressed then
	elseif var25 then
	else
	end
	tbl_3.ImageTransparency = 1
	spr_upvr.target(arg1.instance.Glow, 1, 5, tbl_3)
	if arg1.tail then
		local tbl = {}
		var27 = UDim.new
		local var30
		if var25 and not arg1.pressed then
			var30 = -15
		else
			var30 = 15
		end
		var27 = var27(0, var30)
		tbl.Position = UDim2.new(arg1.tail.Position.X, udim_upvr + var27)
		spr_upvr.target(arg1.tail, 0.6, 4, tbl)
	end
end
function module_upvr.Destroy(arg1) -- Line 148
	arg1.maid:DoCleaning()
end
return module_upvr