# This file is copied to spec/ when you run 'rails generate rspec:install'
ENV["RAILS_ENV"] ||= 'test'

require 'simplecov'
SimpleCov.start

require File.expand_path("../../config/environment", __FILE__)
require 'rspec/rails'
require 'rspec/autorun'

Dir[Rails.root.join("spec/support/**/*.rb")].each {|f| require f}

RSpec.configure do |config|
  config.mock_with :mocha
  config.fixture_path = "#{::Rails.root}/spec/fixtures"
  config.use_transactional_fixtures = true
  config.infer_base_class_for_anonymous_controllers = false

  config.include FactoryGirl::Syntax::Methods
end

WGSetting = %q{
[WORLD_GEN]
    [TITLE:Friendly Kobold Cave]
    [SEED:lhiyhC0WmaxVrDJ3RA7c]
    [HISTORY_SEED:hgMFKIdqgjvCdabIZtlG]
    [NAME_SEED:NrshPw935YPaSNRB3FT6]
    [CREATURE_SEED:WpMwUAOuYG8b0PwuqXlG]
    [DIM:129:129]
    [EMBARK_POINTS:1274]
    [END_YEAR:125]
    [BEAST_END_YEAR:125:-1]
    [REVEAL_ALL_HISTORY:1]
    [CULL_HISTORICAL_FIGURES:0]
    [ELEVATION:1:400:1600:1600]
    [RAINFALL:0:100:200:200]
    [TEMPERATURE:25:75:200:200]
    [DRAINAGE:0:100:200:200]
    [VOLCANISM:0:100:200:200]
    [SAVAGERY:0:100:200:200]
    [ELEVATION_FREQUENCY:4:2:0:1:0:1]
    [RAIN_FREQUENCY:1:1:1:1:1:1]
    [DRAINAGE_FREQUENCY:1:1:1:1:1:1]
    [TEMPERATURE_FREQUENCY:1:1:1:1:1:1]
    [SAVAGERY_FREQUENCY:3:1:2:3:4:5]
    [VOLCANISM_FREQUENCY:1:1:1:1:1:1]
    [MINERAL_SCARCITY:2500]
    [MEGABEAST_CAP:36]
    [SEMIMEGABEAST_CAP:74]
    [TITAN_NUMBER:18]
    [TITAN_ATTACK_TRIGGER:80:0:100000]
    [DEMON_NUMBER:28]
    [NIGHT_TROLL_NUMBER:14]
    [BOGEYMAN_NUMBER:14]
    [VAMPIRE_NUMBER:14]
    [WEREBEAST_NUMBER:14]
    [SECRET_NUMBER:28]
    [REGIONAL_INTERACTION_NUMBER:28]
    [DISTURBANCE_INTERACTION_NUMBER:28]
    [EVIL_CLOUD_NUMBER:14]
    [EVIL_RAIN_NUMBER:14]
    [GOOD_SQ_COUNTS:6:63:0]
    [EVIL_SQ_COUNTS:6:63:0]
    [PEAK_NUMBER_MIN:3]
    [PARTIAL_OCEAN_EDGE_MIN:0]
    [COMPLETE_OCEAN_EDGE_MIN:4]
    [VOLCANO_MIN:1]
    [REGION_COUNTS:SWAMP:66:0:0]
    [REGION_COUNTS:DESERT:66:0:0]
    [REGION_COUNTS:FOREST:264:0:0]
    [REGION_COUNTS:MOUNTAINS:528:0:0]
    [REGION_COUNTS:OCEAN:528:0:0]
    [REGION_COUNTS:GLACIER:16:0:0]
    [REGION_COUNTS:TUNDRA:33:0:0]
    [REGION_COUNTS:GRASSLAND:528:0:0]
    [REGION_COUNTS:HILLS:528:0:0]
    [EROSION_CYCLE_COUNT:250]
    [RIVER_MINS:25:25]
    [PERIODICALLY_ERODE_EXTREMES:1]
    [OROGRAPHIC_PRECIPITATION:1]
    [SUBREGION_MAX:2750]
    [CAVERN_LAYER_COUNT:3]
    [CAVERN_LAYER_OPENNESS_MIN:0]
    [CAVERN_LAYER_OPENNESS_MAX:100]
    [CAVERN_LAYER_PASSAGE_DENSITY_MIN:0]
    [CAVERN_LAYER_PASSAGE_DENSITY_MAX:100]
    [CAVERN_LAYER_WATER_MIN:0]
    [CAVERN_LAYER_WATER_MAX:100]
    [HAVE_BOTTOM_LAYER_1:1]
    [HAVE_BOTTOM_LAYER_2:1]
    [LEVELS_ABOVE_GROUND:15]
    [LEVELS_ABOVE_LAYER_1:5]
    [LEVELS_ABOVE_LAYER_2:1]
    [LEVELS_ABOVE_LAYER_3:1]
    [LEVELS_ABOVE_LAYER_4:1]
    [LEVELS_ABOVE_LAYER_5:2]
    [LEVELS_AT_BOTTOM:1]
    [CAVE_MIN_SIZE:5]
    [CAVE_MAX_SIZE:25]
    [MOUNTAIN_CAVE_MIN:20]
    [NON_MOUNTAIN_CAVE_MIN:30]
    [ALL_CAVES_VISIBLE:0]
    [SHOW_EMBARK_TUNNEL:2]
    [TOTAL_CIV_NUMBER:40]
    [TOTAL_CIV_POPULATION:15000]
    [SITE_CAP:1560]
    [PLAYABLE_CIVILIZATION_REQUIRED:1]
    [ELEVATION_RANGES:8000:1056:528]
    [RAIN_RANGES:528:1056:528]
    [DRAINAGE_RANGES:528:1056:528]
    [SAVAGERY_RANGES:0:2080:4160]
    [VOLCANISM_RANGES:528:1056:528]
}
