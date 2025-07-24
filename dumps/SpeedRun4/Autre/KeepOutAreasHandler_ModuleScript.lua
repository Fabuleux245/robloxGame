-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:54:57
-- Luau version 6, Types version 3
-- Time taken: 0.003009 seconds

local CorePackages = game:GetService("CorePackages")
local GuiService_upvr = game:GetService("GuiService")
local RoactUtils = require(CorePackages.Workspace.Packages.RoactUtils)
local function var4_upvr(arg1, arg2, arg3) -- Line 32
	local module = {}
	local Y = arg1.Y
	local var11 = arg2.Y - Y
	local X = arg1.X
	local var13 = 0
	for _, v in ipairs(arg3) do
		local var17 = X + var13
		table.insert(module, {
			Position = {
				X = var17;
				Y = Y;
			};
			Size = {
				X = v.position.X - var17;
				Y = var11;
			};
		})
		X = v.position.X
		var13 = v.size.X
	end
	local var21 = X + var13
	table.insert(module, {
		Position = {
			X = var21;
			Y = Y;
		};
		Size = {
			X = arg2.X - var21;
			Y = var11;
		};
	})
	return module
end
local function var25_upvr(arg1, arg2) -- Line 84
	--[[ Upvalues[2]:
		[1]: GuiService_upvr (readonly)
		[2]: var4_upvr (readonly)
	]]
	local tbl = {}
	local _
	for _, v_2 in pairs(arg2) do
		table.insert(tbl, {
			id = v_2.id;
			size = v_2.size;
			position = v_2.position;
		})
	end
	table.sort(tbl, function(arg1_2, arg2_2) -- Line 99
		local var41 = false
		if arg1_2.position.X < arg2_2.position.X then
			if arg1_2.position.X + arg1_2.size.X >= arg2_2.size.X + arg2_2.position.X then
				var41 = false
			else
				var41 = true
			end
		end
		return var41
	end)
	local any_GetGuiInset_result1, _ = GuiService_upvr:GetGuiInset()
	for _, v_3 in ipairs(var4_upvr(Vector2.new(0, 0), Vector2.new(arg1.X, any_GetGuiInset_result1.Y), tbl)) do
		local function INLINED() -- Internal function, doesn't exist in bytecode
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			return nil.Width < v_3.Size.X
		end
		if not nil or INLINED() then
		end
	end
	return Rect.new(v_3.Position.X, v_3.Position.Y, v_3.Position.X + v_3.Size.X, v_3.Position.Y + v_3.Size.Y)
end
local function _(arg1, arg2) -- Line 122
	--[[ Upvalues[2]:
		[1]: var25_upvr (readonly)
		[2]: GuiService_upvr (readonly)
	]]
	local var25_upvr_result1_2 = var25_upvr(arg1, arg2)
	if var25_upvr_result1_2 then
		GuiService_upvr:SetTopbarInset(var25_upvr_result1_2)
	end
end
local useSelector_upvr = RoactUtils.Hooks.RoactRodux.useSelector
local React_upvr = require(CorePackages.Packages.React)
local GetFFlagFixKeepOutAreasCompatibility_upvr = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagFixKeepOutAreasCompatibility
local RunService_upvr = game:GetService("RunService")
local dependencyArray_upvr = RoactUtils.Hooks.dependencyArray
function KeepOutAreasHandler(arg1) -- Line 129
	--[[ Upvalues[7]:
		[1]: useSelector_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: GetFFlagFixKeepOutAreasCompatibility_upvr (readonly)
		[4]: RunService_upvr (readonly)
		[5]: var25_upvr (readonly)
		[6]: GuiService_upvr (readonly)
		[7]: dependencyArray_upvr (readonly)
	]]
	local useSelector_upvr_result1_upvr_2 = useSelector_upvr(function(arg1_3) -- Line 130
		return arg1_3.displayOptions.screenSize
	end)
	local useSelector_upvr_result1_upvr = useSelector_upvr(function(arg1_4) -- Line 134
		return arg1_4.displayOptions.keepOutAreas
	end)
	React_upvr.useEffect(function() -- Line 138
		--[[ Upvalues[6]:
			[1]: GetFFlagFixKeepOutAreasCompatibility_upvr (copied, readonly)
			[2]: RunService_upvr (copied, readonly)
			[3]: useSelector_upvr_result1_upvr_2 (readonly)
			[4]: useSelector_upvr_result1_upvr (readonly)
			[5]: var25_upvr (copied, readonly)
			[6]: GuiService_upvr (copied, readonly)
		]]
		if GetFFlagFixKeepOutAreasCompatibility_upvr() or game:GetEngineFeature("InGameChromeSignalAPI") and RunService_upvr:IsStudio() then
			local var25_upvr_result1 = var25_upvr(useSelector_upvr_result1_upvr_2, useSelector_upvr_result1_upvr)
			if var25_upvr_result1 then
				GuiService_upvr:SetTopbarInset(var25_upvr_result1)
			end
		end
	end, dependencyArray_upvr(useSelector_upvr_result1_upvr_2, useSelector_upvr_result1_upvr))
end
return KeepOutAreasHandler