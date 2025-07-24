-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:36:10
-- Luau version 6, Types version 3
-- Time taken: 0.002433 seconds

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
							value = "shouldSeeNotificationsUpsellModal";
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
									value = "id";
									kind = "Name";
								};
								kind = "Field";
								directives = {};
							}, {
								arguments = {};
								name = {
									value = "userRsvpStatus";
									kind = "Name";
								};
								kind = "Field";
								directives = {};
							}};
						};
						arguments = {};
						name = {
							value = "virtualEvent";
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
							value = "virtualEventId";
							kind = "Name";
						};
					};
					kind = "Argument";
					name = {
						value = "id";
						kind = "Name";
					};
				}, {
					value = {
						kind = "Variable";
						name = {
							value = "rsvpStatus";
							kind = "Name";
						};
					};
					kind = "Argument";
					name = {
						value = "rsvpStatus";
						kind = "Name";
					};
				}};
				name = {
					value = "virtualEventRsvp";
					kind = "Name";
				};
				kind = "Field";
				directives = {};
			}};
		};
		directives = {};
		name = {
			value = "UpdateRsvpStatus";
			kind = "Name";
		};
		operation = "mutation";
		kind = "OperationDefinition";
		variableDefinitions = {{
			type = {
				kind = "NonNullType";
				type = {
					kind = "NamedType";
					name = {
						value = "ID";
						kind = "Name";
					};
				};
			};
			directives = {};
			kind = "VariableDefinition";
			variable = {
				kind = "Variable";
				name = {
					value = "virtualEventId";
					kind = "Name";
				};
			};
		}, {
			type = {
				kind = "NonNullType";
				type = {
					kind = "NamedType";
					name = {
						value = "RsvpStatus";
						kind = "Name";
					};
				};
			};
			directives = {};
			kind = "VariableDefinition";
			variable = {
				kind = "Variable";
				name = {
					value = "rsvpStatus";
					kind = "Name";
				};
			};
		}};
	}};
	kind = "Document";
}