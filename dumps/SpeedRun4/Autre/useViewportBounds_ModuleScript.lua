-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:36:32
-- Luau version 6, Types version 3
-- Time taken: 0.003821 seconds

local Parent = script:FindFirstAncestor("Impressions").Parent
local function _(arg1, arg2) -- Line 20, Named "calculateViewportBounds"
	local var2 = arg1
	if not var2 then
		var2 = Vector2.zero
	end
	local var3 = arg2
	if not var3 then
		var3 = Vector2.zero
	end
	return {
		min = var2;
		max = var2 + var3;
	}
end
local function calculateClampedViewportBounds_upvr(arg1, arg2, arg3) -- Line 26, Named "calculateClampedViewportBounds"
	local var5 = arg1
	if not var5 then
		var5 = Vector2.zero
	end
	local var6 = arg2
	if not var6 then
		var6 = Vector2.zero
	end
	local var7 = var5 + var6
	return {
		min = Vector2.new(math.max(arg3.min.X, var5.X), math.max(arg3.min.Y, var5.Y));
		max = Vector2.new(math.min(arg3.max.X, var7.X), math.min(arg3.max.Y, var7.Y));
	}
end
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("ImpressionsTrackerScreenSizeClamp", false)
local useSelector_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useSelector
local React_upvr = require(Parent.React)
return function(arg1) -- Line 41
	--[[ Upvalues[4]:
		[1]: game_DefineFastFlag_result1_upvr (readonly)
		[2]: useSelector_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: calculateClampedViewportBounds_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var13_upvw
	if game_DefineFastFlag_result1_upvr then
		local useSelector_upvr_result1_upvr_2 = useSelector_upvr(function(arg1_2) -- Line 44
			return arg1_2.ScreenSize
		end)
		local useSelector_upvr_result1_upvr = useSelector_upvr(function(arg1_3) -- Line 47
			return arg1_3.TopBar.topBarHeight
		end)
		local useSelector_upvr_result1_upvr_3 = useSelector_upvr(function(arg1_4) -- Line 50
			return arg1_4.GlobalGuiInset
		end)
		var13_upvw = React_upvr.useMemo(function() -- Line 53
			--[[ Upvalues[3]:
				[1]: useSelector_upvr_result1_upvr (readonly)
				[2]: useSelector_upvr_result1_upvr_2 (readonly)
				[3]: useSelector_upvr_result1_upvr_3 (readonly)
			]]
			return {
				min = Vector2.new(0, useSelector_upvr_result1_upvr);
				max = Vector2.new(useSelector_upvr_result1_upvr_2.X, useSelector_upvr_result1_upvr_2.Y - useSelector_upvr_result1_upvr_3.bottom);
			}
		end, {useSelector_upvr_result1_upvr, useSelector_upvr_result1_upvr_2, useSelector_upvr_result1_upvr_3})
	end
	useSelector_upvr_result1_upvr = React_upvr
	useSelector_upvr_result1_upvr_2 = useSelector_upvr_result1_upvr.useState
	useSelector_upvr_result1_upvr = {}
	local var23 = useSelector_upvr_result1_upvr
	useSelector_upvr_result1_upvr_3 = Vector2.zero
	var23.min = useSelector_upvr_result1_upvr_3
	useSelector_upvr_result1_upvr_3 = Vector2.zero
	var23.max = useSelector_upvr_result1_upvr_3
	useSelector_upvr_result1_upvr_2 = useSelector_upvr_result1_upvr_2(var23)
	local useSelector_upvr_result1_upvr_2_result1, useSelector_upvr_result1_upvr_2_result2_upvr = useSelector_upvr_result1_upvr_2(var23)
	useSelector_upvr_result1_upvr_3 = React_upvr.useEffect
	local tbl = {}
	if game_DefineFastFlag_result1_upvr then
	else
	end
	tbl[1] = arg1
	tbl[2] = nil
	useSelector_upvr_result1_upvr_3(function() -- Line 66
		--[[ Upvalues[5]:
			[1]: arg1 (readonly)
			[2]: useSelector_upvr_result1_upvr_2_result2_upvr (readonly)
			[3]: game_DefineFastFlag_result1_upvr (copied, readonly)
			[4]: calculateClampedViewportBounds_upvr (copied, readonly)
			[5]: var13_upvw (read and write)
		]]
		local tbl_upvr = {}
		local var28
		if arg1.current then
			local current_upvr = arg1.current
			local AbsolutePosition_upvw = current_upvr.AbsolutePosition
			local AbsoluteSize_upvw = current_upvr.AbsoluteSize
			if game_DefineFastFlag_result1_upvr then
				var28 = calculateClampedViewportBounds_upvr(AbsolutePosition_upvw, AbsoluteSize_upvw, var13_upvw)
			else
				local var32 = AbsolutePosition_upvw
				if not var32 then
					var32 = Vector2.zero
				end
				local var33 = AbsoluteSize_upvw
				if not var33 then
					var33 = Vector2.zero
				end
				var28 = {}
				var28.min = var32
				var28.max = var32 + var33
			end
			useSelector_upvr_result1_upvr_2_result2_upvr(var28)
			var28 = tbl_upvr
			table.insert(var28, current_upvr:GetPropertyChangedSignal("AbsolutePosition"):Connect(function() -- Line 86
				--[[ Upvalues[7]:
					[1]: AbsolutePosition_upvw (read and write)
					[2]: current_upvr (readonly)
					[3]: useSelector_upvr_result1_upvr_2_result2_upvr (copied, readonly)
					[4]: game_DefineFastFlag_result1_upvr (copied, readonly)
					[5]: calculateClampedViewportBounds_upvr (copied, readonly)
					[6]: AbsoluteSize_upvw (read and write)
					[7]: var13_upvw (copied, read and write)
				]]
				local var35 = current_upvr
				AbsolutePosition_upvw = var35.AbsolutePosition
				if game_DefineFastFlag_result1_upvr then
					var35 = calculateClampedViewportBounds_upvr(AbsolutePosition_upvw, AbsoluteSize_upvw, var13_upvw)
				else
					local var36 = AbsolutePosition_upvw
					if not var36 then
						var36 = Vector2.zero
					end
					local var37 = AbsoluteSize_upvw
					if not var37 then
						var37 = Vector2.zero
					end
					var35 = {}
					var35.min = var36
					var35.max = var36 + var37
				end
				useSelector_upvr_result1_upvr_2_result2_upvr(var35)
			end))
			var28 = tbl_upvr
			table.insert(var28, current_upvr:GetPropertyChangedSignal("AbsoluteSize"):Connect(function() -- Line 101
				--[[ Upvalues[7]:
					[1]: AbsoluteSize_upvw (read and write)
					[2]: current_upvr (readonly)
					[3]: useSelector_upvr_result1_upvr_2_result2_upvr (copied, readonly)
					[4]: game_DefineFastFlag_result1_upvr (copied, readonly)
					[5]: calculateClampedViewportBounds_upvr (copied, readonly)
					[6]: AbsolutePosition_upvw (read and write)
					[7]: var13_upvw (copied, read and write)
				]]
				local var39 = current_upvr
				AbsoluteSize_upvw = var39.AbsoluteSize
				if game_DefineFastFlag_result1_upvr then
					var39 = calculateClampedViewportBounds_upvr(AbsolutePosition_upvw, AbsoluteSize_upvw, var13_upvw)
				else
					local var40 = AbsolutePosition_upvw
					if not var40 then
						var40 = Vector2.zero
					end
					local var41 = AbsoluteSize_upvw
					if not var41 then
						var41 = Vector2.zero
					end
					var39 = {}
					var39.min = var40
					var39.max = var40 + var41
				end
				useSelector_upvr_result1_upvr_2_result2_upvr(var39)
			end))
		end
		function current_upvr() -- Line 112
			--[[ Upvalues[1]:
				[1]: tbl_upvr (readonly)
			]]
			for _, v in tbl_upvr do
				v:Disconnect()
			end
		end
		return current_upvr
	end, tbl)
	return useSelector_upvr_result1_upvr_2_result1
end