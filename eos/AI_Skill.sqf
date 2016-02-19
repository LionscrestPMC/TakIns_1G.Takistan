// INFANTRY SKILL
_InfskillSet = [
0.6,        // aimingAccuracy
0.8,        // aimingShake
0.6,        // aimingSpeed
1.0,         // spotDistance
1.0,        // spotTime
0.8,        // courage
0.4,        // reloadSpeed
1,        // commanding
1        // general
];


// ARMOUR SKILL
_ArmSkillSet = [
0.5,        // aimingAccuracy
0.45,        // aimingShake
0.6,        // aimingSpeed
0.6,         // spotDistance
0.6,        // spotTime
1,        // courage
1,        // reloadSpeed
1,        // commanding
1        // general
];


// LIGHT VEHICLE skill
_LigSkillSet = [
0.55,        // aimingAccuracy
0.45,        // aimingShake
0.6,        // aimingSpeed
0.8,         // spotDistance
0.8,        // spotTime
1,        // courage
1,        // reloadSpeed
1,        // commanding
1        // general
];


// HELICOPTER SKILL
_AIRskillSet = [
0.45,        // aimingAccuracy
0.45,        // aimingShake
0.7,        // aimingSpeed
0.6,         // spotDistance
0.4,        // spotTime
1,        // courage
1,        // reloadSpeed
1,        // commanding
1        // general
];


// STATIC SKILL
_STAskillSet = [
0.25,        // aimingAccuracy
0.45,        // aimingShake
0.6,        // aimingSpeed
0.5,         // spotDistance
0.5,        // spotTime
1,        // courage
1,        // reloadSpeed
1,        // commanding
1        // general
];

server setvariable ["INFskill",_InfskillSet];
server setvariable ["ARMskill",_ArmSkillSet];
server setvariable ["LIGskill",_LigSkillSet];
server setvariable ["AIRskill",_AIRskillSet];
server setvariable ["STAskill",_STAskillSet];