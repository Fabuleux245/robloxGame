-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:50:16
-- Luau version 6, Types version 3
-- Time taken: 0.000319 seconds

return {
	kitchenSinkQuery = "\nquery queryName($foo: ComplexType, $site: Site = MOBILE) @onQuery {\n  whoever123is: node(id: [123, 456]) {\n    id\n    ... on User @onInlineFragment {\n      field2 {\n        id\n        alias: field1(first: 10, after: $foo) @include(if: $foo) {\n          id\n          ...frag @onFragmentSpread\n        }\n      }\n    }\n    ... @skip(unless: $foo) {\n      id\n    }\n    ... {\n      id\n    }\n  }\n}\n\nmutation likeStory @onMutation {\n  like(story: 123) @onField {\n    story {\n      id @onField\n    }\n  }\n}\n\nsubscription StoryLikeSubscription($input: StoryLikeSubscribeInput)\n  @onSubscription {\n  storyLikeSubscribe(input: $input) {\n    story {\n      likers {\n        count\n      }\n      likeSentence {\n        text\n      }\n    }\n  }\n}\n\nfragment frag on Friend @onFragmentDefinition {\n  foo(\n    size: $size\n    bar: $b\n    obj: {\n      key: \"value\"\n      block: \"\"\"\n      block string uses \\\"\"\"\n      \"\"\"\n    }\n  )\n}\n\n{\n  unnamed(truthy: true, falsy: false, nullish: null)\n  query\n}\n\nquery {\n  __typename\n}\n";
}