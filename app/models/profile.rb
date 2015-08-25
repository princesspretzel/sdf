class Profile < ActiveRecord::Base
  belongs_to :user
  mount_uploader :profile_photo, ProfilePhotoUploader
  
  QUESTIONS = [
[:pizza_beer, "Pizza  or Beer?", ["Pizza","Beer","Both"]], 
[:drugs, "Drugs or Marijuana?", ["Drugs","Marijuana","Neither"]], 
[:concept_reality, "Concept or Reality?", ["Concept","Reality","Both"]], 
[:moms_dads, "Moms or Dads?", ["Moms","Dads","Both"]], 
[:sandles_socks, "Socks or Sandals?", ["Socks","Sandals","Both"]], 
[:europe_paris, "Europe or Paris?", ["Europe","Paris","Both"]], 
[:trucks, "Trucks or Four Wheelers?", ["Trucks","Four Wheelers","Both"]], 
[:sleater_kelly, "Sleater Kinney or Kelly Slater?", ["Sleater Kinney","Kelly Slater","Both"]], 
[:theory_practice, "Theory or Practice?", ["Theory","Practice","Both"]], 
[:isp, "Comcast or Time Warner?", ["Comcast","Time Warner","Neither"]], 
[:crew, "Crew Neck and Crew Cut or Crew Sock and Crew?", ["Crew Neck and Crew Cut","Crew Sock and J.Crew","Both"]], 
[:more_less, "More or Less?", ["More","Less","Both"]], 
[:reggae_mouse, "Reggae or Eek A Mouse?", ["Reggae","Eek a Mouse","Both"]], 
[:jobs, "Two Jobs or One Job?", ["Two Jobs","One Job","Neither"]], 
[:pets_cats, "Pets or Cats?", ["Pets","Cats","Both"]], 
[:red_white, "Red or White?", ["Red","White","Rosé"]], 
[:sport_ball, "Football and Baseball or Basketball and Hockey?", ["Football and Baseball","Basketball and Hockey","Both"]], 
[:meat_murder, "Meat or Murder?", ["Meat","Murder","Both"]], 
[:art_commerce, "Art or Commerce?", ["Art","Commerce","Both"]], 
[:butler_judith, "Judith Butler or Lee Daniels' 'The Butler'", ["Judith Butler","Lee Daniels' 'The Butler'","Both"]], 
[:fleetwood_mcdonalds, "Fleetwood Mac or McDonald's?", ["Fleetwood Mac","McDonalds","Both"]], 
[:skate_die, "Skate or Die?", ["Skate","Die","Both"]], 
[:sanders, "Bernie or Deion Sanders?", ["Bernie Sanders","Deion Sanders","Both"]], 
[:midwest_east, "Midwest or Middle East?", ["Midwest","Middle East","Both"]], 
[:modest_eek, "Modest Mouse or Eek A Mouse?", ["Modest Mouse","Eek A Mouse","Both"]], 
[:pride_prejudice, "Pride or Prejudice?", ["Pride","Prejudice","Both"]], 
[:dwi_dui, "DWI or DUI?", ["DWI","DUI","Both"]], 
[:show_tell, "Show or Tell?", ["Show","Tell","Both"]], 
[:pat_vanna, "Pat Sajak or Vanna White?", ["Pat Sajak","Vanna White","Both"]],
[:beach, "Aruba, Jamaica or Bermuda, Bahama?", ["Aruba, Jamaica","Bermuda, Bahama","Kokomo"]], 
[:peanut_jelly, "Peanut Butter or Jelly", ["Peanutbutter","Jelly","Both"]], 
[:animal_boys, "Animal Collective or Beach Boys?", ["Animal Collective","Beach Boys","Both"]], 
[:fireman_spaceman, "Fireman or Spaceman?", ["Fireman","Spaceman","Both"]], 
[:games_sports, "Games or Sports?", ["Games","Sports","Both"]], 
[:seitan_satan, "Seitan or Satan?", ["Seitan","Satan","Both"]], 
[:one_fish, "One FIsh or Two Fish?", ["One Fish , Two Fish","Three Fish, Blue Fish","Both"]], 
[:sixnine_fourtwenty, "69 or 420?", ["69","420","666"]], 
[:mint_ice, "Mint Condition or Mint Ice Cream?", ["Mint Condition","Mint Ice Cream","Both"]], 
[:marriage_divorce, "Marriage or Divorce?", ["Marriage ","Divorce","Neither"]], 
[:steve_jane, "Jane Austen or Steve Austin?", ["Jane Austen","Steve Austen","Both"]], 
[:marco_polo, "Marco or Polo?", ["Marco","Polo","Both"]], 
[:where_who, "Where am I or Who am I?", ["Where am I","Who am I","Both"]], 
[:mfa_mba, "MFA or MBA?", ["MFA","MBA","Both"]], 
[:soup_salad, "Soup or Salad?", ["Soup","Salad","Neither"]], 
[:paper_plastic, "Paper or Plastic?", ["Paper","Plastic","Both"]], 
[:cut_uncut, "Cut or Uncut?", ["Cut","Uncut","Both"]], 
[:summer_wrestle, "Summer Slam or Wrestlemania?", ["Summer Slam","Wrestlemania","Neither"]], 
[:bush_clinton, "Bush or Clinton?", ["Bush","Clinton","Neither"]], 
[:perot_buchanan, "Perot or Buchanan?", ["Perot","Buchanan","Trump"]], 
[:pizza_taco, "Pizza Hut or Taco Bell?", ["Pizza Hut","Taco Bell","Both"]], 
[:molly_lucy, "Molly or Lucy?", ["Molly","Lucy","Both"]], 
[:energy, "Wind or Solar?", ["Wind","Solar","Petroleum"]], 
[:pitcher_tallboy, "Pitcher or Tallboy?", ["Pitcher","Tallboy","Both"]], 
[:shirts_skins, "Shirts or Skins?", ["Shirts","Skins","Both"]], 
[:spark_tap, "Sparkling or Tap?", ["Sparkling","Tap","Both"]], 
[:rap_metal, "Rap or Metal?", ["Rap","Metal","Both"]], 
[:brush_floss, "Brush or Flossing?", ["Brush","Floss","Neither"]], 
[:vinyl_flac, "Vinyl or Flac?", ["Vinyl","FLAC","Neither"]], 
[:yes_no, "Yes or No?", ["Yes","No","Both"]], 
[:hbo_Sho, "HBO or Showtime?", ["HBO","Showtime","Neither"]], 
[:privelage, "Privelage or Responsibility?", ["Privelage ","Responsibility","Both"]], 
[:business_pleasure, "Business or Pleasure?", ["Business","Pleasure","Neither"]], 
[:liquor_before, "Liquor before Beer or Beer before Liquor?", ["Liquor before Beer","Beer before Liquor","Both"]], 
[:sunrise_set, "Sunrise or Sunset?", ["Sunrise","Sunset","Both"]], 
[:hall_oates, "Hall or Oates?", ["Hall","Oates","Both"]], 
[:simon_garfunkle, "Simon or Garfunkle", ["Simon","Garfunkle","Both"]], 
[:beatles, "George or Ringo?", ["George","Ringo","Deez Nuts"]], 
[:stick_tribal, "Stick and Poke or Tribal?", ["Stick and Poke","Tribal","Both"]], 
[:nor_so, "Norcal or Socal?", ["Norcal","Socal","Neither"]], 
[:gluten_mumia, "Gluten Free or Free Mumia?", ["Gluten Free","Free Mumia","Both"]], 
[:mac_pc, "Mac or PC?", ["Mac","PC","Neither"]], 
[:netflix_chill, "Netflix or Chill?", ["Netflix","Chill","Both"]], 
[:fat_jerry, "Fuck Jerry or The Fat Jew?", ["Fuck Jerry","The Fat Jew","Neither"]], 
[:friends_benefit, "Friends or Benefits?", ["Friends","Benefits","Both"]], 
[:duck_goose, "Duck or Goose?", ["Duck","Goose","Neither"]], 
[:black_monday, "Black Friday or Cyber Monday?", ["Black Friday","Cyber Monday ","Both"]], 
[:eeny_meeny, "Eeny Meeny or Miny Moe?", ["Eeny Meeny","Miny Moe","Both"]], 
[:chicken_egg, "Chicken or Egg?", ["Chicken","Egg","Both"]], 
[:calvin_hobbes, "Calvin or Hobbes?", ["Calvin","Hobbes","Both"]],
[:beach, "Aruba, Jamaica or Bermuda, Bahama?", ["Aruba, Jamaica","Bermuda, Bahama","Kokomo"]], 
[:peanut_jelly, "Peanut Butter or Jelly", ["Peanutbutter","Jelly","Both"]], 
[:animal_boys, "Animal Collective or Beach Boys?", ["Animal Collective","Beach Boys","Both"]], 
[:fireman_spaceman, "Fireman or Spaceman?", ["Fireman","Spaceman","Both"]], 
[:games_sports, "Games or Sports?", ["Games","Sports","Both"]], 
[:seitan_satan, "Seitan or Satan?", ["Seitan","Satan","Both"]], 
[:one_fish, "One FIsh or Two Fish?", ["One Fish , Two Fish","Three Fish, Blue Fish","Both"]], 
[:sixnine_fourtwenty, "69 or 420?", ["69","420","666"]], 
[:mint_ice, "Mint Condition or Mint Ice Cream?", ["Mint Condition","Mint Ice Cream","Both"]], 
[:marriage_divorce, "Marriage or Divorce?", ["Marriage ","Divorce","Neither"]], 
[:steve_jane, "Jane Austen or Steve Austin?", ["Jane Austen","Steve Austen","Both"]], 
[:marco_polo, "Marco or Polo?", ["Marco","Polo","Both"]], 
[:where_who, "Where am I or Who am I?", ["Where am I","Who am I","Both"]], 
[:mfa_mba, "MFA or MBA?", ["MFA","MBA","Both"]], 
[:soup_salad, "Soup or Salad?", ["Soup","Salad","Neither"]], 
[:paper_plastic, "Paper or Plastic?", ["Paper","Plastic","Both"]], 
[:cut_uncut, "Cut or Uncut?", ["Cut","Uncut","Both"]], 
[:summer_wrestle, "Summer Slam or Wrestlemania?", ["Summer Slam","Wrestlemania","Neither"]], 
[:bush_clinton, "Bush or Clinton?", ["Bush","Clinton","Neither"]], 
[:perot_buchanan, "Perot or Buchanan?", ["Perot","Buchanan","Trump"]], 
[:pizza_taco, "Pizza Hut or Taco Bell?", ["Pizza Hut","Taco Bell","Both"]], 
[:molly_lucy, "Molly or Lucy?", ["Molly","Lucy","Both"]], 
[:energy, "Wind or Solar?", ["Wind","Solar","Petroleum"]], 
[:pitcher_tallboy, "Pitcher or Tallboy?", ["Pitcher","Tallboy","Both"]], 
[:shirts_skins, "Shirts or Skins?", ["Shirts","Skins","Both"]], 
[:spark_tap, "Sparkling or Tap?", ["Sparkling","Tap","Both"]], 
[:rap_metal, "Rap or Metal?", ["Rap","Metal","Both"]], 
[:brush_floss, "Brush or Flossing?", ["Brush","Floss","Neither"]], 
[:vinyl_flac, "Vinyl or Flac?", ["Vinyl","FLAC","Neither"]], 
[:yes_no, "Yes or No?", ["Yes","No","Both"]], 
[:hbo_Sho, "HBO or Showtime?", ["HBO","Showtime","Neither"]], 
[:privelage, "Privelage or Responsibility?", ["Privelage ","Responsibility","Both"]], 
[:business_pleasure, "Business or Pleasure?", ["Business","Pleasure","Neither"]], 
[:liquor_before, "Liquor before Beer or Beer before Liquor?", ["Liquor before Beer","Beer before Liquor","Both"]], 
[:sunrise_set, "Sunrise or Sunset?", ["Sunrise","Sunset","Both"]], 
[:hall_oates, "Hall or Oates?", ["Hall","Oates","Both"]], 
[:simon_garfunkle, "Simon or Garfunkle", ["Simon","Garfunkle","Both"]], 
[:beatles, "George or Ringo?", ["George","Ringo","Deez Nuts"]], 
[:stick_tribal, "Stick and Poke or Tribal?", ["Stick and Poke","Tribal","Both"]], 
[:nor_so, "Norcal or Socal?", ["Norcal","Socal","Neither"]], 
[:gluten_mumia, "Gluten Free or Free Mumia?", ["Gluten Free","Free Mumia","Both"]], 
[:mac_pc, "Mac or PC?", ["Mac","PC","Neither"]], 
[:netflix_chill, "Netflix or Chill?", ["Netflix","Chill","Both"]], 
[:fat_jerry, "Fuck Jerry or The Fat Jew?", ["Fuck Jerry","The Fat Jew","Neither"]], 
[:friends_benefit, "Friends or Benefits?", ["Friends","Benefits","Both"]], 
[:duck_goose, "Duck or Goose?", ["Duck","Goose","Neither"]], 
[:black_monday, "Black Friday or Cyber Monday?", ["Black Friday","Cyber Monday ","Both"]], 
[:eeny_meeny, "Eeny Meeny or Miny Moe?", ["Eeny Meeny","Miny Moe","Both"]], 
[:chicken_egg, "Chicken or Egg?", ["Chicken","Egg","Both"]], 
[:calvin_hobbes, "Calvin or Hobbes?", ["Calvin","Hobbes","Both"]], 
  ]
end
