give @s minecraft:carrot_on_a_stick[\
  custom_model_data={strings:["laser"]}, item_name='{"text":"laser rifle"}',\
  attribute_modifiers={\
    modifiers:[{ \
      type:"movement_speed", \
      id:"firearm:reload_slow", \
      amount:-0.03, \
      operation:"add_value", \
      slot:"offhand"}],\
    show_in_tooltip:false}, \
  custom_data={private:1b,gun:1b,scoped:1b,aimed:0,key:"laser",mode:"default"}]