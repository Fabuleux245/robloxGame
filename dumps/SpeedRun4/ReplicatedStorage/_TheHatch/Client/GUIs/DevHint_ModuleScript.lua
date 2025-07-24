-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:11:12
-- Luau version 6, Types version 3
-- Time taken: 0.003570 seconds

local module_upvr = require(script.Parent:WaitForChild("spr"))
local module_upvr_3 = {}
local module_upvr_2 = require(script.Parent:WaitForChild("Maid"))
function module_upvr_3.new(arg1) -- Line 30
	--[[ Upvalues[2]:
		[1]: module_upvr_2 (readonly)
		[2]: module_upvr_3 (readonly)
	]]
	local tbl = {}
	tbl.instance = arg1
	tbl.hovered = false
	tbl.pressed = false
	tbl.maid = module_upvr_2.new()
	local setmetatable_result1 = setmetatable(tbl, {
		__index = module_upvr_3;
	})
	setmetatable_result1:init()
	return setmetatable_result1
end
function module_upvr_3.show(arg1, arg2) -- Line 43
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	arg1.instance.Frame.Content.Label.Text = `Hunting for eggs?\n<font transparency="0.25" size="22">{arg2}</font>`
	arg1.instance.Frame.Visible = true
	module_upvr.target(arg1.instance.Frame, 0.8, 2, {
		Position = UDim2.new(1, -16, 1, -16);
	})
	arg1.maid.hide = nil
end
function module_upvr_3.hide(arg1) -- Line 54
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	module_upvr.target(arg1.instance.Frame, 0.8, 2, {
		Position = UDim2.new(1, 500, 1, -16);
	})
	arg1.maid.hide = task.delay(1, function() -- Line 59
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.instance.Frame.Visible = false
	end)
end
local module_upvr_4 = require(script.Parent:WaitForChild("AutoScale"))
function module_upvr_3.updateBounds(arg1) -- Line 64
	--[[ Upvalues[1]:
		[1]: module_upvr_4 (readonly)
	]]
	local Frame = arg1.instance.Frame
	local var12 = Frame.Content.Label.TextBounds / module_upvr_4.scale
	Frame.Size = UDim2.fromOffset(math.max(var12.X + 48, 330), var12.Y + 48)
	local Content = Frame.Content
	if 82 >= var12.Y then
		Content = false
	else
		Content = true
	end
	Content.Grooves.Visible = Content
end
function module_upvr_3.input(arg1, arg2, arg3) -- Line 72
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	if arg2 ~= nil then
		local _ = arg2
	else
	end
	if arg3 ~= nil then
		local _ = arg3
	else
	end
	if arg1.hovered == arg1.hovered and arg1.pressed == arg1.pressed then
	else
		local tbl_2 = {}
		local var17
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
		if arg1.hovered and not arg1.pressed then
			var17 = UDim2.new(1, 16, 1, 16)
		else
			var17 = UDim2.fromScale(1, 1)
		end
		tbl_2.Size = var17
		module_upvr.target(arg1.instance.Frame.Content, 0.7, 6, tbl_2)
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if arg1.pressed and not arg1.pressed then
			local tbl_4 = {}
			var17 = UDim2.fromScale(0.5, 0.5)
			tbl_4.Position = var17
			module_upvr.target(arg1.instance.Frame.Content, 0.5, 6, tbl_4)
			local tbl_3 = {}
			var17 = -2000
			tbl_3.Size = UDim2.fromOffset(-2000, var17)
			var17 = 6
			tbl_3.Position = UDim2.fromScale(0, var17)
			module_upvr.setVelocity(arg1.instance.Frame.Content, tbl_3)
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		arg1.hovered = arg1.hovered
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		arg1.pressed = arg1.pressed
	end
end
function module_upvr_3.init(arg1) -- Line 96
	local Content_2 = arg1.instance.Frame.Content
	arg1.maid:GiveTask(Content_2.Label:GetPropertyChangedSignal("TextBounds"):Connect(function() -- Line 99
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:updateBounds()
	end))
	arg1.maid:GiveTask(Content_2.ClickableArea.Activated:Connect(function() -- Line 103
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:hide()
	end))
	arg1.maid:GiveTask(Content_2.ClickableArea.MouseButton1Down:Connect(function() -- Line 107
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:input(nil, true)
	end))
	arg1.maid:GiveTask(Content_2.ClickableArea.MouseButton1Up:Connect(function() -- Line 111
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:input(nil, false)
	end))
	arg1.maid:GiveTask(Content_2.ClickableArea.MouseEnter:Connect(function() -- Line 115
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:input(true, nil)
	end))
	arg1.maid:GiveTask(Content_2.ClickableArea.MouseLeave:Connect(function() -- Line 119
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:input(false, false)
	end))
	arg1.maid:GiveTask(Content_2.ClickableArea.SelectionGained:Connect(function() -- Line 123
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:input(true, nil)
	end))
	arg1.maid:GiveTask(Content_2.ClickableArea.SelectionLost:Connect(function() -- Line 127
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:input(false, false)
	end))
	arg1.instance.Frame.Visible = false
	arg1.instance.Frame.Position = UDim2.new(1, 500, 1, -16)
end
function module_upvr_3.Destroy(arg1) -- Line 135
	arg1.maid:DoCleaning()
end
return module_upvr_3