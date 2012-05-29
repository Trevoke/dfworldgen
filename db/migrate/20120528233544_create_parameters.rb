class CreateParameters < ActiveRecord::Migration
  def change
    create_table :parameters do |t|
      t.string :title,                        null: false
      t.string :custom_name,                  null: true
      t.integer :width,                       null: false
      t.integer :height,                      null: false
      t.string :seed,                         null: false
      t.string :history_seed,                 null: true
      t.string :name_seed,                    null: true
      t.string :creature_seed,                null: true
      t.integer :embark_points,               null: false
      t.integer :end_year,                    null: false
      t.integer :total_civ_population,        null: false
      t.integer :site_cap,                    null: false
      t.integer :beast_end_year,              null: false
      t.integer :beast_end_year_percentage,   null: false
      t.boolean :cull_historical_figures,     null: false
      t.boolean :reveal_all_history,          null: false
      t.integer :elevation_min,               null: false # 0 <= x <= 400
      t.integer :elevation_max,               null: false # elevation_min <= x <= 400
      t.integer :elevation_x_variance,        null: false
      t.integer :elevation_y_variance,        null: false
      t.integer :rainfall_min,                null: false # 0 <= x <= 100
      t.integer :rainfall_max,                null: false # rainfall_min <= x <= 100
      t.integer :rainfall_x_variance,         null: false
      t.integer :rainfall_y_variance,         null: false
      t.integer :temperature_min,             null: false # -1000 <= x <= 1000
      t.integer :temperature_max,             null: false # temperature_min <= x <= 1000
      t.integer :temperature_x_variance,      null: false
      t.integer :temperature_y_variance,      null: false
      t.integer :drainage_min,                null: false # 0 <= x <= 100
      t.integer :drainage_max,                null: false # drainage_min <= x <= 100
      t.integer :drainage_x_variance,         null: false
      t.integer :drainage_y_variance,         null: false
      t.integer :volcanism_min,               null: false # 0 <= x <= 100
      t.integer :volcanism_max,               null: false # volcanism_min <= x <= 100
      t.integer :volcanism_x_variance,        null: false
      t.integer :volcanism_y_variance,        null: false
      t.integer :savagery_min,                null: false # 0 <= x <= 100
      t.integer :savagery_max,                null: false # savagery_min <= x <= 100
      t.integer :savagery_x_variance,         null: false
      t.integer :savagery_y_variance,         null: false
      t.integer :elevation_frequency_mesh,    null: false # valid values: 1,2,3,4,5,6
      t.integer :elevation_frequency_1,       null: false
      t.integer :elevation_frequency_2,       null: false
      t.integer :elevation_frequency_3,       null: false
      t.integer :elevation_frequency_4,       null: false
      t.integer :elevation_frequency_5,       null: false
      t.integer :rain_frequency_mesh,         null: false # valid values: 1,2,3,4,5,6
      t.integer :rain_frequency_1,            null: false
      t.integer :rain_frequency_2,            null: false
      t.integer :rain_frequency_3,            null: false
      t.integer :rain_frequency_4,            null: false
      t.integer :rain_frequency_5,            null: false
      t.integer :drainage_frequency_mesh,     null: false # valid values: 1,2,3,4,5,6
      t.integer :drainage_frequency_1,        null: false
      t.integer :drainage_frequency_2,        null: false
      t.integer :drainage_frequency_3,        null: false
      t.integer :drainage_frequency_4,        null: false
      t.integer :drainage_frequency_5,        null: false
      t.integer :temperature_frequency_mesh,  null: false # valid values: 1,2,3,4,5,6
      t.integer :temperature_frequency_1,     null: false
      t.integer :temperature_frequency_2,     null: false
      t.integer :temperature_frequency_3,     null: false
      t.integer :temperature_frequency_4,     null: false
      t.integer :temperature_frequency_5,     null: false
      t.integer :savagery_frequency_mesh,     null: false # valid values: 1,2,3,4,5,6
      t.integer :savagery_frequency_1,        null: false
      t.integer :savagery_frequency_2,        null: false
      t.integer :savagery_frequency_3,        null: false
      t.integer :savagery_frequency_4,        null: false
      t.integer :savagery_frequency_5,        null: false
      t.integer :volcanism_frequency_mesh,    null: false # valid values: 1,2,3,4,5,6
      t.integer :volcanism_frequency_1,       null: false
      t.integer :volcanism_frequency_2,       null: false
      t.integer :volcanism_frequency_3,       null: false
      t.integer :volcanism_frequency_4,       null: false
      t.integer :volcanism_frequency_5,       null: false
      t.integer :peak_number_min,             null: false # 0 <= x
      t.integer :partial_ocean_edge_min,      null: false # 0 <= x <= 4
      t.integer :complete_ocean_edge_min,     null: false # 0 <= x <= 4
      t.integer :volcano_min,                 null: false
      t.integer :mineral_scarcity,            null: false # 100 <= x <= 100_000
      t.integer :megabeast_cap,               null: false
      t.integer :semimegabeast_cap,           null: false
      t.integer :titan_number,                null: false
      t.integer :titan_attack_trigger_population,       null: false # 0 <= x
      t.integer :titan_attack_trigger_exported_wealth,  null: false # 0 <= x
      t.integer :titan_attack_trigger_created_wealth,   null: false # 0 <= x
      t.integer :demon_number,                null: false # 0 <= x <= 1000
      t.integer :night_creature_number,       null: false # 0 <= x <= 1000
      t.integer :good_sq_count_small,         null: false # 0 <= x
      t.integer :good_sq_count_medium,        null: false # 0 <= x
      t.integer :good_sq_count_large,         null: false # 0 <= x
      t.integer :evil_sq_count_small,         null: false # 0 <= x
      t.integer :evil_sq_count_medium,        null: false # 0 <= x
      t.integer :evil_sq_count_large,         null: false # 0 <= x
      t.integer :reg_count_swamp_init_square,     null: false
      t.integer :reg_count_swamp_init_region,     null: false
      t.integer :reg_count_swamp_final_region,    null: false
      t.integer :reg_count_desert_init_square,    null: false
      t.integer :reg_count_desert_init_region,    null: false
      t.integer :reg_count_desert_final_region,   null: false
      t.integer :reg_count_forest_init_square,    null: false
      t.integer :reg_count_forest_init_region,    null: false
      t.integer :reg_count_forest_final_region,   null: false
      t.integer :reg_count_mountains_init_square, null: false
      t.integer :reg_count_mountains_init_region, null: false
      t.integer :reg_count_mountains_final_region,null: false
      t.integer :reg_count_ocean_init_square,     null: false
      t.integer :reg_count_ocean_init_region,     null: false
      t.integer :reg_count_ocean_final_region,    null: false
      t.integer :reg_count_glacier_init_square,   null: false
      t.integer :reg_count_glacier_init_region,   null: false
      t.integer :reg_count_glacier_final_region,  null: false
      t.integer :reg_count_tundra_init_square,    null: false
      t.integer :reg_count_tundra_init_region,    null: false
      t.integer :reg_count_tundra_final_region,   null: false
      t.integer :reg_count_grassland_init_square, null: false
      t.integer :reg_count_grassland_init_region, null: false
      t.integer :reg_count_grassland_final_region,null: false
      t.integer :reg_count_hills_init_square,     null: false
      t.integer :reg_count_hills_init_region,     null: false
      t.integer :reg_count_hills_final_region,    null: false
      t.integer :erosion_cycle_count,         null: false # 0 <= x <= 1000
      t.integer :river_mins_pre_erosion,      null: false # 0 <= x <= 800
      t.integer :river_mins_post_erosion,     null: false # 0 <= x <= 800
      t.boolean :periodically_erode_extremes, null: false
      t.boolean :orographic_precipitation,    null: false
      t.integer :subregion_max,               null: false # 1-5000
      t.integer :cavern_layer_count,          null: false # 0,1,2,3
      t.integer :cavern_layer_openness_min,   null: false # 0-100
      t.integer :cavern_layer_openness_max,   null: false # min-100
      t.integer :cavern_layer_passage_density_min, null: false # 0-100
      t.integer :cavern_layer_passage_density_max, null: false # min-100
      t.integer :cavern_layer_water_min,      null: false # 0-100
      t.integer :cavern_layer_water_max,      null: false # min-100
      t.boolean :have_bottom_layer,           null: false
      t.boolean :have_bottom_layer_2,         null: false
      t.integer :levels_above_ground,         null: false
      t.integer :levels_above_layer_1,        null: false
      t.integer :levels_above_layer_2,        null: false
      t.integer :levels_above_layer_3,        null: false
      t.integer :levels_above_layer_4,        null: false
      t.integer :levels_above_layer_5,        null: false
      t.integer :levels_at_bottom,            null: false
      t.integer :cave_min_size,               null: false # 1-500
      t.integer :cave_max_size,               null: false # min-500
      t.integer :mountain_cave_min,           null: false # 1-800
      t.integer :non_mountain_cave_min,       null: false # 1-800
      t.boolean :all_caves_visible,           null: false
      t.integer :show_embark_tunnel,          null: false #0,1,2
      t.integer :total_civ_number,            null: false #0-300
      t.boolean :playable_civilization_required, null: false
      t.integer :elevation_ranges_low_sq,     null: false
      t.integer :elevation_ranges_mid_sq,     null: false
      t.integer :elevation_ranges_high_sq,    null: false
      t.integer :rain_ranges_low_sq,          null: false
      t.integer :rain_ranges_mid_sq,          null: false
      t.integer :rain_ranges_high_sq,         null: false
      t.integer :drainage_ranges_low_sq,      null: false
      t.integer :drainage_ranges_mid_sq,      null: false
      t.integer :drainage_ranges_high_sq,     null: false
      t.integer :savagery_ranges_low_sq,      null: false
      t.integer :savagery_ranges_mid_sq,      null: false
      t.integer :savagery_ranges_high_sq,     null: false
      t.integer :volcanism_ranges_low_sq,     null: false
      t.integer :volcanism_ranges_mid_sq,     null: false
      t.integer :volcanism_ranges_high_sq,    null: false

    end

    add_column :parameter_sets, :parameter_id, :integer
  end
end
