-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:51:37
-- Luau version 6, Types version 3
-- Time taken: 0.001293 seconds

local rules = script.Parent.rules
local KnownTypeNamesRule = require(rules.KnownTypeNamesRule).KnownTypeNamesRule
local KnownDirectivesRule = require(rules.KnownDirectivesRule).KnownDirectivesRule
local UniqueDirectivesPerLocationRule = require(rules.UniqueDirectivesPerLocationRule).UniqueDirectivesPerLocationRule
local KnownArgumentNamesRule = require(rules.KnownArgumentNamesRule)
local UniqueArgumentNamesRule = require(rules.UniqueArgumentNamesRule).UniqueArgumentNamesRule
local ProvidedRequiredArgumentsRule = require(rules.ProvidedRequiredArgumentsRule)
local UniqueInputFieldNamesRule = require(rules.UniqueInputFieldNamesRule).UniqueInputFieldNamesRule
return {
	specifiedRules = {require(rules.ExecutableDefinitionsRule).ExecutableDefinitionsRule, require(rules.UniqueOperationNamesRule).UniqueOperationNamesRule, require(rules.LoneAnonymousOperationRule).LoneAnonymousOperationRule, require(rules.SingleFieldSubscriptionsRule).SingleFieldSubscriptionsRule, KnownTypeNamesRule, require(rules.FragmentsOnCompositeTypesRule).FragmentsOnCompositeTypesRule, require(rules.VariablesAreInputTypesRule).VariablesAreInputTypesRule, require(rules.ScalarLeafsRule).ScalarLeafsRule, require(rules.FieldsOnCorrectTypeRule).FieldsOnCorrectTypeRule, require(rules.UniqueFragmentNamesRule).UniqueFragmentNamesRule, require(rules.KnownFragmentNamesRule).KnownFragmentNamesRule, require(rules.NoUnusedFragmentsRule).NoUnusedFragmentsRule, require(rules.PossibleFragmentSpreadsRule).PossibleFragmentSpreadsRule, require(rules.NoFragmentCyclesRule).NoFragmentCyclesRule, require(rules.UniqueVariableNamesRule).UniqueVariableNamesRule, require(rules.NoUndefinedVariablesRule).NoUndefinedVariablesRule, require(rules.NoUnusedVariablesRule).NoUnusedVariablesRule, KnownDirectivesRule, UniqueDirectivesPerLocationRule, KnownArgumentNamesRule.KnownArgumentNamesRule, UniqueArgumentNamesRule, require(rules.ValuesOfCorrectTypeRule).ValuesOfCorrectTypeRule, ProvidedRequiredArgumentsRule.ProvidedRequiredArgumentsRule, require(rules.VariablesInAllowedPositionRule).VariablesInAllowedPositionRule, require(rules.OverlappingFieldsCanBeMergedRule).OverlappingFieldsCanBeMergedRule, UniqueInputFieldNamesRule};
	specifiedSDLRules = {require(rules.LoneSchemaDefinitionRule).LoneSchemaDefinitionRule, require(rules.UniqueOperationTypesRule).UniqueOperationTypesRule, require(rules.UniqueTypeNamesRule).UniqueTypeNamesRule, require(rules.UniqueEnumValueNamesRule).UniqueEnumValueNamesRule, require(rules.UniqueFieldDefinitionNamesRule).UniqueFieldDefinitionNamesRule, require(rules.UniqueDirectiveNamesRule).UniqueDirectiveNamesRule, KnownTypeNamesRule, KnownDirectivesRule, UniqueDirectivesPerLocationRule, require(rules.PossibleTypeExtensionsRule).PossibleTypeExtensionsRule, KnownArgumentNamesRule.KnownArgumentNamesOnDirectivesRule, UniqueArgumentNamesRule, UniqueInputFieldNamesRule, ProvidedRequiredArgumentsRule.ProvidedRequiredArgumentsOnDirectivesRule};
}