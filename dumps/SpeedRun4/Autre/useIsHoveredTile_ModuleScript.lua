-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:34:20
-- Luau version 6, Types version 3
-- Time taken: 0.002607 seconds

local GameTile = script:FindFirstAncestor("GameTile")
local HoverTileCoordinator_upvr = require(GameTile.HoverTileCoordinator)
local React_upvr = require(GameTile.Parent.React)
return function(arg1, arg2, arg3, arg4) -- Line 11, Named "useIsHoveredTile"
	--[[ Upvalues[2]:
		[1]: HoverTileCoordinator_upvr (readonly)
		[2]: React_upvr (readonly)
	]]
	local var5_upvr = arg4
	if not var5_upvr then
		var5_upvr = HoverTileCoordinator_upvr.default
	end
	local any_useState_result1, any_useState_result2_upvr = React_upvr.useState(false)
	local tbl = {}
	tbl[1] = arg3
	tbl[2] = arg2
	tbl[3] = var5_upvr
	React_upvr.useEffect(function() -- Line 25
		--[[ Upvalues[4]:
			[1]: arg3 (readonly)
			[2]: arg2 (readonly)
			[3]: any_useState_result2_upvr (readonly)
			[4]: var5_upvr (readonly)
		]]
		if not arg3 then return end
		local function _(arg1_2) -- Line 31, Named "checkAndUpdateState"
			--[[ Upvalues[2]:
				[1]: arg2 (copied, readonly)
				[2]: any_useState_result2_upvr (copied, readonly)
			]]
			local var9 = false
			if arg1_2 ~= nil then
				if arg1_2 ~= arg2 then
					var9 = false
				else
					var9 = true
				end
			end
			any_useState_result2_upvr(var9)
		end
		local hoveredKey = var5_upvr.hoveredKey
		local var11 = false
		if hoveredKey ~= nil then
			if hoveredKey ~= arg2 then
				var11 = false
			else
				var11 = true
			end
		end
		any_useState_result2_upvr(var11)
		local any_connect_result1_upvw = var5_upvr.changed:connect(function(arg1_3) -- Line 38
			--[[ Upvalues[2]:
				[1]: arg2 (copied, readonly)
				[2]: any_useState_result2_upvr (copied, readonly)
			]]
			local var13 = false
			if arg1_3 ~= nil then
				if arg1_3 ~= arg2 then
					var13 = false
				else
					var13 = true
				end
			end
			any_useState_result2_upvr(var13)
		end)
		return function() -- Line 42
			--[[ Upvalues[1]:
				[1]: any_connect_result1_upvw (read and write)
			]]
			if any_connect_result1_upvw ~= nil then
				any_connect_result1_upvw:disconnect()
				any_connect_result1_upvw = nil
			end
		end
	end, tbl)
	local tbl_4 = {}
	tbl_4[1] = arg2
	tbl_4[2] = arg1
	tbl_4[3] = arg3
	tbl_4[4] = var5_upvr
	React_upvr.useEffect(function() -- Line 50
		--[[ Upvalues[4]:
			[1]: arg3 (readonly)
			[2]: arg1 (readonly)
			[3]: var5_upvr (readonly)
			[4]: arg2 (readonly)
		]]
		if not arg3 then return end
		local tbl_3_upvr = {}
		if arg1.current ~= nil then
			table.insert(tbl_3_upvr, arg1.current.MouseLeave:Connect(function() -- Line 59
				--[[ Upvalues[2]:
					[1]: var5_upvr (copied, readonly)
					[2]: arg2 (copied, readonly)
				]]
				var5_upvr:cancelHover(arg2)
			end))
			table.insert(tbl_3_upvr, arg1.current.MouseEnter:Connect(function() -- Line 65
				--[[ Upvalues[2]:
					[1]: var5_upvr (copied, readonly)
					[2]: arg2 (copied, readonly)
				]]
				var5_upvr:requestHover(arg2)
			end))
		end
		return function() -- Line 70
			--[[ Upvalues[1]:
				[1]: tbl_3_upvr (readonly)
			]]
			for _, v in tbl_3_upvr do
				v:Disconnect()
			end
		end
	end, tbl_4)
	local tbl_2 = {}
	tbl_2[1] = arg2
	tbl_2[2] = var5_upvr
	React_upvr.useEffect(function() -- Line 78
		--[[ Upvalues[2]:
			[1]: arg2 (readonly)
			[2]: var5_upvr (readonly)
		]]
		return function() -- Line 79
			--[[ Upvalues[2]:
				[1]: arg2 (copied, readonly)
				[2]: var5_upvr (copied, readonly)
			]]
			if arg2 then
				var5_upvr:cancelHover(arg2)
			end
		end
	end, tbl_2)
	return arg3 and any_useState_result1
end