-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:18:13
-- Luau version 6, Types version 3
-- Time taken: 0.000965 seconds

local makeDefaultReadPolicy = require(script.Parent.utils.makeDefaultReadPolicy)
local module = {}
local tbl_2 = {
	topicLayoutData = {
		read = makeDefaultReadPolicy({});
	};
}
local tbl = {}
local makeDefaultReadPolicy_result1 = makeDefaultReadPolicy({})
tbl.read = makeDefaultReadPolicy_result1
if require(script.Parent.Parent.Flags).GetFFlagEnableMergeOmniFeedSorts() then
	makeDefaultReadPolicy_result1 = require(script.Parent.utils.makeMergeOverlappingArraysPolicy)("contentId")
else
	makeDefaultReadPolicy_result1 = nil
end
tbl.merge = makeDefaultReadPolicy_result1
tbl_2.recommendations = tbl
tbl_2.experiences = {}
tbl_2.hasMoreRows = {}
module.fields = tbl_2
return module