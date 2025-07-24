-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:11:04
-- Luau version 6, Types version 3
-- Time taken: 0.002694 seconds

local module_upvr = {
	scale = 1;
}
local tbl_upvr = {{
	w = 500;
	h = 250;
	scale = 0.5;
}, {
	w = 600;
	h = 370;
	scale = 0.6666666666666666;
}, {
	w = 750;
	h = 500;
	scale = 0.75;
}, {
	w = 1000;
	h = 650;
	scale = 1;
}, {
	w = 1800;
	h = 1300;
	scale = 1.5;
}, {
	w = 3400;
	h = 1800;
	scale = 2;
}}
local function updateScale_upvr(arg1, arg2) -- Line 24, Named "updateScale"
	--[[ Upvalues[2]:
		[1]: tbl_upvr (readonly)
		[2]: module_upvr (readonly)
	]]
	local var13
	for i, v in tbl_upvr do
		if arg1.Y < v.h then break end
		if arg1.X < v.w then break end
		var13 = v.scale
	end
	module_upvr.scale = var13
	if arg2 then
		if var13 < 1 then
			i = arg2
			var13 = math.lerp(var13, 1 / var13, i)
			return var13
		end
		var13 = 1
	end
	return var13
end
local Maid_upvr = require(script.Parent.Maid)
function module_upvr.new(arg1) -- Line 43
	--[[ Upvalues[2]:
		[1]: Maid_upvr (readonly)
		[2]: module_upvr (readonly)
	]]
	local tbl = {}
	tbl.instance = arg1
	tbl.maid = Maid_upvr.new()
	local setmetatable_result1_upvr = setmetatable(tbl, {
		__index = module_upvr;
	})
	setmetatable_result1_upvr.maid:Add(workspace:GetPropertyChangedSignal("CurrentCamera"):Connect(function() -- Line 49
		--[[ Upvalues[1]:
			[1]: setmetatable_result1_upvr (readonly)
		]]
		setmetatable_result1_upvr:connect(workspace.CurrentCamera)
	end))
	setmetatable_result1_upvr:connect(workspace.CurrentCamera)
	return setmetatable_result1_upvr
end
function module_upvr.connect(arg1, arg2) -- Line 58
	--[[ Upvalues[1]:
		[1]: updateScale_upvr (readonly)
	]]
	if not arg2 then
	else
		local UndoDownscale_upvr = arg1.instance:GetAttribute("UndoDownscale")
		arg1.maid.viewport = arg2:GetPropertyChangedSignal("ViewportSize"):Connect(function() -- Line 65
			--[[ Upvalues[4]:
				[1]: arg1 (readonly)
				[2]: updateScale_upvr (copied, readonly)
				[3]: arg2 (readonly)
				[4]: UndoDownscale_upvr (readonly)
			]]
			arg1.instance.Scale = updateScale_upvr(arg2.ViewportSize, UndoDownscale_upvr)
		end)
		arg1.instance.Scale = updateScale_upvr(arg2.ViewportSize, UndoDownscale_upvr)
	end
end
function module_upvr.Destroy(arg1) -- Line 72
	arg1.maid:DoCleaning()
end
return module_upvr