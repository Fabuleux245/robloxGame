-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:39:24
-- Luau version 6, Types version 3
-- Time taken: 0.003891 seconds

local module_2_upvr = {}
function FetchAPI() -- Line 25
	local pcall_result1_2, pcall_result2_upvr = pcall(function() -- Line 26
		return require(script.SuperClassDataStatic)
	end)
	if not pcall_result1_2 then return end
	local pcall_result1, pcall_result2 = pcall(function() -- Line 33
		--[[ Upvalues[1]:
			[1]: pcall_result2_upvr (readonly)
		]]
		return game:GetService("HttpService"):JSONDecode(pcall_result2_upvr)
	end)
	if not pcall_result1 then return end
	return pcall_result2
end
function BuildClasses(arg1) -- Line 44
	local module = {}
	local module_3 = {}
	local function ApplyTags(arg1_2) -- Line 49
		if arg1_2.tags then
			for i = 1, #arg1_2.tags do
				local var21 = arg1_2.tags[i]
				if var21:match("Security$") then
					arg1_2.Security = var21
				elseif var21 == "readonly" then
					arg1_2.ReadOnly = true
				elseif var21 == "hidden" then
					arg1_2.Hidden = true
				elseif var21 == "notCreatable" then
					arg1_2.NotCreatable = true
				elseif var21 == "notbrowsable" then
					arg1_2.NotBrowsable = true
				end
			end
		end
	end
	for i_2 = 1, #arg1 do
		local var22_upvr = arg1[i_2]
		if var22_upvr.type == "Class" then
			module[#module + 1] = var22_upvr
			module_3[var22_upvr.Name] = var22_upvr
			var22_upvr.Subclasses = {}
			var22_upvr.Properties = {}
			var22_upvr.Methods = {}
			var22_upvr.Events = {}
			ApplyTags(var22_upvr)
			for i_3, v_upvr in pairs({"Properties", "Methods", "Events"}) do
				setmetatable(var22_upvr[v_upvr], {
					__index = function(arg1_3, arg2) -- Line 81, Named "__index"
						--[[ Upvalues[2]:
							[1]: var22_upvr (readonly)
							[2]: v_upvr (readonly)
						]]
						local Superclass = var22_upvr.Superclass
						if Superclass then
							Superclass = var22_upvr.Superclass[v_upvr][arg2]
						end
						return Superclass
					end;
				})
			end
			function var22_upvr.GetAllProperties(arg1_4, arg2) -- Line 86
				--[[ Upvalues[1]:
					[1]: var22_upvr (readonly)
				]]
				local var31 = var22_upvr
				while var31 do
					for i_4, v_2 in pairs(var31.Properties) do
						if not v_2.Security or not arg2 then
							({})[i_4] = v_2
						end
					end
				end
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				return {}
			end
		end
	end
	for i_5 = 1, #module do
		local var35 = module[i_5]
		if var35.Superclass then
			var35.Superclass = module_3[var35.Superclass]
			table.insert(var35.Superclass.Subclasses, var35)
		end
	end
	for i_6 = 1, #arg1 do
		local var36 = arg1[i_6]
		if var36.Name and var36.ValueType then
			i_3 = ':'
			v_upvr = module_3[var36.Class].Name
			;({})[var36.Name..i_3..v_upvr] = var36.ValueType
		end
		if var36.type == "Property" then
			ApplyTags(var36)
			module_3[var36.Class].Properties[var36.Name] = var36
		elseif var36.type == "Function" then
			ApplyTags(var36)
			module_3[var36.Class].Methods[var36.Name] = var36
		elseif var36.type == "Event" then
			ApplyTags(var36)
			module_3[var36.Class].Events[var36.Name] = var36
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return module, module_3, {}
end
function BuildEnums(arg1) -- Line 138
	local module_4 = {}
	for i_7 = 1, #arg1 do
		local var40 = arg1[i_7]
		if var40.type == "Enum" then
			module_4[#module_4 + 1] = var40
			;({})[var40.Name] = var40
			var40.EnumItems = {}
			var40.ItemID = #module_4
		end
	end
	for i_8 = 1, #arg1 do
		local var41 = arg1[i_8]
		if var41.type == "EnumItem" then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			table.insert(({})[var41.Enum].EnumItems, var41)
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return module_4, {}
end
function module_2_upvr.Fetch(arg1) -- Line 167
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	if arg1._fetched then return end
	if arg1._fetching then return end
	arg1._fetching = true
	local FetchAPI_result1 = FetchAPI()
	arg1._fetching = nil
	if not FetchAPI_result1 then return end
	local BuildClasses_result1, BuildClasses_result2, BuildClasses_result3 = BuildClasses(FetchAPI_result1)
	module_2_upvr.Classes = BuildClasses_result1
	module_2_upvr.ClassesByName = BuildClasses_result2
	module_2_upvr.ValueTypeMatch = BuildClasses_result3
	local BuildEnums_result1, BuildEnums_result2 = BuildEnums(FetchAPI_result1)
	module_2_upvr.Enums = BuildEnums_result1
	module_2_upvr.EnumsByName = BuildEnums_result2
	arg1._fetched = true
	return true
end
return module_2_upvr