-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:06:54
-- Luau version 6, Types version 3
-- Time taken: 0.002511 seconds

local module_upvr_3 = {}
local module_upvr = require(game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("Utility"))
local tbl_upvr = {
	ActiveWraps = {};
}
module_upvr_3.Defaults = {
	Period = 15;
	Tiles = 4;
}
module_upvr_3.RefreshDelayThresholds = {{15, (1/60)}, {30, 0.03333333333333333}, {60, 0.06666666666666667}, {90, 0.1}, {120, 0.125}, {180, 0.25}, {240, 0.5}, {480, 1}}
function module_upvr_3.Create(arg1, arg2) -- Line 57
	--[[ Upvalues[3]:
		[1]: module_upvr_3 (readonly)
		[2]: module_upvr (readonly)
		[3]: tbl_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 22 start (CF ANALYSIS FAILED)
	local StudsPerTileU = arg2.StudsPerTileU
	local StudsPerTileV = arg2.StudsPerTileV
	local Size = arg1.Size
	local var17
	if type(StudsPerTileU) ~= "number" then
		var17 = false
	else
		var17 = true
	end
	if type(StudsPerTileV) ~= "number" then
		-- KONSTANTWARNING: GOTO [29] #21
	end
	-- KONSTANTERROR: [0] 1. Error Block 22 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [28] 20. Error Block 24 start (CF ANALYSIS FAILED)
	local var18 = true
	local var19
	if var17 and var18 then
		var19 = (Size.X / StudsPerTileU + Size.Z / StudsPerTileV) / 2
	elseif var17 then
		var19 = Size.X / StudsPerTileU
	elseif var18 then
		var19 = Size.Z / StudsPerTileV
	end
	local module_upvr_2 = {
		_Connections = {};
		_LastUpdate = os.clock();
		_OffsetApplied = Vector2.zero;
		_SizeDirty = true;
		Cycle = 0;
		Period = module_upvr_3.Defaults.Period;
		Tiles = var19;
	}
	module_upvr_2.Part = arg1
	module_upvr_2.Textures = module_upvr.TextureWrapPart(arg1, arg2)
	tbl_upvr.ActiveWraps[#tbl_upvr.ActiveWraps + 1] = module_upvr_2
	module_upvr_2._Connections[#module_upvr_2._Connections + 1] = arg1:GetPropertyChangedSignal("Size"):Connect(function() -- Line 99
		--[[ Upvalues[1]:
			[1]: module_upvr_2 (readonly)
		]]
		module_upvr_2._SizeDirty = true
	end)
	module_upvr_2._Connections[#module_upvr_2._Connections + 1] = arg1.Destroying:Connect(function() -- Line 104
		--[[ Upvalues[2]:
			[1]: module_upvr_3 (copied, readonly)
			[2]: module_upvr_2 (readonly)
		]]
		module_upvr_3.Destroy(module_upvr_2)
	end)
	do
		return module_upvr_2
	end
	-- KONSTANTERROR: [28] 20. Error Block 24 end (CF ANALYSIS FAILED)
end
function module_upvr_3.Destroy(arg1) -- Line 111
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	local table_find_result1 = table.find(tbl_upvr.ActiveWraps, arg1)
	if table_find_result1 then
		table.remove(tbl_upvr.ActiveWraps, table_find_result1)
	end
	for _, v in arg1._Connections do
		v:Disconnect()
	end
	for _, v_2 in arg1.Textures do
		v_2:Destroy()
	end
end
function module_upvr_3.RenderStepped(arg1, arg2) -- Line 133
	--[[ Upvalues[3]:
		[1]: module_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: module_upvr_3 (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	debug.profilebegin("CFR_AnimatedTextureUtility")
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [16] 13. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [16.8]
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	-- KONSTANTERROR: [16] 13. Error Block 2 end (CF ANALYSIS FAILED)
end
table.freeze(module_upvr_3)
return module_upvr_3