# RoadCraft Vehicle Editor v2 - Property System

## Overview
The RoadCraft Vehicle Editor v2 now uses a flexible property configuration system that allows you to define which vehicle properties to display and edit without modifying the source code.

## How It Works

### 1. Vehicle Selection
When a user clicks on a vehicle in the list, the program:
1. Loads and parses the vehicle's .cls file
2. Reads the property configuration from `vehicle_properties.json`
3. Creates tabs for each property category that has visible properties
4. Generates appropriate form controls for each property type

### 2. Property Configuration File
The `vehicle_properties.json` file defines which properties are editable. Each property has:

- **Path**: The path to the property in the .cls file (e.g., "properties.prop_truck_view.truckName")
- **MultiPath**: Optional array of additional paths to update along with the main Path
- **Category**: The tab category where the property appears (e.g., "General", "Performance", "Engine")
- **DisplayName**: The user-friendly name shown in the UI
- **Description**: Optional tooltip text
- **ShowIf**: Optional filter - only show if vehicle name contains this string
- **Options**: Optional array of dropdown options for string properties
- **MinValue/MaxValue/Step**: Optional constraints for numeric properties

**Note:** The property type is automatically determined from the actual data value in the CLS file using the ClsParser.Library. No need to specify a Type field.

### 3. MultiPath Support
The **MultiPath** feature allows you to update multiple property paths simultaneously when editing a single property in the UI. This is useful when:
- Multiple properties need to stay synchronized (e.g., torque and maxTorque)
- You want to update both the actual value and a display value
- Properties are duplicated in different parts of the vehicle data structure

Example:{
  "Path": "properties.prop_truck_rb.engine.params.torque",
  "MultiPath": [
    "properties.prop_truck_rb.engine.params.maxTorque",
    "properties.prop_truck_rb.engine.display.torque"
  ],
  "Category": "Engine",
  "DisplayName": "Torque",
  "Description": "The torque of the truck (also updates max torque and display torque)"
}
When the user changes the torque value, all three paths will be updated:
- `properties.prop_truck_rb.engine.params.torque` (main path)
- `properties.prop_truck_rb.engine.params.maxTorque` (from MultiPath)
- `properties.prop_truck_rb.engine.display.torque` (from MultiPath)

**Important:** If any path in the MultiPath array doesn't exist in the vehicle data, the system will show a warning but still update the paths that do exist.

### 4. Property Types and Controls

The system automatically detects the data type from the actual value and creates appropriate controls:

| Detected Type | Control Type | Description |
|---------------|--------------|-------------|
| String | TextBox | Simple text input |
| String (with Options) | ComboBox | Dropdown with predefined options |
| Integer/Long | NumericUpDown | Integer input with constraints |
| Double/Float/Decimal | NumericUpDown | Decimal input with constraints |
| Boolean | CheckBox | True/false toggle |

### 5. Dynamic Tab Creation
The tab control creates one tab per category that contains visible properties for the selected vehicle. **Only properties with paths that actually exist in the vehicle's CLS file will be displayed.** If a category has no properties with valid paths, that category will not appear as a tab. If no properties are found, a "No Properties" tab is shown with an error message.

### 6. Property Path Validation
The system now validates that property paths exist in the actual vehicle data before displaying them:
- Properties with non-existent paths are automatically filtered out
- Categories with no valid properties are not shown as tabs
- This ensures the UI only shows properties that can actually be edited

### 7. Table Layout Support (NEW)

The system now supports displaying properties in a table layout, which is perfect for array-expanded properties that need to be displayed side by side.

#### Table Layout Properties

- **TableGroup**: Groups properties together in a table. Properties with the same TableGroup will be displayed side by side.

#### Table Layout Example{
  "Path": "properties.prop_truck_rb.gearbox.params.gears[*].angularVelocity",
  "Category": "Gears",
  "DisplayName": "Gear {i+1} Angular Velocity",
  "Description": "Angular velocity of gear {i+1}",
  "TableGroup": "Gears"
},
{
  "Path": "properties.prop_truck_rb.gearbox.params.gears[*].gearRatio",
  "Category": "Gears",
  "DisplayName": "Gear {i+1} Gear Ratio",
  "Description": "Gear ratio of gear {i+1}",
  "TableGroup": "Gears"
}
This will create a table where each array object (gear) has its own row, and each property type has its own column:

|                     | Angular Velocity | Gear Ratio |
|---------------------|------------------|------------|
| **Gear 1**          | [control]        | [control]  |
| **Gear 2**          | [control]        | [control]  |
| **Gear 3**          | [control]        | [control]  |
| **Gear 4**          | [control]        | [control]  |

#### Table Layout Features

- **Object-Based Rows**: Each array object (gear, wheel, etc.) gets its own row
- **Property-Based Columns**: Each property type (angularVelocity, gearRatio) gets its own column
- **Content-Based Sizing**: Table automatically sizes to fit its content without stretching unnecessarily
- **Optimal Column Widths**: Columns are sized to fit the longest property name plus padding
- **No Off-Screen Issues**: Tables stay within reasonable bounds and don't extend off-screen
- **Grouped Display**: Properties with the same TableGroup are displayed together
- **Works with Array Expansion**: Perfect for displaying expanded array properties
- **Mixed Content**: Can mix different property types in the same table
- **Tooltips**: Descriptions are still available as tooltips

#### When to Use Table Layout

- **Array Properties**: When you have multiple properties from the same array (like gears, wheels, etc.)
- **Related Properties**: When you want to display related properties side by side
- **Space Efficiency**: When you need to save horizontal space and have many similar properties
- **Visual Organization**: When you want to group properties visually by object

## Example Property Configuration
{
  "Path": "properties.prop_truck_view.truckName",
  "Category": "General",
  "DisplayName": "Truck Name",
  "Description": "The display name of the truck"
}
**Note:** The property will only appear in the UI if the path "properties.prop_truck_view.truckName" actually exists in the vehicle's CLS file. The data type is automatically detected from the actual value.

## Adding New Properties

1. Open `vehicle_properties.json`
2. Add a new property object with the required fields
3. **Important:** Ensure the "Path" field points to a real property in the CLS file structure
4. **Optional:** Add "MultiPath" array if you want to update multiple paths simultaneously
5. **Optional:** Use array filtering with `[*]` wildcard, `Filter`, and `TargetProperty` for array elements
6. **No need to specify Type** - it's automatically detected from the actual data value
7. The UI will automatically include the new property next time a vehicle is selected (if the path exists)

## Array Filtering (NEW)

The system now supports native array filtering to access specific objects within arrays based on their properties, and array expansion to create multiple properties for all array elements.

### Array Filtering (Specific Element)

Use array filtering to access a specific element in an array based on a filter condition.

#### Basic Array Filtering Syntax{
  "Path": "properties.prop_truck_constraint_view.controllableConstraints[*]",
  "Filter": "{constraintName = dump}",
  "TargetProperty": "angularSpeed",
  "Category": "Dump",
  "DisplayName": "Dump Tilt Speed",
  "Description": "Speed of dump tilt movement"
}
#### Array Filtering Components

- **Path with `[*]` wildcard**: Use `[*]` to indicate you want to search all elements in the array
- **Filter**: A filter expression in the format `{propertyName = value}` to find the specific array element
- **TargetProperty**: The specific property within the matched array element to edit

#### Filter Expression Format

The filter expression uses the format: `{propertyName = value}`

Examples:
- `{constraintName = dump}` - Find object where `constraintName` equals "dump"
- `{type = engine}` - Find object where `type` equals "engine"
- `{id = 1}` - Find object where `id` equals 1

### Array Expansion (All Elements)

Use array expansion to create multiple properties, one for each element in the array.

#### Basic Array Expansion Syntax{
  "Path": "properties.prop_truck_rb.gearbox.params.gears[*].angularVelocity",
  "Category": "Gears",
  "DisplayName": "Gear {i+1} Angular Velocity",
  "Description": "Angular velocity of gear {i+1}"
}
#### Array Expansion Components

- **Path with `[*]` wildcard**: Use `[*]` to indicate you want to create properties for all elements
- **No Filter**: Omit the `Filter` property to enable array expansion
- **DisplayName wildcards**: Use `{i}` for 0-based index or `{i+1}` for 1-based index
- **Description wildcards**: Use the same wildcards in descriptions

#### DisplayName and Description Wildcards

- **`{i}`**: Replaced with 0-based array index (0, 1, 2, ...)
- **`{i+1}`**: Replaced with 1-based array index (1, 2, 3, ...)

#### Array Expansion Examples

**Example 1: Gear Angular Velocities**{
  "Path": "properties.prop_truck_rb.gearbox.params.gears[*].angularVelocity",
  "Category": "Gears",
  "DisplayName": "Gear {i+1} Angular Velocity",
  "Description": "Angular velocity of gear {i+1}"
}
This will create:
- "Gear 1 Angular Velocity" for `gears[0].angularVelocity`
- "Gear 2 Angular Velocity" for `gears[1].angularVelocity`
- "Gear 3 Angular Velocity" for `gears[2].angularVelocity`
- etc.

**Example 2: Wheel Properties**{
  "Path": "properties.prop_truck_rb.wheels[*].maxSteerAngle",
  "Category": "Wheels",
  "DisplayName": "Wheel {i+1} Max Steer Angle",
  "Description": "Maximum steering angle for wheel {i+1}"
}
### Array Filtering vs Array Expansion

| Feature | Array Filtering | Array Expansion |
|---------|----------------|-----------------|
| **Purpose** | Access one specific element | Access all elements |
| **Filter** | Required | Not used |
| **TargetProperty** | Optional | Not used |
| **Result** | Single property | Multiple properties |
| **DisplayName** | Static | Dynamic with wildcards |
| **Use Case** | Find specific named element | Edit all array elements |

### Array Filtering Examples

**Example 1: Dump Tilt Speed**{
  "Path": "properties.prop_truck_constraint_view.controllableConstraints[*]",
  "Filter": "{constraintName = dump}",
  "TargetProperty": "angularSpeed",
  "Category": "Dump",
  "DisplayName": "Dump Tilt Speed",
  "Description": "Speed of dump tilt movement"
}
This will:
1. Look at the `controllableConstraints` array
2. Find the object where `constraintName` equals "dump"
3. Edit the `angularSpeed` property of that object

**Example 2: Tower Rotation Speed**{
  "Path": "properties.prop_truck_constraint_view.controllableConstraints[*]",
  "Filter": "{constraintName = tower}",
  "TargetProperty": "angularSpeed",
  "Category": "Crane",
  "DisplayName": "Tower Rotation Speed",
  "Description": "Speed of tower rotation"
}