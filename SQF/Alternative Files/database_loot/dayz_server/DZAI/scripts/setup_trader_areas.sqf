/*
	For DayZ Epoch only - Spawns server-side plot poles at all trader locations to prevent DZAI from spawning dynamic AI.
*/

_trader_markers = switch (toLower worldName) do {
	case "chernarus": {["Tradercitystary","wholesaleSouth","boatTraderEast","BoatDealerSouth","AirVehicles","BanditDen","Klen","BoatDealerEast","TradercityBash","HeroTrader","Tradercitybash","Tradercityklen","boatsnwholesale_1","boatsnwholesale_1_1","Airplane Dealer","Boat Dealer","HeroVendor","Boat Dealer_1","BanditVendor"]};
	case "takistan": {["tradercitykush","Trader_City_Nur","Trader_City_Garm","Wholesaler","Wholesaler_1","Airplane Dealer","BanditTrader","BlackMarketVendor"]};
	case "isladuala": {["Trader City Camara","st_3","st_4","st_3_1","st_3_1_1","st_3_1_1_1","st_3_2","st_3_2_1","st_3_2_2","st_3_2_3","st_3_2_3_1"]};
	case "tavi": {["TraderCityLyepestok","TraderCitySabina","TraderCityBilgrad","TraderCityBranibor","BanditVendor","HeroVendor","AircraftDealer","AircraftDealer2","Misc.Vendor","Misc.Vendor2","BoatDealer","BoatDealer2","BoatDealer3","BoatDealer4","Wholesaler","Wholesaler2"]};
	case "namalsk": {["GerneralPartsSupplies","WholesalerNorth","Doctor","HighEndWeaponsAmmo","HeroVendor","VehicleFriendly","NeutralVendors","WholesalerSouth","LowEndWeaponsAmmo","BoatVendor","Bandit Trader","PlaneVendor"]};
	case "panthera2": {["AirVehiclesF","WholesalerWest","HeroVehicles","NeutralAirVehicles","Boats","NeutralTraders","NeutralTraderCity2","WholesaleSouth","PlanicaTraders","IslandVehiclePartsVendors"]};
	case "sara": {["Tradercitycorazol","wholesaleSouth","boatTraderEast","BoatDealerSouth","AirVehicles","BanditDen","Ixel","BoatDealerEast","TradercityBag","HeroTrader"]};
	case "fdf_isle1_a": {["wholesaleSouth","boatTraderEast","BoatDealerSouth","AirVehicles","BanditDen","Jesco","TradercityBash","HeroTrader"]};
	case "fapovo": {["BanditTrader","AirVehicleUnarmed","TraderCity1","TraderCity2","Wholesaler","BanditVendor","HeroVendor","BoatVendor"]};
	case "shapur_baf": {["Safe Zone","test"]};
	case "zargabad": {["HeroCamp","BanditCamp"]};
	case "dingor": {["RaceTrack","RepairGuy","PlaneVendor","Wholesale","HighWeapons/ammo","Parts","Choppers","lowEndCars","LowEndWeapons","HighEndCars","MedicalandBags","Wholesaler","BagsNFood","Wholesalers","DirtTrackVendor","OffRoad4x4","BoatVendor","BoatVendor1","BoatVendor2","BagVendor1","BagVendor2","Doctor2","BanditTrader","HeroTrader"]};
	case "lingor": {["RaceTrack","RepairGuy","PlaneVendor","Wholesale","HighWeapons/ammo","Parts","Choppers","lowEndCars","LowEndWeapons","HighEndCars","MedicalandBags","Wholesaler","BagsNFood","Wholesalers","DirtTrackVendor","OffRoad4x4","BoatVendor","BoatVendor1","BoatVendor2","BagVendor1","BagVendor2","Doctor2","BanditTrader","HeroTrader"]};
	case default {[]};
};

for "_i" from 0 to ((count _trader_markers) - 1) do {
	_traderPos = (getMarkerPos (_trader_markers select _i));
	if (((_traderPos select 0) != 0) && ((_traderPos select 1) != 0)) then {
		_blacklist = createLocation ["Strategic",_traderPos,300,300];
	};
	sleep 0.01;
};
