-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:50:41
-- Luau version 6, Types version 3
-- Time taken: 0.005795 seconds

local Kind_upvr = require(script.Parent.kinds).Kind
local isExecutableDefinitionNode_upvw
local isTypeSystemDefinitionNode_upvw
local isTypeSystemExtensionNode_upvw
function isExecutableDefinitionNode_upvw(arg1) -- Line 26, Named "isExecutableDefinitionNode"
	--[[ Upvalues[1]:
		[1]: Kind_upvr (readonly)
	]]
	local var7 = true
	if arg1.kind ~= Kind_upvr.OPERATION_DEFINITION then
		if arg1.kind ~= Kind_upvr.FRAGMENT_DEFINITION then
			var7 = false
		else
			var7 = true
		end
	end
	return var7
end
local isTypeDefinitionNode_upvw
function isTypeSystemDefinitionNode_upvw(arg1) -- Line 54, Named "isTypeSystemDefinitionNode"
	--[[ Upvalues[2]:
		[1]: Kind_upvr (readonly)
		[2]: isTypeDefinitionNode_upvw (read and write)
	]]
	local var14 = true
	if arg1.kind ~= Kind_upvr.SCHEMA_DEFINITION then
		var14 = isTypeDefinitionNode_upvw(arg1)
		if not var14 then
			if arg1.kind ~= Kind_upvr.DIRECTIVE_DEFINITION then
				var14 = false
			else
				var14 = true
			end
		end
	end
	return var14
end
function isTypeDefinitionNode_upvw(arg1) -- Line 60, Named "isTypeDefinitionNode"
	--[[ Upvalues[1]:
		[1]: Kind_upvr (readonly)
	]]
	local var15 = true
	if arg1.kind ~= Kind_upvr.SCALAR_TYPE_DEFINITION then
		var15 = true
		if arg1.kind ~= Kind_upvr.OBJECT_TYPE_DEFINITION then
			var15 = true
			if arg1.kind ~= Kind_upvr.INTERFACE_TYPE_DEFINITION then
				var15 = true
				if arg1.kind ~= Kind_upvr.UNION_TYPE_DEFINITION then
					var15 = true
					if arg1.kind ~= Kind_upvr.ENUM_TYPE_DEFINITION then
						if arg1.kind ~= Kind_upvr.INPUT_OBJECT_TYPE_DEFINITION then
							var15 = false
						else
							var15 = true
						end
					end
				end
			end
		end
	end
	return var15
end
local isTypeExtensionNode_upvw
function isTypeSystemExtensionNode_upvw(arg1) -- Line 69, Named "isTypeSystemExtensionNode"
	--[[ Upvalues[2]:
		[1]: Kind_upvr (readonly)
		[2]: isTypeExtensionNode_upvw (read and write)
	]]
	local var17 = true
	if arg1.kind ~= Kind_upvr.SCHEMA_EXTENSION then
		var17 = isTypeExtensionNode_upvw(arg1)
	end
	return var17
end
function isTypeExtensionNode_upvw(arg1) -- Line 73, Named "isTypeExtensionNode"
	--[[ Upvalues[1]:
		[1]: Kind_upvr (readonly)
	]]
	local var18 = true
	if arg1.kind ~= Kind_upvr.SCALAR_TYPE_EXTENSION then
		var18 = true
		if arg1.kind ~= Kind_upvr.OBJECT_TYPE_EXTENSION then
			var18 = true
			if arg1.kind ~= Kind_upvr.INTERFACE_TYPE_EXTENSION then
				var18 = true
				if arg1.kind ~= Kind_upvr.UNION_TYPE_EXTENSION then
					var18 = true
					if arg1.kind ~= Kind_upvr.ENUM_TYPE_EXTENSION then
						if arg1.kind ~= Kind_upvr.INPUT_OBJECT_TYPE_EXTENSION then
							var18 = false
						else
							var18 = true
						end
					end
				end
			end
		end
	end
	return var18
end
return {
	isDefinitionNode = function(arg1) -- Line 20, Named "isDefinitionNode"
		--[[ Upvalues[3]:
			[1]: isExecutableDefinitionNode_upvw (read and write)
			[2]: isTypeSystemDefinitionNode_upvw (read and write)
			[3]: isTypeSystemExtensionNode_upvw (read and write)
		]]
		local isExecutableDefinitionNode_result1 = isExecutableDefinitionNode_upvw(arg1)
		if not isExecutableDefinitionNode_result1 then
			isExecutableDefinitionNode_result1 = isTypeSystemDefinitionNode_upvw(arg1)
			if not isExecutableDefinitionNode_result1 then
				isExecutableDefinitionNode_result1 = isTypeSystemExtensionNode_upvw(arg1)
			end
		end
		return isExecutableDefinitionNode_result1
	end;
	isExecutableDefinitionNode = isExecutableDefinitionNode_upvw;
	isSelectionNode = function(arg1) -- Line 30, Named "isSelectionNode"
		--[[ Upvalues[1]:
			[1]: Kind_upvr (readonly)
		]]
		local var9 = true
		if arg1.kind ~= Kind_upvr.FIELD then
			var9 = true
			if arg1.kind ~= Kind_upvr.FRAGMENT_SPREAD then
				if arg1.kind ~= Kind_upvr.INLINE_FRAGMENT then
					var9 = false
				else
					var9 = true
				end
			end
		end
		return var9
	end;
	isValueNode = function(arg1) -- Line 36, Named "isValueNode"
		--[[ Upvalues[1]:
			[1]: Kind_upvr (readonly)
		]]
		local var11 = true
		if arg1.kind ~= Kind_upvr.VARIABLE then
			var11 = true
			if arg1.kind ~= Kind_upvr.INT then
				var11 = true
				if arg1.kind ~= Kind_upvr.FLOAT then
					var11 = true
					if arg1.kind ~= Kind_upvr.STRING then
						var11 = true
						if arg1.kind ~= Kind_upvr.BOOLEAN then
							var11 = true
							if arg1.kind ~= Kind_upvr.NULL then
								var11 = true
								if arg1.kind ~= Kind_upvr.ENUM then
									var11 = true
									if arg1.kind ~= Kind_upvr.LIST then
										if arg1.kind ~= Kind_upvr.OBJECT then
											var11 = false
										else
											var11 = true
										end
									end
								end
							end
						end
					end
				end
			end
		end
		return var11
	end;
	isTypeNode = function(arg1) -- Line 48, Named "isTypeNode"
		--[[ Upvalues[1]:
			[1]: Kind_upvr (readonly)
		]]
		local var12 = true
		if arg1.kind ~= Kind_upvr.NAMED_TYPE then
			var12 = true
			if arg1.kind ~= Kind_upvr.LIST_TYPE then
				if arg1.kind ~= Kind_upvr.NON_NULL_TYPE then
					var12 = false
				else
					var12 = true
				end
			end
		end
		return var12
	end;
	isTypeSystemDefinitionNode = isTypeSystemDefinitionNode_upvw;
	isTypeDefinitionNode = isTypeDefinitionNode_upvw;
	isTypeSystemExtensionNode = isTypeSystemExtensionNode_upvw;
	isTypeExtensionNode = isTypeExtensionNode_upvw;
}