-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:39:05
-- Luau version 6, Types version 3
-- Time taken: 0.002604 seconds

local module_upvr = {
	spacing = 8;
	image = "rbxasset://textures/Cursors/Gamepad/Pointer.png";
	imageSize = Vector2.new(2, 2);
}
local tbl_upvw_2 = {}
local tbl_upvw = {}
local Model_upvr = Instance.new("Model")
Model_upvr.Name = "PathDisplayPoints"
local Part = Instance.new("Part")
Part.Anchored = true
Part.CanCollide = false
Part.Transparency = 1
Part.Name = "PathDisplayAdornee"
Part.CFrame = CFrame.new(0, 0, 0)
Part.Parent = Model_upvr
local tbl_upvr = {}
local var9_upvw = 30
for i = 1, var9_upvw do
	local ImageHandleAdornment = Instance.new("ImageHandleAdornment")
	ImageHandleAdornment.Archivable = false
	ImageHandleAdornment.Adornee = Part
	ImageHandleAdornment.Image = module_upvr.image
	ImageHandleAdornment.Size = module_upvr.imageSize
	tbl_upvr[i] = ImageHandleAdornment
end
local function _() -- Line 34, Named "retrieveFromPool"
	--[[ Upvalues[2]:
		[1]: tbl_upvr (readonly)
		[2]: var9_upvw (read and write)
	]]
	local _1 = tbl_upvr[1]
	if not _1 then
		return nil
	end
	tbl_upvr[1] = tbl_upvr[var9_upvw]
	tbl_upvr[var9_upvw] = nil
	var9_upvw -= 1
	return _1
end
local function _(arg1) -- Line 45, Named "returnToPool"
	--[[ Upvalues[2]:
		[1]: var9_upvw (read and write)
		[2]: tbl_upvr (readonly)
	]]
	var9_upvw += 1
	tbl_upvr[var9_upvw] = arg1
end
local function renderPoint_upvr(arg1, arg2) -- Line 50, Named "renderPoint"
	--[[ Upvalues[3]:
		[1]: var9_upvw (read and write)
		[2]: tbl_upvr (readonly)
		[3]: Model_upvr (readonly)
	]]
	if var9_upvw == 0 then
		return nil
	end
	local workspace_FindPartOnRayWithIgnoreList_result1, workspace_FindPartOnRayWithIgnoreList_result2, workspace_FindPartOnRayWithIgnoreList_result3 = workspace:FindPartOnRayWithIgnoreList(Ray.new(arg1 + Vector3.new(0, 2, 0), Vector3.new(0, -8, 0)), {game.Players.LocalPlayer.Character, workspace.CurrentCamera})
	if not workspace_FindPartOnRayWithIgnoreList_result1 then
		return nil
	end
	local var16 = workspace_FindPartOnRayWithIgnoreList_result2
	local _1_2 = tbl_upvr[1]
	if not _1_2 then
		var16 = nil
	else
		tbl_upvr[1] = tbl_upvr[var9_upvw]
		tbl_upvr[var9_upvw] = nil
		var9_upvw -= 1
		var16 = _1_2
	end
	var16.CFrame = CFrame.new(var16, workspace_FindPartOnRayWithIgnoreList_result2 + workspace_FindPartOnRayWithIgnoreList_result3)
	var16.Parent = Model_upvr
	return var16
end
function module_upvr.setCurrentPoints(arg1) -- Line 69
	--[[ Upvalues[1]:
		[1]: tbl_upvw_2 (read and write)
	]]
	if typeof(arg1) == "table" then
		tbl_upvw_2 = arg1
	else
		tbl_upvw_2 = {}
	end
end
function module_upvr.clearRenderedPath() -- Line 77
	--[[ Upvalues[4]:
		[1]: tbl_upvw (read and write)
		[2]: var9_upvw (read and write)
		[3]: tbl_upvr (readonly)
		[4]: Model_upvr (readonly)
	]]
	for _, v in ipairs(tbl_upvw) do
		v.Parent = nil
		var9_upvw += 1
		tbl_upvr[var9_upvw] = v
	end
	tbl_upvw = {}
	Model_upvr.Parent = nil
end
function module_upvr.renderPath() -- Line 86
	--[[ Upvalues[5]:
		[1]: module_upvr (readonly)
		[2]: tbl_upvw_2 (read and write)
		[3]: tbl_upvw (read and write)
		[4]: renderPoint_upvr (readonly)
		[5]: Model_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 21 start (CF ANALYSIS FAILED)
	module_upvr.clearRenderedPath()
	local var23
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var23 = #tbl_upvw_2
		return var23 == 0
	end
	if not var23 or INLINED() then return end
	var23 = #tbl_upvw_2
	local const_number = 0
	tbl_upvw[1] = renderPoint_upvr(tbl_upvw_2[var23], true)
	local var25 = tbl_upvw
	local _1_3 = var25[1]
	-- KONSTANTERROR: [0] 1. Error Block 21 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [25] 24. Error Block 6 start (CF ANALYSIS FAILED)
	do
		return
	end
	-- KONSTANTERROR: [25] 24. Error Block 6 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [35] 33. Error Block 28 start (CF ANALYSIS FAILED)
	local var27 = var25 - _1_3
	local magnitude = var27.magnitude
	if magnitude < const_number then
		var23 -= 1
	else
		local renderPoint_result1 = renderPoint_upvr(_1_3 + var27.unit * (const_number - magnitude), false)
		if renderPoint_result1 then
			tbl_upvw[#tbl_upvw + 1] = renderPoint_result1
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	end
	-- KONSTANTERROR: [35] 33. Error Block 28 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [26] 25. Error Block 7 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [61.263163]
	-- KONSTANTERROR: [26] 25. Error Block 7 end (CF ANALYSIS FAILED)
end
return module_upvr