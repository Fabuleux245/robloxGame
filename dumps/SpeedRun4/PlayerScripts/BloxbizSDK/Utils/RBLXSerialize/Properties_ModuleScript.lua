-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:39:44
-- Luau version 6, Types version 3
-- Time taken: 0.005101 seconds

local module_2_upvr = {}
function FetchAPI() -- Line 25
	local pcall_result1, pcall_result2_upvr = pcall(function() -- Line 26
		return require(script.SuperClassDataStatic)
	end)
	if not pcall_result1 then return end
	local pcall_result1_2, pcall_result2 = pcall(function() -- Line 33
		--[[ Upvalues[1]:
			[1]: pcall_result2_upvr (readonly)
		]]
		return game:GetService("HttpService"):JSONDecode(pcall_result2_upvr)
	end)
	if not pcall_result1_2 then return end
	return pcall_result2
end
function BuildClasses(arg1) -- Line 44
	-- KONSTANTERROR: [0] 1. Error Block 40 start (CF ANALYSIS FAILED)
	local tbl_4 = {}
	for i_2 = 1, #arg1 do
		local var46_upvr = arg1[i_2]
		if var46_upvr.type == "Class" then
			tbl_4[#tbl_4 + 1] = var46_upvr
			;({})[var46_upvr.Name] = var46_upvr
			var46_upvr.Subclasses = {}
			var46_upvr.Properties = {}
			var46_upvr.Methods = {}
			var46_upvr.Events = {}
			;(function(arg1_5) -- Line 49, Named "ApplyTags"
				if arg1_5.tags then
					for i = 1, #arg1_5.tags do
						local var45 = arg1_5.tags[i]
						if var45:match("Security$") then
							arg1_5.Security = var45
						elseif var45 == "readonly" then
							arg1_5.ReadOnly = true
						elseif var45 == "hidden" then
							arg1_5.Hidden = true
						elseif var45 == "notCreatable" then
							arg1_5.NotCreatable = true
						elseif var45 == "notbrowsable" then
							arg1_5.NotBrowsable = true
						end
					end
				end
			end)(var46_upvr)
			for _, v_upvr in pairs({"Properties", "Methods", "Events"}) do
				setmetatable(var46_upvr[v_upvr], {
					__index = function(arg1_6, arg2) -- Line 81, Named "__index"
						--[[ Upvalues[2]:
							[1]: var46_upvr (readonly)
							[2]: v_upvr (readonly)
						]]
						local Superclass_2 = var46_upvr.Superclass
						if Superclass_2 then
							Superclass_2 = var46_upvr.Superclass[v_upvr][arg2]
						end
						return Superclass_2
					end;
				})
			end
			function var46_upvr.GetAllProperties(arg1_7, arg2) -- Line 86
				--[[ Upvalues[1]:
					[1]: var46_upvr (readonly)
				]]
				local var55 = var46_upvr
				while var55 do
					for i_4, v_2 in pairs(var55.Properties) do
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
	for i_5 = 1, #tbl_4 do
		local var59 = tbl_4[i_5]
		if var59.Superclass then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			var59.Superclass = ({})[var59.Superclass]
			table.insert(var59.Superclass.Subclasses, var59)
		end
	end
	local _ = 1
	-- KONSTANTERROR: [0] 1. Error Block 40 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [165] 116. Error Block 23 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [165] 116. Error Block 23 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [99] 71. Error Block 45 start (CF ANALYSIS FAILED)
	if table.insert(var59.Superclass.Subclasses, var59) then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if table.insert(var59.Superclass.Subclasses, var59) then
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	if table.insert(var59.Superclass.Subclasses, var59) == "Property" then
		-- KONSTANTWARNING: GOTO [165] #116
	end
	-- KONSTANTERROR: [99] 71. Error Block 45 end (CF ANALYSIS FAILED)
end
function BuildEnums(arg1) -- Line 138
	local module = {}
	for i_6 = 1, #arg1 do
		local var64 = arg1[i_6]
		if var64.type == "Enum" then
			module[#module + 1] = var64
			;({})[var64.Name] = var64
			var64.EnumItems = {}
			var64.ItemID = #module
		end
	end
	for i_7 = 1, #arg1 do
		local var65 = arg1[i_7]
		if var65.type == "EnumItem" then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			table.insert(({})[var65.Enum].EnumItems, var65)
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return module, {}
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