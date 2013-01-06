# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130106171057) do

  create_table "embarks", :force => true do |t|
    t.string   "description"
    t.string   "screenshot"
    t.integer  "parameter_set_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "parameter_sets", :force => true do |t|
    t.string  "name"
    t.text    "description"
    t.text    "brackets"
    t.integer "user_id"
    t.string  "image"
    t.integer "parameter_id"
  end

  create_table "parameters", :force => true do |t|
    t.string  "title",                                :null => false
    t.string  "custom_name"
    t.integer "width",                                :null => false
    t.integer "height",                               :null => false
    t.string  "seed",                                 :null => false
    t.string  "history_seed"
    t.string  "name_seed"
    t.string  "creature_seed"
    t.integer "embark_points",                        :null => false
    t.integer "end_year",                             :null => false
    t.integer "total_civ_population",                 :null => false
    t.integer "site_cap",                             :null => false
    t.integer "beast_end_year",                       :null => false
    t.integer "beast_end_year_percentage",            :null => false
    t.boolean "cull_historical_figures",              :null => false
    t.boolean "reveal_all_history",                   :null => false
    t.integer "elevation_min",                        :null => false
    t.integer "elevation_max",                        :null => false
    t.integer "elevation_x_variance",                 :null => false
    t.integer "elevation_y_variance",                 :null => false
    t.integer "rainfall_min",                         :null => false
    t.integer "rainfall_max",                         :null => false
    t.integer "rainfall_x_variance",                  :null => false
    t.integer "rainfall_y_variance",                  :null => false
    t.integer "temperature_min",                      :null => false
    t.integer "temperature_max",                      :null => false
    t.integer "temperature_x_variance",               :null => false
    t.integer "temperature_y_variance",               :null => false
    t.integer "drainage_min",                         :null => false
    t.integer "drainage_max",                         :null => false
    t.integer "drainage_x_variance",                  :null => false
    t.integer "drainage_y_variance",                  :null => false
    t.integer "volcanism_min",                        :null => false
    t.integer "volcanism_max",                        :null => false
    t.integer "volcanism_x_variance",                 :null => false
    t.integer "volcanism_y_variance",                 :null => false
    t.integer "savagery_min",                         :null => false
    t.integer "savagery_max",                         :null => false
    t.integer "savagery_x_variance",                  :null => false
    t.integer "savagery_y_variance",                  :null => false
    t.integer "elevation_frequency_mesh",             :null => false
    t.integer "elevation_frequency_1",                :null => false
    t.integer "elevation_frequency_2",                :null => false
    t.integer "elevation_frequency_3",                :null => false
    t.integer "elevation_frequency_4",                :null => false
    t.integer "elevation_frequency_5",                :null => false
    t.integer "rain_frequency_mesh",                  :null => false
    t.integer "rain_frequency_1",                     :null => false
    t.integer "rain_frequency_2",                     :null => false
    t.integer "rain_frequency_3",                     :null => false
    t.integer "rain_frequency_4",                     :null => false
    t.integer "rain_frequency_5",                     :null => false
    t.integer "drainage_frequency_mesh",              :null => false
    t.integer "drainage_frequency_1",                 :null => false
    t.integer "drainage_frequency_2",                 :null => false
    t.integer "drainage_frequency_3",                 :null => false
    t.integer "drainage_frequency_4",                 :null => false
    t.integer "drainage_frequency_5",                 :null => false
    t.integer "temperature_frequency_mesh",           :null => false
    t.integer "temperature_frequency_1",              :null => false
    t.integer "temperature_frequency_2",              :null => false
    t.integer "temperature_frequency_3",              :null => false
    t.integer "temperature_frequency_4",              :null => false
    t.integer "temperature_frequency_5",              :null => false
    t.integer "savagery_frequency_mesh",              :null => false
    t.integer "savagery_frequency_1",                 :null => false
    t.integer "savagery_frequency_2",                 :null => false
    t.integer "savagery_frequency_3",                 :null => false
    t.integer "savagery_frequency_4",                 :null => false
    t.integer "savagery_frequency_5",                 :null => false
    t.integer "volcanism_frequency_mesh",             :null => false
    t.integer "volcanism_frequency_1",                :null => false
    t.integer "volcanism_frequency_2",                :null => false
    t.integer "volcanism_frequency_3",                :null => false
    t.integer "volcanism_frequency_4",                :null => false
    t.integer "volcanism_frequency_5",                :null => false
    t.integer "peak_number_min",                      :null => false
    t.integer "partial_ocean_edge_min",               :null => false
    t.integer "complete_ocean_edge_min",              :null => false
    t.integer "volcano_min",                          :null => false
    t.integer "mineral_scarcity",                     :null => false
    t.integer "megabeast_cap",                        :null => false
    t.integer "semimegabeast_cap",                    :null => false
    t.integer "titan_number",                         :null => false
    t.integer "titan_attack_trigger_population",      :null => false
    t.integer "titan_attack_trigger_exported_wealth", :null => false
    t.integer "titan_attack_trigger_created_wealth",  :null => false
    t.integer "demon_number",                         :null => false
    t.integer "night_creature_number",                :null => false
    t.integer "good_sq_count_small",                  :null => false
    t.integer "good_sq_count_medium",                 :null => false
    t.integer "good_sq_count_large",                  :null => false
    t.integer "evil_sq_count_small",                  :null => false
    t.integer "evil_sq_count_medium",                 :null => false
    t.integer "evil_sq_count_large",                  :null => false
    t.integer "reg_count_swamp_init_square",          :null => false
    t.integer "reg_count_swamp_init_region",          :null => false
    t.integer "reg_count_swamp_final_region",         :null => false
    t.integer "reg_count_desert_init_square",         :null => false
    t.integer "reg_count_desert_init_region",         :null => false
    t.integer "reg_count_desert_final_region",        :null => false
    t.integer "reg_count_forest_init_square",         :null => false
    t.integer "reg_count_forest_init_region",         :null => false
    t.integer "reg_count_forest_final_region",        :null => false
    t.integer "reg_count_mountains_init_square",      :null => false
    t.integer "reg_count_mountains_init_region",      :null => false
    t.integer "reg_count_mountains_final_region",     :null => false
    t.integer "reg_count_ocean_init_square",          :null => false
    t.integer "reg_count_ocean_init_region",          :null => false
    t.integer "reg_count_ocean_final_region",         :null => false
    t.integer "reg_count_glacier_init_square",        :null => false
    t.integer "reg_count_glacier_init_region",        :null => false
    t.integer "reg_count_glacier_final_region",       :null => false
    t.integer "reg_count_tundra_init_square",         :null => false
    t.integer "reg_count_tundra_init_region",         :null => false
    t.integer "reg_count_tundra_final_region",        :null => false
    t.integer "reg_count_grassland_init_square",      :null => false
    t.integer "reg_count_grassland_init_region",      :null => false
    t.integer "reg_count_grassland_final_region",     :null => false
    t.integer "reg_count_hills_init_square",          :null => false
    t.integer "reg_count_hills_init_region",          :null => false
    t.integer "reg_count_hills_final_region",         :null => false
    t.integer "erosion_cycle_count",                  :null => false
    t.integer "river_mins_pre_erosion",               :null => false
    t.integer "river_mins_post_erosion",              :null => false
    t.boolean "periodically_erode_extremes",          :null => false
    t.boolean "orographic_precipitation",             :null => false
    t.integer "subregion_max",                        :null => false
    t.integer "cavern_layer_count",                   :null => false
    t.integer "cavern_layer_openness_min",            :null => false
    t.integer "cavern_layer_openness_max",            :null => false
    t.integer "cavern_layer_passage_density_min",     :null => false
    t.integer "cavern_layer_passage_density_max",     :null => false
    t.integer "cavern_layer_water_min",               :null => false
    t.integer "cavern_layer_water_max",               :null => false
    t.boolean "have_bottom_layer",                    :null => false
    t.boolean "have_bottom_layer_2",                  :null => false
    t.integer "levels_above_ground",                  :null => false
    t.integer "levels_above_layer_1",                 :null => false
    t.integer "levels_above_layer_2",                 :null => false
    t.integer "levels_above_layer_3",                 :null => false
    t.integer "levels_above_layer_4",                 :null => false
    t.integer "levels_above_layer_5",                 :null => false
    t.integer "levels_at_bottom",                     :null => false
    t.integer "cave_min_size",                        :null => false
    t.integer "cave_max_size",                        :null => false
    t.integer "mountain_cave_min",                    :null => false
    t.integer "non_mountain_cave_min",                :null => false
    t.boolean "all_caves_visible",                    :null => false
    t.integer "show_embark_tunnel",                   :null => false
    t.integer "total_civ_number",                     :null => false
    t.boolean "playable_civilization_required",       :null => false
    t.integer "elevation_ranges_low_sq",              :null => false
    t.integer "elevation_ranges_mid_sq",              :null => false
    t.integer "elevation_ranges_high_sq",             :null => false
    t.integer "rain_ranges_low_sq",                   :null => false
    t.integer "rain_ranges_mid_sq",                   :null => false
    t.integer "rain_ranges_high_sq",                  :null => false
    t.integer "drainage_ranges_low_sq",               :null => false
    t.integer "drainage_ranges_mid_sq",               :null => false
    t.integer "drainage_ranges_high_sq",              :null => false
    t.integer "savagery_ranges_low_sq",               :null => false
    t.integer "savagery_ranges_mid_sq",               :null => false
    t.integer "savagery_ranges_high_sq",              :null => false
    t.integer "volcanism_ranges_low_sq",              :null => false
    t.integer "volcanism_ranges_mid_sq",              :null => false
    t.integer "volcanism_ranges_high_sq",             :null => false
  end

  create_table "taggings", :force => true do |t|
    t.integer   "tag_id"
    t.integer   "taggable_id"
    t.string    "taggable_type"
    t.integer   "tagger_id"
    t.string    "tagger_type"
    t.string    "context",       :limit => 128
    t.timestamp "created_at"
  end

  add_index "taggings", ["tag_id"], :name => "index_taggings_on_tag_id"
  add_index "taggings", ["taggable_id", "taggable_type", "context"], :name => "index_taggings_on_taggable_id_and_taggable_type_and_context"

  create_table "tags", :force => true do |t|
    t.string "name"
  end

  create_table "users", :force => true do |t|
    t.string    "email",                  :default => "", :null => false
    t.string    "encrypted_password",     :default => "", :null => false
    t.string    "reset_password_token"
    t.timestamp "reset_password_sent_at"
    t.timestamp "remember_created_at"
    t.integer   "sign_in_count",          :default => 0
    t.timestamp "current_sign_in_at"
    t.timestamp "last_sign_in_at"
    t.string    "current_sign_in_ip"
    t.string    "last_sign_in_ip"
    t.timestamp "created_at",                             :null => false
    t.timestamp "updated_at",                             :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "votes", :force => true do |t|
    t.integer  "votable_id"
    t.string   "votable_type"
    t.integer  "voter_id"
    t.string   "voter_type"
    t.boolean  "vote_flag"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "votes", ["votable_id", "votable_type"], :name => "index_votes_on_votable_id_and_votable_type"
  add_index "votes", ["voter_id", "voter_type"], :name => "index_votes_on_voter_id_and_voter_type"

end
