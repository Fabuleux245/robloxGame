-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:36:10
-- Luau version 6, Types version 3
-- Time taken: 0.005142 seconds

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
							value = "cursor";
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
									value = "title";
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
									value = "description";
									kind = "Name";
								};
								kind = "Field";
								directives = {};
							}, {
								arguments = {};
								name = {
									value = "eventStatus";
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
											value = "startUtc";
											kind = "Name";
										};
										kind = "Field";
										directives = {};
									}, {
										arguments = {};
										name = {
											value = "endUtc";
											kind = "Name";
										};
										kind = "Field";
										directives = {};
									}};
								};
								arguments = {};
								name = {
									value = "eventTime";
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
											value = "category";
											kind = "Name";
										};
										kind = "Field";
										directives = {};
									}, {
										arguments = {};
										name = {
											value = "rank";
											kind = "Name";
										};
										kind = "Field";
										directives = {};
									}};
								};
								arguments = {};
								name = {
									value = "eventCategories";
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
							}, {
								selectionSet = {
									kind = "SelectionSet";
									selections = {{
										arguments = {};
										name = {
											value = "going";
											kind = "Name";
										};
										kind = "Field";
										directives = {};
									}};
								};
								arguments = {};
								name = {
									value = "rsvpCounters";
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
											value = "playing";
											kind = "Name";
										};
										kind = "Field";
										directives = {};
									}};
								};
								arguments = {};
								name = {
									value = "experienceDetails";
									kind = "Name";
								};
								kind = "Field";
								directives = {};
							}};
						};
						arguments = {};
						name = {
							value = "virtualEvents";
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
							value = "universeId";
							kind = "Name";
						};
					};
					kind = "Argument";
					name = {
						value = "universeId";
						kind = "Name";
					};
				}, {
					value = {
						kind = "Variable";
						name = {
							value = "options";
							kind = "Name";
						};
					};
					kind = "Argument";
					name = {
						value = "options";
						kind = "Name";
					};
				}};
				name = {
					value = "virtualEventsByUniverseId";
					kind = "Name";
				};
				kind = "Field";
				directives = {};
			}};
		};
		directives = {};
		name = {
			value = "VirtualEventsForExperience";
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
					value = "universeId";
					kind = "Name";
				};
			};
		}, {
			type = {
				kind = "NamedType";
				name = {
					value = "VirtualEventsByUniverseIdOptions";
					kind = "Name";
				};
			};
			directives = {};
			kind = "VariableDefinition";
			variable = {
				kind = "Variable";
				name = {
					value = "options";
					kind = "Name";
				};
			};
		}};
	}};
	kind = "Document";
}