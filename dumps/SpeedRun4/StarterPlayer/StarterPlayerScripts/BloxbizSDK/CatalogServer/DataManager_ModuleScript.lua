-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:41:48
-- Luau version 6, Types version 3
-- Time taken: 0.003230 seconds

local module_upvr = {}
local Utils_upvr = require(script.Parent.Parent.Utils)
local tbl_upvr = {
	Outfits = {};
	OutfitsCount = 0;
}
local any_GetDataStore_result1_upvr = game:GetService("DataStoreService"):GetDataStore("CATALOG_DATA_TEMP".."007")
local tbl_upvr_2 = {}
local var6_upvw
function module_upvr.GetData(arg1) -- Line 38
	--[[ Upvalues[1]:
		[1]: tbl_upvr_2 (readonly)
	]]
	return tbl_upvr_2[arg1]
end
function module_upvr.SetData(arg1, arg2, arg3) -- Line 42
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: var6_upvw (read and write)
	]]
	local any_GetData_result1_3 = module_upvr.GetData(arg1)
	if not any_GetData_result1_3 then
	else
		if type(arg3) == "table" and arg3.InnerKey then
			any_GetData_result1_3[arg2][arg3.InnerKey] = arg3.InnerValue
		else
			any_GetData_result1_3[arg2] = arg3
		end
		var6_upvw:FireClient(arg1, arg2, arg3)
	end
end
function module_upvr.LoadData(arg1) -- Line 60
	--[[ Upvalues[6]:
		[1]: Utils_upvr (readonly)
		[2]: any_GetDataStore_result1_upvr (readonly)
		[3]: tbl_upvr_2 (readonly)
		[4]: tbl_upvr (readonly)
		[5]: module_upvr (readonly)
		[6]: var6_upvw (read and write)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 35 start (CF ANALYSIS FAILED)
	if not arg1.Parent then
	else
		local any_callWithRetry_result1_2 = Utils_upvr.callWithRetry(function() -- Line 65
			--[[ Upvalues[2]:
				[1]: any_GetDataStore_result1_upvr (copied, readonly)
				[2]: arg1 (readonly)
			]]
			return any_GetDataStore_result1_upvr:GetAsync(arg1.UserId)
		end, 5)
		if not arg1.Parent then
			Utils_upvr.pprint("[SuperBiz] "..arg1.Name.." left while loading catalog data")
			return
		end
		if not any_callWithRetry_result1_2 then
			tbl_upvr_2[arg1] = Utils_upvr.deepCopy(tbl_upvr)
			-- KONSTANTWARNING: GOTO [80] #62
		end
		-- KONSTANTERROR: [0] 1. Error Block 35 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [34] 29. Error Block 36 start (CF ANALYSIS FAILED)
		if typeof(any_callWithRetry_result1_2) == "table" then
			for i_3, v_3 in pairs(any_callWithRetry_result1_2.Outfits) do
				if v_3.BodyColors then
					for i_4, v_4 in pairs(v_3.BodyColors) do
						v_3.BodyColors[i_4] = Color3.fromHex(v_4)
					end
				end
			end
			tbl_upvr_2[arg1] = any_callWithRetry_result1_2
		else
			i_3 = arg1.Name
			v_3 = "\nError: "
			Utils_upvr.pprint("[SuperBiz] Couldn't load catalog data for "..i_3..v_3..any_callWithRetry_result1_2)
		end
		local any_GetData_result1_2 = module_upvr.GetData(arg1)
		if not any_GetData_result1_2 then return end
		var6_upvw:FireClient(arg1, nil, any_GetData_result1_2)
		-- KONSTANTERROR: [34] 29. Error Block 36 end (CF ANALYSIS FAILED)
	end
end
local any_IsStudio_result1_upvr = game:GetService("RunService"):IsStudio()
function module_upvr.SaveData(arg1, arg2) -- Line 98
	--[[ Upvalues[4]:
		[1]: any_IsStudio_result1_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: Utils_upvr (readonly)
		[4]: any_GetDataStore_result1_upvr (readonly)
	]]
	if any_IsStudio_result1_upvr then
	else
		local any_GetData_result1 = module_upvr.GetData(arg1)
		if not any_GetData_result1 then return end
		local any_deepCopy_result1_upvw = Utils_upvr.deepCopy(any_GetData_result1)
		for i_5, v_5 in any_deepCopy_result1_upvw.Outfits do
			for i_6, v_6 in v_5.BodyColors do
				v_5.BodyColors[i_6] = v_6:ToHex()
			end
		end
		local any_callWithRetry_result1 = Utils_upvr.callWithRetry(function() -- Line 116
			--[[ Upvalues[3]:
				[1]: any_GetDataStore_result1_upvr (copied, readonly)
				[2]: arg1 (readonly)
				[3]: any_deepCopy_result1_upvw (read and write)
			]]
			any_GetDataStore_result1_upvr:SetAsync(arg1.UserId, any_deepCopy_result1_upvw)
		end, arg2)
		if any_callWithRetry_result1 then
			i_5 = "[SuperBiz] Couldn't save catalog data for "
			v_5 = arg1.Name
			Utils_upvr.pprint(i_5..v_5.."\nError: "..any_callWithRetry_result1)
		end
	end
end
function module_upvr.SaveAllData(arg1) -- Line 126
	--[[ Upvalues[2]:
		[1]: tbl_upvr_2 (readonly)
		[2]: module_upvr (readonly)
	]]
	for i_upvr, _ in tbl_upvr_2 do
		task.spawn(function() -- Line 128
			--[[ Upvalues[3]:
				[1]: module_upvr (copied, readonly)
				[2]: i_upvr (readonly)
				[3]: arg1 (readonly)
			]]
			module_upvr.SaveData(i_upvr, arg1)
		end)
	end
end
local ReplicatedStorage_upvr = game:GetService("ReplicatedStorage")
local Players_upvr = game:GetService("Players")
function module_upvr.Init() -- Line 134
	--[[ Upvalues[5]:
		[1]: ReplicatedStorage_upvr (readonly)
		[2]: var6_upvw (read and write)
		[3]: Players_upvr (readonly)
		[4]: module_upvr (readonly)
		[5]: tbl_upvr_2 (readonly)
	]]
	var6_upvw = Instance.new("RemoteEvent")
	var6_upvw.Name = "OnReplicateData"
	var6_upvw.Parent = ReplicatedStorage_upvr:WaitForChild("BloxbizRemotes")
	Players_upvr.PlayerAdded:Connect(function(arg1) -- Line 140
		--[[ Upvalues[1]:
			[1]: module_upvr (copied, readonly)
		]]
		module_upvr.LoadData(arg1)
	end)
	Players_upvr.PlayerRemoving:Connect(function(arg1) -- Line 144
		--[[ Upvalues[2]:
			[1]: module_upvr (copied, readonly)
			[2]: tbl_upvr_2 (copied, readonly)
		]]
		module_upvr.SaveData(arg1, 5)
		tbl_upvr_2[arg1] = nil
	end)
	game:BindToClose(function() -- Line 149
		--[[ Upvalues[1]:
			[1]: module_upvr (copied, readonly)
		]]
		module_upvr.SaveAllData(5)
	end)
	task.spawn(function() -- Line 153
		--[[ Upvalues[1]:
			[1]: module_upvr (copied, readonly)
		]]
		while true do
			module_upvr.SaveAllData(1)
			task.wait(180)
		end
	end)
	for _, v_2 in Players_upvr:GetPlayers() do
		task.spawn(module_upvr.LoadData, v_2)
	end
end
return module_upvr