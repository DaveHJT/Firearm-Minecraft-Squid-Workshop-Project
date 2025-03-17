#compile argument
data modify storage firearm:storage arg.slot set from entity @s SelectedItemSlot
data modify storage firearm:storage arg.key set from entity @s SelectedItem.components."minecraft:custom_data".key
$data modify storage firearm:storage arg.toggle set value $(toggle)

#toggle
function gun:classes/gun/aim/with_arg with storage firearm:storage arg