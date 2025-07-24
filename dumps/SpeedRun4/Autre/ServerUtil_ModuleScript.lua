-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:58:01
-- Luau version 6, Types version 3
-- Time taken: 0.001789 seconds

local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("ServerCoreScriptSourceCode", false)
local module_2 = {
	getFFlagServerCoreScriptSourceCode = function() -- Line 6, Named "getFFlagServerCoreScriptSourceCode"
		--[[ Upvalues[1]:
			[1]: game_DefineFastFlag_result1_upvr (readonly)
		]]
		return game_DefineFastFlag_result1_upvr
	end;
}
if game_DefineFastFlag_result1_upvr then
	local Modules_upvr = game:GetService("CoreGui"):WaitForChild("RobloxGui", math.huge).Modules
	local function getRelativePathArray_upvr(arg1, arg2) -- Line 15, Named "getRelativePathArray"
		local module = {}
		while arg2 ~= arg1 do
			if arg2 == nil then
				return nil
			end
			table.insert(module, 1, arg2.Name)
		end
		return module
	end
	function module_2.getSourceForServerScript(arg1) -- Line 27
		--[[ Upvalues[2]:
			[1]: Modules_upvr (readonly)
			[2]: getRelativePathArray_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var9
		if arg1.Source ~= "" then
			return arg1.Source
		end
		var9 = Modules_upvr
		local getRelativePathArray_upvr_result1 = getRelativePathArray_upvr(var9, arg1)
		if getRelativePathArray_upvr_result1 == nil then
			var9 = error
			var9("Instance is not a descendant of the byte code root")
		end
		var9 = Modules_upvr.SourceCode
		for i = 1, #getRelativePathArray_upvr_result1 do
			var9 = var9:FindFirstChild(getRelativePathArray_upvr_result1[i])
			local var11
		end
		if var9 == nil then
			error("No source found for instance")
		end
		return var9.Source
	end
	local function _() -- Line 52, Named "isByteCodeMode"
		local var12
		if script.Source ~= "" then
			var12 = false
		else
			var12 = true
		end
		return var12
	end
	local InsertService_upvr = game:GetService("InsertService")
	function module_2.initSourceCodeFolder() -- Line 56
		--[[ Upvalues[2]:
			[1]: InsertService_upvr (readonly)
			[2]: Modules_upvr (readonly)
		]]
		local var14
		if script.Source ~= "" then
			var14 = false
		else
			var14 = true
		end
		if not var14 then
		else
			var14 = InsertService_upvr:LoadLocalAsset("rbxasset://models/ServerCoreScripts.rbxm")
			local Folder = Instance.new("Folder")
			Folder.Name = "SourceCode"
			Folder.Parent = Modules_upvr
			var14.Server.Parent = Folder
			var14.Common.Parent = Folder
		end
	end
end
return module_2