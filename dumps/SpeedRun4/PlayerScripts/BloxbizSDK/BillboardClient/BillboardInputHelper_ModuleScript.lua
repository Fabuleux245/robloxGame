-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:42:17
-- Luau version 6, Types version 3
-- Time taken: 0.005148 seconds

local var1_upvw
local mouse_upvr = game.Players.LocalPlayer:GetMouse()
local tbl_upvr = {}
local module = {
	addBillboard = function(arg1, arg2) -- Line 18, Named "addBillboard"
		--[[ Upvalues[1]:
			[1]: tbl_upvr (readonly)
		]]
		if tbl_upvr[arg2] then
		else
			tbl_upvr[arg2] = true
		end
	end;
	removeBillboard = function(arg1, arg2) -- Line 26, Named "removeBillboard"
		--[[ Upvalues[1]:
			[1]: tbl_upvr (readonly)
		]]
		if tbl_upvr[arg2] then
			tbl_upvr[arg2] = nil
		end
	end;
}
local ConfigReader_upvr = require(script.Parent.Parent.ConfigReader)
local Raycast_upvr = require(script.Parent.Raycast)
function module.updateRaycasting(arg1) -- Line 32
	--[[ Upvalues[3]:
		[1]: ConfigReader_upvr (readonly)
		[2]: var1_upvw (read and write)
		[3]: Raycast_upvr (readonly)
	]]
	local RaycastParams_new_result1 = RaycastParams.new()
	RaycastParams_new_result1.FilterType = ConfigReader_upvr:read("RaycastFilterType")
	RaycastParams_new_result1.FilterDescendantsInstances = ConfigReader_upvr:read("RaycastFilterList")()
	var1_upvw = Raycast_upvr.new(RaycastParams_new_result1, 0, false, false, 0, 1)
end
function module.isMouseOnBillboard(arg1) -- Line 41
	--[[ Upvalues[3]:
		[1]: tbl_upvr (readonly)
		[2]: mouse_upvr (readonly)
		[3]: var1_upvw (read and write)
	]]
	arg1:updateRaycasting()
	local var28
	for i, _ in pairs(tbl_upvr) do
		local CurrentCamera = workspace.CurrentCamera
		local _, any_WorldToViewportPoint_result2_2 = CurrentCamera:WorldToViewportPoint(i.Position)
		if any_WorldToViewportPoint_result2_2 then
			local any_ScreenPointToRay_result1_2 = CurrentCamera:ScreenPointToRay(mouse_upvr.X, mouse_upvr.Y, 0)
			local any_Raycast_result1 = var1_upvw:Raycast(any_ScreenPointToRay_result1_2.Origin, any_ScreenPointToRay_result1_2.Direction * 5000)
			if any_Raycast_result1 and tbl_upvr[any_Raycast_result1.Instance] then
				var28 = any_Raycast_result1.Instance
				return var28
			end
		end
	end
	return var28
end
local UserInputService_upvr = game:GetService("UserInputService")
function module.detectMouseClicks(arg1) -- Line 64
	--[[ Upvalues[1]:
		[1]: UserInputService_upvr (readonly)
	]]
	UserInputService_upvr.InputBegan:Connect(function(arg1_2) -- Line 65
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		-- KONSTANTERROR: [0] 1. Error Block 21 start (CF ANALYSIS FAILED)
		local var36
		if arg1_2.UserInputType ~= Enum.UserInputType.MouseButton1 then
			var36 = false
		else
			var36 = true
		end
		if arg1_2.UserInputType ~= Enum.UserInputType.Touch then
		else
		end
		-- KONSTANTERROR: [0] 1. Error Block 21 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [17] 12. Error Block 18 start (CF ANALYSIS FAILED)
		if true then
			-- KONSTANTERROR: [18] 13. Error Block 15 start (CF ANALYSIS FAILED)
			local any_isMouseOnBillboard_result1 = arg1:isMouseOnBillboard()
			if any_isMouseOnBillboard_result1 then
				arg1.mouseClick:Fire(any_isMouseOnBillboard_result1)
			end
			-- KONSTANTERROR: [18] 13. Error Block 15 end (CF ANALYSIS FAILED)
		end
		-- KONSTANTERROR: [17] 12. Error Block 18 end (CF ANALYSIS FAILED)
	end)
end
local var38_upvw = false
local var39_upvw
function module.runDetectionLoop(arg1) -- Line 79
	--[[ Upvalues[3]:
		[1]: var38_upvw (read and write)
		[2]: mouse_upvr (readonly)
		[3]: var39_upvw (read and write)
	]]
	if var38_upvw then
	else
		var38_upvw = true
		while true do
			task.wait(0.1)
			if mouse_upvr.Target ~= nil then
				local any_isMouseOnBillboard_result1_2 = arg1:isMouseOnBillboard()
				if var39_upvw ~= any_isMouseOnBillboard_result1_2 then
					if var39_upvw ~= nil then
						arg1.mouseLeft:Fire(var39_upvw)
					end
					if any_isMouseOnBillboard_result1_2 ~= nil then
						arg1.mouseEntered:Fire(any_isMouseOnBillboard_result1_2)
					end
					var39_upvw = any_isMouseOnBillboard_result1_2
				end
			end
		end
	end
end
function module.init(arg1) -- Line 110
	arg1.mouseClick = Instance.new("BindableEvent")
	arg1.mouseEntered = Instance.new("BindableEvent")
	arg1.mouseLeft = Instance.new("BindableEvent")
	arg1:detectMouseClicks()
	task.spawn(arg1.runDetectionLoop, arg1)
end
module:init()
return module