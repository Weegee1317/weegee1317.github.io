package;


import haxe.io.Bytes;
import lime.utils.AssetBundle;
import lime.utils.AssetLibrary;
import lime.utils.AssetManifest;
import lime.utils.Assets;

#if sys
import sys.FileSystem;
#end

@:access(lime.utils.Assets)


@:keep @:dox(hide) class ManifestResources {


	public static var preloadLibraries:Array<AssetLibrary>;
	public static var preloadLibraryNames:Array<String>;
	public static var rootPath:String;


	public static function init (config:Dynamic):Void {

		preloadLibraries = new Array ();
		preloadLibraryNames = new Array ();

		rootPath = null;

		if (config != null && Reflect.hasField (config, "rootPath")) {

			rootPath = Reflect.field (config, "rootPath");

		}

		if (rootPath == null) {

			#if (ios || tvos || emscripten)
			rootPath = "assets/";
			#elseif android
			rootPath = "";
			#elseif console
			rootPath = lime.system.System.applicationDirectory;
			#else
			rootPath = "./";
			#end

		}

		#if (openfl && !flash && !display)
		openfl.text.Font.registerFont (__ASSET__OPENFL__assets_fonts_vcr_ttf);
		openfl.text.Font.registerFont (__ASSET__OPENFL__assets_fonts_amatic_ttf);
		openfl.text.Font.registerFont (__ASSET__OPENFL__assets_fonts_dialogue_ttf);
		openfl.text.Font.registerFont (__ASSET__OPENFL__assets_fonts_pixel_otf);
		openfl.text.Font.registerFont (__ASSET__OPENFL__assets_fonts_flower_ttf);
		openfl.text.Font.registerFont (__ASSET__OPENFL__flixel_fonts_nokiafc22_ttf);
		openfl.text.Font.registerFont (__ASSET__OPENFL__flixel_fonts_monsterrat_ttf);
		
		#end

		var data, manifest, library, bundle;

		#if kha

		null
		library = AssetLibrary.fromManifest (manifest);
		Assets.registerLibrary ("null", library);

		if (library != null) preloadLibraries.push (library);
		else preloadLibraryNames.push ("null");

		#else

		Assets.libraryPaths["songs"] = rootPath + "manifest/songs.json";
		Assets.libraryPaths["shared"] = rootPath + "manifest/shared.json";
		Assets.libraryPaths["impostor"] = rootPath + "manifest/impostor.json";
		Assets.libraryPaths["sm"] = rootPath + "manifest/sm.json";
		data = '{"name":null,"assets":"aoy4:pathy30:assets%2Fimages%2Falphabet.pngy4:sizei133325y4:typey5:IMAGEy2:idR1y7:preloadtgoR0y26:assets%2Fimages%2Fnum5.pngR2i4113R3R4R5R7R6tgoR0y30:assets%2Fimages%2FamongRun.pngR2i79257R3R4R5R8R6tgoR0y34:assets%2Fimages%2FdefeatScroll.pngR2i2490465R3R4R5R9R6tgoR0y36:assets%2Fimages%2FKadeEngineLogo.pngR2i259663R3R4R5R10R6tgoR0y25:assets%2Fimages%2FpostmanR2i27928R3y6:BINARYR5R11R6tgoR0y35:assets%2Fimages%2FmenuBGMagenta.pngR2i553468R3R4R5R13R6tgoR0y43:assets%2Fimages%2Ficons%2Ficon-crewmate.pngR2i11337R3R4R5R14R6tgoR0y43:assets%2Fimages%2Ficons%2Ficon-impostor.pngR2i15264R3R4R5R15R6tgoR0y41:assets%2Fimages%2Ficons%2Ficon-bf-sus.pngR2i1292R3R4R5R16R6tgoR0y48:assets%2Fimages%2Ficons%2Ficon-whiteimpostor.pngR2i6803R3R4R5R17R6tgoR0y43:assets%2Fimages%2Ficons%2Ficon-tomongus.pngR2i1041R3R4R5R18R6tgoR0y43:assets%2Fimages%2Ficons%2Ficon-parasite.pngR2i25786R3R4R5R19R6tgoR0y41:assets%2Fimages%2Ficons%2Ficon-bfeyes.pngR2i11320R3R4R5R20R6tgoR0y38:assets%2Fimages%2Ficons%2Ficon-bfr.pngR2i14707R3R4R5R21R6tgoR0y44:assets%2Fimages%2Ficons%2Ficon-impostorr.pngR2i8563R3R4R5R22R6tgoR0y44:assets%2Fimages%2Ficons%2Ficon-impostor3.pngR2i8563R3R4R5R23R6tgoR0y40:assets%2Fimages%2Ficons%2Ficon-ziffy.pngR2i14707R3R4R5R24R6tgoR0y40:assets%2Fimages%2Ficons%2Ficon-black.pngR2i10017R3R4R5R25R6tgoR0y44:assets%2Fimages%2Ficons%2Ficon-impostor2.pngR2i20032R3R4R5R26R6tgoR0y43:assets%2Fimages%2Ficons%2Ficon-bf-pixel.pngR2i1292R3R4R5R27R6tgoR0y42:assets%2Fimages%2Ficons%2Ficon-bf-fall.pngR2i14707R3R4R5R28R6tgoR0y42:assets%2Fimages%2Ficons%2Ficon-hamster.pngR2i1316R3R4R5R29R6tgoR0y38:assets%2Fimages%2Ficons%2Ficon-bfg.pngR2i14707R3R4R5R30R6tgoR0y41:assets%2Fimages%2Ficons%2Ficon-bfclow.pngR2i14544R3R4R5R31R6tgoR0y37:assets%2Fimages%2Ficons%2Ficon-bf.pngR2i14707R3R4R5R32R6tgoR0y37:assets%2Fimages%2Ficons%2Ficon-gf.pngR2i1292R3R4R5R33R6tgoR0y32:assets%2Fimages%2FtitleEnter.pngR2i1449202R3R4R5R34R6tgoR0y32:assets%2Fimages%2FmenuBGBlue.pngR2i614586R3R4R5R35R6tgoR0y26:assets%2Fimages%2Fnum9.pngR2i3687R3R4R5R36R6tgoR0y37:assets%2Fimages%2Fnewgrounds_logo.pngR2i57747R3R4R5R37R6tgoR0y34:assets%2Fimages%2FdefeatScroll.pdnR2i5105106R3y4:TEXTR5R38R6tgoR0y26:assets%2Fimages%2Fnum4.pngR2i3989R3R4R5R40R6tgoR0y45:assets%2Fimages%2Fcampaign_menu_UI_assets.xmlR2i1893R3R39R5R41R6tgoR0y33:assets%2Fimages%2Freactorroom.pngR2i1448841R3R4R5R42R6tgoR0y28:assets%2Fimages%2Ftomong.pngR2i3548R3R4R5R43R6tgoR0y27:assets%2Fimages%2Ftrans.jpgR2i4635R3R4R5R44R6tgoR0y39:assets%2Fimages%2Fspacep%20-%20Copy.pngR2i4955R3R4R5R45R6tgoR0y49:assets%2Fimages%2Fcampaign_menu_UI_characters.pngR2i2285826R3R4R5R46R6tgoR0y34:assets%2Fimages%2FgfDanceTitle.xmlR2i4259R3R39R5R47R6tgoR0y30:assets%2Fimages%2Falphabet.xmlR2i42116R3R39R5R48R6tgoR0y29:assets%2Fimages%2Fdiscord.pngR2i17108R3R4R5R49R6tgoR0y29:assets%2Fimages%2FOPTIONS.pngR2i25892R3R4R5R50R6tgoR0y42:assets%2Fimages%2FFNF_main_menu_assets.xmlR2i4755R3R39R5R51R6tgoR0y30:assets%2Fimages%2Fmonotone.PNGR2i9621R3R4R5R52R6tgoR0y30:assets%2Fimages%2FamongRun.xmlR2i1123R3R39R5R53R6tgoR0y28:assets%2Fimages%2FmenuGr.pngR2i233951R3R4R5R54R6tgoR0y26:assets%2Fimages%2Fnum0.pngR2i3738R3R4R5R55R6tgoR0y42:assets%2Fimages%2FKadeEngineLogoBumpin.pngR2i1131603R3R4R5R56R6tgoR0y39:assets%2Fimages%2Fstorymenu%2Fweek2.pngR2i6291R3R4R5R57R6tgoR0y39:assets%2Fimages%2Fstorymenu%2Fweek3.pngR2i2974R3R4R5R58R6tgoR0y39:assets%2Fimages%2Fstorymenu%2Fweek1.pngR2i6425R3R4R5R59R6tgoR0y39:assets%2Fimages%2Fstorymenu%2Fweek0.pngR2i5396R3R4R5R60R6tgoR0y34:assets%2Fimages%2FgfDanceTitle.pngR2i1221436R3R4R5R61R6tgoR0y26:assets%2Fimages%2Fnum2.pngR2i3990R3R4R5R62R6tgoR0y49:assets%2Fimages%2Fcampaign_menu_UI_characters.xmlR2i22475R3R39R5R63R6tgoR0y32:assets%2Fimages%2FlogoBumpin.xmlR2i2173R3R39R5R64R6tgoR0y39:assets%2Fimages%2FKadeEngineLogoOld.pngR2i118097R3R4R5R65R6tgoR0y26:assets%2Fimages%2Fnum8.pngR2i3914R3R4R5R66R6tgoR0y33:assets%2Fimages%2FpolusGround.pngR2i52220R3R4R5R67R6tgoR0y42:assets%2Fimages%2FKadeEngineLogoBumpin.xmlR2i2187R3R39R5R68R6tgoR0y32:assets%2Fimages%2FpolusHills.pngR2i122297R3R4R5R69R6tgoR0y26:assets%2Fimages%2Fnum3.pngR2i4022R3R4R5R70R6tgoR0y28:assets%2Fimages%2Fspacep.pngR2i4955R3R4R5R71R6tgoR0y32:assets%2Fimages%2FlogoBumpin.pngR2i576193R3R4R5R72R6tgoR0y45:assets%2Fimages%2Fcampaign_menu_UI_assets.pngR2i27745R3R4R5R73R6tgoR0y32:assets%2Fimages%2FtitleEnter.xmlR2i4875R3R39R5R74R6tgoR0y33:assets%2Fimages%2Freactorball.pngR2i853507R3R4R5R75R6tgoR0y28:assets%2Fimages%2FmenuBG.pngR2i620342R3R4R5R76R6tgoR0y26:assets%2Fimages%2Flogo.pngR2i86924R3R4R5R77R6tgoR0y26:assets%2Fimages%2Fnum6.pngR2i4181R3R4R5R78R6tgoR0y36:assets%2Fimages%2FpolusWarehouse.pngR2i68182R3R4R5R79R6tgoR0y31:assets%2Fimages%2FFREE_PLAY.pngR2i25928R3R4R5R80R6tgoR0y30:assets%2Fimages%2FiconGrid.pngR2i214665R3R4R5R81R6tgoR0y26:assets%2Fimages%2Fnum7.pngR2i3692R3R4R5R82R6tgoR0y31:assets%2Fimages%2FmenuDesat.pngR2i357911R3R4R5R83R6tgoR0y26:assets%2Fimages%2Fnum1.pngR2i3390R3R4R5R84R6tgoR0y42:assets%2Fimages%2FFNF_main_menu_assets.pngR2i281298R3R4R5R85R6tgoR0y27:assets%2Fimages%2Fstory.pngR2i21646R3R4R5R86R6tgoR0y32:assets%2Fimages%2Fpolusrocks.pngR2i436104R3R4R5R87R6tgoR0y28:assets%2Fdata%2Fcontrols.txtR2i324R3R39R5R88R6tgoR0y34:assets%2Fdata%2Fdata-goes-here.txtR2zR3R39R5R89R6tgoR0y36:assets%2Fdata%2FfreeplaySonglist.txtR2i213R3R39R5R90R6tgoR0y42:assets%2Fdata%2Fsussus-moogus%2Fmoogus.txtR2i356R3R39R5R91R6tgoR0y55:assets%2Fdata%2Fsussus-moogus%2Fsussus-moogus-easy.jsonR2i362683R3R39R5R92R6tgoR0y50:assets%2Fdata%2Fsussus-moogus%2Fsussus-moogus.jsonR2i362503R3R39R5R93R6tgoR0y55:assets%2Fdata%2Fsussus-moogus%2Fsussus-moogus-hard.jsonR2i362503R3R39R5R94R6tgoR0y45:assets%2Fdata%2Fsussus-moogus%2Fmoogus-nn.txtR2i337R3R39R5R95R6tgoR0y34:assets%2Fdata%2Fridge%2Fridge.jsonR2i34473R3R39R5R96R6tgoR0y41:assets%2Fdata%2Frivals%2Frivals-hard.jsonR2i523722R3R39R5R97R6tgoR0y36:assets%2Fdata%2Frivals%2Frivals.jsonR2i523722R3R39R5R98R6tgoR0y41:assets%2Fdata%2Frivals%2Frivals-easy.jsonR2i523722R3R39R5R99R6tgoR0y29:assets%2Fdata%2FstageList.txtR2i88R3R39R5R100R6tgoR0y29:assets%2Fdata%2Fmain-view.xmlR2i123R3R39R5R101R6tgoR0y33:assets%2Fdata%2FcharacterList.txtR2i158R3R39R5R102R6tgoR0y33:assets%2Fdata%2FspecialThanks.txtR2i300R3R39R5R103R6tgoR0y51:assets%2Fdata%2Fsussy-bussy%2Fsussy-bussy-easy.jsonR2i550917R3R39R5R104R6tgoR0y51:assets%2Fdata%2Fsussy-bussy%2Fsussy-bussy-hard.jsonR2i550676R3R39R5R105R6tgoR0y46:assets%2Fdata%2Fsussy-bussy%2Fsussy-bussy.jsonR2i550917R3R39R5R106R6tgoR0y51:assets%2Fdata%2Fskinny-nuts%2Fskinny-nuts-easy.jsonR2i17379R3R39R5R107R6tgoR0y46:assets%2Fdata%2Fskinny-nuts%2Fskinny-nuts.jsonR2i17384R3R39R5R108R6tgoR0y51:assets%2Fdata%2Fskinny-nuts%2Fskinny-nuts-hard.jsonR2i17379R3R39R5R109R6tgoR0y38:assets%2Fdata%2Fejected%2Fejected.jsonR2i538297R3R39R5R110R6tgoR0y43:assets%2Fdata%2Fejected%2Fejected-easy.jsonR2i538297R3R39R5R111R6tgoR0y43:assets%2Fdata%2Fejected%2Fejected-hard.jsonR2i538973R3R39R5R112R6tgoR0y29:assets%2Fdata%2FintroText.txtR2i2192R3R39R5R113R6tgoR0y33:assets%2Fdata%2FgfVersionList.txtR2i47R3R39R5R114R6tgoR0y33:assets%2Fdata%2FnoteStyleList.txtR2i12R3R39R5R115R6tgoR0y52:assets%2Fdata%2Fdouble-trouble%2Fdouble-trouble.jsonR2i601316R3R39R5R116R6tgoR0y57:assets%2Fdata%2Fdouble-trouble%2Fdouble-trouble-hard.jsonR2i601316R3R39R5R117R6tgoR0y57:assets%2Fdata%2Fdouble-trouble%2Fdouble-trouble-easy.jsonR2i601316R3R39R5R118R6tgoR0y44:assets%2Fdata%2Foffsettest%2Foffsettest.jsonR2i5741R3R39R5R119R6tgoR0y32:assets%2Fdata%2Ftest%2Ftest.jsonR2i12027R3R39R5R120R6tgoR0y45:assets%2Fdata%2Fchewmate%2Fchewmate-hard.jsonR2i7894R3R39R5R121R6tgoR0y40:assets%2Fdata%2Fchewmate%2Fchewmate.jsonR2i469816R3R39R5R122R6tgoR0y45:assets%2Fdata%2Fchewmate%2Fchewmate-easy.jsonR2i469818R3R39R5R123R6tgoR0y35:assets%2Fdata%2Ftutorial%2F0.offsetR2i1R3R12R5R124R6tgoR0y39:assets%2Fdata%2Ftutorial%2Fmodchart.luaR2i622R3R39R5R125R6tgoR0y45:assets%2Fdata%2Ftutorial%2Ftutorial-easy.jsonR2i5739R3R39R5R126R6tgoR0y45:assets%2Fdata%2Ftutorial%2Ftutorial-hard.jsonR2i6335R3R39R5R127R6tgoR0y40:assets%2Fdata%2Ftutorial%2Ftutorial.jsonR2i5739R3R39R5R128R6tgoR0y41:assets%2Fdata%2Flights-down%2Fdown-nn.txtR2i378R3R39R5R129R6tgoR0y51:assets%2Fdata%2Flights-down%2Flights-down-easy.jsonR2i596678R3R39R5R130R6tgoR0y51:assets%2Fdata%2Flights-down%2Flights-down-hard.jsonR2i596439R3R39R5R131R6tgoR0y46:assets%2Fdata%2Flights-down%2Flights-down.jsonR2i596680R3R39R5R132R6tgoR0y38:assets%2Fdata%2Flights-down%2Fdown.txtR2i401R3R39R5R133R6tgoR0y45:assets%2Fdata%2Fmeltdown%2Fmeltdown-easy.jsonR2i538096R3R39R5R134R6tgoR0y40:assets%2Fdata%2Fmeltdown%2Fmeltdown.jsonR2i537898R3R39R5R135R6tgoR0y45:assets%2Fdata%2Fmeltdown%2Fmeltdown-hard.jsonR2i47589R3R39R5R136R6tgoR0y39:assets%2Fdata%2Fmeltdown%2Fmeltdown.txtR2i225R3R39R5R137R6tgoR0y35:assets%2Fdata%2Fmeltdown%2Fmelt.txtR2i70R3R39R5R138R6tgoR0y42:assets%2Fdata%2Fmeltdown%2Fmeltdown-nn.txtR2i220R3R39R5R139R6tgoR0y45:assets%2Fdata%2Fsussus-toogus%2Ftoogus-nn.txtR2i589R3R39R5R140R6tgoR0y42:assets%2Fdata%2Fsussus-toogus%2Ftoogus.txtR2i715R3R39R5R141R6tgoR0y55:assets%2Fdata%2Fsussus-toogus%2Fsussus-toogus-easy.jsonR2i531087R3R39R5R142R6tgoR0y55:assets%2Fdata%2Fsussus-toogus%2Fsussus-toogus-hard.jsonR2i32757R3R39R5R143R6tgoR0y50:assets%2Fdata%2Fsussus-toogus%2Fsussus-toogus.jsonR2i531089R3R39R5R144R6tgoR0y37:assets%2Fdata%2Fdefeat%2Fmodchart.luaR2i930R3R39R5R145R6tgoR0y36:assets%2Fdata%2Fdefeat%2Fdefeat.jsonR2i528921R3R39R5R146R6tgoR0y41:assets%2Fdata%2Fdefeat%2Fdefeat-easy.jsonR2i528919R3R39R5R147R6tgoR0y41:assets%2Fdata%2Fdefeat%2Fdefeat-hard.jsonR2i528919R3R39R5R148R6tgoR0y43:assets%2Fdata%2Freactor%2Freactor-hard.jsonR2i565178R3R39R5R149R6tgoR0y43:assets%2Fdata%2Freactor%2Freactor-easy.jsonR2i564885R3R39R5R150R6tgoR0y38:assets%2Fdata%2Freactor%2Freactor.jsonR2i565180R3R39R5R151R6tgoR0y37:assets%2Fdata%2Freactor%2Freactor.txtR2i106R3R39R5R152R6tgoR0y45:assets%2Fdata%2Fsabotage%2Fsabotage-easy.jsonR2i534048R3R39R5R153R6tgoR0y40:assets%2Fdata%2Fsabotage%2Fsabotage.jsonR2i544991R3R39R5R154R6tgoR0y45:assets%2Fdata%2Fsabotage%2Fsabotage-hard.jsonR2i31113R3R39R5R155R6tgoR0y39:assets%2Fdata%2Fsabotage%2Fsabotage.txtR2i528R3R39R5R156R6tgoR0y42:assets%2Fdata%2Fsabotage%2Fsabotage-nn.txtR2i494R3R39R5R157R6tgoR0y29:assets%2Fdata%2FweekNames.txtR2i26R3R39R5R158R6tgoR0y46:assets%2Fvideos%2FdaWeirdVid%2FdontDelete.webmR2i10965R3R12R5R159R6tgoR0y37:assets%2Fvideos%2Fmoogus%2Fvideo.webmR2i1970062R3R12R5R160R6tgoR0y36:assets%2Fvideos%2Fmoogus%2Fvideo.txtR2i3R3R39R5R161R6tgoR0y86:assets%2Fvideos%2FDO%20NOT%20DELETE%20OR%20THE%20GAME%20WILL%20CRASH%2FdontDelete.webmR2i10965R3R12R5R162R6tgoR2i91950R3y5:MUSICR5y33:assets%2Fsounds%2FconfirmMenu.mp3y9:pathGroupaR164hR6tgoR2i17762R3R163R5y32:assets%2Fsounds%2FcancelMenu.mp3R165aR166hR6tgoR2i17762R3R163R5y32:assets%2Fsounds%2FscrollMenu.mp3R165aR167hR6tgoR2i2309657R3R163R5y31:assets%2Fmusic%2FfreakyMenu.mp3R165aR168hR6tgoR0y48:mods%2FintroMod%2F_append%2Fdata%2FintroText.txtR2i20R3R39R5R169goR0y17:mods%2Freadme.txtR2i90R3R39R5R170goR0y18:mods%2FmodList.txtR2i8R3R39R5R171goR0y21:do%20NOT%20readme.txtR2i4326R3R39R5R172R6tgoR0y11:LICENSE.txtR2i11407R3R39R5R173R6tgoR2i75864R3y4:FONTy9:classNamey29:__ASSET__assets_fonts_vcr_ttfR5y24:assets%2Ffonts%2Fvcr.ttfR6tgoR2i146348R3R174R175y32:__ASSET__assets_fonts_amatic_ttfR5y27:assets%2Ffonts%2Famatic.ttfR6tgoR2i181204R3R174R175y34:__ASSET__assets_fonts_dialogue_ttfR5y29:assets%2Ffonts%2Fdialogue.ttfR6tgoR0y34:assets%2Ffonts%2Ffonts-go-here.txtR2zR3R39R5R182R6tgoR2i14656R3R174R175y31:__ASSET__assets_fonts_pixel_otfR5y26:assets%2Ffonts%2Fpixel.otfR6tgoR2i182392R3R174R175y32:__ASSET__assets_fonts_flower_ttfR5y27:assets%2Ffonts%2Fflower.ttfR6tgoR2i39706R3R163R5y28:flixel%2Fsounds%2Fflixel.mp3R165aR187y28:flixel%2Fsounds%2Fflixel.ogghR6tgoR2i2114R3R163R5y26:flixel%2Fsounds%2Fbeep.mp3R165aR189y26:flixel%2Fsounds%2Fbeep.ogghR6tgoR2i5794R3y5:SOUNDR5R190R165aR189R190hgoR2i33629R3R191R5R188R165aR187R188hgoR2i15744R3R174R175y35:__ASSET__flixel_fonts_nokiafc22_ttfR5y30:flixel%2Ffonts%2Fnokiafc22.ttfR6tgoR2i29724R3R174R175y36:__ASSET__flixel_fonts_monsterrat_ttfR5y31:flixel%2Ffonts%2Fmonsterrat.ttfR6tgoR0y33:flixel%2Fimages%2Fui%2Fbutton.pngR2i519R3R4R5R196R6tgoR0y36:flixel%2Fimages%2Flogo%2Fdefault.pngR2i3280R3R4R5R197R6tgoR0y39:flixel%2Fflixel-ui%2Fimg%2Ftab_back.pngR2i210R3R4R5R198R6tgoR0y40:flixel%2Fflixel-ui%2Fimg%2Fradio_dot.pngR2i153R3R4R5R199R6tgoR0y36:flixel%2Fflixel-ui%2Fimg%2Finvis.pngR2i128R3R4R5R200R6tgoR0y41:flixel%2Fflixel-ui%2Fimg%2Fcheck_mark.pngR2i946R3R4R5R201R6tgoR0y43:flixel%2Fflixel-ui%2Fimg%2Ffinger_small.pngR2i294R3R4R5R202R6tgoR0y36:flixel%2Fflixel-ui%2Fimg%2Fradio.pngR2i191R3R4R5R203R6tgoR0y37:flixel%2Fflixel-ui%2Fimg%2Fswatch.pngR2i185R3R4R5R204R6tgoR0y37:flixel%2Fflixel-ui%2Fimg%2Fchrome.pngR2i253R3R4R5R205R6tgoR0y44:flixel%2Fflixel-ui%2Fimg%2Ftooltip_arrow.pngR2i18509R3R4R5R206R6tgoR0y49:flixel%2Fflixel-ui%2Fimg%2Fbutton_arrow_right.pngR2i511R3R4R5R207R6tgoR0y44:flixel%2Fflixel-ui%2Fimg%2Fbutton_toggle.pngR2i534R3R4R5R208R6tgoR0y41:flixel%2Fflixel-ui%2Fimg%2Ffinger_big.pngR2i1724R3R4R5R209R6tgoR0y43:flixel%2Fflixel-ui%2Fimg%2Fchrome_inset.pngR2i192R3R4R5R210R6tgoR0y43:flixel%2Fflixel-ui%2Fimg%2Fchrome_light.pngR2i214R3R4R5R211R6tgoR0y42:flixel%2Fflixel-ui%2Fimg%2Fbutton_thin.pngR2i247R3R4R5R212R6tgoR0y34:flixel%2Fflixel-ui%2Fimg%2Fbox.pngR2i912R3R4R5R213R6tgoR0y41:flixel%2Fflixel-ui%2Fimg%2Fminus_mark.pngR2i136R3R4R5R214R6tgoR0y46:flixel%2Fflixel-ui%2Fimg%2Fbutton_arrow_up.pngR2i493R3R4R5R215R6tgoR0y34:flixel%2Fflixel-ui%2Fimg%2Ftab.pngR2i201R3R4R5R216R6tgoR0y37:flixel%2Fflixel-ui%2Fimg%2Fbutton.pngR2i433R3R4R5R217R6tgoR0y40:flixel%2Fflixel-ui%2Fimg%2Fcheck_box.pngR2i922R3R4R5R218R6tgoR0y48:flixel%2Fflixel-ui%2Fimg%2Fbutton_arrow_left.pngR2i459R3R4R5R219R6tgoR0y48:flixel%2Fflixel-ui%2Fimg%2Fbutton_arrow_down.pngR2i446R3R4R5R220R6tgoR0y40:flixel%2Fflixel-ui%2Fimg%2Fplus_mark.pngR2i147R3R4R5R221R6tgoR0y42:flixel%2Fflixel-ui%2Fimg%2Fchrome_flat.pngR2i212R3R4R5R222R6tgoR0y44:flixel%2Fflixel-ui%2Fimg%2Fdropdown_mark.pngR2i156R3R4R5R223R6tgoR0y38:flixel%2Fflixel-ui%2Fimg%2Fhilight.pngR2i129R3R4R5R224R6tgoR0y39:flixel%2Fflixel-ui%2Fxml%2Fdefaults.xmlR2i1263R3R39R5R225R6tgoR0y53:flixel%2Fflixel-ui%2Fxml%2Fdefault_loading_screen.xmlR2i1953R3R39R5R226R6tgoR0y44:flixel%2Fflixel-ui%2Fxml%2Fdefault_popup.xmlR2i1848R3R39R5R227R6tgh","rootPath":null,"version":2,"libraryArgs":[],"libraryType":null}';
		manifest = AssetManifest.parse (data, rootPath);
		library = AssetLibrary.fromManifest (manifest);
		Assets.registerLibrary ("default", library);
		

		library = Assets.getLibrary ("default");
		if (library != null) preloadLibraries.push (library);
		else preloadLibraryNames.push ("default");
		

		#end

	}


}


#if kha

null

#else

#if !display
#if flash

@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_alphabet_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_num5_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_amongrun_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_defeatscroll_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_kadeenginelogo_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_postman extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menubgmagenta_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_icons_icon_crewmate_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_icons_icon_impostor_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_icons_icon_bf_sus_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_icons_icon_whiteimpostor_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_icons_icon_tomongus_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_icons_icon_parasite_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_icons_icon_bfeyes_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_icons_icon_bfr_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_icons_icon_impostorr_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_icons_icon_impostor3_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_icons_icon_ziffy_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_icons_icon_black_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_icons_icon_impostor2_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_icons_icon_bf_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_icons_icon_bf_fall_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_icons_icon_hamster_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_icons_icon_bfg_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_icons_icon_bfclow_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_icons_icon_bf_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_icons_icon_gf_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_titleenter_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menubgblue_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_num9_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_newgrounds_logo_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_defeatscroll_pdn extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_num4_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_campaign_menu_ui_assets_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_reactorroom_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_tomong_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_trans_jpg extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_spacep___copy_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_campaign_menu_ui_characters_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_gfdancetitle_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_alphabet_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_discord_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_options_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_fnf_main_menu_assets_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_monotone_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_amongrun_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menugr_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_num0_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_kadeenginelogobumpin_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_storymenu_week2_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_storymenu_week3_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_storymenu_week1_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_storymenu_week0_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_gfdancetitle_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_num2_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_campaign_menu_ui_characters_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_logobumpin_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_kadeenginelogoold_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_num8_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_polusground_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_kadeenginelogobumpin_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_polushills_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_num3_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_spacep_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_logobumpin_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_campaign_menu_ui_assets_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_titleenter_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_reactorball_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menubg_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_logo_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_num6_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_poluswarehouse_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_free_play_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_icongrid_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_num7_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menudesat_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_num1_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_fnf_main_menu_assets_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_story_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_polusrocks_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_controls_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_data_goes_here_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_freeplaysonglist_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_sussus_moogus_moogus_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_sussus_moogus_sussus_moogus_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_sussus_moogus_sussus_moogus_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_sussus_moogus_sussus_moogus_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_sussus_moogus_moogus_nn_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_ridge_ridge_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_rivals_rivals_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_rivals_rivals_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_rivals_rivals_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_stagelist_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_main_view_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_characterlist_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_specialthanks_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_sussy_bussy_sussy_bussy_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_sussy_bussy_sussy_bussy_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_sussy_bussy_sussy_bussy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_skinny_nuts_skinny_nuts_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_skinny_nuts_skinny_nuts_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_skinny_nuts_skinny_nuts_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_ejected_ejected_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_ejected_ejected_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_ejected_ejected_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_introtext_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_gfversionlist_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_notestylelist_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_double_trouble_double_trouble_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_double_trouble_double_trouble_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_double_trouble_double_trouble_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_offsettest_offsettest_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_test_test_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_chewmate_chewmate_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_chewmate_chewmate_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_chewmate_chewmate_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_tutorial_0_offset extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_tutorial_modchart_lua extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_tutorial_tutorial_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_tutorial_tutorial_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_tutorial_tutorial_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_lights_down_down_nn_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_lights_down_lights_down_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_lights_down_lights_down_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_lights_down_lights_down_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_lights_down_down_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_meltdown_meltdown_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_meltdown_meltdown_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_meltdown_meltdown_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_meltdown_meltdown_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_meltdown_melt_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_meltdown_meltdown_nn_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_sussus_toogus_toogus_nn_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_sussus_toogus_toogus_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_sussus_toogus_sussus_toogus_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_sussus_toogus_sussus_toogus_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_sussus_toogus_sussus_toogus_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_defeat_modchart_lua extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_defeat_defeat_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_defeat_defeat_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_defeat_defeat_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_reactor_reactor_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_reactor_reactor_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_reactor_reactor_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_reactor_reactor_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_sabotage_sabotage_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_sabotage_sabotage_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_sabotage_sabotage_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_sabotage_sabotage_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_sabotage_sabotage_nn_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_weeknames_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_videos_daweirdvid_dontdelete_webm extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_videos_moogus_video_webm extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_videos_moogus_video_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_videos_do_not_delete_or_the_game_will_crash_dontdelete_webm extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_confirmmenu_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_cancelmenu_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_scrollmenu_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_music_freakymenu_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_sussus_moogus_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_sussus_moogus_voices_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_offsettest_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_test_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_test_voices_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_tutorial_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_meltdown_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_meltdown_voices_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_sussus_toogus_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_sussus_toogus_voices_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_sabotage_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_sabotage_voices_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_speech_bubble_talking_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_vending_machinedark_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_ready_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_week54prototype_png___shortcut_lnk extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_stage_light_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_set_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_lose_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_screencaptierimage_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_miradark_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_vending_machine_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_defeatfnf_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_spiritfaceforward_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_bfportrait_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_animatedevilschool_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_petals_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_senpaicrazy_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_animatedevilschool_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_petals_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_bgfreaks_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_weebstreet_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_bgfreaks_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_weebtrees_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_bfportrait_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_weebsky_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_weebtrees_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_shit_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_dialoguebox_senpaimad_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_num5_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_num1_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_dialoguebox_pixel_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_date_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_num0_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_arrowends_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_num2_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_hand_textbox_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_num8_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_ready_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_dialoguebox_evil_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_dialoguebox_senpaimad_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_arrows_pixels_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_num3_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_sick_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_num6_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_good_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_num4_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_dialoguebox_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_combo_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_num9_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_set_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_num7_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_dialoguebox_evil_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_bad_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_weebtreesback_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_senpaiportrait_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_weebschool_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_evilschoolbg_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_senpaicrazy_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_senpaiportrait_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_evilschoolfg_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_healthbar_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_restart_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_zzzzzzzz_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_sick_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_skeld_front_bg_old_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_notesplashes_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_miragradient_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_note_assets_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_pausealt_pausebg_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_pausealt_bflol_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_pausealt_pauseui_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_pausealt_bflol_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_pausealt_pauseui_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_notesplashes_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_mira_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_tabledark_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_stagefront_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_go_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_grafix_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_combo_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_backspace_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_selectedbutton_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_nuts_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_backspace_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_bad_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_shit_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_lol_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_skyfall_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_skeld_sky_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_stagecurtains_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_dialogue_gf_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_dialogue_green_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_dialogue_bf_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_dialogue_gf_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_dialogue_bf_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_dialogue_green_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_dialogue_assets___shortcut_lnk extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_dialogue_box_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_dialogue_red_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_dialogue_red_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_stageback_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_idlebutton_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_good_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_table_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_skyfall_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_vignette_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_speech_bubble_talking_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_week54prototype_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_lose_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_images_go_here_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_gf_assets_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_hamster_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_bffly_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_bfghost_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_bfpixelsdead_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_gfpixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_gfoffsets_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_bffly_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_gf_pixeloffsets_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_gf_parachute_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_bfpixelsdead_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_impostor3_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_impostor3_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_black_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_gf_assets_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_impostorr_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_bfsus_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_hamster_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_tomongus_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_impostor_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_crewmate_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_impostor2_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_impostor_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_tomongus_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_gfr_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_parasite_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_bf_pixeloffsets_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_gfroffsets_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_boyfriend_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_gfghost_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_gfpixel_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_bfsus_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_dadoffsets_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_impostorr_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_whitegreen_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_bfgoffsets_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_gfghost_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_clowofe_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_bfpixel_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_boyfriend_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_black_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_bfghost_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_gf_caroffsets_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_whitebf_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_bfr_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_bfeyesoffsets_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_impostor2_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_whitebf_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_bf_susoffsets_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_bf_pixel_deadoffsets_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_clowofe_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_whitegreen_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_gfcar_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_gf_christmasoffsets_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_crewmate_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_gfcar_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_bfpixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_bfr_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_parasite_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_bfoffsets_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_gf_parachute_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_gfr_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_note_assets_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_snap_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_intro1_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_angry_text_box_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_thunder_1_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_clap_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_gf_3_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_pixeltext_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_missnote1_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_badnoise3_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_angry_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_clicktext_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_intro2_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_introgo_pixel_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_lights_turn_on_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_introgo_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_fnf_loss_sfx_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_senpai_dies_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_gf_4_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_missnote3_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_badnoise1_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_thunder_2_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_sounds_go_here_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_gf_1_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_intro2_pixel_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_intro1_pixel_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_badnoise2_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_lights_shut_off_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_intro3_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_soundtest_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_missnote2_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_fnf_loss_sfx_pixel_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_gf_2_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_train_passes_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_carpass1_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_carpass0_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_intro3_pixel_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_music_gameoverend_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_music_gameover_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_music_breakfast_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_impostor_images_my_fat_nuts_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_impostor_images_ejected_buildingb2_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_impostor_images_ejected_sky_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_impostor_images_ejected_explosion_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_impostor_images_ejected_buildingb_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_impostor_images_ejected_buildingsheet_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_impostor_images_ejected_buildings_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_impostor_images_ejected_scrollingclouds_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_impostor_images_ejected_explosion_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_impostor_images_ejected_buildingsheet_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_impostor_images_ejected_speedlines_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_impostor_images_ejected_eye_shine_thing_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_impostor_images_ejected_buildinga_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_impostor_images_ejected_fgclouds_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_impostor_images_ejected_buildinga2_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_impostor_images_ejected_eye_shine_thing_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_impostor_images_ejected_scrollingclouds_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_impostor_images_menubooba_starttext_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_impostor_images_menubooba_starfg_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_impostor_images_menubooba_buttonsheet_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_impostor_images_menubooba_hoverbutton_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_impostor_images_menubooba_starbg_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_impostor_images_menubooba_idlebutton_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_impostor_images_menubooba_impostormenu_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_impostor_images_menubooba_impostormenu_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_impostor_images_menubooba_buttonsheet_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_impostor_images_menubooba_vignette_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_impostor_images_menubooba_starttext_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_impostor_images_menu_hoverbutton_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_impostor_images_menu_idlebutton_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_impostor_images_menu_impostormenu_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_impostor_images_menu_impostormenu_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_impostor_images_polus_bfdead_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_impostor_images_polus_crowdbop_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_impostor_images_polus_polussky_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_impostor_images_polus_polusground_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_impostor_images_polus_polushills_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_impostor_images_polus_crowdbop_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_impostor_images_polus_poluswarehouse_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_impostor_images_polus_polusrocks_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_impostor_images_menu_naughtymeny_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_impostor_images_menu_naughtymeny_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_impostor_images_menu_starfg_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_impostor_images_menu_buttonsheet_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_impostor_images_menu_naughty_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_impostor_images_menu_starbg_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_impostor_images_menu_buttonsheet_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_impostor_images_menu_vignette_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_impostor_images_cutscenes_bf_week1_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_impostor_images_cutscenes_bf_week1_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_impostor_images_cutscenes_gf_week1_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_impostor_images_cutscenes_imposter_week1_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_impostor_images_cutscenes_gf_week1_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_impostor_images_cutscenes_imposter_week1_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_impostor_images_dialogue_greenimpostor_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_impostor_images_dialogue_girlfriend_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_impostor_images_dialogue_rightcharacter_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_impostor_images_dialogue_boyfriend_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_impostor_images_dialogue_rightcharacter_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_impostor_images_dialogue_greenimpostor_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_impostor_images_dialogue_boyfriend_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_impostor_images_dialogue_redimpostor_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_impostor_images_dialogue_girlfriend_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_impostor_images_dialogue_dialoguebox_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_impostor_images_dialogue_redimpostor_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_impostor_images_reactor_reference_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_impostor_images_reactor_white_sus_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_impostor_images_reactor_front_pillars_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_impostor_images_reactor_susboppers_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_impostor_images_reactor_yellow_sus_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_impostor_images_reactor_back_pillars_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_impostor_images_reactor_blue_sus_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_impostor_images_reactor_upper_cranes_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_impostor_images_reactor_susboppers_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_impostor_images_reactor_middle_pillars_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_impostor_images_reactor_center_console_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_impostor_images_reactor_brown_sus_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_impostor_images_reactor_ball_of_big_ol_energy_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_impostor_images_reactor_reactor_background_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_impostor_images_reactor_side_console_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_impostor_images_characters_gfoffsets_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_impostor_images_characters_boyfriend_assets_impostor_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_impostor_images_characters_impostor_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_impostor_images_characters_impostor_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_impostor_images_characters_nomoreballs_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_impostor_images_characters_ziffy_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_impostor_images_characters_impostorpolus_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_impostor_images_characters_defeatdeath_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_impostor_images_characters_gf_ass_sets_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_impostor_images_characters_defeatdeath_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_impostor_images_characters_boyfriend_assets_impostor_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_impostor_images_characters_ziffy_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_impostor_images_characters_nomoreballs_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_impostor_images_characters_impostorpolus_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_impostor_images_characters_gf_ass_sets_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_impostor_sounds_fire_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sm_how_to_add_sm_files_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_intromod__append_data_introtext_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_readme_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_modlist_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__do_not_readme_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__license_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_fonts_vcr_ttf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_fonts_amatic_ttf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_fonts_dialogue_ttf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_fonts_fonts_go_here_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_fonts_pixel_otf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_fonts_flower_ttf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_sounds_flixel_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_sounds_beep_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_sounds_beep_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_sounds_flixel_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_fonts_nokiafc22_ttf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_fonts_monsterrat_ttf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_images_ui_button_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_images_logo_default_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_tab_back_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_radio_dot_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_invis_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_check_mark_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_finger_small_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_radio_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_swatch_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_chrome_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_tooltip_arrow_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_arrow_right_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_toggle_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_finger_big_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_chrome_inset_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_chrome_light_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_thin_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_box_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_minus_mark_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_arrow_up_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_tab_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_check_box_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_arrow_left_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_arrow_down_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_plus_mark_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_chrome_flat_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_dropdown_mark_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_hilight_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_xml_defaults_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_xml_default_loading_screen_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_xml_default_popup_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__manifest_songs_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__manifest_shared_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__manifest_impostor_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__manifest_sm_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__manifest_default_json extends null { }


#elseif (desktop || cpp)

@:keep @:image("assets/preload/images/alphabet.png") @:noCompletion #if display private #end class __ASSET__assets_images_alphabet_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/num5.png") @:noCompletion #if display private #end class __ASSET__assets_images_num5_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/amongRun.png") @:noCompletion #if display private #end class __ASSET__assets_images_amongrun_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/defeatScroll.png") @:noCompletion #if display private #end class __ASSET__assets_images_defeatscroll_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/KadeEngineLogo.png") @:noCompletion #if display private #end class __ASSET__assets_images_kadeenginelogo_png extends lime.graphics.Image {}
@:keep @:file("assets/preload/images/postman") @:noCompletion #if display private #end class __ASSET__assets_images_postman extends haxe.io.Bytes {}
@:keep @:image("assets/preload/images/menuBGMagenta.png") @:noCompletion #if display private #end class __ASSET__assets_images_menubgmagenta_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/icons/icon-crewmate.png") @:noCompletion #if display private #end class __ASSET__assets_images_icons_icon_crewmate_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/icons/icon-impostor.png") @:noCompletion #if display private #end class __ASSET__assets_images_icons_icon_impostor_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/icons/icon-bf-sus.png") @:noCompletion #if display private #end class __ASSET__assets_images_icons_icon_bf_sus_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/icons/icon-whiteimpostor.png") @:noCompletion #if display private #end class __ASSET__assets_images_icons_icon_whiteimpostor_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/icons/icon-tomongus.png") @:noCompletion #if display private #end class __ASSET__assets_images_icons_icon_tomongus_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/icons/icon-parasite.png") @:noCompletion #if display private #end class __ASSET__assets_images_icons_icon_parasite_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/icons/icon-bfeyes.png") @:noCompletion #if display private #end class __ASSET__assets_images_icons_icon_bfeyes_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/icons/icon-bfr.png") @:noCompletion #if display private #end class __ASSET__assets_images_icons_icon_bfr_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/icons/icon-impostorr.png") @:noCompletion #if display private #end class __ASSET__assets_images_icons_icon_impostorr_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/icons/icon-impostor3.png") @:noCompletion #if display private #end class __ASSET__assets_images_icons_icon_impostor3_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/icons/icon-ziffy.png") @:noCompletion #if display private #end class __ASSET__assets_images_icons_icon_ziffy_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/icons/icon-black.png") @:noCompletion #if display private #end class __ASSET__assets_images_icons_icon_black_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/icons/icon-impostor2.png") @:noCompletion #if display private #end class __ASSET__assets_images_icons_icon_impostor2_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/icons/icon-bf-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_images_icons_icon_bf_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/icons/icon-bf-fall.png") @:noCompletion #if display private #end class __ASSET__assets_images_icons_icon_bf_fall_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/icons/icon-hamster.png") @:noCompletion #if display private #end class __ASSET__assets_images_icons_icon_hamster_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/icons/icon-bfg.png") @:noCompletion #if display private #end class __ASSET__assets_images_icons_icon_bfg_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/icons/icon-bfclow.png") @:noCompletion #if display private #end class __ASSET__assets_images_icons_icon_bfclow_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/icons/icon-bf.png") @:noCompletion #if display private #end class __ASSET__assets_images_icons_icon_bf_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/icons/icon-gf.png") @:noCompletion #if display private #end class __ASSET__assets_images_icons_icon_gf_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/titleEnter.png") @:noCompletion #if display private #end class __ASSET__assets_images_titleenter_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/menuBGBlue.png") @:noCompletion #if display private #end class __ASSET__assets_images_menubgblue_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/num9.png") @:noCompletion #if display private #end class __ASSET__assets_images_num9_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/newgrounds_logo.png") @:noCompletion #if display private #end class __ASSET__assets_images_newgrounds_logo_png extends lime.graphics.Image {}
@:keep @:file("assets/preload/images/defeatScroll.pdn") @:noCompletion #if display private #end class __ASSET__assets_images_defeatscroll_pdn extends haxe.io.Bytes {}
@:keep @:image("assets/preload/images/num4.png") @:noCompletion #if display private #end class __ASSET__assets_images_num4_png extends lime.graphics.Image {}
@:keep @:file("assets/preload/images/campaign_menu_UI_assets.xml") @:noCompletion #if display private #end class __ASSET__assets_images_campaign_menu_ui_assets_xml extends haxe.io.Bytes {}
@:keep @:image("assets/preload/images/reactorroom.png") @:noCompletion #if display private #end class __ASSET__assets_images_reactorroom_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/tomong.png") @:noCompletion #if display private #end class __ASSET__assets_images_tomong_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/trans.jpg") @:noCompletion #if display private #end class __ASSET__assets_images_trans_jpg extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/spacep - Copy.png") @:noCompletion #if display private #end class __ASSET__assets_images_spacep___copy_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/campaign_menu_UI_characters.png") @:noCompletion #if display private #end class __ASSET__assets_images_campaign_menu_ui_characters_png extends lime.graphics.Image {}
@:keep @:file("assets/preload/images/gfDanceTitle.xml") @:noCompletion #if display private #end class __ASSET__assets_images_gfdancetitle_xml extends haxe.io.Bytes {}
@:keep @:file("assets/preload/images/alphabet.xml") @:noCompletion #if display private #end class __ASSET__assets_images_alphabet_xml extends haxe.io.Bytes {}
@:keep @:image("assets/preload/images/discord.png") @:noCompletion #if display private #end class __ASSET__assets_images_discord_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/OPTIONS.png") @:noCompletion #if display private #end class __ASSET__assets_images_options_png extends lime.graphics.Image {}
@:keep @:file("assets/preload/images/FNF_main_menu_assets.xml") @:noCompletion #if display private #end class __ASSET__assets_images_fnf_main_menu_assets_xml extends haxe.io.Bytes {}
@:keep @:image("assets/preload/images/monotone.PNG") @:noCompletion #if display private #end class __ASSET__assets_images_monotone_png extends lime.graphics.Image {}
@:keep @:file("assets/preload/images/amongRun.xml") @:noCompletion #if display private #end class __ASSET__assets_images_amongrun_xml extends haxe.io.Bytes {}
@:keep @:image("assets/preload/images/menuGr.png") @:noCompletion #if display private #end class __ASSET__assets_images_menugr_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/num0.png") @:noCompletion #if display private #end class __ASSET__assets_images_num0_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/KadeEngineLogoBumpin.png") @:noCompletion #if display private #end class __ASSET__assets_images_kadeenginelogobumpin_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/storymenu/week2.png") @:noCompletion #if display private #end class __ASSET__assets_images_storymenu_week2_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/storymenu/week3.png") @:noCompletion #if display private #end class __ASSET__assets_images_storymenu_week3_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/storymenu/week1.png") @:noCompletion #if display private #end class __ASSET__assets_images_storymenu_week1_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/storymenu/week0.png") @:noCompletion #if display private #end class __ASSET__assets_images_storymenu_week0_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/gfDanceTitle.png") @:noCompletion #if display private #end class __ASSET__assets_images_gfdancetitle_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/num2.png") @:noCompletion #if display private #end class __ASSET__assets_images_num2_png extends lime.graphics.Image {}
@:keep @:file("assets/preload/images/campaign_menu_UI_characters.xml") @:noCompletion #if display private #end class __ASSET__assets_images_campaign_menu_ui_characters_xml extends haxe.io.Bytes {}
@:keep @:file("assets/preload/images/logoBumpin.xml") @:noCompletion #if display private #end class __ASSET__assets_images_logobumpin_xml extends haxe.io.Bytes {}
@:keep @:image("assets/preload/images/KadeEngineLogoOld.png") @:noCompletion #if display private #end class __ASSET__assets_images_kadeenginelogoold_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/num8.png") @:noCompletion #if display private #end class __ASSET__assets_images_num8_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/polusGround.png") @:noCompletion #if display private #end class __ASSET__assets_images_polusground_png extends lime.graphics.Image {}
@:keep @:file("assets/preload/images/KadeEngineLogoBumpin.xml") @:noCompletion #if display private #end class __ASSET__assets_images_kadeenginelogobumpin_xml extends haxe.io.Bytes {}
@:keep @:image("assets/preload/images/polusHills.png") @:noCompletion #if display private #end class __ASSET__assets_images_polushills_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/num3.png") @:noCompletion #if display private #end class __ASSET__assets_images_num3_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/spacep.png") @:noCompletion #if display private #end class __ASSET__assets_images_spacep_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/logoBumpin.png") @:noCompletion #if display private #end class __ASSET__assets_images_logobumpin_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/campaign_menu_UI_assets.png") @:noCompletion #if display private #end class __ASSET__assets_images_campaign_menu_ui_assets_png extends lime.graphics.Image {}
@:keep @:file("assets/preload/images/titleEnter.xml") @:noCompletion #if display private #end class __ASSET__assets_images_titleenter_xml extends haxe.io.Bytes {}
@:keep @:image("assets/preload/images/reactorball.png") @:noCompletion #if display private #end class __ASSET__assets_images_reactorball_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/menuBG.png") @:noCompletion #if display private #end class __ASSET__assets_images_menubg_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/logo.png") @:noCompletion #if display private #end class __ASSET__assets_images_logo_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/num6.png") @:noCompletion #if display private #end class __ASSET__assets_images_num6_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/polusWarehouse.png") @:noCompletion #if display private #end class __ASSET__assets_images_poluswarehouse_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/FREE_PLAY.png") @:noCompletion #if display private #end class __ASSET__assets_images_free_play_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/iconGrid.png") @:noCompletion #if display private #end class __ASSET__assets_images_icongrid_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/num7.png") @:noCompletion #if display private #end class __ASSET__assets_images_num7_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/menuDesat.png") @:noCompletion #if display private #end class __ASSET__assets_images_menudesat_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/num1.png") @:noCompletion #if display private #end class __ASSET__assets_images_num1_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/FNF_main_menu_assets.png") @:noCompletion #if display private #end class __ASSET__assets_images_fnf_main_menu_assets_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/story.png") @:noCompletion #if display private #end class __ASSET__assets_images_story_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/polusrocks.png") @:noCompletion #if display private #end class __ASSET__assets_images_polusrocks_png extends lime.graphics.Image {}
@:keep @:file("assets/preload/data/controls.txt") @:noCompletion #if display private #end class __ASSET__assets_data_controls_txt extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/data-goes-here.txt") @:noCompletion #if display private #end class __ASSET__assets_data_data_goes_here_txt extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/freeplaySonglist.txt") @:noCompletion #if display private #end class __ASSET__assets_data_freeplaysonglist_txt extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/sussus-moogus/moogus.txt") @:noCompletion #if display private #end class __ASSET__assets_data_sussus_moogus_moogus_txt extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/sussus-moogus/sussus-moogus-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_sussus_moogus_sussus_moogus_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/sussus-moogus/sussus-moogus.json") @:noCompletion #if display private #end class __ASSET__assets_data_sussus_moogus_sussus_moogus_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/sussus-moogus/sussus-moogus-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_sussus_moogus_sussus_moogus_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/sussus-moogus/moogus-nn.txt") @:noCompletion #if display private #end class __ASSET__assets_data_sussus_moogus_moogus_nn_txt extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/ridge/ridge.json") @:noCompletion #if display private #end class __ASSET__assets_data_ridge_ridge_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/rivals/rivals-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_rivals_rivals_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/rivals/rivals.json") @:noCompletion #if display private #end class __ASSET__assets_data_rivals_rivals_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/rivals/rivals-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_rivals_rivals_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/stageList.txt") @:noCompletion #if display private #end class __ASSET__assets_data_stagelist_txt extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/main-view.xml") @:noCompletion #if display private #end class __ASSET__assets_data_main_view_xml extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/characterList.txt") @:noCompletion #if display private #end class __ASSET__assets_data_characterlist_txt extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/specialThanks.txt") @:noCompletion #if display private #end class __ASSET__assets_data_specialthanks_txt extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/sussy-bussy/sussy-bussy-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_sussy_bussy_sussy_bussy_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/sussy-bussy/sussy-bussy-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_sussy_bussy_sussy_bussy_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/sussy-bussy/sussy-bussy.json") @:noCompletion #if display private #end class __ASSET__assets_data_sussy_bussy_sussy_bussy_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/skinny-nuts/skinny-nuts-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_skinny_nuts_skinny_nuts_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/skinny-nuts/skinny-nuts.json") @:noCompletion #if display private #end class __ASSET__assets_data_skinny_nuts_skinny_nuts_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/skinny-nuts/skinny-nuts-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_skinny_nuts_skinny_nuts_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/ejected/ejected.json") @:noCompletion #if display private #end class __ASSET__assets_data_ejected_ejected_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/ejected/ejected-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_ejected_ejected_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/ejected/ejected-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_ejected_ejected_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/introText.txt") @:noCompletion #if display private #end class __ASSET__assets_data_introtext_txt extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/gfVersionList.txt") @:noCompletion #if display private #end class __ASSET__assets_data_gfversionlist_txt extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/noteStyleList.txt") @:noCompletion #if display private #end class __ASSET__assets_data_notestylelist_txt extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/double-trouble/double-trouble.json") @:noCompletion #if display private #end class __ASSET__assets_data_double_trouble_double_trouble_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/double-trouble/double-trouble-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_double_trouble_double_trouble_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/double-trouble/double-trouble-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_double_trouble_double_trouble_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/offsettest/offsettest.json") @:noCompletion #if display private #end class __ASSET__assets_data_offsettest_offsettest_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/test/test.json") @:noCompletion #if display private #end class __ASSET__assets_data_test_test_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/chewmate/chewmate-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_chewmate_chewmate_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/chewmate/chewmate.json") @:noCompletion #if display private #end class __ASSET__assets_data_chewmate_chewmate_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/chewmate/chewmate-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_chewmate_chewmate_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/tutorial/0.offset") @:noCompletion #if display private #end class __ASSET__assets_data_tutorial_0_offset extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/tutorial/modchart.lua") @:noCompletion #if display private #end class __ASSET__assets_data_tutorial_modchart_lua extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/tutorial/tutorial-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_tutorial_tutorial_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/tutorial/tutorial-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_tutorial_tutorial_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/tutorial/tutorial.json") @:noCompletion #if display private #end class __ASSET__assets_data_tutorial_tutorial_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/lights-down/down-nn.txt") @:noCompletion #if display private #end class __ASSET__assets_data_lights_down_down_nn_txt extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/lights-down/lights-down-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_lights_down_lights_down_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/lights-down/lights-down-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_lights_down_lights_down_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/lights-down/lights-down.json") @:noCompletion #if display private #end class __ASSET__assets_data_lights_down_lights_down_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/lights-down/down.txt") @:noCompletion #if display private #end class __ASSET__assets_data_lights_down_down_txt extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/meltdown/meltdown-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_meltdown_meltdown_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/meltdown/meltdown.json") @:noCompletion #if display private #end class __ASSET__assets_data_meltdown_meltdown_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/meltdown/meltdown-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_meltdown_meltdown_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/meltdown/meltdown.txt") @:noCompletion #if display private #end class __ASSET__assets_data_meltdown_meltdown_txt extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/meltdown/melt.txt") @:noCompletion #if display private #end class __ASSET__assets_data_meltdown_melt_txt extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/meltdown/meltdown-nn.txt") @:noCompletion #if display private #end class __ASSET__assets_data_meltdown_meltdown_nn_txt extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/sussus-toogus/toogus-nn.txt") @:noCompletion #if display private #end class __ASSET__assets_data_sussus_toogus_toogus_nn_txt extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/sussus-toogus/toogus.txt") @:noCompletion #if display private #end class __ASSET__assets_data_sussus_toogus_toogus_txt extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/sussus-toogus/sussus-toogus-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_sussus_toogus_sussus_toogus_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/sussus-toogus/sussus-toogus-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_sussus_toogus_sussus_toogus_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/sussus-toogus/sussus-toogus.json") @:noCompletion #if display private #end class __ASSET__assets_data_sussus_toogus_sussus_toogus_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/defeat/modchart.lua") @:noCompletion #if display private #end class __ASSET__assets_data_defeat_modchart_lua extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/defeat/defeat.json") @:noCompletion #if display private #end class __ASSET__assets_data_defeat_defeat_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/defeat/defeat-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_defeat_defeat_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/defeat/defeat-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_defeat_defeat_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/reactor/reactor-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_reactor_reactor_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/reactor/reactor-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_reactor_reactor_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/reactor/reactor.json") @:noCompletion #if display private #end class __ASSET__assets_data_reactor_reactor_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/reactor/reactor.txt") @:noCompletion #if display private #end class __ASSET__assets_data_reactor_reactor_txt extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/sabotage/sabotage-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_sabotage_sabotage_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/sabotage/sabotage.json") @:noCompletion #if display private #end class __ASSET__assets_data_sabotage_sabotage_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/sabotage/sabotage-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_sabotage_sabotage_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/sabotage/sabotage.txt") @:noCompletion #if display private #end class __ASSET__assets_data_sabotage_sabotage_txt extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/sabotage/sabotage-nn.txt") @:noCompletion #if display private #end class __ASSET__assets_data_sabotage_sabotage_nn_txt extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/weekNames.txt") @:noCompletion #if display private #end class __ASSET__assets_data_weeknames_txt extends haxe.io.Bytes {}
@:keep @:file("assets/preload/videos/daWeirdVid/dontDelete.webm") @:noCompletion #if display private #end class __ASSET__assets_videos_daweirdvid_dontdelete_webm extends haxe.io.Bytes {}
@:keep @:file("assets/preload/videos/moogus/video.webm") @:noCompletion #if display private #end class __ASSET__assets_videos_moogus_video_webm extends haxe.io.Bytes {}
@:keep @:file("assets/preload/videos/moogus/video.txt") @:noCompletion #if display private #end class __ASSET__assets_videos_moogus_video_txt extends haxe.io.Bytes {}
@:keep @:file("assets/preload/videos/DO NOT DELETE OR THE GAME WILL CRASH/dontDelete.webm") @:noCompletion #if display private #end class __ASSET__assets_videos_do_not_delete_or_the_game_will_crash_dontdelete_webm extends haxe.io.Bytes {}
@:keep @:file("assets/preload/sounds/confirmMenu.mp3") @:noCompletion #if display private #end class __ASSET__assets_sounds_confirmmenu_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/preload/sounds/cancelMenu.mp3") @:noCompletion #if display private #end class __ASSET__assets_sounds_cancelmenu_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/preload/sounds/scrollMenu.mp3") @:noCompletion #if display private #end class __ASSET__assets_sounds_scrollmenu_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/preload/music/freakyMenu.mp3") @:noCompletion #if display private #end class __ASSET__assets_music_freakymenu_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/sussus-moogus/Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_sussus_moogus_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/sussus-moogus/Voices.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_sussus_moogus_voices_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/offsettest/Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_offsettest_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/test/Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_test_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/test/Voices.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_test_voices_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/tutorial/Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_tutorial_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/meltdown/Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_meltdown_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/meltdown/Voices.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_meltdown_voices_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/sussus-toogus/Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_sussus_toogus_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/sussus-toogus/Voices.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_sussus_toogus_voices_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/sabotage/Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_sabotage_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/sabotage/Voices.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_sabotage_voices_mp3 extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/speech_bubble_talking.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_speech_bubble_talking_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/vending_machineDark.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_vending_machinedark_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/ready.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_ready_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/week54prototype.png - Shortcut.lnk") @:noCompletion #if display private #end class __ASSET__assets_shared_images_week54prototype_png___shortcut_lnk extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/stage_light.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_stage_light_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/set.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_set_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/lose.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_lose_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/screencapTierImage.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_screencaptierimage_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/MiraDark.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_miradark_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/vending_machine.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_vending_machine_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/defeatfnf.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_defeatfnf_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/weeb/spiritFaceForward.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_spiritfaceforward_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/weeb/bfPortrait.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_bfportrait_xml extends haxe.io.Bytes {}
@:keep @:file("assets/shared/images/weeb/animatedEvilSchool.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_animatedevilschool_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/weeb/petals.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_petals_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/weeb/senpaiCrazy.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_senpaicrazy_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/weeb/animatedEvilSchool.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_animatedevilschool_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/weeb/petals.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_petals_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/weeb/bgFreaks.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_bgfreaks_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/weeb/weebStreet.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_weebstreet_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/weeb/bgFreaks.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_bgfreaks_xml extends haxe.io.Bytes {}
@:keep @:file("assets/shared/images/weeb/weebTrees.txt") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_weebtrees_txt extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/weeb/bfPortrait.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_bfportrait_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/weeb/weebSky.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_weebsky_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/weeb/weebTrees.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_weebtrees_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/weeb/pixelUI/shit-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_shit_pixel_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/weeb/pixelUI/dialogueBox-senpaiMad.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_dialoguebox_senpaimad_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/weeb/pixelUI/num5-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_num5_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/weeb/pixelUI/num1-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_num1_pixel_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/weeb/pixelUI/dialogueBox-pixel.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_dialoguebox_pixel_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/weeb/pixelUI/date-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_date_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/weeb/pixelUI/num0-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_num0_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/weeb/pixelUI/arrowEnds.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_arrowends_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/weeb/pixelUI/num2-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_num2_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/weeb/pixelUI/hand_textbox.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_hand_textbox_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/weeb/pixelUI/num8-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_num8_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/weeb/pixelUI/ready-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_ready_pixel_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/weeb/pixelUI/dialogueBox-evil.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_dialoguebox_evil_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/weeb/pixelUI/dialogueBox-senpaiMad.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_dialoguebox_senpaimad_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/weeb/pixelUI/arrows-pixels.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_arrows_pixels_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/weeb/pixelUI/num3-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_num3_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/weeb/pixelUI/sick-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_sick_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/weeb/pixelUI/num6-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_num6_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/weeb/pixelUI/good-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_good_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/weeb/pixelUI/num4-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_num4_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/weeb/pixelUI/dialogueBox-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_dialoguebox_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/weeb/pixelUI/combo-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_combo_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/weeb/pixelUI/num9-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_num9_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/weeb/pixelUI/set-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_set_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/weeb/pixelUI/num7-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_num7_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/weeb/pixelUI/dialogueBox-evil.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_dialoguebox_evil_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/weeb/pixelUI/bad-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_bad_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/weeb/weebTreesBack.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_weebtreesback_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/weeb/senpaiPortrait.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_senpaiportrait_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/weeb/weebSchool.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_weebschool_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/weeb/evilSchoolBG.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_evilschoolbg_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/weeb/senpaiCrazy.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_senpaicrazy_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/weeb/senpaiPortrait.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_senpaiportrait_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/weeb/evilSchoolFG.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_evilschoolfg_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/healthBar.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_healthbar_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/restart.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_restart_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/zzzzzzzz.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_zzzzzzzz_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/sick.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_sick_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/Skeld_Front_BG_Old.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_skeld_front_bg_old_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/noteSplashes.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_notesplashes_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/MiraGradient.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_miragradient_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/NOTE_assets.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_note_assets_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/pauseAlt/pauseBG.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_pausealt_pausebg_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/pauseAlt/bfLol.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_pausealt_bflol_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/pauseAlt/pauseUI.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_pausealt_pauseui_xml extends haxe.io.Bytes {}
@:keep @:file("assets/shared/images/pauseAlt/bfLol.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_pausealt_bflol_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/pauseAlt/pauseUI.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_pausealt_pauseui_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/noteSplashes.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_notesplashes_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/Mira.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_mira_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/tableDark.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_tabledark_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/stagefront.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_stagefront_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/go.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_go_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/grafix.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_grafix_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/combo.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_combo_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/backspace.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_backspace_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/selectedButton.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_selectedbutton_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/nuts.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_nuts_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/backspace.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_backspace_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/bad.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_bad_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/shit.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_shit_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/lol.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_lol_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/SkyFall.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_skyfall_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/Skeld_Sky.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_skeld_sky_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/stagecurtains.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_stagecurtains_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/dialogue/gf.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_dialogue_gf_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/dialogue/green.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_dialogue_green_xml extends haxe.io.Bytes {}
@:keep @:file("assets/shared/images/dialogue/bf.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_dialogue_bf_xml extends haxe.io.Bytes {}
@:keep @:file("assets/shared/images/dialogue/gf.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_dialogue_gf_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/dialogue/bf.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_dialogue_bf_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/dialogue/green.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_dialogue_green_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/dialogue/assets - Shortcut.lnk") @:noCompletion #if display private #end class __ASSET__assets_shared_images_dialogue_assets___shortcut_lnk extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/dialogue/box.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_dialogue_box_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/dialogue/red.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_dialogue_red_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/dialogue/red.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_dialogue_red_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/stageback.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_stageback_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/idleButton.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_idlebutton_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/good.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_good_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/table.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_table_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/SkyFall.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_skyfall_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/vignette.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_vignette_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/speech_bubble_talking.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_speech_bubble_talking_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/week54prototype.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_week54prototype_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/lose.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_lose_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/images-go-here.txt") @:noCompletion #if display private #end class __ASSET__assets_shared_images_images_go_here_txt extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/characters/GF_assets.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_gf_assets_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/characters/hamster.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_hamster_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/characters/bfFly.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_bffly_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/characters/bfghost.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_bfghost_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/characters/bfPixelsDEAD.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_bfpixelsdead_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/characters/gfPixel.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_gfpixel_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/characters/gfOffsets.txt") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_gfoffsets_txt extends haxe.io.Bytes {}
@:keep @:file("assets/shared/images/characters/bfFly.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_bffly_xml extends haxe.io.Bytes {}
@:keep @:file("assets/shared/images/characters/gf-pixelOffsets.txt") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_gf_pixeloffsets_txt extends haxe.io.Bytes {}
@:keep @:file("assets/shared/images/characters/gf_parachute.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_gf_parachute_xml extends haxe.io.Bytes {}
@:keep @:file("assets/shared/images/characters/bfPixelsDEAD.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_bfpixelsdead_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/characters/impostor3.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_impostor3_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/characters/impostor3.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_impostor3_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/characters/black.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_black_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/characters/GF_assets.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_gf_assets_xml extends haxe.io.Bytes {}
@:keep @:file("assets/shared/images/characters/impostorR.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_impostorr_xml extends haxe.io.Bytes {}
@:keep @:file("assets/shared/images/characters/bfSus.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_bfsus_xml extends haxe.io.Bytes {}
@:keep @:file("assets/shared/images/characters/hamster.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_hamster_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/characters/tomongus.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_tomongus_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/characters/impostor.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_impostor_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/characters/crewmate.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_crewmate_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/characters/impostor2.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_impostor2_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/characters/impostor.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_impostor_xml extends haxe.io.Bytes {}
@:keep @:file("assets/shared/images/characters/tomongus.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_tomongus_xml extends haxe.io.Bytes {}
@:keep @:file("assets/shared/images/characters/gfR.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_gfr_xml extends haxe.io.Bytes {}
@:keep @:file("assets/shared/images/characters/parasite.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_parasite_xml extends haxe.io.Bytes {}
@:keep @:file("assets/shared/images/characters/bf-pixelOffsets.txt") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_bf_pixeloffsets_txt extends haxe.io.Bytes {}
@:keep @:file("assets/shared/images/characters/gfrOffsets.txt") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_gfroffsets_txt extends haxe.io.Bytes {}
@:keep @:file("assets/shared/images/characters/BOYFRIEND.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_boyfriend_xml extends haxe.io.Bytes {}
@:keep @:file("assets/shared/images/characters/gfghost.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_gfghost_xml extends haxe.io.Bytes {}
@:keep @:file("assets/shared/images/characters/gfPixel.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_gfpixel_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/characters/bfSus.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_bfsus_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/characters/dadOffsets.txt") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_dadoffsets_txt extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/characters/impostorR.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_impostorr_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/characters/whitegreen.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_whitegreen_xml extends haxe.io.Bytes {}
@:keep @:file("assets/shared/images/characters/bfgOffsets.txt") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_bfgoffsets_txt extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/characters/gfghost.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_gfghost_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/characters/clowofe.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_clowofe_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/characters/bfPixel.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_bfpixel_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/characters/BOYFRIEND.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_boyfriend_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/characters/black.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_black_xml extends haxe.io.Bytes {}
@:keep @:file("assets/shared/images/characters/bfghost.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_bfghost_xml extends haxe.io.Bytes {}
@:keep @:file("assets/shared/images/characters/gf-carOffsets.txt") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_gf_caroffsets_txt extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/characters/whitebf.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_whitebf_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/characters/bfR.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_bfr_xml extends haxe.io.Bytes {}
@:keep @:file("assets/shared/images/characters/bfeyesOffsets.txt") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_bfeyesoffsets_txt extends haxe.io.Bytes {}
@:keep @:file("assets/shared/images/characters/impostor2.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_impostor2_xml extends haxe.io.Bytes {}
@:keep @:file("assets/shared/images/characters/whitebf.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_whitebf_xml extends haxe.io.Bytes {}
@:keep @:file("assets/shared/images/characters/bf-susOffsets.txt") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_bf_susoffsets_txt extends haxe.io.Bytes {}
@:keep @:file("assets/shared/images/characters/bf-pixel-deadOffsets.txt") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_bf_pixel_deadoffsets_txt extends haxe.io.Bytes {}
@:keep @:file("assets/shared/images/characters/clowofe.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_clowofe_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/characters/whitegreen.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_whitegreen_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/characters/gfCar.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_gfcar_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/characters/gf-christmasOffsets.txt") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_gf_christmasoffsets_txt extends haxe.io.Bytes {}
@:keep @:file("assets/shared/images/characters/crewmate.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_crewmate_xml extends haxe.io.Bytes {}
@:keep @:file("assets/shared/images/characters/gfCar.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_gfcar_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/characters/bfPixel.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_bfpixel_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/characters/bfR.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_bfr_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/characters/parasite.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_parasite_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/characters/bfOffsets.txt") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_bfoffsets_txt extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/characters/gf_parachute.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_gf_parachute_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/characters/gfR.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_gfr_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/NOTE_assets.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_note_assets_xml extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/SNAP.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_snap_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/intro1.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_intro1_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/ANGRY_TEXT_BOX.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_angry_text_box_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/thunder_1.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_thunder_1_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/CLAP.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_clap_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/GF_3.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_gf_3_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/pixelText.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_pixeltext_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/missnote1.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_missnote1_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/badnoise3.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_badnoise3_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/ANGRY.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_angry_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/clickText.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_clicktext_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/intro2.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_intro2_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/introGo-pixel.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_introgo_pixel_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/Lights_Turn_On.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_lights_turn_on_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/introGo.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_introgo_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/fnf_loss_sfx.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_fnf_loss_sfx_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/Senpai_Dies.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_senpai_dies_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/GF_4.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_gf_4_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/missnote3.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_missnote3_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/badnoise1.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_badnoise1_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/thunder_2.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_thunder_2_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/sounds-go-here.txt") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_sounds_go_here_txt extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/GF_1.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_gf_1_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/intro2-pixel.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_intro2_pixel_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/intro1-pixel.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_intro1_pixel_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/badnoise2.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_badnoise2_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/Lights_Shut_off.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_lights_shut_off_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/intro3.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_intro3_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/soundTest.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_soundtest_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/missnote2.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_missnote2_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/fnf_loss_sfx-pixel.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_fnf_loss_sfx_pixel_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/GF_2.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_gf_2_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/train_passes.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_train_passes_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/carPass1.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_carpass1_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/carPass0.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_carpass0_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/intro3-pixel.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_intro3_pixel_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/music/gameOverEnd.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_music_gameoverend_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/music/gameOver.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_music_gameover_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/music/breakfast.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_music_breakfast_mp3 extends haxe.io.Bytes {}
@:keep @:image("assets/impostor/images/my_fat_nuts.png") @:noCompletion #if display private #end class __ASSET__assets_impostor_images_my_fat_nuts_png extends lime.graphics.Image {}
@:keep @:image("assets/impostor/images/ejected/buildingB2.png") @:noCompletion #if display private #end class __ASSET__assets_impostor_images_ejected_buildingb2_png extends lime.graphics.Image {}
@:keep @:image("assets/impostor/images/ejected/sky.png") @:noCompletion #if display private #end class __ASSET__assets_impostor_images_ejected_sky_png extends lime.graphics.Image {}
@:keep @:image("assets/impostor/images/ejected/explosion.png") @:noCompletion #if display private #end class __ASSET__assets_impostor_images_ejected_explosion_png extends lime.graphics.Image {}
@:keep @:image("assets/impostor/images/ejected/buildingB.png") @:noCompletion #if display private #end class __ASSET__assets_impostor_images_ejected_buildingb_png extends lime.graphics.Image {}
@:keep @:image("assets/impostor/images/ejected/buildingSheet.png") @:noCompletion #if display private #end class __ASSET__assets_impostor_images_ejected_buildingsheet_png extends lime.graphics.Image {}
@:keep @:image("assets/impostor/images/ejected/buildings.png") @:noCompletion #if display private #end class __ASSET__assets_impostor_images_ejected_buildings_png extends lime.graphics.Image {}
@:keep @:file("assets/impostor/images/ejected/scrollingClouds.xml") @:noCompletion #if display private #end class __ASSET__assets_impostor_images_ejected_scrollingclouds_xml extends haxe.io.Bytes {}
@:keep @:file("assets/impostor/images/ejected/explosion.xml") @:noCompletion #if display private #end class __ASSET__assets_impostor_images_ejected_explosion_xml extends haxe.io.Bytes {}
@:keep @:file("assets/impostor/images/ejected/buildingSheet.xml") @:noCompletion #if display private #end class __ASSET__assets_impostor_images_ejected_buildingsheet_xml extends haxe.io.Bytes {}
@:keep @:image("assets/impostor/images/ejected/speedLines.png") @:noCompletion #if display private #end class __ASSET__assets_impostor_images_ejected_speedlines_png extends lime.graphics.Image {}
@:keep @:file("assets/impostor/images/ejected/eye_shine_thing.xml") @:noCompletion #if display private #end class __ASSET__assets_impostor_images_ejected_eye_shine_thing_xml extends haxe.io.Bytes {}
@:keep @:image("assets/impostor/images/ejected/buildingA.png") @:noCompletion #if display private #end class __ASSET__assets_impostor_images_ejected_buildinga_png extends lime.graphics.Image {}
@:keep @:image("assets/impostor/images/ejected/fgClouds.png") @:noCompletion #if display private #end class __ASSET__assets_impostor_images_ejected_fgclouds_png extends lime.graphics.Image {}
@:keep @:image("assets/impostor/images/ejected/buildingA2.png") @:noCompletion #if display private #end class __ASSET__assets_impostor_images_ejected_buildinga2_png extends lime.graphics.Image {}
@:keep @:image("assets/impostor/images/ejected/eye_shine_thing.png") @:noCompletion #if display private #end class __ASSET__assets_impostor_images_ejected_eye_shine_thing_png extends lime.graphics.Image {}
@:keep @:image("assets/impostor/images/ejected/scrollingClouds.png") @:noCompletion #if display private #end class __ASSET__assets_impostor_images_ejected_scrollingclouds_png extends lime.graphics.Image {}
@:keep @:file("assets/impostor/images/menuBooba/startText.xml") @:noCompletion #if display private #end class __ASSET__assets_impostor_images_menubooba_starttext_xml extends haxe.io.Bytes {}
@:keep @:image("assets/impostor/images/menuBooba/starFG.png") @:noCompletion #if display private #end class __ASSET__assets_impostor_images_menubooba_starfg_png extends lime.graphics.Image {}
@:keep @:image("assets/impostor/images/menuBooba/ButtonSheet.png") @:noCompletion #if display private #end class __ASSET__assets_impostor_images_menubooba_buttonsheet_png extends lime.graphics.Image {}
@:keep @:image("assets/impostor/images/menuBooba/hoverbutton.png") @:noCompletion #if display private #end class __ASSET__assets_impostor_images_menubooba_hoverbutton_png extends lime.graphics.Image {}
@:keep @:image("assets/impostor/images/menuBooba/starBG.png") @:noCompletion #if display private #end class __ASSET__assets_impostor_images_menubooba_starbg_png extends lime.graphics.Image {}
@:keep @:image("assets/impostor/images/menuBooba/idlebutton.png") @:noCompletion #if display private #end class __ASSET__assets_impostor_images_menubooba_idlebutton_png extends lime.graphics.Image {}
@:keep @:image("assets/impostor/images/menuBooba/impostorMenu.png") @:noCompletion #if display private #end class __ASSET__assets_impostor_images_menubooba_impostormenu_png extends lime.graphics.Image {}
@:keep @:file("assets/impostor/images/menuBooba/impostorMenu.xml") @:noCompletion #if display private #end class __ASSET__assets_impostor_images_menubooba_impostormenu_xml extends haxe.io.Bytes {}
@:keep @:file("assets/impostor/images/menuBooba/ButtonSheet.xml") @:noCompletion #if display private #end class __ASSET__assets_impostor_images_menubooba_buttonsheet_xml extends haxe.io.Bytes {}
@:keep @:image("assets/impostor/images/menuBooba/vignette.png") @:noCompletion #if display private #end class __ASSET__assets_impostor_images_menubooba_vignette_png extends lime.graphics.Image {}
@:keep @:image("assets/impostor/images/menuBooba/startText.png") @:noCompletion #if display private #end class __ASSET__assets_impostor_images_menubooba_starttext_png extends lime.graphics.Image {}
@:keep @:image("assets/impostor/images/MENU/hoverbutton.png") @:noCompletion #if display private #end class __ASSET__assets_impostor_images_menu_hoverbutton_png extends lime.graphics.Image {}
@:keep @:image("assets/impostor/images/MENU/idlebutton.png") @:noCompletion #if display private #end class __ASSET__assets_impostor_images_menu_idlebutton_png extends lime.graphics.Image {}
@:keep @:image("assets/impostor/images/MENU/impostorMenu.png") @:noCompletion #if display private #end class __ASSET__assets_impostor_images_menu_impostormenu_png extends lime.graphics.Image {}
@:keep @:file("assets/impostor/images/MENU/impostorMenu.xml") @:noCompletion #if display private #end class __ASSET__assets_impostor_images_menu_impostormenu_xml extends haxe.io.Bytes {}
@:keep @:image("assets/impostor/images/polus/bfdead.png") @:noCompletion #if display private #end class __ASSET__assets_impostor_images_polus_bfdead_png extends lime.graphics.Image {}
@:keep @:image("assets/impostor/images/polus/CrowdBop.png") @:noCompletion #if display private #end class __ASSET__assets_impostor_images_polus_crowdbop_png extends lime.graphics.Image {}
@:keep @:image("assets/impostor/images/polus/polusSky.png") @:noCompletion #if display private #end class __ASSET__assets_impostor_images_polus_polussky_png extends lime.graphics.Image {}
@:keep @:image("assets/impostor/images/polus/polusGround.png") @:noCompletion #if display private #end class __ASSET__assets_impostor_images_polus_polusground_png extends lime.graphics.Image {}
@:keep @:image("assets/impostor/images/polus/polusHills.png") @:noCompletion #if display private #end class __ASSET__assets_impostor_images_polus_polushills_png extends lime.graphics.Image {}
@:keep @:file("assets/impostor/images/polus/CrowdBop.xml") @:noCompletion #if display private #end class __ASSET__assets_impostor_images_polus_crowdbop_xml extends haxe.io.Bytes {}
@:keep @:image("assets/impostor/images/polus/polusWarehouse.png") @:noCompletion #if display private #end class __ASSET__assets_impostor_images_polus_poluswarehouse_png extends lime.graphics.Image {}
@:keep @:image("assets/impostor/images/polus/polusrocks.png") @:noCompletion #if display private #end class __ASSET__assets_impostor_images_polus_polusrocks_png extends lime.graphics.Image {}
@:keep @:file("assets/impostor/images/menu/naughtyMeny.xml") @:noCompletion #if display private #end class __ASSET__assets_impostor_images_menu_naughtymeny_xml extends haxe.io.Bytes {}
@:keep @:image("assets/impostor/images/menu/naughtyMeny.png") @:noCompletion #if display private #end class __ASSET__assets_impostor_images_menu_naughtymeny_png extends lime.graphics.Image {}
@:keep @:image("assets/impostor/images/menu/starFG.png") @:noCompletion #if display private #end class __ASSET__assets_impostor_images_menu_starfg_png extends lime.graphics.Image {}
@:keep @:image("assets/impostor/images/menu/ButtonSheet.png") @:noCompletion #if display private #end class __ASSET__assets_impostor_images_menu_buttonsheet_png extends lime.graphics.Image {}
@:keep @:image("assets/impostor/images/menu/naughty.png") @:noCompletion #if display private #end class __ASSET__assets_impostor_images_menu_naughty_png extends lime.graphics.Image {}
@:keep @:image("assets/impostor/images/menu/starBG.png") @:noCompletion #if display private #end class __ASSET__assets_impostor_images_menu_starbg_png extends lime.graphics.Image {}
@:keep @:file("assets/impostor/images/menu/ButtonSheet.xml") @:noCompletion #if display private #end class __ASSET__assets_impostor_images_menu_buttonsheet_xml extends haxe.io.Bytes {}
@:keep @:image("assets/impostor/images/menu/vignette.png") @:noCompletion #if display private #end class __ASSET__assets_impostor_images_menu_vignette_png extends lime.graphics.Image {}
@:keep @:file("assets/impostor/images/cutscenes/bf_week1.xml") @:noCompletion #if display private #end class __ASSET__assets_impostor_images_cutscenes_bf_week1_xml extends haxe.io.Bytes {}
@:keep @:image("assets/impostor/images/cutscenes/bf_week1.png") @:noCompletion #if display private #end class __ASSET__assets_impostor_images_cutscenes_bf_week1_png extends lime.graphics.Image {}
@:keep @:image("assets/impostor/images/cutscenes/gf_week1.png") @:noCompletion #if display private #end class __ASSET__assets_impostor_images_cutscenes_gf_week1_png extends lime.graphics.Image {}
@:keep @:file("assets/impostor/images/cutscenes/imposter_week1.xml") @:noCompletion #if display private #end class __ASSET__assets_impostor_images_cutscenes_imposter_week1_xml extends haxe.io.Bytes {}
@:keep @:file("assets/impostor/images/cutscenes/gf_week1.xml") @:noCompletion #if display private #end class __ASSET__assets_impostor_images_cutscenes_gf_week1_xml extends haxe.io.Bytes {}
@:keep @:image("assets/impostor/images/cutscenes/imposter_week1.png") @:noCompletion #if display private #end class __ASSET__assets_impostor_images_cutscenes_imposter_week1_png extends lime.graphics.Image {}
@:keep @:image("assets/impostor/images/dialogue/greenImpostor.png") @:noCompletion #if display private #end class __ASSET__assets_impostor_images_dialogue_greenimpostor_png extends lime.graphics.Image {}
@:keep @:file("assets/impostor/images/dialogue/girlfriend.xml") @:noCompletion #if display private #end class __ASSET__assets_impostor_images_dialogue_girlfriend_xml extends haxe.io.Bytes {}
@:keep @:image("assets/impostor/images/dialogue/rightCharacter.png") @:noCompletion #if display private #end class __ASSET__assets_impostor_images_dialogue_rightcharacter_png extends lime.graphics.Image {}
@:keep @:image("assets/impostor/images/dialogue/boyfriend.png") @:noCompletion #if display private #end class __ASSET__assets_impostor_images_dialogue_boyfriend_png extends lime.graphics.Image {}
@:keep @:file("assets/impostor/images/dialogue/rightCharacter.xml") @:noCompletion #if display private #end class __ASSET__assets_impostor_images_dialogue_rightcharacter_xml extends haxe.io.Bytes {}
@:keep @:file("assets/impostor/images/dialogue/greenImpostor.xml") @:noCompletion #if display private #end class __ASSET__assets_impostor_images_dialogue_greenimpostor_xml extends haxe.io.Bytes {}
@:keep @:file("assets/impostor/images/dialogue/boyfriend.xml") @:noCompletion #if display private #end class __ASSET__assets_impostor_images_dialogue_boyfriend_xml extends haxe.io.Bytes {}
@:keep @:file("assets/impostor/images/dialogue/redImpostor.xml") @:noCompletion #if display private #end class __ASSET__assets_impostor_images_dialogue_redimpostor_xml extends haxe.io.Bytes {}
@:keep @:image("assets/impostor/images/dialogue/girlfriend.png") @:noCompletion #if display private #end class __ASSET__assets_impostor_images_dialogue_girlfriend_png extends lime.graphics.Image {}
@:keep @:image("assets/impostor/images/dialogue/dialogueBox.png") @:noCompletion #if display private #end class __ASSET__assets_impostor_images_dialogue_dialoguebox_png extends lime.graphics.Image {}
@:keep @:image("assets/impostor/images/dialogue/redImpostor.png") @:noCompletion #if display private #end class __ASSET__assets_impostor_images_dialogue_redimpostor_png extends lime.graphics.Image {}
@:keep @:image("assets/impostor/images/reactor/reference.png") @:noCompletion #if display private #end class __ASSET__assets_impostor_images_reactor_reference_png extends lime.graphics.Image {}
@:keep @:image("assets/impostor/images/reactor/white sus.png") @:noCompletion #if display private #end class __ASSET__assets_impostor_images_reactor_white_sus_png extends lime.graphics.Image {}
@:keep @:image("assets/impostor/images/reactor/front pillars.png") @:noCompletion #if display private #end class __ASSET__assets_impostor_images_reactor_front_pillars_png extends lime.graphics.Image {}
@:keep @:image("assets/impostor/images/reactor/susBoppers.png") @:noCompletion #if display private #end class __ASSET__assets_impostor_images_reactor_susboppers_png extends lime.graphics.Image {}
@:keep @:image("assets/impostor/images/reactor/yellow sus.png") @:noCompletion #if display private #end class __ASSET__assets_impostor_images_reactor_yellow_sus_png extends lime.graphics.Image {}
@:keep @:image("assets/impostor/images/reactor/back pillars.png") @:noCompletion #if display private #end class __ASSET__assets_impostor_images_reactor_back_pillars_png extends lime.graphics.Image {}
@:keep @:image("assets/impostor/images/reactor/blue sus.png") @:noCompletion #if display private #end class __ASSET__assets_impostor_images_reactor_blue_sus_png extends lime.graphics.Image {}
@:keep @:image("assets/impostor/images/reactor/upper cranes.png") @:noCompletion #if display private #end class __ASSET__assets_impostor_images_reactor_upper_cranes_png extends lime.graphics.Image {}
@:keep @:file("assets/impostor/images/reactor/susBoppers.xml") @:noCompletion #if display private #end class __ASSET__assets_impostor_images_reactor_susboppers_xml extends haxe.io.Bytes {}
@:keep @:image("assets/impostor/images/reactor/middle pillars.png") @:noCompletion #if display private #end class __ASSET__assets_impostor_images_reactor_middle_pillars_png extends lime.graphics.Image {}
@:keep @:image("assets/impostor/images/reactor/center console.png") @:noCompletion #if display private #end class __ASSET__assets_impostor_images_reactor_center_console_png extends lime.graphics.Image {}
@:keep @:image("assets/impostor/images/reactor/brown sus.png") @:noCompletion #if display private #end class __ASSET__assets_impostor_images_reactor_brown_sus_png extends lime.graphics.Image {}
@:keep @:image("assets/impostor/images/reactor/ball of big ol energy.png") @:noCompletion #if display private #end class __ASSET__assets_impostor_images_reactor_ball_of_big_ol_energy_png extends lime.graphics.Image {}
@:keep @:image("assets/impostor/images/reactor/reactor background.png") @:noCompletion #if display private #end class __ASSET__assets_impostor_images_reactor_reactor_background_png extends lime.graphics.Image {}
@:keep @:image("assets/impostor/images/reactor/side console.png") @:noCompletion #if display private #end class __ASSET__assets_impostor_images_reactor_side_console_png extends lime.graphics.Image {}
@:keep @:file("assets/impostor/images/characters/gfOffsets.txt") @:noCompletion #if display private #end class __ASSET__assets_impostor_images_characters_gfoffsets_txt extends haxe.io.Bytes {}
@:keep @:file("assets/impostor/images/characters/BoyFriend_Assets_Impostor.xml") @:noCompletion #if display private #end class __ASSET__assets_impostor_images_characters_boyfriend_assets_impostor_xml extends haxe.io.Bytes {}
@:keep @:image("assets/impostor/images/characters/impostor.png") @:noCompletion #if display private #end class __ASSET__assets_impostor_images_characters_impostor_png extends lime.graphics.Image {}
@:keep @:file("assets/impostor/images/characters/impostor.xml") @:noCompletion #if display private #end class __ASSET__assets_impostor_images_characters_impostor_xml extends haxe.io.Bytes {}
@:keep @:image("assets/impostor/images/characters/noMoreBalls.png") @:noCompletion #if display private #end class __ASSET__assets_impostor_images_characters_nomoreballs_png extends lime.graphics.Image {}
@:keep @:image("assets/impostor/images/characters/ziffy.png") @:noCompletion #if display private #end class __ASSET__assets_impostor_images_characters_ziffy_png extends lime.graphics.Image {}
@:keep @:image("assets/impostor/images/characters/impostorPolus.png") @:noCompletion #if display private #end class __ASSET__assets_impostor_images_characters_impostorpolus_png extends lime.graphics.Image {}
@:keep @:file("assets/impostor/images/characters/defeatDeath.xml") @:noCompletion #if display private #end class __ASSET__assets_impostor_images_characters_defeatdeath_xml extends haxe.io.Bytes {}
@:keep @:file("assets/impostor/images/characters/GF_ass_sets.xml") @:noCompletion #if display private #end class __ASSET__assets_impostor_images_characters_gf_ass_sets_xml extends haxe.io.Bytes {}
@:keep @:image("assets/impostor/images/characters/defeatDeath.png") @:noCompletion #if display private #end class __ASSET__assets_impostor_images_characters_defeatdeath_png extends lime.graphics.Image {}
@:keep @:image("assets/impostor/images/characters/BoyFriend_Assets_Impostor.png") @:noCompletion #if display private #end class __ASSET__assets_impostor_images_characters_boyfriend_assets_impostor_png extends lime.graphics.Image {}
@:keep @:file("assets/impostor/images/characters/ziffy.xml") @:noCompletion #if display private #end class __ASSET__assets_impostor_images_characters_ziffy_xml extends haxe.io.Bytes {}
@:keep @:file("assets/impostor/images/characters/noMoreBalls.xml") @:noCompletion #if display private #end class __ASSET__assets_impostor_images_characters_nomoreballs_xml extends haxe.io.Bytes {}
@:keep @:file("assets/impostor/images/characters/impostorPolus.xml") @:noCompletion #if display private #end class __ASSET__assets_impostor_images_characters_impostorpolus_xml extends haxe.io.Bytes {}
@:keep @:image("assets/impostor/images/characters/GF_ass_sets.png") @:noCompletion #if display private #end class __ASSET__assets_impostor_images_characters_gf_ass_sets_png extends lime.graphics.Image {}
@:keep @:file("assets/impostor/sounds/fire.mp3") @:noCompletion #if display private #end class __ASSET__assets_impostor_sounds_fire_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/sm/HOW TO ADD SM FILES.txt") @:noCompletion #if display private #end class __ASSET__assets_sm_how_to_add_sm_files_txt extends haxe.io.Bytes {}
@:keep @:file("art/readme.txt") @:noCompletion #if display private #end class __ASSET__do_not_readme_txt extends haxe.io.Bytes {}
@:keep @:file("LICENSE") @:noCompletion #if display private #end class __ASSET__license_txt extends haxe.io.Bytes {}
@:keep @:font("export/release/html5/obj/webfont/vcr.ttf") @:noCompletion #if display private #end class __ASSET__assets_fonts_vcr_ttf extends lime.text.Font {}
@:keep @:font("export/release/html5/obj/webfont/amatic.ttf") @:noCompletion #if display private #end class __ASSET__assets_fonts_amatic_ttf extends lime.text.Font {}
@:keep @:font("export/release/html5/obj/webfont/dialogue.ttf") @:noCompletion #if display private #end class __ASSET__assets_fonts_dialogue_ttf extends lime.text.Font {}
@:keep @:file("assets/fonts/fonts-go-here.txt") @:noCompletion #if display private #end class __ASSET__assets_fonts_fonts_go_here_txt extends haxe.io.Bytes {}
@:keep @:font("export/release/html5/obj/webfont/pixel.otf") @:noCompletion #if display private #end class __ASSET__assets_fonts_pixel_otf extends lime.text.Font {}
@:keep @:font("export/release/html5/obj/webfont/flower.ttf") @:noCompletion #if display private #end class __ASSET__assets_fonts_flower_ttf extends lime.text.Font {}
@:keep @:file("/home/deck/haxelib/flixel/git/assets/sounds/flixel.mp3") @:noCompletion #if display private #end class __ASSET__flixel_sounds_flixel_mp3 extends haxe.io.Bytes {}
@:keep @:file("/home/deck/haxelib/flixel/git/assets/sounds/beep.mp3") @:noCompletion #if display private #end class __ASSET__flixel_sounds_beep_mp3 extends haxe.io.Bytes {}
@:keep @:file("/home/deck/haxelib/flixel/git/assets/sounds/beep.ogg") @:noCompletion #if display private #end class __ASSET__flixel_sounds_beep_ogg extends haxe.io.Bytes {}
@:keep @:file("/home/deck/haxelib/flixel/git/assets/sounds/flixel.ogg") @:noCompletion #if display private #end class __ASSET__flixel_sounds_flixel_ogg extends haxe.io.Bytes {}
@:keep @:font("export/release/html5/obj/webfont/nokiafc22.ttf") @:noCompletion #if display private #end class __ASSET__flixel_fonts_nokiafc22_ttf extends lime.text.Font {}
@:keep @:font("export/release/html5/obj/webfont/monsterrat.ttf") @:noCompletion #if display private #end class __ASSET__flixel_fonts_monsterrat_ttf extends lime.text.Font {}
@:keep @:image("/home/deck/haxelib/flixel/git/assets/images/ui/button.png") @:noCompletion #if display private #end class __ASSET__flixel_images_ui_button_png extends lime.graphics.Image {}
@:keep @:image("/home/deck/haxelib/flixel/git/assets/images/logo/default.png") @:noCompletion #if display private #end class __ASSET__flixel_images_logo_default_png extends lime.graphics.Image {}
@:keep @:image("/home/deck/haxelib/flixel-ui/2,5,0/assets/images/tab_back.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_tab_back_png extends lime.graphics.Image {}
@:keep @:image("/home/deck/haxelib/flixel-ui/2,5,0/assets/images/radio_dot.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_radio_dot_png extends lime.graphics.Image {}
@:keep @:image("/home/deck/haxelib/flixel-ui/2,5,0/assets/images/invis.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_invis_png extends lime.graphics.Image {}
@:keep @:image("/home/deck/haxelib/flixel-ui/2,5,0/assets/images/check_mark.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_check_mark_png extends lime.graphics.Image {}
@:keep @:image("/home/deck/haxelib/flixel-ui/2,5,0/assets/images/finger_small.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_finger_small_png extends lime.graphics.Image {}
@:keep @:image("/home/deck/haxelib/flixel-ui/2,5,0/assets/images/radio.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_radio_png extends lime.graphics.Image {}
@:keep @:image("/home/deck/haxelib/flixel-ui/2,5,0/assets/images/swatch.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_swatch_png extends lime.graphics.Image {}
@:keep @:image("/home/deck/haxelib/flixel-ui/2,5,0/assets/images/chrome.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_chrome_png extends lime.graphics.Image {}
@:keep @:image("/home/deck/haxelib/flixel-ui/2,5,0/assets/images/tooltip_arrow.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_tooltip_arrow_png extends lime.graphics.Image {}
@:keep @:image("/home/deck/haxelib/flixel-ui/2,5,0/assets/images/button_arrow_right.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_arrow_right_png extends lime.graphics.Image {}
@:keep @:image("/home/deck/haxelib/flixel-ui/2,5,0/assets/images/button_toggle.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_toggle_png extends lime.graphics.Image {}
@:keep @:image("/home/deck/haxelib/flixel-ui/2,5,0/assets/images/finger_big.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_finger_big_png extends lime.graphics.Image {}
@:keep @:image("/home/deck/haxelib/flixel-ui/2,5,0/assets/images/chrome_inset.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_chrome_inset_png extends lime.graphics.Image {}
@:keep @:image("/home/deck/haxelib/flixel-ui/2,5,0/assets/images/chrome_light.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_chrome_light_png extends lime.graphics.Image {}
@:keep @:image("/home/deck/haxelib/flixel-ui/2,5,0/assets/images/button_thin.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_thin_png extends lime.graphics.Image {}
@:keep @:image("/home/deck/haxelib/flixel-ui/2,5,0/assets/images/box.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_box_png extends lime.graphics.Image {}
@:keep @:image("/home/deck/haxelib/flixel-ui/2,5,0/assets/images/minus_mark.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_minus_mark_png extends lime.graphics.Image {}
@:keep @:image("/home/deck/haxelib/flixel-ui/2,5,0/assets/images/button_arrow_up.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_arrow_up_png extends lime.graphics.Image {}
@:keep @:image("/home/deck/haxelib/flixel-ui/2,5,0/assets/images/tab.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_tab_png extends lime.graphics.Image {}
@:keep @:image("/home/deck/haxelib/flixel-ui/2,5,0/assets/images/button.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_png extends lime.graphics.Image {}
@:keep @:image("/home/deck/haxelib/flixel-ui/2,5,0/assets/images/check_box.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_check_box_png extends lime.graphics.Image {}
@:keep @:image("/home/deck/haxelib/flixel-ui/2,5,0/assets/images/button_arrow_left.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_arrow_left_png extends lime.graphics.Image {}
@:keep @:image("/home/deck/haxelib/flixel-ui/2,5,0/assets/images/button_arrow_down.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_arrow_down_png extends lime.graphics.Image {}
@:keep @:image("/home/deck/haxelib/flixel-ui/2,5,0/assets/images/plus_mark.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_plus_mark_png extends lime.graphics.Image {}
@:keep @:image("/home/deck/haxelib/flixel-ui/2,5,0/assets/images/chrome_flat.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_chrome_flat_png extends lime.graphics.Image {}
@:keep @:image("/home/deck/haxelib/flixel-ui/2,5,0/assets/images/dropdown_mark.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_dropdown_mark_png extends lime.graphics.Image {}
@:keep @:image("/home/deck/haxelib/flixel-ui/2,5,0/assets/images/hilight.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_hilight_png extends lime.graphics.Image {}
@:keep @:file("/home/deck/haxelib/flixel-ui/2,5,0/assets/xml/defaults.xml") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_xml_defaults_xml extends haxe.io.Bytes {}
@:keep @:file("/home/deck/haxelib/flixel-ui/2,5,0/assets/xml/default_loading_screen.xml") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_xml_default_loading_screen_xml extends haxe.io.Bytes {}
@:keep @:file("/home/deck/haxelib/flixel-ui/2,5,0/assets/xml/default_popup.xml") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_xml_default_popup_xml extends haxe.io.Bytes {}
@:keep @:file("") @:noCompletion #if display private #end class __ASSET__manifest_default_json extends haxe.io.Bytes {}



#else

@:keep @:expose('__ASSET__assets_fonts_vcr_ttf') @:noCompletion #if display private #end class __ASSET__assets_fonts_vcr_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "assets/fonts/vcr"; #else ascender = 1800; descender = 0; height = 2000; numGlyphs = 204; underlinePosition = -292; underlineThickness = 150; unitsPerEM = 2048; #end name = "VCR OSD Mono"; super (); }}
@:keep @:expose('__ASSET__assets_fonts_amatic_ttf') @:noCompletion #if display private #end class __ASSET__assets_fonts_amatic_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "assets/fonts/amatic"; #else ascender = 1016; descender = -245; height = 1261; numGlyphs = 839; underlinePosition = -100; underlineThickness = 50; unitsPerEM = 1000; #end name = "Amatic SC Bold"; super (); }}
@:keep @:expose('__ASSET__assets_fonts_dialogue_ttf') @:noCompletion #if display private #end class __ASSET__assets_fonts_dialogue_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "assets/fonts/dialogue"; #else ascender = 750; descender = -250; height = 1000; numGlyphs = 359; underlinePosition = -100; underlineThickness = 50; unitsPerEM = 1000; #end name = "Granstander Clean"; super (); }}
@:keep @:expose('__ASSET__assets_fonts_pixel_otf') @:noCompletion #if display private #end class __ASSET__assets_fonts_pixel_otf extends lime.text.Font { public function new () { #if !html5 __fontPath = "assets/fonts/pixel"; #else ascender = 1125; descender = -250; height = 1375; numGlyphs = 262; underlinePosition = -143; underlineThickness = 20; unitsPerEM = 1000; #end name = "Pixel Arial 11 Bold"; super (); }}
@:keep @:expose('__ASSET__assets_fonts_flower_ttf') @:noCompletion #if display private #end class __ASSET__assets_fonts_flower_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "assets/fonts/flower"; #else ascender = 750; descender = -250; height = 1000; numGlyphs = 56; underlinePosition = -100; underlineThickness = 50; unitsPerEM = 1000; #end name = "Flower Street Regular"; super (); }}
@:keep @:expose('__ASSET__flixel_fonts_nokiafc22_ttf') @:noCompletion #if display private #end class __ASSET__flixel_fonts_nokiafc22_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "flixel/fonts/nokiafc22"; #else ascender = 2048; descender = -512; height = 2816; numGlyphs = 172; underlinePosition = -640; underlineThickness = 256; unitsPerEM = 2048; #end name = "Nokia Cellphone FC Small"; super (); }}
@:keep @:expose('__ASSET__flixel_fonts_monsterrat_ttf') @:noCompletion #if display private #end class __ASSET__flixel_fonts_monsterrat_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "flixel/fonts/monsterrat"; #else ascender = 968; descender = -251; height = 1219; numGlyphs = 263; underlinePosition = -150; underlineThickness = 50; unitsPerEM = 1000; #end name = "Monsterrat"; super (); }}


#end

#if (openfl && !flash)

#if html5
@:keep @:expose('__ASSET__OPENFL__assets_fonts_vcr_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__assets_fonts_vcr_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__assets_fonts_vcr_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__assets_fonts_amatic_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__assets_fonts_amatic_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__assets_fonts_amatic_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__assets_fonts_dialogue_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__assets_fonts_dialogue_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__assets_fonts_dialogue_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__assets_fonts_pixel_otf') @:noCompletion #if display private #end class __ASSET__OPENFL__assets_fonts_pixel_otf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__assets_fonts_pixel_otf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__assets_fonts_flower_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__assets_fonts_flower_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__assets_fonts_flower_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__flixel_fonts_nokiafc22_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__flixel_fonts_nokiafc22_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__flixel_fonts_nokiafc22_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__flixel_fonts_monsterrat_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__flixel_fonts_monsterrat_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__flixel_fonts_monsterrat_ttf ()); super (); }}

#else
@:keep @:expose('__ASSET__OPENFL__assets_fonts_vcr_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__assets_fonts_vcr_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__assets_fonts_vcr_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__assets_fonts_amatic_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__assets_fonts_amatic_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__assets_fonts_amatic_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__assets_fonts_dialogue_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__assets_fonts_dialogue_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__assets_fonts_dialogue_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__assets_fonts_pixel_otf') @:noCompletion #if display private #end class __ASSET__OPENFL__assets_fonts_pixel_otf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__assets_fonts_pixel_otf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__assets_fonts_flower_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__assets_fonts_flower_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__assets_fonts_flower_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__flixel_fonts_nokiafc22_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__flixel_fonts_nokiafc22_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__flixel_fonts_nokiafc22_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__flixel_fonts_monsterrat_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__flixel_fonts_monsterrat_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__flixel_fonts_monsterrat_ttf ()); super (); }}

#end

#end
#end

#end
