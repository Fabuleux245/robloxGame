-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:18:55
-- Luau version 6, Types version 3
-- Time taken: 0.004823 seconds

local Parent = script.Parent.Parent
local Otter_upvr = require(Parent.Otter)
local tbl_upvr_2 = {
	dampingRatio = 1;
	frequency = 3;
	restingVelocityLimit = 0.1;
	restingPositionLimit = 0.1;
}
local tbl_upvr = {
	binding = nil;
	motor = nil;
}
tbl_upvr.__index = tbl_upvr
local React_upvr = require(Parent.React)
function tbl_upvr.create(arg1) -- Line 33
	--[[ Upvalues[3]:
		[1]: React_upvr (readonly)
		[2]: Otter_upvr (readonly)
		[3]: tbl_upvr (readonly)
	]]
	local any_createBinding_result1, any_createBinding_result2 = React_upvr.createBinding(arg1)
	local any_createSingleMotor_result1 = Otter_upvr.createSingleMotor(arg1)
	any_createSingleMotor_result1:onStep(any_createBinding_result2)
	local module = {
		binding = any_createBinding_result1;
		motor = any_createSingleMotor_result1;
	}
	setmetatable(module, tbl_upvr)
	return module
end
local function destroy(arg1) -- Line 47
	arg1.motor:destroy()
end
tbl_upvr.destroy = destroy
function tbl_upvr.getBinding(arg1) -- Line 51
	return arg1.binding
end
local function show(arg1) -- Line 55
	--[[ Upvalues[2]:
		[1]: Otter_upvr (readonly)
		[2]: tbl_upvr_2 (readonly)
	]]
	arg1.motor:setGoal(Otter_upvr.spring(1, tbl_upvr_2))
end
tbl_upvr.show = show
local function hide(arg1) -- Line 59
	--[[ Upvalues[2]:
		[1]: Otter_upvr (readonly)
		[2]: tbl_upvr_2 (readonly)
	]]
	arg1.motor:setGoal(Otter_upvr.spring(0, tbl_upvr_2))
end
tbl_upvr.hide = hide
function tbl_upvr.update(arg1, arg2) -- Line 63
	--[[ Upvalues[1]:
		[1]: Otter_upvr (readonly)
	]]
	arg1.motor:setGoal(Otter_upvr.instant(math.clamp(arg1.binding:getValue() + arg2, 0, 1)))
end
function tbl_upvr.finishUp(arg1) -- Line 69
	if arg1.binding:getValue() < 0.5 then
		arg1:hide()
	else
		arg1:show()
	end
end
local tbl_upvr_3 = {
	enabled = false;
	header = nil;
	footer = nil;
	footerVisible = false;
	connections = nil;
	touching = false;
	moving = false;
	touchPositionY = 0;
	scrollDistance = 50;
}
tbl_upvr_3.__index = tbl_upvr_3
local var11_upvw
function tbl_upvr_3.onTouchMoved(arg1, arg2) -- Line 104
	local var12 = arg2 / arg1.scrollDistance
	if arg1.footerVisible then
		arg1.footer:update(var12)
	end
	arg1.header:update(var12)
end
function tbl_upvr_3.onTouchEnded(arg1) -- Line 114
	if arg1.footerVisible then
		arg1.footer:finishUp()
	end
	arg1.header:finishUp()
end
local UserInputService_upvr = game:GetService("UserInputService")
function tbl_upvr_3.connectTouch(arg1) -- Line 123
	--[[ Upvalues[1]:
		[1]: UserInputService_upvr (readonly)
	]]
	if arg1.connections ~= nil then
	else
		arg1.connections = {}
		arg1.connections.started = UserInputService_upvr.TouchStarted:Connect(function(arg1_2) -- Line 128
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1.touching = true
			arg1.touchPositionY = arg1_2.Position.Y
		end)
		arg1.connections.moved = UserInputService_upvr.TouchMoved:Connect(function(arg1_3) -- Line 132
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			if not arg1.touching then
			else
				local Y = arg1_3.Position.Y
				if not arg1.moving then
					if 10 < math.abs(Y - arg1.touchPositionY) then
						arg1.moving = true
						arg1.touchPositionY = Y
					end
					return
				end
				arg1.touchPositionY = Y
				arg1:onTouchMoved(Y - arg1.touchPositionY)
			end
		end)
		arg1.connections.ended = UserInputService_upvr.TouchEnded:Connect(function(arg1_4) -- Line 148
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			if not arg1.touching then
			else
				arg1.touching = false
				arg1.moving = false
				arg1:onTouchEnded()
			end
		end)
	end
end
function tbl_upvr_3.disconnectTouch(arg1) -- Line 158
	if arg1.connections == nil then
	else
		for _, v in pairs(arg1.connections) do
			v:Disconnect()
		end
		arg1.connections = nil
	end
end
local function isEnabled(arg1) -- Line 171
	return arg1.enabled
end
tbl_upvr_3.isEnabled = isEnabled
local function setEnabled(arg1, arg2) -- Line 178
	if arg1.enabled == arg2 then
	else
		arg1.enabled = arg2
		if arg2 then
			arg1:connectTouch()
			return
		end
		arg1:disconnectTouch()
	end
end
tbl_upvr_3.setEnabled = setEnabled
local function setFooterVisible(arg1, arg2) -- Line 193
	if arg1.footerVisible == arg2 then
	else
		arg1.footerVisible = arg2
		if arg2 then
			arg1.footer:show()
			return
		end
		arg1.footer:hide()
	end
end
tbl_upvr_3.setFooterVisible = setFooterVisible
local function getHeaderBinding(arg1) -- Line 208
	return arg1.header:getBinding()
end
tbl_upvr_3.getHeaderBinding = getHeaderBinding
local function getFooterBinding(arg1) -- Line 215
	return arg1.footer:getBinding()
end
tbl_upvr_3.getFooterBinding = getFooterBinding
local function show(arg1) -- Line 222
	arg1.header:show()
	if arg1.footerVisible then
		arg1.footer:show()
	end
end
tbl_upvr_3.show = show
local function hide(arg1) -- Line 232
	arg1.header:hide()
	if arg1.footerVisible then
		arg1.footer:hide()
	end
end
tbl_upvr_3.hide = hide
function tbl_upvr_3.getInstance() -- Line 242
	--[[ Upvalues[2]:
		[1]: var11_upvw (read and write)
		[2]: tbl_upvr_3 (readonly)
	]]
	if not var11_upvw then
		var11_upvw = {}
		setmetatable(var11_upvw, tbl_upvr_3)
		var11_upvw:initialize()
	end
	return var11_upvw
end
function tbl_upvr_3.initialize(arg1) -- Line 252
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	arg1.header = tbl_upvr.create(1)
	arg1.footer = tbl_upvr.create(0)
end
local function destroy(arg1) -- Line 262
	--[[ Upvalues[1]:
		[1]: var11_upvw (read and write)
	]]
	arg1.header:destroy()
	arg1.footer:destroy()
	arg1:disconnectTouch()
	var11_upvw = nil
end
tbl_upvr_3.destroy = destroy
local function setScrollDistance(arg1, arg2) -- Line 272
	if arg2 == 0 then
	else
		arg1.scrollDistance = arg2
	end
end
tbl_upvr_3.setScrollDistance = setScrollDistance
return {
	isEnabled = function() -- Line 284, Named "isEnabled"
		--[[ Upvalues[1]:
			[1]: tbl_upvr_3 (readonly)
		]]
		return tbl_upvr_3.getInstance():isEnabled()
	end;
	setEnabled = function(arg1) -- Line 287, Named "setEnabled"
		--[[ Upvalues[1]:
			[1]: tbl_upvr_3 (readonly)
		]]
		tbl_upvr_3.getInstance():setEnabled(arg1)
	end;
	getHeaderBinding = function() -- Line 290, Named "getHeaderBinding"
		--[[ Upvalues[1]:
			[1]: tbl_upvr_3 (readonly)
		]]
		return tbl_upvr_3.getInstance():getHeaderBinding()
	end;
	getFooterBinding = function() -- Line 293, Named "getFooterBinding"
		--[[ Upvalues[1]:
			[1]: tbl_upvr_3 (readonly)
		]]
		return tbl_upvr_3.getInstance():getFooterBinding()
	end;
	setFooterVisible = function(arg1) -- Line 296, Named "setFooterVisible"
		--[[ Upvalues[1]:
			[1]: tbl_upvr_3 (readonly)
		]]
		tbl_upvr_3.getInstance():setFooterVisible(arg1)
	end;
	show = function() -- Line 299, Named "show"
		--[[ Upvalues[1]:
			[1]: tbl_upvr_3 (readonly)
		]]
		tbl_upvr_3.getInstance():show()
	end;
	hide = function() -- Line 302, Named "hide"
		--[[ Upvalues[1]:
			[1]: tbl_upvr_3 (readonly)
		]]
		tbl_upvr_3.getInstance():hide()
	end;
	destroy = function() -- Line 305, Named "destroy"
		--[[ Upvalues[1]:
			[1]: tbl_upvr_3 (readonly)
		]]
		tbl_upvr_3.getInstance():destroy()
	end;
	setScrollDistance = function(arg1) -- Line 308, Named "setScrollDistance"
		--[[ Upvalues[1]:
			[1]: tbl_upvr_3 (readonly)
		]]
		tbl_upvr_3.getInstance():setScrollDistance(arg1)
	end;
}