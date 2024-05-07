// 
// Allows registry fixers (not schemas) to convert all IDs
// whether or not a valid entry exists
// By default, registry fixers will only run if the entry with the ID is missing.
// WARNING: THIS CAN POTENTIALLY CAUSE UNWANTED EFFECTS TO YOUR WORLDS, USE WITH CAUTION
// 
overrideRealEntries: false
// 
// The data fixer's main data version. Increment this when you add a new schema.
// Any schemas with a data version higher than this will be ignored.
// 
dataVersion: 0
// 
// The list of schemas to use for data fixing.
// Each schema has a data version and a list of data fix entries.
// Each data fix entry has a type and a list of fixers.
// The four types are "biome", "block", "entity", and "item".
// Although, it is recommended to use a registry fixer for items instead of a schema fixer.
// Each fixer contains an old id and a new id, and will replace all instances of the old id with the new id.
// However, if the old id is still found in the registry, it will not be replaced.
// 
schemas: [
  {
    version: 1
    data_fixes: [
      {
        type: 'biome'
        fixers: [
          {
            old_id: 'examplemod:example_biome'
            new_id: 'minecraft:forest'
          }
        ]
      }
      {
        type: 'block'
        fixers: [
          {
            old_id: 'examplemod:dark_stone'
            new_id: 'minecraft:deepslate'
          }
        ]
      }
      {
        type: 'entity'
        fixers: [
          {
            old_id: 'examplemod:example_entity'
            new_id: 'minecraft:cow'
          }
        ]
      }
      {
        type: 'item'
        fixers: [
          {
            old_id: 'examplemod:example_item'
            new_id: 'minecraft:stone'
          }
        ]
      }
    ]
  }
  {
    version: 2
    data_fixes: [
      {
        type: 'block'
        fixers: [
          {
            old_id: 'examplemod:old_block'
            new_id: 'minecraft:grass_block'
          }
        ]
      }
    ]
  }
]
// 
// The list of registry fixers to use for data fixing.
// Each registry fixer contains a registry key and a list of fixers.
// Each fixer contains an old id and a new id, and will replace all instances of the old id with the new id.
// However, if the old id is still found in the registry, it will not be replaced (unless the overrideRealEntries option is set to true).
// 
registryFixers: [
  {
    registry_key: 'minecraft:block'
    fixers: [
      {
        old_id: 'examplemod:example_block'
        new_id: 'minecraft:stone'
      }
    ]
  }
  {
    registry_key: 'minecraft:entity_type'
    fixers: [
      {
        old_id: 'examplemod:example_entity'
        new_id: 'minecraft:cow'
      }
    ]
  }
  {
    registry_key: 'minecraft:item'
    fixers: [
      {
        old_id: 'examplemod:example_item'
        new_id: 'minecraft:stone'
      }
    ]
  }
]