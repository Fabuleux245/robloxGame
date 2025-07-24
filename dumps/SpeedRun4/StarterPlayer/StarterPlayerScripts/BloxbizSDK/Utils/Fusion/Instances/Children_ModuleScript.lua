-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:39:55
-- Luau version 6, Types version 3
-- Time taken: 0.002090 seconds

local Parent = script.Parent.Parent
local module = {
	type = "SpecialKey";
	kind = "Children";
	stage = "descendants";
}
local xtypeof_upvr = require(Parent.Utility.xtypeof)
local Observer_upvr = require(Parent.State.Observer)
local logWarn_upvr = require(Parent.Logging.logWarn)
function module.apply(arg1, arg2, arg3, arg4) -- Line 24
	--[[ Upvalues[3]:
		[1]: xtypeof_upvr (readonly)
		[2]: Observer_upvr (readonly)
		[3]: logWarn_upvr (readonly)
	]]
	local var6_upvw = false
	local tbl_upvw_4 = {}
	local tbl_upvw_3 = {}
	local tbl_upvw = {}
	local tbl_upvw_2 = {}
	local var33_upvw
	local function updateChildren_upvr() -- Line 38, Named "updateChildren"
		--[[ Upvalues[11]:
			[1]: var6_upvw (read and write)
			[2]: tbl_upvw_4 (read and write)
			[3]: tbl_upvw_3 (read and write)
			[4]: tbl_upvw (read and write)
			[5]: tbl_upvw_2 (read and write)
			[6]: xtypeof_upvr (copied, readonly)
			[7]: arg3 (readonly)
			[8]: Observer_upvr (copied, readonly)
			[9]: var33_upvw (read and write)
			[10]: logWarn_upvr (copied, readonly)
			[11]: arg2 (read and write)
		]]
		if not var6_upvw then
		else
			var6_upvw = false
			tbl_upvw_4 = tbl_upvw_3
			tbl_upvw_3 = tbl_upvw_4
			tbl_upvw = tbl_upvw_2
			tbl_upvw_2 = tbl_upvw
			table.clear(tbl_upvw_3)
			table.clear(tbl_upvw_2)
			local function processChild_upvr(arg1_2, arg2_2) -- Line 49, Named "processChild"
				--[[ Upvalues[10]:
					[1]: xtypeof_upvr (copied, readonly)
					[2]: tbl_upvw_3 (copied, read and write)
					[3]: tbl_upvw_4 (copied, read and write)
					[4]: arg3 (copied, readonly)
					[5]: processChild_upvr (readonly)
					[6]: tbl_upvw (copied, read and write)
					[7]: Observer_upvr (copied, readonly)
					[8]: var33_upvw (copied, read and write)
					[9]: tbl_upvw_2 (copied, read and write)
					[10]: logWarn_upvr (copied, readonly)
				]]
				local xtypeof_upvr_result1 = xtypeof_upvr(arg1_2)
				if xtypeof_upvr_result1 == "Instance" then
					tbl_upvw_3[arg1_2] = true
					if tbl_upvw_4[arg1_2] == nil then
						arg1_2.Parent = arg3
					else
						tbl_upvw_4[arg1_2] = nil
					end
				end
				if xtypeof_upvr_result1 == "State" then
					local any_get_result1 = arg1_2:get(false)
					if any_get_result1 ~= nil then
						processChild_upvr(any_get_result1, arg2_2)
					end
					local var21 = tbl_upvw[arg1_2]
					if var21 == nil then
						var21 = Observer_upvr(arg1_2):onChange(var33_upvw)
					else
						tbl_upvw[arg1_2] = nil
					end
					tbl_upvw_2[arg1_2] = var21
				else
					if xtypeof_upvr_result1 == "table" then
						for i_3, v_2 in pairs(arg1_2) do
							local typeof_result1 = typeof(i_3)
							local var26
							if typeof_result1 == "string" then
								var26 = i_3
							elseif typeof_result1 == "number" and arg2_2 ~= nil then
								var26 = arg2_2..'_'..i_3
							end
							processChild_upvr(v_2, var26)
						end
						return
					end
					if xtypeof_upvr_result1 == "boolean" then return end
					logWarn_upvr("unrecognisedChildType", xtypeof_upvr_result1)
				end
			end
			if arg2 ~= nil then
				processChild_upvr(arg2)
			end
			for i in pairs(tbl_upvw_4) do
				i.Parent = nil
			end
			for _, v in pairs(tbl_upvw) do
				v()
			end
		end
	end
	function var33_upvw() -- Line 132
		--[[ Upvalues[2]:
			[1]: var6_upvw (read and write)
			[2]: updateChildren_upvr (readonly)
		]]
		if not var6_upvw then
			var6_upvw = true
			task.defer(updateChildren_upvr)
		end
	end
	table.insert(arg4, function() -- Line 139
		--[[ Upvalues[3]:
			[1]: arg2 (read and write)
			[2]: var6_upvw (read and write)
			[3]: updateChildren_upvr (readonly)
		]]
		arg2 = nil
		var6_upvw = true
		updateChildren_upvr()
	end)
	var6_upvw = true
	updateChildren_upvr()
end
return module