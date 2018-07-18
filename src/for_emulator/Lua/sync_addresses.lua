-- These are the addresses for each of the 101 scene's save data.
-- Each scene has 0x1C (28) bytes of available space. These are subdivided into chests, switches, room clear, collectables, visited rooms, and visited floors. There are 4 bytes of unused space in each for some reason.
scene_size = 0x1C;
scenes = {
    "0x11a6a4",
    "0x11a6c0",
    "0x11a6dc",
    "0x11a6f8",
    "0x11a714",
    "0x11a730",
    "0x11a74c",
    "0x11a768",
    "0x11a784",
    "0x11a7a0",
    "0x11a7bc",
    "0x11a7d8",
    "0x11a7f4",
    "0x11a810",
    "0x11a82c",
    "0x11a848",
    "0x11a864",
    "0x11a880",
    "0x11a89c",
    "0x11a8b8",
    "0x11a8d4",
    "0x11a8f0",
    "0x11a90c",
    "0x11a928",
    "0x11a944",
    "0x11a960",
    "0x11a97c",
    "0x11a998",
    "0x11a9b4",
    "0x11a9d0",
    "0x11a9ec",
    "0x11aa08",
    "0x11aa24",
    "0x11aa40",
    "0x11aa5c",
    "0x11aa78",
    "0x11aa94",
    "0x11aab0",
    "0x11aacc",
    "0x11aae8",
    "0x11ab04",
    "0x11ab20",
    "0x11ab3c",
    "0x11ab58",
    "0x11ab74",
    "0x11ab90",
    "0x11abac",
    "0x11abc8",
    "0x11abe4",
    "0x11ac00",
    "0x11ac1c",
    "0x11ac38",
    "0x11ac54",
    "0x11ac70",
    "0x11ac8c",
    "0x11aca8",
    "0x11acc4",
    "0x11ace0",
    "0x11acfc",
    "0x11ad18",
    "0x11ad34",
    "0x11ad50",
    "0x11ad6c",
    "0x11ad88",
    "0x11ada4",
    "0x11adc0",
    "0x11addc",
    "0x11adf8",
    "0x11ae14",
    "0x11ae30",
    "0x11ae4c",
    "0x11ae68",
    "0x11ae84",
    "0x11aea0",
    "0x11aebc",
    "0x11aed8",
    "0x11aef4",
    "0x11af10",
    "0x11af2c",
    "0x11af48",
    "0x11af64",
    "0x11af80",
    "0x11af9c",
    "0x11afb8",
    "0x11afd4",
    "0x11aff0",
    "0x11b00c",
    "0x11b028",
    "0x11b044",
    "0x11b060",
    "0x11b07c",
    "0x11b098",
    "0x11b0b4",
    "0x11b0d0",
    "0x11b0ec",
    "0x11b108",
    "0x11b124",
    "0x11b140",
    "0x11b15c",
    "0x11b178",
    "0x11b194"
};

-- These three contain distinct lists of event flag data.
-- flags_1 is quest data
flags_1 = {
    "0x11b4a4",
    "0x11b4a5",
    "0x11b4a6",
    "0x11b4a7",
    "0x11b4a8",
    "0x11b4a9",
    "0x11b4aa",
    "0x11b4ab",
    "0x11b4ac",
    "0x11b4ad",
    "0x11b4ae",
    "0x11b4af",
    "0x11b4b0",
    "0x11b4b1",
    "0x11b4b2",
    "0x11b4b3",
    "0x11b4b4",
    "0x11b4b5",
    "0x11b4b6",
    "0x11b4b7",
    "0x11b4b8",
    "0x11b4b9",
    "0x11b4ba",
    "0x11b4bb",
    "0x11b4bc",
    "0x11b4bd",
    "0x11b4be",
    "0x11b4bf"
};

-- flags 2 is having aquired items.
flags_2 = {
    "0x11b4c0",
    "0x11b4c1",
    "0x11b4c2",
    "0x11b4c3",
    "0x11b4c4",
    "0x11b4c5",
    "0x11b4c6",
    "0x11b4c7"
};

-- flags 3 is having talked to NPCs (presumably so you can skip their dialog the next time?)
flags_3 = {
    "0x11b4c8",
    "0x11b4c9",
    "0x11b4ca",
    "0x11b4cb",
    "0x11b4cc",
    "0x11b4cd",
    "0x11b4ce",
    "0x11b4cf",
    "0x11b4d0",
    "0x11b4d1",
    "0x11b4d2",
    "0x11b4d3",
    "0x11b4d4",
    "0x11b4d5",
    "0x11b4d6",
    "0x11b4d7",
    "0x11b4d8",
    "0x11b4d9",
    "0x11b4da",
    "0x11b4db",
    "0x11b4dc",
    "0x11b4dd",
    "0x11b4de",
    "0x11b4df",
    "0x11b4e0",
    "0x11b4e1",
    "0x11b4e2",
    "0x11b4e3",
    "0x11b4e4",
    "0x11b4e5",
    "0x11b4e6",
    "0x11b4e7",
    "0x11b4e8",
    "0x11b4e9",
    "0x11b4ea",
    "0x11b4eb",
    "0x11b4ec",
    "0x11b4ed",
    "0x11b4ee",
    "0x11b4ef",
    "0x11b4f0",
    "0x11b4f1",
    "0x11b4f2",
    "0x11b4f3",
    "0x11b4f4",
    "0x11b4f5",
    "0x11b4f6",
    "0x11b4f7",
    "0x11b4f8",
    "0x11b4f9",
    "0x11b4fa",
    "0x11b4fb",
    "0x11b4fc",
    "0x11b4fd",
    "0x11b4fe",
    "0x11b4ff",
    "0x11b500",
    "0x11b501",
    "0x11b502",
    "0x11b503"
};

skulltulas = {
    "0x11b46c",
    "0x11b46d",
    "0x11b46e",
    "0x11b46f",
    "0x11b470",
    "0x11b471",
    "0x11b472",
    "0x11b473",
    "0x11b474",
    "0x11b475",
    "0x11b476",
    "0x11b477",
    "0x11b478",
    "0x11b479",
    "0x11b47a",
    "0x11b47b",
    "0x11b47c",
    "0x11b47d",
    "0x11b47e",
    "0x11b47f",
    "0x11b480",
    "0x11b481"
};

dungeon_stuff = {
    deku_tree = 0x11A678,
    dodongo = 0x11A679,
    jabu_jabu = 0x11A67A,
    forest_temple = 0x11A67B,
    fire_temple = 0x11A67C,
    water_temple = 0x11A67D,
    spirit_temple = 0x11A67E,
    shadow_temple = 0x11A67F,
    bottom_of_the_well = 0x11A680,
    ice_cavern = 0x11A681,
    ganon_tower = 0x11A682,
    gtg = 0x11A683,
    ganon_castle = 0x11A684,
    ganon_collapse = 0x11A685
};

small_keys = {
    deku_tree = 0x11A68C,
    dodongo = 0x11A68D,
    jabu_jabu = 0x11A68E,
    forest_temple = 0x11A68F,
    fire_temple = 0x11A690,
    water_temple = 0x11A691,
    spirit_temple = 0x11A692,
    shadow_temple = 0x11A693,
    bottom_of_the_well = 0x11A694,
    ice_cavern = 0x11A695,
    ganon_tower = 0x11A696,
    gtg = 0x11A697,
    ganon_castle = 0x11A699,
    ganon_collapse = 0x11A69A
};

dungeon_scenes = {
    deku_tree = 0,
    dodongo = 1,
    jabu_jabu = 2,
    forest_temple = 3,
    fire_temple = 4,
    water_temple = 5,
    spirit_temple = 6,
    shadow_temple = 7,
    bottom_of_the_well = 8,
    ice_cavern = 9,
    ganon_tower = 10,
    gtg = 11,
    ganon_castle = 13,
    ganon_collapse = 14
};