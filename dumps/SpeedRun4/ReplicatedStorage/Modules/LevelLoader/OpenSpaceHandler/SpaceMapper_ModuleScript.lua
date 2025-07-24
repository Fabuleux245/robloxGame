-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:06:13
-- Luau version 6, Types version 3
-- Time taken: 0.020770 seconds

local module = {}
local tbl_6_upvr = {{1, 0, 0}, {0, 0, -1}, {0, 0, 1}, {0, 1, 0}, {0, -1, 0}}
local function AccessCell_upvr(arg1, arg2, arg3, arg4) -- Line 97, Named "AccessCell"
	if arg2 then
		local var9 = arg3 % 8
		local var10 = arg3 // 8
		local buffer_readu8_result1_2 = buffer.readu8(arg1, var10)
		if arg4 and arg4 ~= bit32.extract(buffer_readu8_result1_2, var9, 1) then
			local lshifted = bit32.lshift(arg4, var9)
			buffer.writeu8(arg1, var10, bit32.bor(bit32.band(buffer_readu8_result1_2, bit32.byteswap(lshifted)), lshifted))
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		return bit32.extract(buffer_readu8_result1_2, var9, 1)
	end
	if not arg4 then
		return buffer.readu8(arg1, arg3)
	end
	buffer.writeu8(arg1, arg3, arg4)
	return arg4
end
local function _(arg1, arg2) -- Line 141, Named "AppendNode"
	if not arg1.FloodLookup[arg2] then
		local tbl_3 = {}
		tbl_3.Pos = arg2
		local var14 = tbl_3
		if not arg1.FloodHead then
			arg1.FloodHead = var14
		end
		if arg1.FloodTail then
			arg1.FloodTail.Next = var14
		end
		arg1.FloodTail = var14
		arg1.FloodLookup[arg2] = var14
	end
	return var14
end
local function _(arg1, arg2, arg3, arg4) -- Line 168, Named "GetOffset"
	return arg2 + arg3 * arg1.OffsetY + arg4 * arg1.OffsetZ
end
local function _(arg1, arg2) -- Line 178, Named "GetCellPosition"
	local var15 = arg2 % arg1.OffsetY
	return Vector3.new(var15 % arg1.OffsetZ, arg2 // arg1.OffsetY, var15 // arg1.OffsetZ)
end
function module.Create(arg1, arg2, arg3) -- Line 195
	-- KONSTANTERROR: [52] 47. Error Block 7 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [52] 47. Error Block 7 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 49 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [52.10]
	if not nil then
	end
	if not arg3 then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [52.4292542536]
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [52.7]
		if nil < nil then
			-- KONSTANTWARNING: GOTO [17] #17
		end
		-- KONSTANTWARNING: GOTO [54] #49
	end
	-- KONSTANTERROR: [0] 1. Error Block 49 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [54] 49. Error Block 40 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [57.9]
	local _ = (arg2 * CFrame.new(0, nil * 0.5 + 0.000244140625, 0)).Position
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x3)
	local _ = Vector3.new(arg1[1] - nil, arg1[2] - nil, arg1[3] - nil)
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
	local buffer_create_result1_2 = buffer.create(nil)
	buffer.fill(buffer_create_result1_2, 0, 2)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [91.8]
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	local var24 = nil.X * nil.Z
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x3)
	local var25 = nil.Y - 1
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	local const_number = 0
	if const_number % var25 == 0 then
		buffer.fill(buffer_create_result1_2, const_number * var24, 0, var24)
		-- KONSTANTWARNING: GOTO [112] #96
	end
	-- KONSTANTERROR: [54] 49. Error Block 40 end (CF ANALYSIS FAILED)
end
function module.Finalize(arg1) -- Line 363
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	assert(not arg1.Finalized, "Map already finalized.")
	debug.setmemorycategory("SpaceMapBuffer")
	local Map_3_upvr = arg1.Map
	local OffsetY = arg1.OffsetY
	local OffsetZ = arg1.OffsetZ
	local Resolution_2 = arg1.Resolution
	local Size = arg1.Size
	local const_number_6 = 1
	local const_number_2 = 1
	local var46 = Size.X - 2
	local var47 = Size.Y - 2
	local var48 = Size.Z - 2
	local coroutine_yield_result1_upvw = coroutine.yield()
	local function Scan(arg1_2, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10) -- Line 389
		--[[ Upvalues[2]:
			[1]: Map_3_upvr (readonly)
			[2]: coroutine_yield_result1_upvw (read and write)
		]]
		for i = arg2, arg3, arg1_2 do
			for i_2 = arg5, arg6 do
				for i_3 = arg8, arg9 do
					if buffer.readu8(Map_3_upvr, i * arg4 + i_2 * arg7 + i_3 * arg10) % 2 == 1 then
						return i
					end
				end
				if coroutine_yield_result1_upvw <= os.clock() then
					coroutine_yield_result1_upvw = coroutine.yield()
				end
			end
		end
		return arg3
	end
	local Scan_result1_2 = Scan(1, 1, var47, OffsetY, const_number_2, var48, OffsetZ, const_number_6, var46, 1)
	local Scan_result1 = Scan(-1, var47, Scan_result1_2, OffsetY, const_number_2, var48, OffsetZ, const_number_6, var46, 1)
	local Scan_result1_4 = Scan(1, const_number_2, var48, OffsetZ, Scan_result1_2, Scan_result1, OffsetY, const_number_6, var46, 1)
	local Scan_result1_3 = Scan(-1, var48, Scan_result1_4, OffsetZ, Scan_result1_2, Scan_result1, OffsetY, const_number_6, var46, 1)
	local Scan_result1_6 = Scan(1, const_number_6, var46, 1, Scan_result1_2, Scan_result1, OffsetY, Scan_result1_4, Scan_result1_3, OffsetZ)
	local Scan_result1_5 = Scan(-1, var46, Scan_result1_6, 1, Scan_result1_2, Scan_result1, OffsetY, Scan_result1_4, Scan_result1_3, OffsetZ)
	local var59
	local function INLINED() -- Internal function, doesn't exist in bytecode
		local Z = _SpawnCellPos.Z
		var59 = _SpawnCellPos.Y
		local X_2 = _SpawnCellPos.X
		arg1._SpawnCellPos = nil
		local _SpawnCellPos = arg1._SpawnCellPos
		return X_2 < Scan_result1_6
	end
	if arg1._SpawnCellPos and (INLINED() or Scan_result1_5 < X_2 or var59 < Scan_result1_2 or Scan_result1 < var59 or Z < Scan_result1_4 or Scan_result1_3 < Z) then
		warn("Map truncation has not correctly trimmed space.")
	end
	var59 = Scan_result1_2 * Resolution_2
	var59 = Scan_result1_5 - Scan_result1_6
	var59 = Scan_result1 - Scan_result1_2 + 1
	local vector3_2 = Vector3.new(var59 + 1, var59, Scan_result1_3 - Scan_result1_4 + 1)
	var59 = vector3_2.X
	var59 = vector3_2.Z
	var59 = math.ceil(var59 * vector3_2.Y * var59 / 8)
	local buffer_create_result1 = buffer.create(var59)
	var59 = 0
	local const_number_3 = 0
	for i_4 = Scan_result1_2, Scan_result1 do
		for i_5 = Scan_result1_4, Scan_result1_3 do
			for i_6 = Scan_result1_6, Scan_result1_5 do
				local var66
				if buffer.readu8(Map_3_upvr, i_4 * OffsetY + i_5 * OffsetZ + i_6) % 2 == 1 then
					var66 += bit32.lshift(1, var59)
				end
				var59 += 1
				if var59 == 8 then
					buffer.writeu8(buffer_create_result1, const_number_3, var66)
					var59 = 0
					var66 = 0
				end
			end
			if coroutine_yield_result1_upvw <= os.clock() then
				coroutine_yield_result1_upvw = coroutine.yield()
			end
		end
	end
	if var59 ~= 0 then
		i_4 = const_number_3 + 1
		buffer.writeu8(buffer_create_result1, i_4, var66)
	end
	arg1.Map = buffer_create_result1
	arg1.OffsetY = vector3_2.X * vector3_2.Z
	arg1.OffsetZ = vector3_2.X
	arg1.Origin += Vector3.new(Scan_result1_6 * Resolution_2, var59, Scan_result1_4 * Resolution_2)
	arg1.Size = vector3_2
	arg1.Finalized = true
	debug.resetmemorycategory()
end
function module.FloodFill(arg1, arg2, arg3) -- Line 556
	--[[ Upvalues[1]:
		[1]: tbl_6_upvr (readonly)
	]]
	assert(not arg1.Finalized, "Cannot alter finalized map.")
	if not arg2.FloodHead then
	else
		local OffsetY_upvr = arg1.OffsetY
		local OffsetZ_2_upvr = arg1.OffsetZ
		local Map_2_upvr = arg1.Map
		local var70_upvr = 1023.999755859375 // arg1.Resolution
		local function CheckCell(arg1_3, arg2_2, arg3_2, arg4) -- Line 589
			--[[ Upvalues[6]:
				[1]: tbl_6_upvr (copied, readonly)
				[2]: OffsetY_upvr (readonly)
				[3]: OffsetZ_2_upvr (readonly)
				[4]: Map_2_upvr (readonly)
				[5]: var70_upvr (readonly)
				[6]: arg2 (readonly)
			]]
			local var71 = tbl_6_upvr[arg4]
			local _1_4 = var71[1]
			local _2_7 = var71[2]
			local _3_2 = var71[3]
			local var75 = arg1_3 + _1_4
			local var76 = arg2_2 + _2_7
			local var77 = arg3_2 + _3_2
			local var78 = var75 + var76 * OffsetY_upvr + var77 * OffsetZ_2_upvr
			local buffer_readu8_result1 = buffer.readu8(Map_2_upvr, var78)
			if buffer_readu8_result1 == 2 then
				local const_number_4 = 0
				repeat
					if const_number_4 >= var70_upvr then break end
					local var81 = const_number_4 + 1
				until buffer.readu8(Map_2_upvr, var75 + _1_4 * var81 + (var76 + _2_7 * var81) * OffsetY_upvr + (var77 + _3_2 * var81) * OffsetZ_2_upvr) ~= 2
				local tbl_2 = {}
				tbl_2[1] = arg1_3
				tbl_2[2] = arg2_2
				tbl_2[3] = arg3_2
				tbl_2[4] = arg4
				tbl_2[5] = var81
				arg2.QueryStack[#arg2.QueryStack + 1] = tbl_2
			elseif buffer_readu8_result1 == 1 then
				local var83 = arg2
				local vector3 = Vector3.new(var75, var76, var77)
				if not var83.FloodLookup[vector3] then
					local var86 = {
						Pos = vector3;
					}
					if not var83.FloodHead then
						var83.FloodHead = var86
					end
					if var83.FloodTail then
						var83.FloodTail.Next = var86
					end
					var83.FloodTail = var86
					var83.FloodLookup[vector3] = var86
				end
				buffer.writeu8(Map_2_upvr, var78, 3)
			end
		end
		repeat
			if not arg2.FloodHead then break end
			local FloodHead = arg2.FloodHead
			local Pos = FloodHead.Pos
			local X_3 = Pos.X
			local Y_2 = Pos.Y
			local Z_2 = Pos.Z
			if X_3 < 1 or arg1.Size.X - 1 < X_3 or Y_2 < 1 or arg1.Size.Y - 1 < Y_2 or Z_2 < 1 or arg1.Size.Z - 1 < Z_2 then
				error("Flood point out of bounds: "..X_3..", "..Y_2..", "..Z_2, 2)
			end
			CheckCell(X_3, Y_2, Z_2, 0)
			CheckCell(X_3, Y_2, Z_2, 1)
			CheckCell(X_3, Y_2, Z_2, 2)
			CheckCell(X_3, Y_2, Z_2, 3)
			CheckCell(X_3, Y_2, Z_2, 4)
			CheckCell(X_3, Y_2, Z_2, 5)
			arg2.FloodLookup[Pos] = nil
			arg2.FloodHead = FloodHead.Next
		until (arg3 or math.huge) <= os.clock()
	end
end
function module.ProcessQuery(arg1, arg2, arg3, arg4, arg5) -- Line 682
	--[[ Upvalues[1]:
		[1]: tbl_6_upvr (readonly)
	]]
	for i_7, v in arg5 do
		local _5 = v[5]
		local var95 = _5 * arg3
		local var96 = tbl_6_upvr[v[4]]
		local any_Blockcast_result1 = arg2:Blockcast(CFrame.new(Vector3.new(arg4.X + v[1] * arg3, arg4.Y + v[2] * arg3, arg4.Z + v[3] * arg3)), Vector3.new(1, 1, 1) * arg3, Vector3.new(var96[1] * var95, var96[2] * var95, var96[3] * var95))
		if any_Blockcast_result1 then
			table.create(#arg5)[i_7] = (any_Blockcast_result1.Distance - 0.000244140625) // arg3
		else
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			table.create(#arg5)[i_7] = _5
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return arg1, table.create(#arg5)
end
function module.ProcessResults(arg1, arg2, arg3, arg4) -- Line 730
	--[[ Upvalues[1]:
		[1]: tbl_6_upvr (readonly)
	]]
	assert(not arg1.Finalized, "Cannot alter finalized map.")
	local Map_4 = arg1.Map
	local var137
	for i_8, v_2 in arg3 do
		local var138 = arg4[i_8]
		local _1_3 = v_2[1]
		local _2_3 = v_2[2]
		local _3 = v_2[3]
		local var142 = tbl_6_upvr[v_2[4]]
		local _2_5 = var142[2]
		local _3_4 = var142[3]
		local tbl_4 = {{var138 + 1, var138 + 1, 0}}
		if 0 < var138 then
			tbl_4[#tbl_4 + 1] = {1, var138, 1}
			local vector3_3 = Vector3.new(_1_3 + var142[1], _2_3 + _2_5, _3 + _3_4)
			if not arg2.FloodLookup[vector3_3] then
				local var150 = {
					Pos = vector3_3;
				}
				if not arg2.FloodHead then
					arg2.FloodHead = var150
				end
				if arg2.FloodTail then
					arg2.FloodTail.Next = var150
				end
				arg2.FloodTail = var150
				arg2.FloodLookup[vector3_3] = var150
			end
		end
		for _, v_3 in tbl_4 do
			local _1 = v_3[1]
			local _2_4 = v_3[2]
			if _2_4 >= _1 and v_2[5] >= _2_4 then
				for i_10 = _1, _2_4 do
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					local var153 = _1_3 + var142[1] * i_10 + (_2_3 + _2_5 * i_10) * arg1.OffsetY + (_3 + _3_4 * i_10) * arg1.OffsetZ
					if buffer.readu8(Map_4, var153) == 2 then
						var137 += 1
						buffer.writeu8(Map_4, var153, v_3[3])
					end
				end
			end
		end
	end
	arg1._Written += var137
end
local function DeepCopyRegions_upvr(arg1) -- Line 808, Named "DeepCopyRegions"
	local table_create_result1 = table.create(#arg1)
	for i_11, v_4 in arg1 do
		local table_create_result1_2 = table.create(#v_4)
		for i_12, v_5 in v_4 do
			table_create_result1_2[i_12] = v_5
		end
		table_create_result1[i_11] = table_create_result1_2
	end
	return table_create_result1
end
function module.PopupulateOffsets(arg1, arg2, arg3) -- Line 828
	--[[ Upvalues[2]:
		[1]: DeepCopyRegions_upvr (readonly)
		[2]: AccessCell_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	assert(not arg1.Finalized, "Query already finalized.")
	local SpaceMap = arg1.SpaceMap
	local var193
	repeat
		local coroutine_yield_result1_upvw_2 = coroutine.yield()
	until SpaceMap.Finalized
	local Origin = SpaceMap.Origin
	local X = Origin.X
	local Y = Origin.Y
	local Z_3 = Origin.Z
	local Resolution = SpaceMap.Resolution
	local var200 = Resolution * 0.5
	local var201 = SpaceMap.Size.X - 1
	local var202 = SpaceMap.Size.Y - 1
	local var203_upvr = SpaceMap.Size.Z - 1
	if arg3 then
		local DeepCopyRegions_upvr_result1 = DeepCopyRegions_upvr(arg3)
	end
	if var193 then
		var193 = DeepCopyRegions_upvr(var193)
	else
		local var205 = Origin + SpaceMap.Size * Resolution
		var193 = {{X, Y, Z_3, var205.X, var205.Y, var205.Z}}
	end
	assert(var193)
	for _, v_6 in {var193, DeepCopyRegions_upvr_result1} do
		for i_14, v_7 in v_6 do
			v_7[1] = math.clamp((v_7[1] - X) // Resolution, 0, var201)
			local clamped_4 = math.clamp((v_7[2] - Y) // Resolution, 0, var202)
			v_7[2] = clamped_4
			if clamped_4 < var202 then
			end
			local clamped_3 = math.clamp((v_7[3] - Z_3) // Resolution, 0, var203_upvr)
			v_7[3] = clamped_3
			if clamped_3 < var203_upvr then
			end
			v_7[4] = math.clamp((v_7[4] - X + var200) // Resolution, 0, var201) + 1
			local clamped = math.clamp((v_7[5] - Y + var200) // Resolution, 0, var202)
			v_7[5] = clamped
			if 0 < clamped then
			end
			local clamped_2 = math.clamp((v_7[6] - Z_3 + var200) // Resolution, 0, var203_upvr)
			v_7[6] = clamped_2
			if 0 < clamped_2 then
			end
		end
	end
	local table_create_result1_upvr = table.create(var202)
	local function PerformBooleanOperation(arg1_4, arg2_3) -- Line 956
		--[[ Upvalues[3]:
			[1]: table_create_result1_upvr (readonly)
			[2]: var203_upvr (readonly)
			[3]: coroutine_yield_result1_upvw_2 (read and write)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [133] 117. Error Block 46 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [133] 117. Error Block 46 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [4] 5. Error Block 2 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [4] 5. Error Block 2 end (CF ANALYSIS FAILED)
	end
	PerformBooleanOperation(var193, true)
	if DeepCopyRegions_upvr_result1 then
		PerformBooleanOperation(DeepCopyRegions_upvr_result1, false)
	end
	local tbl = {}
	for i_15 = clamped_4, clamped do
		local var215 = table_create_result1_upvr[i_15]
		if var215 then
			v_7 = clamped_3
			i_14 = 1
			for i_16 = v_7, clamped_2, i_14 do
				local var216 = var215[i_16]
				if var216 then
					for i_17 = 1, #var216, 2 do
						local var217 = var216[i_17]
						repeat
							local var218 = var217 + i_15 * SpaceMap.OffsetY + i_16 * SpaceMap.OffsetZ
							if AccessCell_upvr(SpaceMap.Map, true, var218) % 2 == 1 then
								tbl[#tbl + 1] = var218
							end
						until var216[i_17 + 1] <= var217 + 1
					end
					if coroutine_yield_result1_upvw_2 <= os.clock() then
						coroutine_yield_result1_upvw_2 = coroutine.yield()
					end
				end
			end
		end
	end
	arg1.Offsets = tbl
	arg1.Finalized = true
end
function module.OpenQuerySourceGetRandomPosition(arg1) -- Line 1135
	local SpaceMap_2 = arg1.SpaceMap
	local len = #arg1.Offsets
	local var221 = Vector3.new(0, 0, 0)
	if 0 < len then
		local var222 = arg1.Offsets[math.random(1, len)]
		local var223 = var222 % SpaceMap_2.OffsetY
		var221 = SpaceMap_2.Origin + Vector3.new(var223 % SpaceMap_2.OffsetZ, var222 // SpaceMap_2.OffsetY, var223 // SpaceMap_2.OffsetZ) * SpaceMap_2.Resolution
	end
	return var221
end
function module.DrawOpenCells(arg1) -- Line 1159
	--[[ Upvalues[1]:
		[1]: AccessCell_upvr (readonly)
	]]
	local Resolution_4 = arg1.Resolution
	local Part = Instance.new("Part")
	Part.Anchored = true
	Part.BottomSurface = Enum.SurfaceType.Smooth
	Part.CanCollide = false
	Part.CanQuery = false
	Part.CanTouch = false
	Part.CastShadow = false
	Part.TopSurface = Enum.SurfaceType.Smooth
	Part.Size = Vector3.new(1, 1, 1) * Resolution_4
	Part.Transparency = 0.825
	for i_18 = 0, arg1.Size.Y - 1 do
		for i_19 = 0, arg1.Size.Z - 1 do
			for i_20 = 0, arg1.Size.X - 1 do
				local AccessCell_result1 = AccessCell_upvr(arg1.Map, arg1.Finalized, i_18 * arg1.OffsetY + i_19 * arg1.OffsetZ + i_20)
				local var232 = ({BrickColor.new("Lime green"), -- : First try: K:0: attempt to index nil with 't'
)[AccessCell_result1]
				if var232 then
					local clone = Part:Clone()
					clone.Anchored = true
					clone.BrickColor = var232
					clone.Position = arg1.Origin + Vector3.new(i_20 * Resolution_4, i_18 * Resolution_4, i_19 * Resolution_4)
					local var234 = ({"__O"})[AccessCell_result1]
					if var234 then
						clone:AddTag(var234)
					end
					clone.Parent = Instance.new("Model")
				end
			end
			if os.clock() + 0.125 <= os.clock() then
				task.wait(0.125)
			end
		end
	end
	Part:Destroy()
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return Instance.new("Model")
end
function module.GetRandomOpenPosition(arg1, arg2) -- Line 1266
	--[[ Upvalues[1]:
		[1]: AccessCell_upvr (readonly)
	]]
	local Size_2 = arg1.Size
	local var238
	for _ = 1, arg2 or 1 do
		local randint_3 = math.random(0, Size_2.X - 1)
		local randint = math.random(0, Size_2.Y - 1)
		local randint_2 = math.random(0, Size_2.Z - 1)
		if AccessCell_upvr(arg1.Map, arg1.Finalized, randint_3 + randint * arg1.OffsetY + randint_2 * arg1.OffsetZ) % 2 == 1 then
			local Resolution_3 = arg1.Resolution
			var238 = arg1.Origin + Vector3.new(randint_3 * Resolution_3, randint * Resolution_3, randint_2 * Resolution_3)
			return var238
		end
	end
	return var238
end
return module