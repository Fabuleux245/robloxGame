-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:32:32
-- Luau version 6, Types version 3
-- Time taken: 0.003137 seconds

local dependencies = require(script.Parent.Parent.dependencies)
local tbl_upvr = {
	highlight = function(arg1) -- Line 44, Named "highlight"
		return "<b>"..arg1.."</b>"
	end;
}
local function formatString_upvr(arg1) -- Line 49, Named "formatString"
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	local styledElements = arg1.styledElements
	local tbl = {{
		Position = 0;
		ReferenceCount = 0;
		Format = "highlight";
	}, {
		Position = #arg1.text;
		ReferenceCount = 0;
		Format = "highlight";
	}}
	local var20
	if styledElements then
		local pairs_result1, pairs_result2_3, pairs_result3 = pairs(nil)
		for _, v in pairs_result1, pairs_result2_3, pairs_result3 do
			table.insert(tbl, {
				Position = v.offset;
				ReferenceCount = 1;
				Format = v.styledElementType;
			})
			table.insert(tbl, {
				Position = v.offset + v.length;
				ReferenceCount = -1;
				Format = v.styledElementType;
			})
		end
	end
	pairs_result2_3 = tbl
	table.sort(pairs_result2_3, function(arg1_2, arg2) -- Line 84
		local var27
		if arg1_2.Position >= arg2.Position then
			var27 = false
		else
			var27 = true
		end
		return var27
	end)
	pairs_result2_3 = pairs(tbl_upvr)
	local pairs_result1_2, pairs_result2, pairs_result3_3 = pairs(tbl_upvr)
	for i_2 in pairs_result1_2, pairs_result2, pairs_result3_3 do
		({})[i_2] = 0
		local var31
	end
	pairs_result1_2 = ""
	for i_3 = 1, #tbl - 1 do
		local var32 = tbl[i_3]
		local var33 = tbl[i_3 + 1]
		if var32.Format then
			local Format = var32.Format
			var31[Format] += var32.ReferenceCount
		end
		local var35
		if var35 ~= var33.Position then
			var35 = arg1.text:sub(var32.Position + 1, var33.Position)
			for i_4, v_2 in pairs(tbl_upvr) do
				if 0 < var31[i_4] then
					var35 = v_2(var35)
				end
			end
			pairs_result1_2 = pairs_result1_2..var35
		end
	end
	return pairs_result1_2
end
local useStyle_upvr = dependencies.UIBlox.Core.Style.useStyle
local React_upvr = dependencies.React
return function(arg1) -- Line 115
	--[[ Upvalues[3]:
		[1]: useStyle_upvr (readonly)
		[2]: formatString_upvr (readonly)
		[3]: React_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var40_result1 = useStyle_upvr()
	local var43
	if arg1.Text then
		var43 = formatString_upvr(arg1.Text)
	else
		var43 = ""
	end
	local module_2 = {
		RichText = true;
		Text = var43;
		BackgroundTransparency = 1;
	}
	if not arg1.TextColor3 then
	end
	module_2.TextColor3 = var40_result1.Theme.TextDefault.Color
	if not arg1.TextTransparency then
	end
	module_2.TextTransparency = var40_result1.Theme.TextDefault.Transparency
	if not arg1.Font then
	end
	module_2.Font = var40_result1.Font.Body.Font
	module_2.AutomaticSize = arg1.AutomaticSize
	module_2.Size = arg1.Size
	module_2.TextSize = arg1.TextSize
	module_2.Position = arg1.Position
	module_2.AnchorPoint = arg1.AnchorPoint
	module_2.TextXAlignment = arg1.TextXAlignment
	module_2.TextTruncate = Enum.TextTruncate.AtEnd
	module_2.TextWrapped = true
	local module = {}
	if arg1.MaxSize then
		local _ = {
			MaxSize = arg1.MaxSize;
		}
	else
	end
	module.UISizeConstraint = nil
	return React_upvr.createElement("TextLabel", module_2, module)
end