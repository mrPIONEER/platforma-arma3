
_obj = _this select 0;

_Fn_zong = {
		if ( _this distance player < 150 and alive _this) then {	
Switch (floor (random 3)) do {
case 0: {

_obj say  	
Switch (floor (random 18)) do {
case 0: {    "ar1"};
case 1: {    "ar2"};
case 2: {    "ar3"};
case 3: {    "ar4"};
case 4: {    "ar5"};
case 5: {    "ar6"};
case 6: {    "ar7"};
case 7: {    "ar8"};
case 8: {    "ar9"};
case 9: {    "ar10"};
case 10: {    "ar11"};
case 11: {    "ar12"};
case 12: {    "ar13"};
case 13: {    "ar14"};
case 14: {    "ar15"};
case 15: {    "ar16"};
case 16: {    "ar17"};
case 17: {    "ar18"};

	};
case 1: {};
case 2: {};
};

sleep (random 30);
};
_con = [0,1];
WaitUntil {
_ms = getPos _obj nearEntities [["Man"] , 250];
if (Player countEnemy _ms > 0) then {
{
Switch _x do {
	case 0:{if (Player in _ms) then {_con = [1,2,3]}};
	case 1:{if !(alive _obj) then {_con resize 0}};
	case 2:{	if (count (getPos _obj nearObjects ["BulletBase",5]) > 0) then {_obj Call _Fn_zong}};
	case 3:{if !(Player in _ms) then {_con = [0,1]}};
	};
} forEach _con;

} else {sleep 1};

count _con == 0
};