-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:40:42
-- Luau version 6, Types version 3
-- Time taken: 0.004029 seconds

local module_upvr = {}
local HttpService_upvr = game:GetService("HttpService")
local MetricsClient_upvr = require(script.Parent.Parent.MetricsClient)
local function branchEntry_upvr(arg1, arg2, arg3) -- Line 14, Named "branchEntry"
	--[[ Upvalues[2]:
		[1]: HttpService_upvr (readonly)
		[2]: MetricsClient_upvr (readonly)
	]]
	local branchEntered = arg1.branchEntered
	local tbl = {
		branch_start_time = os.time();
		timestamp = os.time();
	}
	tbl.current_branch = arg3
	tbl.bloxbiz_ad_id = arg1.adData.bloxbiz_ad_id
	tbl.dialogue_guid = arg1.dialogueGUID
	tbl.response_guid = HttpService_upvr:GenerateGUID(false)
	arg1.branchEntered = tbl
	if arg3 ~= "Branch1" then
		arg1.branchEntered.response_time = tick() - branchEntered.branch_start_time_tick
		arg1.branchEntered.previous_branch = branchEntered.current_branch
		arg1.branchEntered.previous_branch_text = arg1.branchData[branchEntered.current_branch].Text
		arg1.branchEntered.previous_response = branchEntered.response
	else
		arg1.branchEntered.response_time = 0
		arg1.branchEntered.previous_branch = ""
		arg1.branchEntered.previous_branch_text = ""
		arg1.branchEntered.previous_response = ""
	end
	if arg2 then
		arg1.branchEntered.current_branch_text = arg1.branchData[arg3].Text
	else
		arg1.branchEntered.current_branch_text = ""
	end
	MetricsClient_upvr.queueBranchEntry(arg1)
	arg1.branchEntered.branch_start_time_tick = tick()
end
local Workspace_upvr = game:GetService("Workspace")
local function update_upvr(arg1, arg2, arg3) -- Line 50, Named "update"
	--[[ Upvalues[2]:
		[1]: Workspace_upvr (readonly)
		[2]: branchEntry_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 60 start (CF ANALYSIS FAILED)
	local var7
	if #arg2.BranchOptions ~= 5 then
		var7 = false
	else
		var7 = true
	end
	-- KONSTANTERROR: [0] 1. Error Block 60 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [22] 15. Error Block 6 start (CF ANALYSIS FAILED)
	arg1.main.UISizeConstraint.MaxSize = Vector2.new(Workspace_upvr.CurrentCamera.ViewportSize.X * 0.9, math.huge)
	-- KONSTANTERROR: [22] 15. Error Block 6 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [38] 25. Error Block 7 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [38] 25. Error Block 7 end (CF ANALYSIS FAILED)
end
function module_upvr.onWindowSizeChange(arg1) -- Line 228
	--[[ Upvalues[1]:
		[1]: update_upvr (readonly)
	]]
	if arg1.dialogueEnded then
	else
		local current_branch = arg1.branchEntered.current_branch
		task.wait()
		update_upvr(arg1, arg1.branchData[current_branch], current_branch)
	end
end
function module_upvr.setTransparency(arg1, arg2) -- Line 248
	local main = arg1.main
	main.CharacterName.Transparency = arg2
	main.CharacterName.TextLabel.TextTransparency = arg2
	main.Content.Transparency = arg2
	main.Content.TextLabel.TextTransparency = arg2
	main.PaidAdLabel.Transparency = arg2
	main.PaidAdLabel.TextLabel.TextTransparency = arg2
	for _, v in pairs(main.Options:GetChildren()) do
		if v:IsA("Frame") then
			v.Transparency = arg2
			v.TextButton.TextTransparency = arg2
		end
	end
end
function module_upvr.restoreTransparency(arg1) -- Line 265
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	module_upvr.setTransparency(arg1, 0)
	local main_3 = arg1.main
	main_3.Content.Transparency = 0.05
	for _, v_2 in pairs(main_3.Options:GetChildren()) do
		if v_2:IsA("Frame") then
			v_2.Transparency = 0.05
		end
	end
end
function module_upvr.display(arg1, arg2, arg3) -- Line 278
	--[[ Upvalues[3]:
		[1]: module_upvr (readonly)
		[2]: branchEntry_upvr (readonly)
		[3]: update_upvr (readonly)
	]]
	local main_2_upvr = arg1.main
	module_upvr.setTransparency(arg1, 0.99)
	main_2_upvr.Visible = true
	local var22_upvr = arg2
	if not var22_upvr then
		var22_upvr = arg1.branchData.Branch1
	end
	branchEntry_upvr(arg1, var22_upvr, arg3)
	task.wait()
	update_upvr(arg1, var22_upvr, arg3)
	module_upvr.restoreTransparency(arg1)
	local SOME = main_2_upvr.Options:FindFirstChild("Option"..1)
	if SOME then
		SOME.Visible = false
	end
	local SOME_2 = main_2_upvr.Options:FindFirstChild("Option"..2)
	if SOME_2 then
		SOME_2.Visible = false
	end
	local SOME_5 = main_2_upvr.Options:FindFirstChild("Option"..3)
	if SOME_5 then
		SOME_5.Visible = false
	end
	local SOME_4 = main_2_upvr.Options:FindFirstChild("Option"..4)
	if SOME_4 then
		SOME_4.Visible = false
	end
	main_2_upvr.LikertScale.Visible = false
	main_2_upvr.Visible = true
	task.spawn(function() -- Line 305
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: main_2_upvr (readonly)
			[3]: var22_upvr (readonly)
		]]
		arg1:animateText1(main_2_upvr.Content.TextLabel, var22_upvr.Text, 0.03)
		local dialogueEnded = arg1.dialogueEnded
		if not dialogueEnded then
			if #var22_upvr.BranchOptions ~= 5 then
				dialogueEnded = false
			else
				dialogueEnded = true
			end
			if dialogueEnded then
				main_2_upvr.LikertScale.Visible = true
				return
			end
			for i_3 = 1, 4 do
				local SOME_3 = main_2_upvr.Options:FindFirstChild("Option"..i_3)
				if SOME_3 and var22_upvr.BranchOptions[i_3] then
					SOME_3.Visible = true
				end
			end
		end
	end)
end
return module_upvr