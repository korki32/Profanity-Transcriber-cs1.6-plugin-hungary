/***************************************************************************************
 *K�romkod�s �t�r�			Version: 2.0			Date: 29/12/2021
 *
 *	Mit tud a plugin?
 *	Ha valamelyik j�t�kos chatbe be�r egy cs�nya sz�t, a rendszer automatikusan ki�r egy vicces �zenetet.
 *	P�ld�ul: "Szeretek HD minos�gben kecskeporn�t n�zni!"
 *
 *								      Creat By: *S1MPLA
***************************************************************************************/
#include <amxmodx>
#include <amxmisc>
 
public plugin_init()
{
	register_plugin("Karomkodas tilto", "2", "s1mpla")
	register_clcmd("say", "hook_say")
	register_clcmd("say_team", "hook_say")
}
new const szovegek[][] = {
	"Elszakadt az egerem, nem tudok lőni",
	"Imadom a kukit!",
	"Kettépisiltek, mint egy hóembert! ",
	"Fejen állva a legjobb pisálni!",
	"Akkora seggem van, hogy nem lehet mellé rúgni.",
	"Olyan csúnya vagyok, hogy a 380 sem baszna meg.",
	"Meg vagyok zavarodva, mint vasorrú banya a mágneses viharban.",
	"Olyan kevés vagyok, hogy engem még bruttósítani sem érdemes.",
	"Olyan ronda vagyok, hogy ha lemegyek a bányába, feljön a szén.",
	"Tudjátok meg srácok kicsi a kukim!",
	"Lefekvés elött mindig beöntest kérek a Jézuskátol.",
	"Azt hiszem impotens vagyok.",
	"Apa azt mondta ne dugjak meg mindenkit akit meglátok,vigyázz megne lássalak!",
	"Éjszaka gyakran bepisilek.",
	"Minden este kiverem a kukim.",
	"Szexuálisan közösültem egy hintalóval.",
	"Olyan vagyok, mint a lépcsőház: sötét és korlátolt.",
	"Olyan vagyok, mint a cseresznyemag: kicsi és köpnivaló.",
	"Olyan vagyok, mint a sivatag: homokos és műveletlen.",
	"Olyan vagyok, mint a tornacipő: büdös és kietlen.",
	"Olyan vagyok, mint a tyúklétra: szaros és fogatlan.",
	"Olyan vagyok, mint az őszibarack: szőrös és ütődött.",
	"Kevés vagyok, mint sündisznóban a dauer.",
	"Vörös a fejem, mint a szovjet zászló.",
	"Kevés vagyok, mint Hitlerben a jóindulat.",
	"Olyan csúnya vagyok, hogy mikor megszülettem, anyám parittyával etetett.",
	"Beálltam, mint a klinikai halál.",
	"Akkora paraszt vagyok, hogy a fagyit is bicskával eszem!",
	"Olyan hülye vagyok, hogy görbítem a teret!",
	"Véletlenül a WC mellé ültem és felment bennem a pumpa.",
	"Sikeresen körül tudom pisilni a WC-t.",
	"Szeretek HD minőségben kecskepornót nézni.",
	"Megyek inkább legozni.",
	"Nincs életem egész nap cs-zek.",
	"Barátaim szeretlek titeket.",
	"Kemény vagyok, mint a három napos babaszar."
	
 
			}
public hook_say(id)
{
	new message[192]
	read_args (message, 191)
	remove_quotes (message)
	new fajl[192]
	formatex(fajl, charsmax(fajl), "addons/amxmodx/configs/szavak.ini")
	if (file_exists(fajl))
	{
		new line
		new linetext[255]
		new len
		new szoveg[192]
		while(read_file(fajl, line, linetext, 256, len))
		{
			parse(linetext, szoveg, 191)
			if(containi(message, szoveg) != -1)
			{
				client_cmd(id, "say %s", szovegek[random(sizeof(szovegek))])
				return PLUGIN_HANDLED
 
			}
			line++
		}
	}
	return PLUGIN_CONTINUE
}
 
 
/* AMXX-Studio Notes - DO NOT MODIFY BELOW HERE
*{\\ rtf1\\ ansi\\ deff0{\\ fonttbl{\\ f0\\ fnil Tahoma;}}\n\\ viewkind4\\ uc1\\ pard\\ lang2057\\ f0\\ fs16 \n\\ par }
*/
