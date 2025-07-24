-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:17:03
-- Luau version 6, Types version 3
-- Time taken: 0.003904 seconds

return {
	definitions = {{
		selectionSet = {
			kind = "SelectionSet";
			selections = {{
				selectionSet = {
					kind = "SelectionSet";
					selections = {{
						selectionSet = {
							kind = "SelectionSet";
							selections = {{
								arguments = {};
								name = {
									value = "featureName";
									kind = "Name";
								};
								kind = "Field";
								directives = {};
							}, {
								arguments = {};
								name = {
									value = "access";
									kind = "Name";
								};
								kind = "Field";
								directives = {};
							}, {
								arguments = {};
								name = {
									value = "recourse";
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
											value = "action";
											kind = "Name";
										};
										kind = "Field";
										directives = {};
									}, {
										arguments = {};
										name = {
											value = "parentConsentTypes";
											kind = "Name";
										};
										kind = "Field";
										directives = {};
									}};
								};
								arguments = {};
								name = {
									value = "recourses";
									kind = "Name";
								};
								kind = "Field";
								directives = {};
							}};
						};
						arguments = {};
						name = {
							value = "featureAccess";
							kind = "Name";
						};
						kind = "Field";
						directives = {};
					}, {
						arguments = {};
						name = {
							value = "shouldPrompt";
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
							value = "featureName";
							kind = "Name";
						};
					};
					kind = "Argument";
					name = {
						value = "featureName";
						kind = "Name";
					};
				}, {
					value = {
						kind = "Variable";
						name = {
							value = "successfulActions";
							kind = "Name";
						};
					};
					kind = "Argument";
					name = {
						value = "successfulActions";
						kind = "Name";
					};
				}, {
					value = {
						kind = "Variable";
						name = {
							value = "nameSpace";
							kind = "Name";
						};
					};
					kind = "Argument";
					name = {
						value = "nameSpace";
						kind = "Name";
					};
				}};
				name = {
					value = "getUpsellFeatureAccess";
					kind = "Name";
				};
				kind = "Field";
				directives = {};
			}};
		};
		directives = {};
		name = {
			value = "GetUpsellFeatureAccess";
			kind = "Name";
		};
		operation = "query";
		kind = "OperationDefinition";
		variableDefinitions = {{
			type = {
				kind = "NonNullType";
				type = {
					kind = "NamedType";
					name = {
						value = "String";
						kind = "Name";
					};
				};
			};
			directives = {};
			kind = "VariableDefinition";
			variable = {
				kind = "Variable";
				name = {
					value = "featureName";
					kind = "Name";
				};
			};
		}, {
			type = {
				kind = "ListType";
				type = {
					kind = "NamedType";
					name = {
						value = "RecourseActions";
						kind = "Name";
					};
				};
			};
			directives = {};
			kind = "VariableDefinition";
			variable = {
				kind = "Variable";
				name = {
					value = "successfulActions";
					kind = "Name";
				};
			};
		}, {
			type = {
				kind = "NamedType";
				name = {
					value = "String";
					kind = "Name";
				};
			};
			directives = {};
			kind = "VariableDefinition";
			variable = {
				kind = "Variable";
				name = {
					value = "nameSpace";
					kind = "Name";
				};
			};
		}};
	}};
	kind = "Document";
}