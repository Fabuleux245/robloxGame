-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:17:55
-- Luau version 6, Types version 3
-- Time taken: 0.003274 seconds

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
						arguments = {};
						name = {
							value = "targetUserId";
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
									value = "userPresenceType";
									kind = "Name";
								};
								kind = "Field";
								directives = {};
							}, {
								arguments = {};
								name = {
									value = "lastLocation";
									kind = "Name";
								};
								kind = "Field";
								directives = {};
							}, {
								arguments = {};
								name = {
									value = "lastOnline";
									kind = "Name";
								};
								kind = "Field";
								directives = {};
							}, {
								arguments = {};
								name = {
									value = "placeId";
									kind = "Name";
								};
								kind = "Field";
								directives = {};
							}, {
								arguments = {};
								name = {
									value = "rootPlaceId";
									kind = "Name";
								};
								kind = "Field";
								directives = {};
							}, {
								arguments = {};
								name = {
									value = "gameId";
									kind = "Name";
								};
								kind = "Field";
								directives = {};
							}, {
								arguments = {};
								name = {
									value = "universeId";
									kind = "Name";
								};
								kind = "Field";
								directives = {};
							}};
						};
						arguments = {};
						name = {
							value = "presence";
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
							value = "userId";
							kind = "Name";
						};
					};
					kind = "Argument";
					name = {
						value = "userId";
						kind = "Name";
					};
				}, {
					value = {
						kind = "Variable";
						name = {
							value = "sort";
							kind = "Name";
						};
					};
					kind = "Argument";
					name = {
						value = "sort";
						kind = "Name";
					};
				}};
				name = {
					value = "onlineFriendsByUserId";
					kind = "Name";
				};
				kind = "Field";
				directives = {};
			}};
		};
		directives = {};
		name = {
			value = "OnlineFriendsByUserId";
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
					value = "userId";
					kind = "Name";
				};
			};
		}, {
			type = {
				kind = "NamedType";
				name = {
					value = "Int";
					kind = "Name";
				};
			};
			directives = {};
			kind = "VariableDefinition";
			variable = {
				kind = "Variable";
				name = {
					value = "sort";
					kind = "Name";
				};
			};
		}};
	}};
	kind = "Document";
}