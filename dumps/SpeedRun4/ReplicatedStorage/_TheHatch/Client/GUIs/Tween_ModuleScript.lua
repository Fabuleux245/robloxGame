-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:11:11
-- Luau version 6, Types version 3
-- Time taken: 0.001133 seconds

return function(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 4
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var10 = arg5
	if not var10 then
		var10 = Enum.EasingStyle.Quad
	end
	var10 = arg6
	local var11 = var10
	if not var11 then
		var11 = Enum.EasingDirection.Out
	end
	local tbl = {}
	if type(arg3) == "table" then
	else
	end
	local var16
	for i, v in pairs(arg2) do
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var16 = arg3[i]
			return var16
		end
		if not false or not INLINED() then
			var16 = arg3
		end
		tbl[v] = var16
	end
	local any_Create_result1 = game:GetService("TweenService"):Create(arg1, TweenInfo.new(arg4 or 0.5, var10, var11), tbl)
	any_Create_result1:Play()
	return any_Create_result1
end