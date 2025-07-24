-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:17:56
-- Luau version 6, Types version 3
-- Time taken: 0.002719 seconds

return {
	definitions = {{
		selectionSet = {
			kind = "SelectionSet";
			selections = {{
				selectionSet = {
					kind = "SelectionSet";
					selections = {{
						arguments = {};
						name = {
							value = "id";
							kind = "Name";
						};
						kind = "Field";
						directives = {};
					}, {
						selectionSet = {
							kind = "SelectionSet";
							selections = {{
								arguments = {};
								name = {
									value = "combinedName";
									kind = "Name";
								};
								kind = "Field";
								directives = {};
							}, {
								arguments = {};
								name = {
									value = "username";
									kind = "Name";
								};
								kind = "Field";
								directives = {};
							}, {
								arguments = {};
								name = {
									value = "alias";
									kind = "Name";
								};
								kind = "Field";
								directives = {};
							}, {
								arguments = {};
								name = {
									value = "displayName";
									kind = "Name";
								};
								kind = "Field";
								directives = {};
							}, {
								arguments = {};
								name = {
									value = "contactName";
									kind = "Name";
								};
								kind = "Field";
								directives = {};
							}, {
								arguments = {};
								name = {
									value = "platformName";
									kind = "Name";
								};
								kind = "Field";
								directives = {};
							}};
						};
						arguments = {};
						name = {
							value = "names";
							kind = "Name";
						};
						kind = "Field";
						directives = {};
					}, {
						arguments = {};
						name = {
							value = "platformProfileId";
							kind = "Name";
						};
						kind = "Field";
						directives = {};
					}};
				};
				arguments = {{
					value = {
						kind = "Variable";
						name = {
							value = "userIds";
							kind = "Name";
						};
					};
					kind = "Argument";
					name = {
						value = "userIds";
						kind = "Name";
					};
				}};
				name = {
					value = "userProfiles";
					kind = "Name";
				};
				kind = "Field";
				directives = {};
			}};
		};
		directives = {};
		name = {
			value = "UserProfiles";
			kind = "Name";
		};
		operation = "query";
		kind = "OperationDefinition";
		variableDefinitions = {{
			type = {
				kind = "NonNullType";
				type = {
					kind = "ListType";
					type = {
						kind = "NamedType";
						name = {
							value = "String";
							kind = "Name";
						};
					};
				};
			};
			directives = {};
			kind = "VariableDefinition";
			variable = {
				kind = "Variable";
				name = {
					value = "userIds";
					kind = "Name";
				};
			};
		}};
	}};
	kind = "Document";
}