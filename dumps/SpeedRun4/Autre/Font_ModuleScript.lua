-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:44:35
-- Luau version 6, Types version 3
-- Time taken: 0.001619 seconds

local BuilderIconsFallback_upvr = require(script.Parent.BuilderIconsFallback)
local CorePackages_upvr = script:FindFirstAncestor("CorePackages")
local function getPackagePath_upvr() -- Line 7, Named "getPackagePath"
	--[[ Upvalues[1]:
		[1]: CorePackages_upvr (readonly)
	]]
	if CorePackages_upvr == nil then
		return nil
	end
	local module = {}
	local Parent = script.Parent
	while Parent ~= nil and Parent ~= CorePackages_upvr do
		table.insert(module, 1, Parent.Name)
	end
	return "LuaPackages/"..table.concat(module, '/')
end
local function _() -- Line 25, Named "getFamilyAsset"
	--[[ Upvalues[2]:
		[1]: getPackagePath_upvr (readonly)
		[2]: BuilderIconsFallback_upvr (readonly)
	]]
	local getPackagePath_upvr_result1_2 = getPackagePath_upvr()
	if getPackagePath_upvr_result1_2 == nil then
		return "rbxassetid://"..BuilderIconsFallback_upvr
	end
	return "rbxasset://"..getPackagePath_upvr_result1_2.."/BuilderIcons.json"
end
local getPackagePath_upvr_result1 = getPackagePath_upvr()
local var7
if getPackagePath_upvr_result1 == nil then
	var7 = "rbxassetid://"..BuilderIconsFallback_upvr
else
	var7 = "rbxasset://"..getPackagePath_upvr_result1.."/BuilderIcons.json"
end
return {
	Regular = Font.new(var7, Enum.FontWeight.Regular);
	Filled = Font.new(var7, Enum.FontWeight.Bold);
}