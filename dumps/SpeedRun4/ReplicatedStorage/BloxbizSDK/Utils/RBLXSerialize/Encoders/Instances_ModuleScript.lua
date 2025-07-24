-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:07:55
-- Luau version 6, Types version 3
-- Time taken: 0.002298 seconds

local Allowed_upvr = require(script.Parent.Parent.Allowed)
local Binary_upvr = require(script.Parent.Parent.Binary)
local Instance_upvr = require(script.Parent.Instance)
return function(arg1, arg2) -- Line 5
	--[[ Upvalues[3]:
		[1]: Allowed_upvr (readonly)
		[2]: Binary_upvr (readonly)
		[3]: Instance_upvr (readonly)
	]]
	local var13
	if arg1.AutoRename then
		local tbl = {}
		var13 = ipairs(arg2:GetDescendants())
		local ipairs_result1_upvw, ipairs_result2, ipairs_result3 = ipairs(arg2:GetDescendants())
		for _, v in ipairs_result1_upvw, ipairs_result2, ipairs_result3 do
			local var18 = tbl[v.Name]
			if not var18 then
				var18 = {}
			end
			tbl[v.Name] = var18
			tbl[v.Name][v.Parent] = tbl[v.Name][v.Parent] or -1
			tbl[v.Name][v.Parent] = tbl[v.Name][v.Parent] + 1
			local var19 = tbl[v.Name][v.Parent]
			if 0 < var19 then
				v.Name ..= var19
			end
		end
	end
	ipairs_result1_upvw = Allowed_upvr
	ipairs_result1_upvw = Binary_upvr.describe("StoreType", "Root")
	local function _(arg1_2, arg2_2) -- Line 23
		--[[ Upvalues[5]:
			[1]: Instance_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: arg2 (readonly)
			[4]: ipairs_result1_upvw (read and write)
			[5]: Binary_upvr (copied, readonly)
		]]
		local var4_result1_3 = Instance_upvr(arg1, arg2_2, arg2)
		if var4_result1_3 then
			ipairs_result1_upvw = ipairs_result1_upvw..Binary_upvr.describe("Value", arg1_2)..Binary_upvr.describe("Value", var4_result1_3)
		end
	end
	local var4_result1_2 = Instance_upvr(arg1, arg2, arg2)
	if var4_result1_2 then
		ipairs_result1_upvw = ipairs_result1_upvw..Binary_upvr.describe("Value", "")..Binary_upvr.describe("Value", var4_result1_2)
	end
	for _, v_2 in ipairs(arg2:GetDescendants()) do
		local var4_result1 = Instance_upvr(arg1, v_2, arg2)
		if var4_result1 then
			ipairs_result1_upvw = ipairs_result1_upvw..Binary_upvr.describe("Value", (function(arg1_4) -- Line 49
				local var29
				for i_2 = #arg1_4, 1, -1 do
					if i_2 ~= #arg1_4 then
						var29 = var29..arg1_4[i_2].Name
						var29 = var29..string.char(28)
					end
				end
				return var29
			end)((function(arg1_3, arg2_3) -- Line 32
				local module = {arg2_3.Parent}
				if arg2_3.Parent == arg1_3 then
					return module
				end
				repeat
					local Parent = module[#module].Parent
					table.insert(module, Parent)
					if Parent == arg1_3 then
						return module
					end
				until module[#module].Parent == nil
				return module
			end)(arg2, v_2)))..Binary_upvr.describe("Value", var4_result1)
		end
	end
	return ipairs_result1_upvw
end