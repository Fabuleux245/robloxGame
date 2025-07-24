-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:49:47
-- Luau version 6, Types version 3
-- Time taken: 0.003873 seconds

local Foundation = script:FindFirstAncestor("Foundation")
local function _(arg1) -- Line 11, Named "isNumber"
	local var3 = true
	if typeof(arg1) ~= "number" then
		var3 = false
		if typeof(arg1) == "table" then
			if typeof(arg1:getValue()) ~= "number" then
				var3 = false
			else
				var3 = true
			end
		end
	end
	return var3
end
local useTokens_upvr = require(Foundation.Providers.Style.useTokens)
local IconSize_upvr = require(Foundation.Enums.IconSize)
return function(arg1, arg2) -- Line 15, Named "useIconSize"
	--[[ Upvalues[2]:
		[1]: useTokens_upvr (readonly)
		[2]: IconSize_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local useTokens_upvr_result1 = useTokens_upvr()
	local var14
	if arg2 then
		local tbl_3 = {}
		var14 = IconSize_upvr
		var14 = useTokens_upvr_result1.Size.Size_300
		tbl_3[var14.XSmall] = var14
		var14 = IconSize_upvr
		var14 = useTokens_upvr_result1.Size.Size_400
		tbl_3[var14.Small] = var14
		var14 = IconSize_upvr
		var14 = useTokens_upvr_result1.Size.Size_500
		tbl_3[var14.Medium] = var14
		var14 = IconSize_upvr
		var14 = useTokens_upvr_result1.Size.Size_600
		tbl_3[var14.Large] = var14
	else
		local tbl_2 = {}
		var14 = IconSize_upvr
		var14 = useTokens_upvr_result1.Size.Size_200
		tbl_2[var14.XSmall] = var14
		var14 = IconSize_upvr
		var14 = useTokens_upvr_result1.Size.Size_400
		tbl_2[var14.Small] = var14
		var14 = IconSize_upvr
		var14 = useTokens_upvr_result1.Size.Size_900
		tbl_2[var14.Medium] = var14
		var14 = IconSize_upvr
		var14 = useTokens_upvr_result1.Size.Size_1200
		tbl_2[var14.Large] = var14
		var14 = IconSize_upvr
		var14 = useTokens_upvr_result1.Size.Size_2400
		tbl_2[var14.XLarge] = var14
		var14 = IconSize_upvr
		var14 = 24 * useTokens_upvr_result1.Size.Size_200
		tbl_2[var14.XXLarge] = var14
	end
	var14 = true
	if typeof(arg1) ~= "number" then
		var14 = false
		if typeof(arg1) == "table" then
			if typeof(arg1:getValue()) ~= "number" then
				var14 = false
			else
				var14 = true
			end
		end
	end
	if var14 then
	else
	end
	if not arg2 then
		var14 = true
		if typeof(arg1) ~= "number" then
			var14 = false
			if typeof(arg1) == "table" then
				if typeof(arg1:getValue()) ~= "number" then
					var14 = false
				else
					var14 = true
				end
			end
		end
		if var14 then
			local var17
		end
	end
	if var17 == nil then
		error("Invalid icon size: "..tostring(arg1))
	end
	if typeof(var17) == "table" then
		return var17:map(function(arg1_3) -- Line 45
			return UDim2.fromOffset(arg1_3, arg1_3)
		end)
	end
	return UDim2.fromOffset(var17, var17)
end