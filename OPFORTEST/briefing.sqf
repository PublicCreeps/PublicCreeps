waitUntil {!isNull player && player == player};
if(player diarySubjectExists "rules")exitwith{};

player createDiarySubject ["serverrules","Server Regeln"];
player createDiarySubject ["policerules","Polizei Regeln"];
player createDiarySubject ["medicrules","Medic Regeln"];
player createDiarySubject ["safezones","Safe Zones"];
player createDiarySubject ["busgeld","Bußgeldkatalog"];
player createDiarySubject ["illegal","Illegale Aktivitäten"];
player createDiarySubject ["asa","ASA Regeln"];
//player createDiarySubject ["terrorrules","Rebellen Regeln"];
player createDiarySubject ["controls","Steuerung"];

/*  Example
	player createDiaryRecord ["", //Container
		[
			"", //Subsection
				"
				TEXT HERE<br/><br/>
				"
		]
	];
*/

	player createDiaryRecord ["serverrules",
	[
	"Verhalten auf PublicCreeps", 
	"
	Anweisungen von führenden Personen ist folge zu leisten.<br/>
	<br/>
	Roleplay steht an erster Stelle. (Roleplaywidriges Verhalten kann und wird bestraft.)<br/>
	<br/>
	Troller, Cheater und Buguser sind auf diesem Server nicht erwünscht.<br/>
	<br/>
	Rassismus, Beleidigungen und Diskriminierung in jeglicher Art ist verboten.<br/>
	"
	]
	];

	player createDiaryRecord ["serverrules",
	[
	"Cheats und Exploits",
	"
	Jede Art von Cheats wird sofort bestraft und in keinsterweise toleriert.<br/>
	<br/>
	Gegenstände cheaten, Verdoppeln o. ä. wird nicht toleriert.<br/>
	<br/>
	Glitchen um sich einen Spielvorteil zu verschaffen wird nicht toleriert.<br/>
	<br/>
	Selbstmord begehen, um einer RP Situation zu entgehen wird nicht toleriert.<br/>
	<br/>
	Hierzu zählt insbesondere das entfesseln eines anderen gefesselten, wenn man selber gefesselt ist. Bzw. gegenseitg entfesseln.<br/>
	<br/>
	Ebenso das wegziehen mittels abführen Funktion über hohe Distanzen ist strengstens untersagt und wird schwer bestraft.<br/>
	<br/>
	Ist eine Person in Polizeigewahrsam, sind die oben genannten Punkte ebenfalls zu beachten!
	"
	]
	];
	
	player createDiaryRecord["safezones",
	[
	"Safe Zones",
	"
	Überfälle, RDM, VDM, fesseln oder mutwillige Zerstörung ist hier nicht erlaubt und kann zu einem Kick, oder zum Ban führen.<br/>
	<br/>
	Regelwidrige Handlungen werden nicht toleriert.<br/>
	<br/>
	Das benutzen von Waffen und töten von Spielern in einer Safezone ist regelwidrig.<br/>
	<br/>
	Safezone's werden auf der Map als grüne schraffierte Fläche markiert. In den Hauptstädten ist zusätzlich ein grüner Marker mit *Safezone*.<br/>
	<br/>
	Safezonen sind keine Fluchtgebiete für Verbrecher. Sie dürfen hier von der Polizei festgenommen werden!<br/>
	<br/>
	Illegale Fahrzeuge (Rebellen Ifrit / Rebellen Hunter) sind in Kavala absolut verboten und können zum Kick/Ban führen.<br/>
	<br/>
	Ihr dürft ebenfalls keine Leute aus einer Safe-Zone heraus verfolgen, um sie zu überfallen. Fesseln in einer Safezone, um jemanden dann aus der Safezone zu tragen ist ebenfalls verboten!<br/>
	<br/>
	Selbst wenn ihr als Täter nicht in der Safe Zone steht, dürft ihr niemanden erschießen, der sich in einer Safezone befindet. Hierbei ist aber der Punkt 5 zu beachten!<br/>
	<br/>
	Absolute Safe Zone bedeutet, dass in keinster Weise ein Verbrechen begangen werden darf. Dies kann zum kick oder ban führen! Näheres dazu auf der Homepage unter FAQ Rollenspielverhalten.
	"
	]
	];
	
	
	player createDiaryRecord ["serverrules",
	[
	"Ban Gründe für Strafbare Handlungen", 
	"
	Hacken <br/>
	Cheaten <br/>
	Ausnutzen von Exploits<br/>
	Combat Log um einer Situation zu entkommen<br/>
	"
	]
	];
	
	player createDiaryRecord ["serverrules",
	[
	"New Life - Regel", 
	"
	Wer in einem Gefecht stirbt darf für 15min nicht mehr in diese Situation eingreifen.<br/>
	<br/>
	Wird man von der Polizei bestraft und bezahlt seine Strafe oder sitzt diese im Gefängnis ab, wird man von der Wantedliste entfernt und beginnt ein straffreies Leben.<br/>
	<br/>
	Stirbt man durch einen anderen Spieler(Zivilist) bleibt man auf der Wantedliste.<br/>
	<br/>
	Absichtlich Selbstmord zu begehen um dieser Regel zu entgehen wird bestraft.<br/>
	"
	]
	];
	
	player createDiaryRecord ["serverrules",
	[
	"Stören einer Polizeiaktion", 
	"
	Polizisten durch Trollen von ihrer Arbeit abzuhalten ist verboten.<br/>
	<br/>
	Zivilisten werden fürs dauerhafte Spionieren/Stalken oder Belästigung von Polizisten verhaftet, da sie die Position weitergeben könnten.<br/>
	<br/>
	Das Missachten der Server Regeln um eine Polizeiaktion zu stören ist verboten.<br/>
	<br/>
	Zivilisten die versuchen die Polizei in einem Einsatz stören dürfen bis zum Ende des Einsatzes festgesetzt werden.<br/>
	"
	]
	];
	player createDiaryRecord ["serverrules",
	[
	"Benachrichtigung der Polizei", 
	"
	Bei der Kontaktaufnahme mit der Polizei sind die 5 W-Fragen zu beachten.<br/>
	<br/>
	Wo? Was? Wer? Wann? Wie viele? (Eine kurze und knappe Beschreibung der Situation.<br/>
	(Nachrichten wie: 'Hilfe ich werde überfallen' werden nicht beachtet.)<br/>
	<br/>
	Beleidigung und Spam der Notruffunktion ist untersagt.<br/>
	"
	]
	];
	
	player createDiaryRecord ["serverrules",
	[
	"Umgang mit Medics", 
	"
	Der Verstoß gegen die folgenden Punkte führt zum Kick oder Ban.<br/>
	<br/>
	Sanitäter sind neutrale Personen. Sie dürfen nicht getötet, festgenommen oder in ihrer Arbeit gestört werden.<br/>
	<br/>
	Neutral bedeutet Sie gehören nicht Polizei und nicht den Zivilisten bzw. Rebellen an. Jeder wird gleich behandelt.<br/>
	<br/>
	Beleidigungen gegen Sanitäter sind ebenfalls verboten.<br/>
	<br/>
	Behandelte Personen sind dazu verpflichtet mit den Sanitätern ins Krankenhaus zurückzukehren.<br/>
	<br/>
	Fahrzeuge der Medics dürfen nicht geklaut werden, auch der Versuch kann zu einer Strafe durch Polizisten führen. Hat man ein Fahrzeug geklaut und gibt dieses nicht freiwillig ab, muss mit einem Kick oder Ban gerechnet werden.<br/>
	<br/>
	Der Medic entscheidet vor Ort, ob die behandelte Person im Krankenhaus einer Nachuntersuchung unterzogen werden muss. Wenn eine Person im Feuergefecht schwer verwundet wird, muss diese Person mit in das Krankenhaus.
	"
	]
	];
	
	player createDiaryRecord ["serverrules",
	[
	"Fahrzeuge", 
	"
	Fahrzeuge die ordnungsgemäß oder auf einem Parkplatz geparkt sind, werden stehen gelassen.<br/>
	<br/>
	Fahrzeuge, die verlassen und/oder kaputt aussehen, können beschlagnahmt werden.<br/>
	<br/>
	Fahrzeuge die zu lange an einem Ort stehen ohne bewegt zu werden, können beschlagnahmt werden.<br/>
	<br/>
	Fahrzeuge die unsachgemäß geparkt worden sind, werden kostenpflichtig abgeschleppt.<br/>
	<br/>
	Rebellen Fahrzeuge gelten als illegal und werden strafrechtlich verfolgt.<br/>
	Dazu zählen(Rebellen Ifrit/Hunter, Rebellen Offroader (bewaffnet).<br/>
	<br/>
	Fahrzeuge stehlen, um diese zu zerstören, ist verboten.<br/>
	<br/>
	Einsteigen in Fahrzeuge, um den Besitzer ohne Sinn zu stören, ist verboten.<br/>
	<br/>
	"
	]
	];
	
	player createDiaryRecord ["serverrules",
	[
	"Flugverkehr", 
	"
	Das Fliegen unter 500m über Städten ist verboten. (Wegen großer Lärmbelästigung)<br/>
	<br/>
	Das Landen in Städten darf nur mit einer Landeerlaubniss durchgeführt werden.<br/>
	<br/>
	Polizisten und Medics dürfen in Notfällen in Städten landen.<br/>
	<br/>
	Landen ist nur, auf dafür vorgesehen Flächen erlaubt.<br/>
	"
	]
	];
	
	player createDiaryRecord ["serverrules",
	[
	"igiLoad Script",
	"
	Da wir bei uns das igiLoad Script verwenden, ist es möglich, Fahrzeuge auf die Ladefläche eines LKW's zu laden.<br/>
	<br/>
	Es ist strengstens untersagt, Fahrzeuge auf die Ladefläche des eigenen LKW's zu laden, wenn der Besitzer des Fahrzeug dies nicht wünscht.<br/>
	<br/>
	Ganz besonders zählen dazu natürlich die Medic- und Polizeifahrzeuge. Im Rahmen eines Roleplays ist dies natürlich erlaubt.<br/>
	<br/>
	Wird eine Person überfallen, ist es auch erlaubt dessen Fahrzeug aufzuladen und mit zu nehmen. Nur bitte, übertreibt es nicht!<br/>
	<br/>
	Wenn man sich nicht an diese Regeln hält, kann dies zu einer Gefängnisstrafe führen, da trollen im Zusammenhang mit diesem Script nicht toleriert wird.<br/>
	<br/>
	Bei mehrfachen vergehen kann dies zum Kick oder Ban führen.<br/>
	"
	]
	];
	
	player createDiaryRecord ["serverrules",
	[
	"ADAC",
	"
	Wir möchten bei uns keine gewhitelisteten ADAC einfügen, sondern euch Usern die Möglichkeit geben ADAC zu spielen, wenn ihr Lust habt.<br/>
	Wenn ihr grade mal Lust habt, setzt ihr euch einfach (Unter Profil) ein [ADAC] vor euren Spielernamen. Als ADAC habt ihr keine Sonderrechte bzgl. überfallen werden, oder dergleichen. Klar könnt ihr beschützt werden, aber auch der *Schutzdienst* hat keine Sonderrechte. Als ADAC helft ihr Spielern und indirekt dem Server (herumstehende Fahrzeuge entfernen). Steht ihr wegen Mord oder dergleichen auf der Wantedliste, genauso wie der *Schutzdienst*, werdet ihr ganz normal strafrechtlich verfolgt wie jeder andere auch.<br/>
	<br/>
	Regeln für die ADAC:<br/>
	<br/>
	ADAC darf keine Waffen tragen.<br/>
	ADAC darf keine illegalen Aktivitäten betreiben. (Also auch keine Fahrzeuge klauen.)<br/>
	<br/>
	Ihr habt die Möglichkeiten mit dem igiload Script in Verbindung mit dem ADAC Hemtt und Mausrad, Fahrzeuge aufzuladen.<br/>
	"
	]
	];
	
	player createDiaryRecord ["serverrules",
	[
	"Allgemeine Kommunikationsregeln", 
	"
	Das reden über den Side Chat ist verboten. Beleidigungen in diesem sind ebenfalls verboten.<br/>
	<br/>
	Für Supportanfragen wird unser Teamspeak benutzt oder das Ingame-Adminticket.<br/>
	<br/>
	Die Benutzung des Side Chats ist kein Roleplay.<br/>
	"
	]
	];
	
	player createDiaryRecord ["serverrules",
	[
	"Random Deathmatch (RDM+VDM)", 
	"
	Personen dürfen nicht ohne Roleplayhintergrund getötet werden. ('Gibt mir deine Autoschlüssel oder du stirbst' ist kein RP).<br/>
	<br/>
	Personen dürfen nicht mit einem Fahrzeug getötet werden (VDM).<br/>
	<br/>
	Sich absichtlich vor Fahrzeuge schmeißen ist verboten.<br/>
	<br/>
	Rammen von Fahrzeugen das diese explodieren zählt als VDM.<br/>
	"
	]
	];

	player createDiaryRecord ["serverrules",
	[
	"Benehmt euch!", 
	"
	Wenn ein Admin euch sagen muss, dass ihr euch nicht anständig benehmt, dann ist euer Verhalten nicht annehmbar.<br/>
	<br/>
	Beleidigungen sind verboten.<br/>
	<br/>
	Ein Rollenspiel kaputt zu machen ist verboten.<br/>
	<br/>
	Trollen, egal wie, ist verboten.<br/>
	"
	]
	];

// Bußgeldkatalog
	
	player createDiaryRecord ["busgeld",
	[
	"Kapitalverbrechen", 
	"
	Mord: Inhaftierung<br/>
	<br/>
	Geiselnahme: Inhaftierung<br/>
	<br/>
	Banküberfall: Inhaftierung<br/>
	<br/>
	Drogenschmuggel/Handel: Inhaftierung<br/>
	<br/>
	Drogen Besitz: 100% vom Wert (Strafgeld)<br/>
	<br/>
	Besitz von Tieren (Schildkröten): Inhaftierung + 100% vom Wert (Strafgeld)<br/>
	<br/>
	Handel mit Gegenständen der Polizei: Inhaftierung<br/>
	<br/>
	Überfall auf eine Person: Inhaftierung<br/>
	<br/>
	Diebstahl aus einem Haus (Housing System): Inhaftierung<br/>
	<br/>
	Bei mehrmaligen Verstößen wird das Bußgeld addiert.<br/>
	"
	]
	];
	
	player createDiaryRecord ["busgeld",
	[
	"Waffenverstöße", 
	"
	Besitz illegaler Waffen: 30.000 $ + Waffe abnehmen<br/>
	<br/>
	Waffe sichtbar Tragen (gezogen) innerorts: 15.000 $ + abnahme bei illegaler Waffe<br/>
	<br/>
	Waffe abfeuern innerorts: Beschlagnahmung der Waffe + 20.000 $<br/>
	<br/>
	Ohne Lizenz eine Waffe besitzen: 15.000 $<br/>
	<br/>
	Bei mehrmaligen Verstößen wird das Bußgeld addiert.<br/>
	"
	]
	];
	
	player createDiaryRecord ["busgeld",
	[
	"Störungen", 
	"
	Lockpicking (Versuchter Fahrzeug Diebstahl): 7.500 $<br/>
	<br/>
	Lockpicking + (Fahrzeugdiebstahl): Inhaftierung<br/>
	<br/>
	Sachbeschädigung: (Umgebung 2.500 $) (Fahrzeug 3.000 $)<br/>
	<br/>
	Anstiftung zu Straftaten: 8.000 $<br/>
	<br/>
	Belästigung/Nachtstellen/„Stalking“: 4.500 $ bei mehrfachem Vergehen = Inhaftierung<br/>
	<br/>
	Beihilfe zur Tat: nach eigenem Ermessen des Polizisten<br/>
	<br/>
	Bei mehrmaligen Verstößen wird das Bußgeld addiert.<br/>
	"
	]
	];
	
	player createDiaryRecord ["busgeld",
	[
	"Strafen Umgang mit den Beamten", 
	"
	Behinderung der Justiz (einmaliger Verstoß): 4.500 $<br/>
	<br/>
	Beleidigung gegenüber der Polizei (einmaliger Verstoß): 12.500 $<br/>
	<br/>
	Befreien von Festgesetzten Personen (einmaliger Verstoß): Inhaftierung<br/>
	<br/>
	Angriff auf einen Officer: Inhaftierung<br/>
	<br/>
	Einbruch in Staatseinrichtungen: (einmaliger Verstoß = Ermahnung) (mehrmals = nach eigenem Ermessen des Polizisten)<br/>
	<br/>
	Widersetzen von Anweisungen der Polizei: (einmalig = 5.000 $) (mehrfach = Inhaftierung)<br/>
	<br/>
	Bei mehrmaligen Verstößen wird das Bußgeld addiert.<br/>
	"
	]
	];
	
	player createDiaryRecord ["busgeld",
	[
	"Straßen Verstöße", 
	"
	Rücksichtloses Fahren / Behinderung des Verkehrs: 2.500 $<br/>
	<br/>
	Fahren ohne Licht: (einmaliger Verstoß = Ermahnung) (mehrmals = 1.500 $)<br/>
	<br/>
	Zu schnelles Fahren in der Stadt: (einmaliger Verstoß = Ermahnung) (mehrmals = gewaltsames Stoppen des Fahrers + nach eigenem Ermessen des Polizisten)<br/>
	<br/>
	Führen eines illegalen Fahrzeuges: 75.000 $ + Beschlagnahmung des Fahrzeugs.<br/>
	<br/>
	Teilnahme an einem Illegale Straßenrennen: 17.000 $<br/>
	<br/>
	Nicht beachten (umfahren) von Polizeikontrollen: 15.000 $<br/>
	<br/>
	Fahrerflucht = Inhaftierung<br/>
	<br/>
	Ohne Lizenz ein Fahrzeug führen: 5.000 $<br/>
	<br/>
	Unfallverursachung: (nach eigenem Ermessen des Polizisten)<br/>
	<br/>
	Fahren unter Drogen/Alkoholeinfluss: Entziehung der Führerscheins + 7.000 $<br/>
	<br/>
	Bei mehrmaligen Verstößen wird das Bußgeld addiert.<br/>
	"
	]
	];
	
	player createDiaryRecord ["busgeld",
	[
	"Flugverstöße", 
	"
	Schweben, landen in bewohntem Gebiet: abschleppen des Fahrzeugs + 20.000 $<br/>
	<br/>
	Landen auf Straßen: 10.000 $<br/>
	<br/>
	Landen in Gesperrten Bereichen (Bank, Polizeistationen, Checkpoints etc.) ohne Anmeldung: abschleppen + 10.000 $<br/>
	<br/>
	Fliegen unterhalb 500 Metern: 15.000 $<br/>
	<br/>
	Fliegen ohne Beleuchtung (Kollisionsbeleuchtung): 8.000 $<br/>
	<br/>
	Bei mehrmaligen Verstößen wird das Bußgeld addiert.<br/>
	"
	]
	];
	
// Police Section
	player createDiaryRecord ["policerules",
	[
	"Banküberfälle",
	"
	Alle Beamte die nicht in einen wichtigen Einsatz (z.B. Entführung, Marktplatz) eingebunden sind, müssen sich sofort dem Banküberfall widmen.<br/>
	<br/>
	2. Jeder Zivilist der den Bankräubern hilft (wenn auch unwissend) darf festgenommen im Notfall auch außer Gefecht gesetzt werden.<br/>
	<br/>
	"
	]
	];
	
	player createDiaryRecord ["policerules",
	[
	"Banküberfälle",
	"
	Alle Beamte die nicht in einen wichtigen Einsatz (z.B. Entführung, Marktplatz) eingebunden sind, müssen sich sofort dem Banküberfall widmen.<br/>
	<br/>
	2. Jeder Zivilist der den Bankräubern hilft (wenn auch unwissend) darf festgenommen im Notfall auch außer Gefecht gesetzt werden.<br/>
	<br/>
	"
	]
	];
	
	player createDiaryRecord ["policerules",
	[
	"Patrouillieren",
	"
	Rekruten dürfen in ihrer Dienstzeit bis zum CopII nicht alleine Kavala verlassen, nur in Begleitung eines Vorgesetzten ist dieses gestattet.<br/>
	<br/>
	Ein Rang 2. Beamter darf in der Regel überall mit einem von sich auserwählten Fahrzeug oder zu Fuß patrouillieren.<br/>
	!ABER! Das Patrouillieren in oder in der näheren Umgebung von Illegalen Gebieten ist strengstens untersagt!<br/>
	"
	]
	];
	
	player createDiaryRecord ["policerules",
	[
	"Illegale Gebiete", 
	"
	Illegale Gebiete bzw. Rebellen Gebiete dürfen von der Polizei nur mit einem angemessenen Grund betreten werden (Insider Tipp, Verfolgung).<br/>
	<br/>
	Das Bewachen (becampen) von Illegalen Gebieten ist strengstens untersagt und wird für jeden Beamten schwerwiegende Karriere folgen haben!<br/>
	<br/>
	Zu den illegalen Gebieten zählen:<br/>
	-Drogenfelder <br/>
	-Drogenverarbeiter <br/>
	-Drogendealer <br/>
	-Rebellencamps <br/>
	"
	]
	];
	
	player createDiaryRecord ["policerules",
	[
	"Vorgehen an Checkpoint ", 
	"
	- Bringt das Fahrzeug mit den Insassen zum stehen, bittet sie den Motor abzustellen und klärt sie auf dass das eine routinemäßige Kontrolle ist.<br/>
	<br/>
	- Fragt sie noch während sie im Fahrzeug sitzen ob sie Waffen oder andere gefährliche Gegenstände bei sich tragen.<br/>
	JA-> Bittet sie nach dem aussteigen die Waffen so schnell es geht zu schulten und andere gefährliche Gegenstände abzulegen.<br/>
	NEIN -> Bittet sie auszusteigen und mit dem nächsten Punkt fortzufahren.<br/>
	<br/>
	- Versucht mit ihnen ein Gespräch aufzubauen um Informationen zu sammeln, bittet sie dann höflich ob sie einer Durchsuchung zustimmen.<br/>
	JA-> Legt ihnen zur Eigensicherung Handschellen an und beginnt mir der Durchsuchung (Fahrzeug + Person).<br/>
	NEIN-> Lasst sie gehen wenn kein Verdacht von Illegalen Aktivitäten besteht.<br/>
	<br/>
	- Am Ende einer sauberen Durchsuchung lasst ihr die Personen weiterfahren.<br/>
	- Wenn etwas illegales entdeckt/gefunden wurde, geht man routinemäßig vor.<br/>
	"
	]
	];
	
	player createDiaryRecord ["policerules",
	[
	"Fahrzeuge", 
	"
	Fahrzeuge die dem Anschein nach nicht benutzt/funktionstüchtig sind können abgeschleppt werden.<br/>
	<br/>
	Das Abschleppen von Fahrzeugen ist sehr wichtig, da der allgemeinen Ordnung beiträgt und den Server vor Lags bewahrt.<br/>
	<br/>
	Polizeischnellboote sowie HunterHMG dürfen eingesetzt werden um Verbrecher aufzuhalten. Die Minigun/ HMG ist dazu gedacht die Reifen zu zerschießen, nicht das ganze Fahrzeug. Gesuchte Personen dürfen damit, falls erforderlich, erschossen werden.<br/>
	<br/>
	Das gleiche gilt für illegale Fahrzeuge, nur die Reifen zerschießennicht das ganze Fahrzeug.<br/>
	"
	]
	];
	
	player createDiaryRecord ["policerules",
	[
	"Luftfahrt", 
	"
	Nur wenn es den Beamten in einem bestimmten Einsatz einen Vorteil bringt, darf man mit dem Helikopter auf den Straßen landen oder darüber schweben.<br/>
	<br/>
	Die Landerlaubnis an Helikopter für nicht gekennzeichneten Flächen (Dächern, Straßen) darf nur vom Ranghöchsten Beamten erteilt werden.<br/>
	"
	]
	];

	player createDiaryRecord ["policerules",
	[
	"Max. Höchstgeschwindigkeiten", 
	"
	In Städten:<br/>
	- Seitenstraßen: 30km/h<br/>
	- Hauptstraßen: 50km/h<br/>
	<br/>
	Außerhalb von Städten:<br/>
	- Seitenstraßen: 100km/h<br/>
	- Highways: unbegrenzt km/h<br/>
	<br/>
	Besonderheiten: Der Kavala Marktplatz ist eine 30km/h Zone.
	"
	]
	];
	
	player createDiaryRecord ["policerules",
	[
	"Befehlskette", 
	"
	Der Ranghöchste Beamte (nur in der Situation inbegriffen) ist dafür zuständig den Einsatz zu leiten und alle Maßnahmen festzulegen.<br/>
	<br/>
	Der Ranghöchste Beamte hat das volle Kommando.<br/>
	<br/>
	Den Befehlen des Vorgesetzten (bzw. des Einsatzleiters) ist folge zu leisten. Bei eventuellen Komplikationen können diese nach dem Einsatz besprochen werden.<br/>
	<br/>
	Die Einsatzleitung kann vom Ranghöchsten ebenso an einen niedrigeren abgegeben werden.<br/>
	"
	]
	];
		
	player createDiaryRecord ["policerules",
	[
	"Waffen", 
	"
	Es ist einem Polizisten strengstens Untersagt Polizei Ausrüstung an Zivilisten zu vergeben, Zuwiderhandlung wird mit dem Ausschluss aus dem Polizeidienst und in schweren Fällen mit einem Bann bestraft.<br/>
	<br/>
	Legale Waffen (inkl. Waffenschein):<br/>
	P07<br/>
	Rook<br/>
	ACP-C2<br/>
	Zubr<br/>
	Vermin<br/>
	PDW2000<br/>
	<br/>
	Alle anderen Waffen die hier nicht aufgelistet sind gelten als illegal.<br/>
	"
	]
	];
	
	player createDiaryRecord ["policerules",
		[
	"Nicht tödliche Gewalt",
	"
	Taserpistole (P07 9mm) und das Tasergewehr (Sting 9mm) sind die Einzigen NICHT tödlichen Waffen für Cops. Diese Waffen dürfen nur mit Grund benutzt werden und nicht zu zwecken des Trollings.<br/>
	<br/>
	Nicht tödliche Gewalt wird nur am Marktplatz und zum gegebenen Einsatz angewendet.<br/>
	"
	]
	];

	player createDiaryRecord ["policerules",
	[
	"Tödliche Gewalt",
	"
	Der Einsatz von tödlicher Gewalt ist nur erlaubt wenn das Leben eines Kollegen oder eines Zivilisten ernsthaft bedroht wird und der Taser keine effektive Wirkung im Einsatz zeigen kann.<br/>
	<br/>
	Falls ein Beamter beim wahllosen Abfeuern der Waffe (Schießtraining erlaubt wenn abgesprochen) erwischt wird, muss er mit ernsthaften Konsequenzen rechnen!<br/>
	<br/>
	Wenn ihr einen Überfall, Entführung etc. mitbekommt wird trotzdem !VORGEWARNT! bevor geschossen wird.<br/>
	<br/>
	Wer seine Rechte als Beamter missbraucht oder Verletzt bekommt ebenso eine gerechte Strafe. (Vom Vergehen abhängig)<br/>
	"
	]
	];
	
	player createDiaryRecord ["policerules",
	[
	"Teamspeak Regeln",
	"
	Alle Cops müssen auf dem Teamspeak im Polizeichannel sein.<br/>
	<br/>
	Kommt auf den Teamspeak Server, bevor ihr euch als Polizist auf dem Server einloggt.<br/>
	"
	]
	];
	
	player createDiaryRecord ["medicrules",
	[
	"Verhalten von Medics",
	"
	Den Höherrangigen Medic's ist jederzeit Folge zu leisten.<br/>
	<br/>
	Die Einteilung erfolgt immer vom Ranghöchsten Medic in der Gruppe.<br/>
	<br/>
	Das widerrechtliche benutzen des Blaulichtes und der Sirene ist nicht erlaubt.<br/>
	<br/>
	Der unnötige Flug über Kavala ist nicht gestattet.<br/>
	"
	]
	];
	
	player createDiaryRecord ["medicrules",
	[
	"Teamspeak Regeln",
	"
	Alle Medics müssen auf dem Teamspeak im Medicchannel sein.<br/>
	<br/>
	Kommt auf den Teamspeak Server, bevor ihr euch als Medic auf dem Server einloggt.<br/>
	"
	]
	];
	
// ASA 

	player createDiaryRecord ["asa",
	[
	"Wer ist ASA?", 
	"
	Hallo liebe Altis Bewohner,<br/>
	wir sind die Altis Security Agency, wir sind ein neuer Sicherheitsdienst auf Altis.<br/>
	<br/>
	Warum sind wir auf Altis?<br/>
	Wir waren eine bekannte Sicherheitsfirma auf Großbritannien, doch durch die Finanzkrise waren wir gezwungen die Insel zu verlassen.<br/>
	<br/>
	Jetzt sind wir hier auf Altis, eine wunderschöne Insel auf welcher es nur schönes Wetter gibt. Wir sind: Hannibal Smith, Bl4ckBlizz4rd, Fuzzion, Mr. Huckleberry, Truman.<br/>
	<br/>
	Wir sind ehemalige Soldaten, welche den Dienst beim Militär eingestellt haben und sich eine eigene Sicherheitsfirma eröffnet haben.<br/>
	<br/>
	Unser bisher größter Auftrag war die Königin von Großbritannien zu beschützen, da diese nur knapp einem Mordanschlag entkommen ist. Durch diese große Tat, hat uns der Präsident von Altis angeworben.<br/>
	<br/>
	Wir bieten:<br/>
	Einen Sicherheitsdienst<br/>
	Einen Begleitschutz bei legalen Aktivitäten<br/>
	Bei weiteren Fragen wenden Sie sich bitte an uns.<br/>
	"
	]
	];

	player createDiaryRecord ["asa",
	[
	"ASA Regeln", 
	"
	Der Präsident von Altis erlaubt uns für unsere Dienste schwere Waffen einzusetzen, da das Verbrechen derzeit sehr stark auf Altis regiert.<br/>
	<br/>
	Die ASA wird niemand unschuldigen zur Rechenschaft ziehen.<br/>
	<br/>
	Wir werden euch gegen ein vorher festgelegte Summe oder Anteil bei euren legalen Aktivitäten helfen.<br/>
	<br/>
	Wir werden keine Rache für vergangene Taten ausüben.<br/>
	<br/>
	Wir werden euch nicht bei illegalen Aktivitäten unterstützen.<br/>
	<br/>
	Wir werden niemanden überfallen.<br/>
	<br/>
	Die ASA wird keine illegalen Aktivitäten betreiben.<br/>
	<br/>
	In Absprache mit der Polizei werden wir diese unterstützen.<br/>
	<br/>
	Geiselnahmen übernimmt die ASA, wenn mindestens 5 ASA-Mitglieder online sind.<br/>
	<br/>
	ASA-Mitglieder sind an den Englischen Uniformen zu erkennen.
	"
	]
	];
	
// Illegal Items Section

	player createDiaryRecord ["illegal",
	[
	"Illegale Fahrzeuge",
	"
	Der Besitz folgender Fahrzeuge ist Illegal und ihr müsst mit Strafen seitens der Polizei rechnen.<br/>
	<br/>
	Rebellen Ifrit<br/>
	Rebellen Hunter<br/>
	Rebellen Offroader (bewaffnet)<br/>
	"
	]
	];
	player createDiaryRecord ["illegal",
	[
	"Illegale Waffen",
	"
	Der Besitz folgender Waffen ist Illegal und ihr müsst mit Strafen seitens der Polizei rechnen.<br/>
	<br/>
	MX Serie<br/>
	Katiba Serie<br/>
	TRG Serie<br/>
	Mk.20 Serie<br/>
	Mk.18 ABR<br/>
	SDAR <br/>
	Rahim<br/>
	Lynx Serie<br/>
	Polizeiwaffen (in Zivilistenhänden)<br/>
	Sprengladungen<br/>
	"
	]
	];
	player createDiaryRecord ["illegal",
	[
	"Illegal Items",
	"
	Der Besitz folgender Gegenstände ist Illegal und ihr müsst mit Strafen seitens der Polizei rechnen.<br/>
	<br/>	
	Schildkröten (Artenschutz)<br/>
	Kokain<br/>
	Heroin<br/>
	Cannabis<br/>
	Marijuana<br/>
	"
	]
	];

	
// Controls Section

	player createDiaryRecord ["controls",
	[
	"Steuerung",
	"
	Z: Playermenü öffnen<br/>
	U: Auf- und Zuschließen von Fahrzeugen<br/>
	F: Polizeisirene (als Polizist)<br/>
	T: Fahrzeuginventar<br/>
	Shift + R: Festnehmen (Polizist)<br/>
	Shift + G: Niederschlagen(Nur Zivilisten, kann zum ausrauben genutzt werden)<br/>
	Linke Windowstaste: Hauptaktionstaste um Sachen aufzunehmen, zum interagieren bei Fzg. Zivilisten, Medics, oder für die Polizisten um mit den Zivilisten zu agieren. Kann geändert werden: ESC->Configure->Controls<br/>
	Shift + L: Blaulich aktivieren oder deaktivieren(als Polizist oder Medic).<br/>
	Shift + H: Waffe holstern<br/>
	Shift + O: Fesseln mit Kabelbindern (Zivilisten)
	"
	]
	];