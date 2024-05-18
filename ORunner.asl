state("ORunner")
{
	int AllLevels : 0x0005A6C, 0x28;
}

startup
{
    settings.Add("am", true, "All Levels");
    settings.SetToolTip("am", "Choose which levels to split after");
	
	settings.Add("level1", true, "Village", "am");
	settings.Add("level2", true, "Next Village", "am");
	settings.Add("level3", true, "High Lands", "am");
	settings.Add("level4", true, "Green Wood", "am");
	settings.Add("level5", true, "Dark Swamp", "am");
	settings.Add("level6", true, "River City", "am");
	settings.Add("level7", true, "Pirates Island", "am");
	settings.Add("level8", true, "Treasure Island", "am");
	settings.Add("level9", true, "Sphinx Desert", "am");
	settings.Add("level10", true, "Oasis Desert", "am");
	settings.Add("level11", true, "Canyon", "am");
	settings.Add("level12", true, "Mountain Alley", "am");
	settings.Add("level13", true, "Dark Caves", "am");
	settings.Add("level14", true, "Snow World", "am");
	settings.Add("level15", true, "Iceland", "am");
	settings.Add("level16", true, "The Moon", "am");
}

start
{
	return(
	(current.AllLevels == 2640325 && old.AllLevels != current.AllLevels)
	);
}

split
{
	return(
	(settings["level1"] && current.AllLevels == 2287039 && old.AllLevels == 2640325)||
	(settings["level2"] && current.AllLevels == 2394360 && old.AllLevels == 2287039)||
	(settings["level3"] && current.AllLevels == 2537126 && old.AllLevels == 2394360)||
	(settings["level4"] && current.AllLevels == 2786693 && old.AllLevels == 2537126)||
	(settings["level5"] && current.AllLevels == 2868345 && old.AllLevels == 2786693)||
	(settings["level6"] && current.AllLevels == 3423042 && old.AllLevels == 2868345)||
	(settings["level7"] && current.AllLevels == 2287039 && old.AllLevels == 3423042)||
	(settings["level8"] && current.AllLevels == 2718660 && old.AllLevels == 2287039)||
	(settings["level9"] && current.AllLevels == 2640325 && old.AllLevels == 2718660)||
	(settings["level10"] && current.AllLevels == 2868345 && old.AllLevels == 2640325)||
	(settings["level11"] && current.AllLevels == 2738297 && old.AllLevels == 2868345)||
	(settings["level12"] && current.AllLevels == 3423042 && old.AllLevels == 2738297)||
	(settings["level13"] && current.AllLevels == 2537126 && old.AllLevels == 3423042)||
	(settings["level14"] && current.AllLevels == 2786693 && old.AllLevels == 2537126)||
	(settings["level15"] && current.AllLevels == 2288912 && old.AllLevels == 2786693)||
	(settings["level16"] && current.AllLevels == 2738297 && old.AllLevels == 2288912)
	);
}