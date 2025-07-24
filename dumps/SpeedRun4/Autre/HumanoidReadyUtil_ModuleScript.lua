-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:03:40
-- Luau version 6, Types version 3
-- Time taken: 0.002811 seconds

local function waitForFirst_upvr(...) -- Line 5, Named "waitForFirst"
	local BindableEvent_upvr = Instance.new("BindableEvent")
	local args_list_upvr = {...}
	local function fire(...) -- Line 9
		--[[ Upvalues[2]:
			[1]: args_list_upvr (readonly)
			[2]: BindableEvent_upvr (readonly)
		]]
		for i = 1, #args_list_upvr do
			args_list_upvr[i]:Disconnect()
		end
		return BindableEvent_upvr:Fire(...)
	end
	for i_2 = 1, #args_list_upvr do
		args_list_upvr[i_2] = args_list_upvr[i_2]:Connect(fire)
	end
	return BindableEvent_upvr.Event:Wait()
end
local module = {}
local Players_upvr = game:GetService("Players")
function module.registerHumanoidReady(arg1) -- Line 37
	--[[ Upvalues[2]:
		[1]: waitForFirst_upvr (readonly)
		[2]: Players_upvr (readonly)
	]]
	local function characterAdded_upvr(arg1_2, arg2) -- Line 39, Named "characterAdded"
		--[[ Upvalues[2]:
			[1]: waitForFirst_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var12
		if not var12 then
			var12 = waitForFirst_upvr
			var12(arg2.AncestryChanged, arg1_2.CharacterAdded)
		end
		var12 = arg1_2.Character
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var12 = arg2.Parent
			return var12
		end
		if var12 ~= arg2 or not INLINED() then
		else
			var12 = arg2:FindFirstChildOfClass("Humanoid")
			while arg2:IsDescendantOf(game) and not var12 do
				waitForFirst_upvr(arg2.ChildAdded, arg2.AncestryChanged, arg1_2.CharacterAdded)
				var12 = arg2:FindFirstChildOfClass("Humanoid")
			end
			if arg1_2.Character ~= arg2 or not arg2:IsDescendantOf(game) then return end
			while arg2:IsDescendantOf(game) and not arg2:FindFirstChild("HumanoidRootPart") do
				waitForFirst_upvr(arg2.ChildAdded, arg2.AncestryChanged, var12.AncestryChanged, arg1_2.CharacterAdded)
			end
			if arg2:FindFirstChild("HumanoidRootPart") and var12:IsDescendantOf(game) and arg2:IsDescendantOf(game) and arg1_2.Character == arg2 then
				arg1(arg1_2, arg2, var12)
			end
		end
	end
	local function playerAdded(arg1_3) -- Line 79
		--[[ Upvalues[1]:
			[1]: characterAdded_upvr (readonly)
		]]
		local var15_upvw
		local any_Connect_result1_upvr = arg1_3.CharacterAdded:Connect(function(arg1_4) -- Line 80
			--[[ Upvalues[2]:
				[1]: characterAdded_upvr (copied, readonly)
				[2]: arg1_3 (readonly)
			]]
			characterAdded_upvr(arg1_3, arg1_4)
		end)
		var15_upvw = arg1_3.AncestryChanged:Connect(function(arg1_5, arg2) -- Line 86
			--[[ Upvalues[2]:
				[1]: var15_upvw (read and write)
				[2]: any_Connect_result1_upvr (readonly)
			]]
			if not game:IsAncestorOf(arg2) then
				var15_upvw:Disconnect()
				any_Connect_result1_upvr:Disconnect()
			end
		end)
		local Character = arg1_3.Character
		if Character then
			characterAdded_upvr(arg1_3, Character)
		end
	end
	Players_upvr.PlayerAdded:Connect(playerAdded)
	for _, v in pairs(Players_upvr:GetPlayers()) do
		playerAdded(v)
	end
end
return module