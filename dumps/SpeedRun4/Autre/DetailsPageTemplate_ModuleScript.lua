-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:47:05
-- Luau version 6, Types version 3
-- Time taken: 0.001773 seconds

-- KONSTANTERROR: [0] 1. Error Block 82 start (CF ANALYSIS FAILED)
local Parent = script:FindFirstAncestor("AppBlox").Parent
local UIBlox = require(Parent.UIBlox)
local t = require(Parent.t)
local FFlagLuaAppEdpAnimatedScrolling = require(Parent.SharedFlags).FFlagLuaAppEdpAnimatedScrolling
if FFlagLuaAppEdpAnimatedScrolling then
else
end
if FFlagLuaAppEdpAnimatedScrolling then
else
end
local tbl = {
	thumbnailImageUrl = t.optional(t.string);
	thumbnailHeight = t.optional(t.number);
	thumbnailAspectRatio = t.optional(t.Vector2);
}
if require(Parent.SharedFlags).FFlagLuaAppFixDetailsPageThumbnailRenderInPhone then
	-- KONSTANTWARNING: GOTO [266] #155
end
-- KONSTANTERROR: [0] 1. Error Block 82 end (CF ANALYSIS FAILED)
-- KONSTANTERROR: [265] 154. Error Block 93 start (CF ANALYSIS FAILED)
tbl.thumbnailShadowHeight = nil
tbl.titleText = t.optional(t.string)
tbl.subTitleText = t.optional(t.string)
tbl.actionBarLabelText = t.optional(t.string)
tbl.renderInfoContent = t.optional(t.callback)
tbl.renderCustomHeader = t.optional(t.callback)
tbl.actionBarProps = t.optional(t.table)
tbl.actionBarWidth = t.optional(t.number)
tbl.componentList = t.optional(require(script.Parent.validateDetailsPageComponentList))
tbl.dualPanelBreakpoint = t.optional(t.number)
tbl.sideMargin = t.optional(t.number)
tbl.bodyClipsDescendants = t.optional(t.boolean)
if require(Parent.SharedFlags).FFlagLuaAppEdpSingleColumn then
	-- KONSTANTWARNING: GOTO [352] #206
end
-- KONSTANTERROR: [265] 154. Error Block 93 end (CF ANALYSIS FAILED)