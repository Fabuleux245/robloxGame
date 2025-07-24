-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:01:06
-- Luau version 6, Types version 3
-- Time taken: 0.004514 seconds

-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
-- KONSTANTERROR: [0] 1. Error Block 36 start (CF ANALYSIS FAILED)
local _ = game:GetService("CorePackages")
local _ = script.Parent.Parent.Parent.Components
local Constants = require(script.Parent.Parent.Parent.Constants)
local _ = Constants.GeneralFormatting
local DebugVisualizationsFormatting = Constants.DebugVisualizationsFormatting
local ChartCellWidths = DebugVisualizationsFormatting.ChartCellWidths
local HeaderFrameHeight = DebugVisualizationsFormatting.HeaderFrameHeight
local EntryFrameHeight = DebugVisualizationsFormatting.EntryFrameHeight
local CellPadding = DebugVisualizationsFormatting.CellPadding
local var26 = 0
for _, v in ipairs(ChartCellWidths) do
	var26 += v
end
local tbl = {}
local tbl_2 = {}
local tbl_3 = {}
local var33 = -var26 / 2
table.insert(tbl, UDim2.fromOffset(CellPadding, 0))
table.insert(tbl_2, UDim2.new(0.5, var33 - CellPadding, 0, HeaderFrameHeight))
table.insert(tbl_3, UDim2.new(0.5, var33 - CellPadding, 0, EntryFrameHeight))
for _, v_2 in ipairs(ChartCellWidths) do
	table.insert(tbl, UDim2.new(0.5, var33 + CellPadding, 0, 0))
	table.insert(tbl_2, UDim2.fromOffset(v_2 - CellPadding, HeaderFrameHeight))
	table.insert(tbl_3, UDim2.fromOffset(v_2 - CellPadding, EntryFrameHeight))
	local var37
end
table.insert(var37, UDim2.new(0.5, var33 + v_2 + CellPadding, 0, 0))
table.insert(tbl_2, UDim2.new(0.5, -var26 / 2 - CellPadding, 0, HeaderFrameHeight))
table.insert(tbl_3, UDim2.new(0.5, -var26 / 2 - CellPadding, 0, EntryFrameHeight))
if #ChartCellWidths ~= 2 then
	-- KONSTANTWARNING: GOTO [236] #167
end
-- KONSTANTERROR: [0] 1. Error Block 36 end (CF ANALYSIS FAILED)
-- KONSTANTERROR: [235] 166. Error Block 43 start (CF ANALYSIS FAILED)
assert(true, "DebugVisualizationsChart expected DebugVisualizationsFormatting CELL_WIDTHS to have a length of 2")
if #var37 ~= 4 then
	-- KONSTANTWARNING: GOTO [247] #175
end
-- KONSTANTERROR: [235] 166. Error Block 43 end (CF ANALYSIS FAILED)