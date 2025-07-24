-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:41:24
-- Luau version 6, Types version 3
-- Time taken: 0.001234 seconds

local module_2_upvr = {}
module_2_upvr.__index = module_2_upvr
function module_2_upvr.new(arg1) -- Line 40
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	local setmetatable_result1 = setmetatable({}, module_2_upvr)
	setmetatable_result1.Name = arg1.name
	setmetatable_result1.Pages = {}
	setmetatable_result1.SortedPages = {}
	return setmetatable_result1
end
local CatalogOnItemsPageRequest_upvr = game:GetService("ReplicatedStorage"):WaitForChild("BloxbizRemotes"):WaitForChild("CatalogOnItemsPageRequest")
function module_2_upvr.RequestPage(arg1, arg2, arg3) -- Line 50
	--[[ Upvalues[1]:
		[1]: CatalogOnItemsPageRequest_upvr (readonly)
	]]
	local module = {}
	module.Page = arg2
	module.SortType = arg3
	module.Category = arg1.Name
	return CatalogOnItemsPageRequest_upvr:InvokeServer(module)
end
function module_2_upvr.GetSortedPage(arg1, arg2, arg3) -- Line 60
	local var5 = arg1.SortedPages[arg3]
	if not var5 then
		arg1.SortedPages[arg3] = {}
		var5 = arg1.SortedPages[arg3]
	end
	if not var5[arg2] then
		var5[arg2] = arg1:RequestPage(arg2, arg3)
	end
	return var5[arg2]
end
function module_2_upvr.GetNormalPage(arg1, arg2) -- Line 74
	if not arg1.Pages[arg2] then
		arg1.Pages[arg2] = arg1:RequestPage(arg2)
	end
	return arg1.Pages[arg2]
end
function module_2_upvr.GetItems(arg1, arg2, arg3) -- Line 82
	if arg3 then
		return arg1:GetSortedPage(arg2, arg3)
	end
	return arg1:GetNormalPage(arg2)
end
return module_2_upvr