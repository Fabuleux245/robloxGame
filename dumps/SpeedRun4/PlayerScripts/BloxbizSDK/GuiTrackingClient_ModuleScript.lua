-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:42:49
-- Luau version 6, Types version 3
-- Time taken: 0.001769 seconds

local module = {}
local tbl_upvw = {}
local tbl_upvr = {
	[Enum.UserInputType.Touch] = true;
	[Enum.UserInputType.MouseButton1] = true;
}
local function _(arg1) -- Line 21, Named "lookForButton"
	for _, v in arg1 do
		if v:IsA("GuiButton") then
			return v
		end
	end
end
local PlayerGui_upvr = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")
local function onInputBegan_upvr(arg1, arg2) -- Line 29, Named "onInputBegan"
	--[[ Upvalues[3]:
		[1]: tbl_upvr (readonly)
		[2]: PlayerGui_upvr (readonly)
		[3]: tbl_upvw (read and write)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 16 start (CF ANALYSIS FAILED)
	if not arg2 then return end
	local Position = arg1.Position
	if not tbl_upvr[arg1.UserInputType] then return end
	-- KONSTANTERROR: [0] 1. Error Block 16 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [29] 24. Error Block 8 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [29] 24. Error Block 8 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [22] 18. Error Block 18 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [29.11]
	if nil then
		-- KONSTANTWARNING: GOTO [32] #26
	end
	-- KONSTANTERROR: [22] 18. Error Block 18 end (CF ANALYSIS FAILED)
end
local UserInputService_upvr = game:GetService("UserInputService")
local OnSendGuiImpressions_upvr = game:GetService("ReplicatedStorage"):WaitForChild("BloxbizRemotes"):WaitForChild("OnSendGuiImpressions")
function module.init() -- Line 54
	--[[ Upvalues[4]:
		[1]: UserInputService_upvr (readonly)
		[2]: onInputBegan_upvr (readonly)
		[3]: tbl_upvw (read and write)
		[4]: OnSendGuiImpressions_upvr (readonly)
	]]
	UserInputService_upvr.InputBegan:Connect(onInputBegan_upvr)
	while task.wait(10) do
		if #tbl_upvw ~= 0 then
			OnSendGuiImpressions_upvr:FireServer(tbl_upvw)
			tbl_upvw = {}
		end
	end
end
return module