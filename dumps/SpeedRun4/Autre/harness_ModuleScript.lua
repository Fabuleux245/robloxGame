-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:51:17
-- Luau version 6, Types version 3
-- Time taken: 0.002336 seconds

local Parent_2 = script.Parent.Parent
local Parent = Parent_2.Parent
local Array_upvr = require(Parent.Parent.LuauPolyfill).Array
local parse_upvr = require(Parent.language.parser).parse
local validate = require(Parent_2.validate)
local any_buildSchema_result1_upvr = require(Parent.utilities.buildASTSchema).buildSchema("  interface Being {\n    name(surname: Boolean): String\n  }\n\n  interface Mammal {\n    mother: Mammal\n    father: Mammal\n  }\n\n  interface Pet implements Being {\n    name(surname: Boolean): String\n  }\n\n  interface Canine implements Mammal & Being {\n    name(surname: Boolean): String\n    mother: Canine\n    father: Canine\n  }\n\n  enum DogCommand {\n    SIT\n    HEEL\n    DOWN\n  }\n\n  type Dog implements Being & Pet & Mammal & Canine {\n    name(surname: Boolean): String\n    nickname: String\n    barkVolume: Int\n    barks: Boolean\n    doesKnowCommand(dogCommand: DogCommand): Boolean\n    isHouseTrained(atOtherHomes: Boolean = true): Boolean\n    isAtLocation(x: Int, y: Int): Boolean\n    mother: Dog\n    father: Dog\n  }\n\n  type Cat implements Being & Pet {\n    name(surname: Boolean): String\n    nickname: String\n    meows: Boolean\n    meowsVolume: Int\n    furColor: FurColor\n  }\n\n  union CatOrDog = Cat | Dog\n\n  interface Intelligent {\n    iq: Int\n  }\n\n  type Human implements Being & Intelligent {\n    name(surname: Boolean): String\n    pets: [Pet]\n    relatives: [Human]\n    iq: Int\n  }\n\n  type Alien implements Being & Intelligent {\n    name(surname: Boolean): String\n    numEyes: Int\n    iq: Int\n  }\n\n  union DogOrHuman = Dog | Human\n\n  union HumanOrAlien = Human | Alien\n\n  enum FurColor {\n    BROWN\n    BLACK\n    TAN\n    SPOTTED\n    NO_FUR\n    UNKNOWN\n  }\n\n  input ComplexInput {\n    requiredField: Boolean!\n    nonNullField: Boolean! = false\n    intField: Int\n    stringField: String\n    booleanField: Boolean\n    stringListField: [String]\n  }\n\n  type ComplicatedArgs {\n    # TODO List\n    # TODO Coercion\n    # TODO NotNulls\n    intArgField(intArg: Int): String\n    nonNullIntArgField(nonNullIntArg: Int!): String\n    stringArgField(stringArg: String): String\n    booleanArgField(booleanArg: Boolean): String\n    enumArgField(enumArg: FurColor): String\n    floatArgField(floatArg: Float): String\n    idArgField(idArg: ID): String\n    stringListArgField(stringListArg: [String]): String\n    stringListNonNullArgField(stringListNonNullArg: [String!]): String\n    complexArgField(complexArg: ComplexInput): String\n    multipleReqs(req1: Int!, req2: Int!): String\n    nonNullFieldWithDefault(arg: Int! = 0): String\n    multipleOpts(opt1: Int = 0, opt2: Int = 0): String\n    multipleOptAndReq(req1: Int!, req2: Int!, opt1: Int = 0, opt2: Int = 0): String\n  }\n\n  type QueryRoot {\n    human(id: ID): Human\n    alien: Alien\n    dog: Dog\n    cat: Cat\n    pet: Pet\n    catOrDog: CatOrDog\n    dogOrHuman: DogOrHuman\n    humanOrAlien: HumanOrAlien\n    complicatedArgs: ComplicatedArgs\n  }\n\n  schema {\n    query: QueryRoot\n  }\n\n  directive @onQuery on QUERY\n  directive @onMutation on MUTATION\n  directive @onSubscription on SUBSCRIPTION\n  directive @onField on FIELD\n  directive @onFragmentDefinition on FRAGMENT_DEFINITION\n  directive @onFragmentSpread on FRAGMENT_SPREAD\n  directive @onInlineFragment on INLINE_FRAGMENT\n  directive @onVariableDefinition on VARIABLE_DEFINITION\n")
local validate_2_upvr = validate.validate
local function expectValidationErrorsWithSchema_upvr(arg1, arg2, arg3, arg4) -- Line 161, Named "expectValidationErrorsWithSchema"
	--[[ Upvalues[3]:
		[1]: parse_upvr (readonly)
		[2]: validate_2_upvr (readonly)
		[3]: Array_upvr (readonly)
	]]
	local module = {}
	module[1] = arg3
	return arg1(Array_upvr.map(validate_2_upvr(arg2, parse_upvr(arg4), module), function(arg1_2) -- Line 171
		return {
			message = arg1_2.message;
			locations = arg1_2.locations;
		}
	end))
end
local validateSDL_upvr = validate.validateSDL
return {
	testSchema = any_buildSchema_result1_upvr;
	expectValidationErrorsWithSchema = expectValidationErrorsWithSchema_upvr;
	expectValidationErrors = function(arg1, arg2, arg3) -- Line 180, Named "expectValidationErrors"
		--[[ Upvalues[2]:
			[1]: expectValidationErrorsWithSchema_upvr (readonly)
			[2]: any_buildSchema_result1_upvr (readonly)
		]]
		return expectValidationErrorsWithSchema_upvr(arg1, any_buildSchema_result1_upvr, arg2, arg3)
	end;
	expectSDLValidationErrors = function(arg1, arg2, arg3, arg4) -- Line 184, Named "expectSDLValidationErrors"
		--[[ Upvalues[3]:
			[1]: parse_upvr (readonly)
			[2]: validateSDL_upvr (readonly)
			[3]: Array_upvr (readonly)
		]]
		local module_2 = {}
		module_2[1] = arg3
		return arg1(Array_upvr.map(validateSDL_upvr(parse_upvr(arg4), arg2, module_2), function(arg1_3) -- Line 189
			return {
				message = arg1_3.message;
				locations = arg1_3.locations;
			}
		end))
	end;
}