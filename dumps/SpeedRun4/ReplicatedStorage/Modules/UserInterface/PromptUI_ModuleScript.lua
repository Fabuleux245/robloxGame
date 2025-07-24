-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:07:26
-- Luau version 6, Types version 3
-- Time taken: 0.005788 seconds

local module = {}
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local module_upvr = require(ReplicatedStorage:WaitForChild("Theme"))
local Modules = ReplicatedStorage:WaitForChild("Modules")
local module_upvr_3 = require(Modules:WaitForChild("UIButton"))
local module_upvr_2 = require(Modules:WaitForChild("UIShared"))
local module_upvr_5 = require(Modules:WaitForChild("Utility"))
local module_2 = require(Modules:WaitForChild("UserInterface"):WaitForChild("CollectionUISystem"))
local tbl_2_upvr = {
	Prompts = {};
}
local tbl = {}
local tbl_upvr = {
	TextSizeEm = 1.1;
	TextSizeHeaderEm = 3;
	WrapperSizeXEm = 32;
}
function module.PromptQueue(arg1, arg2) -- Line 73
	--[[ Upvalues[1]:
		[1]: tbl_2_upvr (readonly)
	]]
	local var12
	if arg2 and var12 then
		table.remove(tbl_2_upvr.Prompts, var12)
		var12 = nil
	end
	if not var12 then
		tbl_2_upvr.Prompts[#tbl_2_upvr.Prompts + 1] = arg1
	end
end
local function _(arg1, arg2) -- Line 91, Named "PromptRespond"
	if type(arg1.Callback) == "function" or type(arg1.Callback) == "thread" and coroutine.status(arg1.Callback) == "suspended" then
		task.spawn(arg1.Callback, arg2)
	end
end
local function _(arg1, arg2) -- Line 106, Named "PromptUnqueue_Internal"
	--[[ Upvalues[1]:
		[1]: tbl_2_upvr (readonly)
	]]
	local table_find_result1_2 = table.find(tbl_2_upvr.Prompts, arg1)
	if table_find_result1_2 then
		table.remove(tbl_2_upvr.Prompts, table_find_result1_2)
	end
end
function module.PromptUnqueue(arg1) -- Line 119
	--[[ Upvalues[1]:
		[1]: tbl_2_upvr (readonly)
	]]
	local table_find_result1 = table.find(tbl_2_upvr.Prompts, arg1)
	if table_find_result1 then
		table.remove(tbl_2_upvr.Prompts, table_find_result1)
	end
end
local any_TableMerge_result1 = module_upvr_5.TableMerge(module_2.CollectionType, {
	Prompt = 1000;
})
local module_upvr_4 = require(Modules:WaitForChild("ClientData"))
function module.IsOpen() -- Line 137
	--[[ Upvalues[2]:
		[1]: tbl_2_upvr (readonly)
		[2]: module_upvr_4 (readonly)
	]]
	local var22 = false
	if 0 < #tbl_2_upvr.Prompts then
		var22 = not module_upvr_4.Flags.LoadingScreenActive
		if var22 then
			var22 = not module_upvr_4.Flags.PetScreenActive
		end
	end
	return var22
end
local any_CollectionUICreate_result1_upvr = module_2.CollectionUICreate(any_TableMerge_result1, module_upvr_5.HierarchyCreate({{any_TableMerge_result1._UIMain}, {any_TableMerge_result1.Prompt, any_TableMerge_result1._UIMain}}), module.IsOpen)
any_CollectionUICreate_result1_upvr.CloseEnabled = false
function any_CollectionUICreate_result1_upvr.CloseRequested() -- Line 154
	--[[ Upvalues[1]:
		[1]: tbl_2_upvr (readonly)
	]]
	if 0 < #tbl_2_upvr.Prompts then
		table.clear(tbl_2_upvr.Prompts)
		for _, v in table.clone(tbl_2_upvr.Prompts), nil do
			if type(v.Callback) == "function" or type(v.Callback) == "thread" and coroutine.status(v.Callback) == "suspended" then
				task.spawn(v.Callback, nil)
			end
		end
	end
end
any_CollectionUICreate_result1_upvr.Name = "PromptUI"
any_CollectionUICreate_result1_upvr.DisplayOrder = module_upvr.DisplayOrder_PromptUI
any_CollectionUICreate_result1_upvr.RequestCollection(any_TableMerge_result1.Prompt)
function tbl.Initialize(arg1) -- Line 182
	--[[ Upvalues[2]:
		[1]: module_upvr_2 (readonly)
		[2]: module_upvr_5 (readonly)
	]]
	return module_upvr_5.TableMerge({
		DisplayedPrompt = nil;
		Header = nil;
		Buttons = {};
		Lines = {};
		Flag = module_upvr_2.TextBoundsFlagCreate();
	}, arg1)
end
function tbl.Destroy(arg1) -- Line 206
	--[[ Upvalues[1]:
		[1]: module_upvr_3 (readonly)
	]]
	for _, v_2 in arg1.Buttons do
		module_upvr_3.Button.Destroy(v_2)
	end
end
function tbl.Update(arg1, arg2, arg3) -- Line 215
	--[[ Upvalues[6]:
		[1]: tbl_2_upvr (readonly)
		[2]: module_upvr_2 (readonly)
		[3]: module_upvr_3 (readonly)
		[4]: module_upvr (readonly)
		[5]: any_CollectionUICreate_result1_upvr (readonly)
		[6]: tbl_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [29] 23. Error Block 7 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [29] 23. Error Block 7 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [1] 2. Error Block 136 start (CF ANALYSIS FAILED)
	if nil then
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [29.4]
		if nil == 0 then
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [29.5]
			if nil then
				-- KONSTANTWARNING: GOTO [29] #23
			end
			-- KONSTANTWARNING: GOTO [29] #23
		end
		-- KONSTANTWARNING: GOTO [30] #24
	end
	-- KONSTANTERROR: [1] 2. Error Block 136 end (CF ANALYSIS FAILED)
end
any_CollectionUICreate_result1_upvr.CollectionMethods_ByType[any_TableMerge_result1.Prompt] = tbl
return module_upvr_5.TableMerge(module, any_CollectionUICreate_result1_upvr)