-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:04:22
-- Luau version 6, Types version 3
-- Time taken: 0.003084 seconds

local UserInputService_upvr = game:GetService("UserInputService")
local RunService_upvr = game:GetService("RunService")
local Panel3D = require(game:GetService("CorePackages").Workspace.Packages.VrCommon).Panel3D
local var5_upvr = CFrame.new(0, 0, -7) * CFrame.Angles(0, math.pi, 0)
local _ = {
	Name = "EmptySelectionImage";
	Image = "";
	BackgroundTransparency = 1;
	ImageTransparency = 1;
}
local any_Get_result1_upvr = Panel3D.Get("Dialog")
any_Get_result1_upvr:SetType(Panel3D.Type.Fixed)
any_Get_result1_upvr.localCF = var5_upvr
any_Get_result1_upvr:SetCanFade(true)
local var8_upvw = 0
local tbl_upvw = {}
local var10_upvw = false
local var11_upvw = 0
local function _(arg1) -- Line 46, Named "positionDialogPanel"
	--[[ Upvalues[4]:
		[1]: var8_upvw (read and write)
		[2]: UserInputService_upvr (readonly)
		[3]: any_Get_result1_upvr (readonly)
		[4]: var5_upvr (readonly)
	]]
	var8_upvw = arg1
	any_Get_result1_upvr.localCF = CFrame.new(UserInputService_upvr:GetUserCFrame(Enum.UserCFrame.Head).p) * CFrame.Angles(0, arg1, 0) * var5_upvr
end
function any_Get_result1_upvr.CalculateTransparency(arg1) -- Line 53
	--[[ Upvalues[4]:
		[1]: UserInputService_upvr (readonly)
		[2]: var11_upvw (read and write)
		[3]: var8_upvw (read and write)
		[4]: var10_upvw (read and write)
	]]
	local any_GetUserCFrame_result1 = UserInputService_upvr:GetUserCFrame(Enum.UserCFrame.Head)
	if 0.767944870877505 < math.abs(math.asin(any_GetUserCFrame_result1.lookVector.Y)) then
		var10_upvw = true
	end
	return math.min(math.max(0, (math.acos(any_GetUserCFrame_result1.lookVector * Vector3.new(1, 0, 1):Dot(Vector3.new(math.cos(var11_upvw + var8_upvw + (math.pi/2)), 0, -math.sin(var11_upvw + var8_upvw + (math.pi/2))))) - 0.6544984694978736) / 0.11344640137963136), 1)
end
local function updatePanelPosition_upvr() -- Line 69, Named "updatePanelPosition"
	--[[ Upvalues[6]:
		[1]: UserInputService_upvr (readonly)
		[2]: var11_upvw (read and write)
		[3]: var10_upvw (read and write)
		[4]: var8_upvw (read and write)
		[5]: any_Get_result1_upvr (readonly)
		[6]: var5_upvr (readonly)
	]]
	local var13 = UserInputService_upvr:GetUserCFrame(Enum.UserCFrame.Head).lookVector * Vector3.new(1, 0, 1)
	local var14 = (math.atan2(-var13.Z, var13.X) - (math.pi/2)) % (-math.pi*2)
	local var15 = var11_upvw + math.floor(var14 / (math.pi/2) + 0.5) * (math.pi/2)
	if var10_upvw then
		var10_upvw = false
		var11_upvw = var14
	end
	var8_upvw = var15
	any_Get_result1_upvr.localCF = CFrame.new(UserInputService_upvr:GetUserCFrame(Enum.UserCFrame.Head).p) * CFrame.Angles(0, var15, 0) * var5_upvr
end
function dialogPanelRenderUpdate() -- Line 84
	--[[ Upvalues[4]:
		[1]: any_Get_result1_upvr (readonly)
		[2]: var10_upvw (read and write)
		[3]: updatePanelPosition_upvr (readonly)
		[4]: tbl_upvw (read and write)
	]]
	if any_Get_result1_upvr.transparency == 1 or var10_upvw then
		updatePanelPosition_upvr()
	end
	for i, v in pairs(tbl_upvw) do
		if i:IsA("TextLabel") or i:IsA("TextButton") then
			i.TextTransparency = 1 - v * (1 - any_Get_result1_upvr.transparency)
		elseif i:IsA("ImageLabel") or i:IsA("ImageButton") then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			i.ImageTransparency = 1 - v * (1 - any_Get_result1_upvr.transparency)
		elseif i:IsA("Frame") then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			i.BackgroundTransparency = 1 - v * (1 - any_Get_result1_upvr.transparency)
		end
	end
end
local tbl_upvr = {}
local var22_upvw
local var23_upvw
local function updatePanel_upvr() -- Line 107, Named "updatePanel"
	--[[ Upvalues[7]:
		[1]: tbl_upvr (readonly)
		[2]: var22_upvw (read and write)
		[3]: any_Get_result1_upvr (readonly)
		[4]: tbl_upvw (read and write)
		[5]: var23_upvw (read and write)
		[6]: var10_upvw (read and write)
		[7]: updatePanelPosition_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [4] 5. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [4] 5. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [8] 8. Error Block 3 start (CF ANALYSIS FAILED)
	var22_upvw.content.Parent = nil
	-- KONSTANTERROR: [8] 8. Error Block 3 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [14] 12. Error Block 4 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [14] 12. Error Block 4 end (CF ANALYSIS FAILED)
end
local module_upvr = {}
module_upvr.__index = module_upvr
function module_upvr.new(arg1) -- Line 160
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local setmetatable_result1 = setmetatable({}, module_upvr)
	setmetatable_result1.content = arg1
	return setmetatable_result1
end
function module_upvr.SetContent(arg1, arg2) -- Line 166
	if not arg2 and arg1.content then
		arg1.content.Parent = nil
	end
	arg1.content = arg2
end
local var26_upvw = false
function module_upvr.Show(arg1, arg2) -- Line 174
	--[[ Upvalues[4]:
		[1]: var26_upvw (read and write)
		[2]: RunService_upvr (readonly)
		[3]: tbl_upvr (readonly)
		[4]: updatePanel_upvr (readonly)
	]]
	if not var26_upvw then
		var26_upvw = true
		RunService_upvr:BindToRenderStep("DialogPanel", Enum.RenderPriority.First.Value, dialogPanelRenderUpdate)
	end
	if arg2 then
		table.insert(tbl_upvr, 1, arg1)
	else
		table.insert(tbl_upvr, arg1)
	end
	updatePanel_upvr()
end
function module_upvr.Close(arg1) -- Line 187
	--[[ Upvalues[4]:
		[1]: tbl_upvr (readonly)
		[2]: var26_upvw (read and write)
		[3]: RunService_upvr (readonly)
		[4]: updatePanel_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local pairs_result1, pairs_result2, pairs_result3 = pairs(tbl_upvr)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [13] 11. Error Block 4 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [13] 11. Error Block 4 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [5] 5. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [13.5]
	-- KONSTANTERROR: [5] 5. Error Block 2 end (CF ANALYSIS FAILED)
end
return module_upvr