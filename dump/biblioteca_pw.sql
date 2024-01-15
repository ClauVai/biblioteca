-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Gen 15, 2024 alle 01:14
-- Versione del server: 10.1.38-MariaDB
-- Versione PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `biblioteca_pw`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `autori`
--

CREATE TABLE `autori` (
  `id` int(11) NOT NULL,
  `nome_autore` varchar(50) NOT NULL,
  `cognome` varchar(50) NOT NULL,
  `biografia` varchar(3000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `autori`
--

INSERT INTO `autori` (`id`, `nome_autore`, `cognome`, `biografia`) VALUES
(1, 'Agatha', 'Christie', 'Agatha Christie (1890-1976), celebre scrittrice di gialli inglese, ha attraversato difficoltà finanziarie dopo la morte del padre nel 1901. Dopo aver sposato Archie Christie nel 1910, ha prestato servizio come infermiera durante la Prima Guerra Mondiale, scomparendo misteriosamente nel 1926 e divorziando nel 1928 per poi sposare l\'archeologo Max Mallowan.'),
(2, 'Philip K.', 'Dick', 'Philip K. Dick (1928-1982), scrittore statunitense, è noto per i suoi romanzi di fantascienza e distopia. Le sue opere, tra cui \"Blade Runner\" e \"The Man in the High Castle\", esplorano realtà alternative e questioni filosofiche, riflettendo la sua vita tumultuosa e le sue sfide mentali.'),
(3, 'Ken', 'Follett', 'Ken Follett, scrittore britannico, ottenne fama a 27 anni con \"L\'ago della bilancia\". Le sue opere, come \"I pilastri della Terra\", sono bestseller internazionali. Attualmente risiede a Londra e nell\'Hertfordshire con la famiglia.'),
(4, 'Kazuo', 'Ishiguro', 'Kazuo Ishiguro (1954), trasferitosi in Gran Bretagna all\'età di cinque anni, ha vinto il Premio Nobel per la Letteratura e il Booker Prize. Autore di bestseller come \"Quel che resta del giorno\", è stato nominato cavaliere nel 2018 e ha ricevuto riconoscimenti da Francia e Giappone.\r\n'),
(5, 'J.K.', 'Rowling', 'J.K. Rowling, nata nel 1965 a Yate, Regno Unito, è la celebre autrice della serie di libri su Harry Potter, che ha conquistato milioni di lettori in tutto il mondo. Oltre al suo successo letterario, Rowling è anche nota per il suo impegno filantropico e la creazione del sito web Pottermore, che approfondisce il mondo magico da lei creato.'),
(6, 'Stephen', 'King', 'Stephen King, autore di oltre cinquanta bestseller, è noto per i thriller come \"Mr. Mercedes\". Ha ricevuto premi prestigiosi, tra cui la National Medal of Arts, e molte delle sue opere sono diventate film e serie TV di successo. Vive nel Maine con sua moglie Tabitha King.'),
(7, 'Jay', 'Kristoff', 'Jay Kristoff, autore bestseller con opere come THE NEVERNIGHT CHRONICLE, ha venduto oltre due milioni di copie in più di trentacinque paesi, vincendo premi nonostante la sua incredulità nei finali felici.'),
(8, 'Haruki', 'Murakami', 'Haruki Murakami (nato nel 1949) è uno degli autori giapponesi più celebri, noto per opere come \"Norwegian Wood\" e \"L\'incolore Tazaki Tsukuru\". Iniziò la carriera letteraria nel 1978, diventando centrale nella letteratura contemporanea per le sue narrazioni surreali e introspezioni complesse.'),
(9, 'Banana', 'Yoshimoto', 'Banana Yoshimoto, nata a Tokyo nel 1964, è la figlia del rinomato poeta giapponese Takaaki Yoshimoto. Dopo essersi laureata in letteratura all\'Università Nihon, ha adottato lo pseudonimo \"Banana\" per il suo carattere \"carino\" e \"androgino\".'),
(10, 'Nicholas', 'Sparks', 'Nicholas Sparks, autore di bestseller internazionali come \"The Notebook\", ha venduto oltre 105 milioni di copie, guadagnando oltre tre quarti di miliardo di dollari con adattamenti cinematografici. Oltre alla sua carriera letteraria, si distingue per l\'impegno filantropico attraverso la Nicholas Sparks Foundation, supportando borse di studio e programmi educativi.'),
(11, 'J.R.R.', 'Tolkien', 'J.R.R. Tolkien, nato nel 1892, veterano della Prima Guerra Mondiale, divenne celebre con \"Lo Hobbit\" e \"Il Signore degli Anelli\", vendendo 150 milioni di copie in oltre 40 lingue. Onorato con il CBE e laureato honoris causa, morì nel 1973 all\'età di 81 anni.'),
(13, 'Roberto', 'Re', 'Roberto Re, rinomato mental coach, ha collaborato con numerosi personaggi famosi nello sport e dello spettacolo. Creatore di Sport Power Mind e con oltre 25 anni di esperienza, è il numero uno della formazione in Italia attraverso la sua società HRD Training Group.'),
(14, 'Carlos R.', 'Zafòn', 'Carlos Ruiz Zafón (1964-2020), celebre scrittore spagnolo, noto per la \"Trilogia della Nebbia\" e il \"Cimitero dei Libri Dimenticati,\" ha conquistato fama mondiale, diventando uno degli scrittori più letti dopo Cervantes. La sua ultima opera, \"La città di vapore,\" è stata pubblicata postuma nel 2020.'),
(17, 'Lewis', 'Carroll', 'Lewis Carroll (1832-1898), pseudonimo di Charles Lutwidge Dodgson, poliedrico inglese noto per \"Alice nel paese delle meraviglie\" e \"Attraverso lo specchio\". Nato nel 1832 a Daresbury, Cheshire, fu il terzo di undici fratelli.'),
(18, 'Gabrielle-S.', 'B. De Villeneuve', 'Gabrielle-Suzanne de Villeneuve, scrittrice francese, nota per la prima versione moderna de \"La Bella e la Bestia\". Dopo il matrimonio, intraprese la carriera letteraria, con il romanzo più famoso \"La Jardinière de Vincennes\" (1753). La storia della Bella e la Bestia, udita da una cameriera in America nel 1740, è stata frequentemente ripubblicata.'),
(19, 'Carlo', 'Collodi', 'Carlo Collodi (1826-1890), pseudonimo di Carlo Lorenzini, fu uno scrittore e giornalista italiano. Celebre per \"Le avventure di Pinocchio,\" divenuto un classico mondiale tradotto in 240 lingue. Nato a Firenze nel 1826, Collodi è ricordato per il suo immortale burattino.'),
(20, 'Rudyard', 'Kipling', 'Joseph Rudyard Kipling (1865-1936), scrittore britannico, vinse il Premio Nobel per la Letteratura nel 1907 a soli 41 anni, diventando il più giovane e primo vincitore di lingua inglese. Dopo la sua morte, le sue ceneri riposano nel Poets\' Corner dell\'Abbazia di Westminster.'),
(21, 'Virginie', 'Pfeiffer', 'Virginie Pfeiffer, illustratrice e graphic designer, diplomata all\'École Nationale Supérieure des Arts di Nancy e Liegi, dal 2005 espone in mostre e lavora nell\'editoria e comunicazione. Ama esplorare nuovi mondi visivi attraverso sculture, collage, fumetti e illustrazioni. Dal 2007 insegna illustrazione all\'ESA di Liegi.');

-- --------------------------------------------------------

--
-- Struttura della tabella `case_editrici`
--

CREATE TABLE `case_editrici` (
  `id` int(11) NOT NULL,
  `nome_casa` varchar(50) NOT NULL,
  `sede` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `case_editrici`
--

INSERT INTO `case_editrici` (`id`, `nome_casa`, `sede`) VALUES
(1, 'Einaudi', 'Torino'),
(2, 'Faber and Faber', 'Londra'),
(3, 'Feltrinelli', 'Milano'),
(4, 'Dodd, Mead & Co.', 'New York'),
(5, 'Mondadori', 'Milano'),
(6, 'Fanucci', 'Roma'),
(7, 'Bloomsbury', 'Londra'),
(8, 'Salani', 'Firenze'),
(9, 'Bompiani', 'Milano'),
(10, 'Sperling & Kupfer', 'Milano'),
(11, 'Pickwick', 'Milano'),
(14, 'Hachette Collections', 'Vanves'),
(15, 'L\'Ippocampo', 'Milano');

-- --------------------------------------------------------

--
-- Struttura della tabella `generi`
--

CREATE TABLE `generi` (
  `id` int(11) NOT NULL,
  `nome_genere` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `generi`
--

INSERT INTO `generi` (`id`, `nome_genere`) VALUES
(1, 'Narrativa'),
(2, 'Romanzo'),
(3, 'Horror'),
(4, 'Fantasy'),
(5, 'Giallo'),
(6, 'Psicologia'),
(7, 'Romantico'),
(8, 'Fantascienza'),
(9, 'Bambini');

-- --------------------------------------------------------

--
-- Struttura della tabella `libri`
--

CREATE TABLE `libri` (
  `id` int(11) NOT NULL,
  `titolo` varchar(70) NOT NULL,
  `autore_id` int(11) NOT NULL,
  `genere_id` int(11) NOT NULL,
  `ISBN` varchar(50) NOT NULL,
  `casa_editrice_id` int(11) NOT NULL,
  `anno_edizione` int(11) NOT NULL,
  `trama` varchar(2000) NOT NULL,
  `copertina` varchar(255) NOT NULL,
  `lingua_id` int(11) NOT NULL,
  `stato` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `libri`
--

INSERT INTO `libri` (`id`, `titolo`, `autore_id`, `genere_id`, `ISBN`, `casa_editrice_id`, `anno_edizione`, `trama`, `copertina`, `lingua_id`, `stato`) VALUES
(1, 'Il gigante sepolto', 4, 1, '9788806231644', 1, 2016, 'Il romanzo è ambientato in un\'Inghilterra post-romana e segue la storia di un anziano guerriero britanno, Axl, e sua moglie, Beatrice, mentre intraprendono un viaggio attraverso la terra di Britonia. Durante il loro viaggio, incontrano vari personaggi e affrontano sfide che coinvolgono la memoria e il perdono. Il libro esplora temi di amore, memoria, e le conseguenze delle azioni passate.', 'https://img.libraccio.it/images/9788806231644_0_500_0_75.jpg', 1, 0),
(2, 'Quando eravamo orfani', 4, 1, '9788806154592', 1, 2000, 'Shanghai, inizio del Novecento: un bambino, un padre che lavora nel commercio dell\'oppio fra Inghilterra e Cina, una madre che si batte per i diritti civili. Londra, anni Trenta: Christopher Banks, il bambino di allora, cresciuto nei migliori college inglesi dopo la sparizione misteriosa di entrambi i genitori, è diventato il detective piú famoso del Regno Unito e nell\'alta società non si parla che di lui. Ma l\'enigma su quel rapimento non gli dà pace: seguendo l\'occasione fornitagli da una fortuita passione, ritorna in Oriente per indagare prima che il mondo precipiti nel baratro del conflitto mondiale. Però la verità che alla fine giungerà a scoprire è molto piú banale e drammatica di ogni supposizione.', 'https://www.dimanoinmano.it/img/475543/full/narrativa/narrativa-straniera/quando-eravamo-orfani.jpg', 1, 1),
(3, 'Never let me go', 4, 1, '9780571258093', 2, 2010, 'Kazuo Ishiguro imagines the lives of a group of students growing up in a darkly skewed version of contemporary England. Narrated by Kathy, now thirty-one, Never Let Me Go dramatises her attempts to come to terms with her childhood at the seemingly idyllic Hailsham School and with the fate that has always awaited her and her closest friends in the wider world. A story of love, friendship and memory, Never Let Me Go is charged throughout with a sense of the fragility of life.', 'https://d3fa68hw0m2vcc.cloudfront.net/a85/173889418.jpeg', 2, 1),
(4, 'Non lasciarmi', 4, 1, '9788806231774', 1, 2016, 'Kathy, Tommy e Ruth vivono in un collegio, Hailsham, immerso nella campagna inglese. Non hanno genitori, ma non sono neppure orfani, e crescono insieme ai compagni, accuditi da un gruppo di tutori, che si occupano della loro educazione. Fin dalla piú tenera età nasce fra i tre bambini una grande amicizia. La loro vita, voluta e programmata da un\'autorità superiore nascosta, sarà accompagnata dalla musica dei sentimenti, dall\'intimità piú calda al distacco piú violento. Una delle responsabili del collegio, che i bambini chiamano semplicemente Madame, si comporta in modo strano con i piccoli. Anche gli altri tutori hanno talvolta reazioni eccessive quando i bambini pongono domande apparentemente semplici. Cosa ne sarà di loro in futuro? Che cosa significano le parole «donatore» e «assistente»? E perché i loro disegni e le loro poesie, raccolti da Madame in un luogo misterioso, sono cosí importanti?', 'https://ilmeglioditutto.it/wp-content/uploads/2021/04/71QqYqwh8ML.jpg', 1, 0),
(5, 'Il coperchio del mare', 9, 2, '9788807721199', 3, 2009, 'Mari si è appena laureata ed è tornata a vivere nel suo paese natale, dove ha deciso di aprire un piccolo chiosco di granite. Quest\'estate sua madre ospita Hajime, la figlia di una cara amica, che sta attraversando un periodo molto difficile a causa della morte della nonna. Mari non è affatto entusiasta: è indaffarata col chiosco appena avviato e pensa di non avere tempo per fare compagnia a una ragazza così piena di problemi. Oltre a brutte cicatrici che le ricoprono il corpo, dopo la morte della nonna Hajime si rifiuta di mangiare e di uscire di casa. Ciononostante le due ragazze a poco a poco diventano amiche e Hajime inizia ad aiutare Mari nel lavoro. Il resto del tempo lo trascorrono tra nuotate in mare, passeggiate sulla spiaggia e lunghe chiacchierate, sempre sullo sfondo di un incantevole paesaggio marino. E il mare sembra essere il vero protagonista del romanzo, con i suoi misteri e le creature che si celano negli abissi, una presenza costante e rassicurante nella vita di Mari, e un balsamo per l\'anima ferita di Hajime. Sul finire dell\'estate, quando l\'acqua diventa di giorno in giorno più fredda e il vento sulla spiaggia solleva i granelli di sabbia nella tiepida luce di settembre, Hajime parte per fare ritorno a casa. Mari è molto triste, ma il ricordo della loro amicizia l\'aiuterà a superare anche la solitudine dei lunghi mesi invernali. Forse non è riuscita a risolvere del tutto i problemi dell\'amica, ma sicuramente l\'ha aiutata a guardare al futuro con maggiore fiducia.', 'https://www.feltrinellieditore.it/media/copertina/quarta/99/9788807721199_quarta.jpg', 1, 0),
(6, 'Kitchen', 9, 2, '9788807884603', 3, 2014, '\"Non c\'è posto al mondo che io ami più della cucina...\". Così comincia il romanzo di Banana Yoshimoto, \"Kitchen\". Le cucine, nuovissime e luccicanti o vecchie e vissute, riempiono i sogni della protagonista Mikage, rimasta sola al mondo dopo la morte della nonna, e rappresentano il calore di una famiglia sempre desiderata. Ma la famiglia si può non solo scegliere, ma anche inventare. Così il padre del giovane amico Yuichi può diventare o rivelarsi madre e Mikage può eleggerli come propria famiglia, in un crescendo tragicomico di ambiguità. Con questo romanzo, e il breve racconto che lo chiude, Banana Yoshimoto si è imposta all\'attenzione del pubblico italiano mostrando un\'immagine insolita del Giappone , con un linguaggio fresco e originale, quasi una rielaborazione letteraria dello stile dei fumetti manga.', 'https://www.ibs.it/images/9788807884603_0_536_0_75.jpg', 1, 0),
(7, 'Sonno profondo', 9, 2, '9788807813320', 3, 2003, '\"Queste tre storie, dice Banana Yoshimoto, raccontano la notte di alcuni personaggi che si trovano in una situazione di blocco, in una fase in cui il flusso regolare del tempo si è interrotto\". In questa sospensione, emergono i temi a lei più cari, i percorsi del suicidio, la decadenza dell\'istituzione familiare, il ruolo della sessualità, ritratti questa volta in noir, per suscitare una forte emozione.', 'https://www.ibs.it/images/9788807886492_0_536_0_75.jpg\r\n', 1, 0),
(8, 'The body in the library', 1, 5, '9780007120833', 4, 1942, 'Agatha Christie’s world-famous Miss Marple mystery, reissued with a striking new cover designed to appeal to the latest generation of Agatha Christie fans and book lovers.\r\n\r\nIt’s seven in the morning. The Bantrys wake to find the body of a young woman in their library. She is wearing evening dress and heavy make-up, which is now smeared across her cheeks.\r\n\r\nBut who is she? How did she get there? And what is the connection with another dead girl, whose charred remains are later discovered in an abandoned quarry?\r\n\r\nThe respectable Bantrys invite Miss Marple to solve the mystery… before tongues start to wag.', 'https://m.media-amazon.com/images/I/61p8gQ2tC7L._AC_UF1000,1000_QL80_.jpg', 2, 0),
(9, 'Poirot a styles court', 1, 5, '9788804728962', 5, 2013, 'Durante la Prima guerra mondiale, un giovane ufficiale inglese ferito al fronte, Arthur Hastings, viene ospitato per la convalescenza da un vecchio amico, John Cavendish. Il soggiorno nella residenza di campagna dei Cavendish nell\'Essex, la lussuosa Styles Court, sarà però tutt\'altro che tranquillo. La padrona di casa, matrigna di John, ha sposato un uomo di vent\'anni più giovane, e i figliastri, scavalcati nell\'eredità, sembrano tramare qualcosa. La governante è sicura che prima o poi la situazione possa precipitare e, in breve, la profezia si avvera. La padrona di Styles Court viene avvelenata e i sospetti si concentrano subito sui membri della famiglia. Per loro fortuna, in paese c\'è un profugo belga dai grandi baffi, uno che di delitti se ne intende... Così nel 1920 il mondo scopriva il talento narrativo di Agatha Christie e faceva conoscenza con il suo detective, Hercule Poirot. A cent\'anni dalla pubblicazione, \"Poirot a Styles Court\" è qui accompagnato da “contenuti speciali”: il testo originale inviato all\'editore del capitolo 12 (diverso da quello che sarebbe andato in stampa, come racconta l\'introduzione di John Curran) e un curioso articolo della Christie sul suo rapporto con i veleni e sul loro ruolo nelle crime stories.', 'https://m.media-amazon.com/images/I/716p9RnpzkL._SL1500_.jpg', 1, 1),
(10, 'Assassinio sull\'Orient Express', 1, 5, '9788804774754', 5, 2020, 'Salito a bordo del leggendario Orient Express, l\'impareggiabile investigatore Hercule Poirot è costretto a occuparsi di un efferato delitto. Mentre il treno è bloccato nella neve, infatti, qualcuno tra i passeggeri pugnala a morte il ricco signor Ratchett. Evidentemente l\'assassino deve nascondersi fra i viaggiatori, ma nessuno di loro sembra avere motivo per commettere il crimine. Un\'indagine complicata attende l\'infallibile detective.', 'https://m.media-amazon.com/images/I/71-gfpil2WL._SL1500_.jpg', 1, 0),
(11, 'Ma gli androidi sognano pecore elettriche?', 2, 1, '9788804731474', 6, 1968, 'San Francisco 1992. La Terra è un pianeta desolato, devastato dalle guerre nucleari; gli esseri umani sono in gran parte emigrati nelle colonie esterne e numerose specie animali si sono estinte, tanto che possedere un animale domestico vivente è diventato un ambito status symbol. Per chi non può permettersi un cucciolo \"vero\", come il cacciatore di taglie Rick Deckard, ci sono le pecore elettriche… L\'umanità vive infatti affiancata da diversi modelli di robot, dalle semplici macchine-utensili ai vicini di casa artificiali, fino a sofisticati modelli di androidi assolutamente indistinguibili dagli esseri umani, anzi persino più intelligenti, come i Nexus-6. Quando alcuni esemplari di questi replicanti perfetti fuggono da una colonia marziana per vivere liberi, Rick è incaricato di \"congedarli\". Prima, però, dovrà riuscire a individuarli… Cos\'è reale e cosa no? Cos\'è umano e cosa no? E poi le droghe, i difficili rapporti tra i sessi, la repressione dello Stato: i grandi temi della narrativa di Philip K. Dick animano questo celebre romanzo di fantascienza, tragico e grottesco, un capolavoro che esce dai confini del genere letterario, «un trattato di teologia cibernetica assolutamente vertiginoso, di una ricchezza narrativa impressionante» (Carrère).', 'https://www.lafeltrinelli.it/images/9788804731474_0_424_0_75.jpg', 1, 1),
(12, 'La svastica sul sole', 2, 1, '9788834738955', 6, 1962, 'Le forze dell’Asse hanno vinto la Seconda guerra mondiale e l’America è divisa in due parti, l’una asservita al Reich, l’altra ai Giapponesi. Sul resto del mondo incombe una realtà da incubo: il credo della superiorità razziale ariana è dilagato a tal punto da togliere ogni volontà o possibilità di riscatto. L’Africa è ridotta a un deserto, vittima di una soluzione radicale di sterminio, mentre in Europa l’Italia ha preso le briciole e i nazisti dalle loro rampe di lancio si preparano a inviare razzi su Marte e bombe atomiche sul Giappone. Sulla costa occidentale degli Stati Uniti, i Giapponesi sono ossessionati dagli oggetti del folclore e dalla cultura americana, e tutto sembra ruotare intorno a due libri: il millenario I Ching, l’oracolo della saggezza cinese, e il best-seller del momento, vietato in tutti i paesi del Reich, un testo secondo il quale l’Asse sarebbe stato in realtà sconfitto dagli Alleati.\r\nLa svastica sul sole racconta la Storia e le sue possibilità, la realtà e le riscritture, lo scontro culturale tra Oriente e Occidente, l’invasione della spiritualità nella vita quotidiana, il dramma morale di chi deve sopravvivere in un regime di sottomissione. Scritto nel 1961, è uno dei capolavori di Philip K. Dick, vincitore nel 1963 del Premio Hugo.', 'https://www.ibs.it/images/9788834729861_0_424_0_75.jpg', 1, 1),
(13, 'Ubik', 2, 8, '9788804731481', 5, 1969, 'Esiste una vita oltre vita, uno spazio etereo in cui lo spirito dei defunti sopravvive alla morte in una dimensione sospesa tra il buio e la luce, tra il colore e la bruma. Conservati in criostasi all\'interno di speciali strutture, i defunti possono comunicare con i loro cari tramite un congegno elettronico e fornire conforto, lenire solitudini, dispensare consigli. Ed è per avere consiglio che Glen Runciter, a bordo della sua aviomobile, sbarca sul tetto del Moratorium Diletti Fratelli, la struttura svizzera dove la bellissima moglie Ella giace ormai da decenni in una bara trasparente, avvolta in effluvi di nebbia ghiacciata. Runciter gestisce un\'agenzia prudenziale, la Runciter Associates, di cui Ella era socia in vita, che – avvalendosi di inerziali in grado di neutralizzare l\'attività di telepati e precog – offre a clienti e aziende sicurezza e privacy dalle intrusioni delle spie psichiche. Uno dei telepati più temibili che gli uomini di Glen monitoravano è sparito dai radar della Runciter Associates. Non si tratta del primo \"incidente\" del genere, e l\'agenzia sta attraversando un momento di grossa difficoltà, ci vuole un\'idea. Ma lo spirito di Ella non è più quello di una volta: appare confusa, distante, a tratti assente. La sua semivita si sta lentamente spegnendo.', 'https://www.lafeltrinelli.it/images/9788804731481_0_424_0_75.jpg', 1, 0),
(14, 'Valis', 2, 2, '9788834727126', 6, 1981, 'Chi o cos\'è Valis? È un\'imperscrutabile entità intelligente che vive nello spazio? O forse un meccanismo, una formula o, ancora, un essere vivente vero e proprio, che emana uno sconvolgente flusso di informazioni sulla natura dell\'universo? Nella ricerca di verità supreme, Valis pone il lettore di fronte a una serie di folgoranti interrogativi: cosa rappresentano la realtà e il divino? Esistono davvero oppure sono semplici invenzioni della nostra mente? In Divina invasione, un dio alieno tenta di stabilire un contatto con i terrestri come mai è accaduto prima: invia sulla Terra il proprio figlio, privo di memoria. Ma una presenza sovrannaturale è capace di impregnare di sé l.universo: l\'ennesima, efficacissima variazione dickiana sul tema della realtàdivinità nella quale gli uomini si dibattono. La trasmigrazione di Timothy Archer ruota attorno alla vita dissoluta del vescovo Archer, attraverso l\'impietoso giudizio della controparte femminile che scetticamente partecipa alla sua ricerca della verità metafisica, decidendo infine di abbandonarlo al proprio destino.', 'https://www.libraccio.it/images/9788834738153_0_500_0_75.jpg', 1, 0),
(15, 'Un oscuro scrutare', 2, 8, '9788804769415', 6, 1977, '1994. Nella città di Los Angeles una nuova droga, chiamata \"Sostanza M\", semina follia e devastazione. Nessuno sa cosa contenga, da dove provenga o chi la stia vendendo. Ma sono in tantissimi a usarla. Uno di loro è Bob Arctor, le cui giornate trascorrono tra sballi, incubi, conversazioni assurde con i suoi amici tossici, avventure tragicomiche. Bob è in realtà un agente della Narcotici infiltrato, anche se nessuno sa della sua doppia vita. Quando deve riferire ai superiori, indossa una tuta disindividuante, in modo che neanche i colleghi possano riconoscerlo, e diventa l\'agente Fred. Ma districarsi tra le due identità e i due mondi cui Bob/Fred appartiene diventa sempre più difficile, e la sua ricerca della verità è solo \"un oscuro scrutare\" tra le tenebre. Le tenebre spaventose della dipendenza nelle quali dovrà sprofondare prima di trovare ciò che sta disperatamente cercando. Sospeso tra fantapolitica e thriller, gotico e futuristico, \"Un oscuro scrutare\" è un romanzo di intensa potenza, forse il più personale di Philip Dick, che vi ha trasfuso una carica esistenziale ed emotiva unica.', 'https://www.ibs.it/images/9788834738993_0_536_0_75.jpg', 1, 0),
(16, 'Le tre stimmate di Palmer Eldritch', 2, 8, '9788804731498', 3, 1964, 'XXI secolo. L\'umanità ha colonizzato il Sistema Solare e si è stabilita su ogni pianeta o satellite abitabile. Ma la vita fuori dalla Terra è dura e tutt\'altro che piacevole. Per questo Leo Bulero fa grossi affari vendendo ai coloni marziani l\'illusione di essere ancora \"a casa\", grazie ai plastici della bambola Perky Pat. Certo, non bastano mobili e accessori in miniatura: perché l\'effetto sia completo serve anche il Can-D, una droga se non legale quanto meno tollerata. Bulero non è l\'unico imprenditore a cercare di guadagnare sfruttando la nostalgia della Terra: ancora più spregiudicato di lui è Palmer Eldritch, che si reca fino a Proxima Centauri in cerca di nuove ricchezze da commerciare. Ma non è più lo stesso quando, dopo dieci anni, torna sulla Terra e mette sul mercato il Chew-Z, che consente esperienze molto più potenti del Can-D. Chi è davvero Palmer Eldritch? Un avventuriero avido di denaro? Un ricco industriale dall\'inquietante aspetto di cyborg? Un\'entità aliena determinata a prendere il controllo della Terra? Una divinità incarnata in ogni viaggio mentale? O qualcosa di ancora più misterioso?', 'https://www.lafeltrinelli.it/images/9788804731498_0_536_0_75.jpg', 1, 0),
(17, 'Scorrete lacrime, disse il poliziotto', 2, 8, '9788804731504', 6, 1974, 'Nel 1988 gli Stati Uniti, dopo una Seconda guerra civile, sono diventati uno stato totalitario, nel quale vive un\'élite di individui superiori geneticamente modificati, i Sei. Uno di loro è Jason Taverner, ex cantante e ora star televisiva. Una mattina Taverner si sveglia in una stanza sconosciuta in uno squallido albergo, sprofondato di colpo nell\'anonimato. Nessuno ha mai sentito parlare dei suoi dischi o del suo show, seguito fino al giorno prima da trenta milioni di americani. Nessuno riconosce il suo volto; il suo agente e il suo avvocato negano di sapere qualcosa di lui. Di lui non resta alcuna traccia, né nella memoria dei suoi contemporanei né negli archivi della polizia. E questo potrebbe essere un problema, un grosso problema in un mondo in cui chi non ha un\'identità è considerato un criminale. Ridotto allo stato di nonpersona e braccato dall\'onnipresente polizia, Jason inizia a chiedersi se tornerà mai a essere ricco e famoso. E soprattutto se ci sia stato davvero un tempo e un luogo in cui lui era ricco e famoso, o sia stato tutto solo un sogno. Candidato ai premi Hugo e Nebula, vincitore del Campbell Memorial Award, Scorrete lacrime, disse il poliziotto (1974) esplora i temi più cari a Philip K. Dick – l\'incerto confine tra realtà e illusione, il controllo sociale, gli effetti delle droghe –, e invita il lettore a gettare uno sguardo oltre l\'orlo di spaventose ossessioni che danno forma a un universo nel quale, forse, stiamo già vivendo.', 'https://www.lafeltrinelli.it/images/9788804731504_0_424_0_75.jpg', 1, 0),
(18, 'Tempo fuori di sesto', 2, 8, '9788834739907', 6, 1959, 'Ragle Gumm è un uomo disoccupato che aiuta la sua famiglia risolvendo enigmi matematici per un giornale nazionale. Tuttavia, inizia a percepire qualcosa di strano dietro la normalità della vita quotidiana del suo paese. Il romanzo di Philip Dick, \"Tempo fuor di sesto\", esplora il tema delle connessioni tra realtà e rappresentazioni soggettive. Dick manipola spazio e tempo, alterando la percezione della realtà del protagonista e coinvolgendo il lettore in questo processo. Il libro affronta il tema delle influenze dei mass media sulla nostra percezione della realtà, portando il lettore in un mondo allucinato. Nonostante la conclusione non sia particolarmente originale, il percorso del protagonista verso la scoperta delle proprie origini attraverso la soluzione di un mistero si rivela terribilmente significativo.', 'https://m.media-amazon.com/images/I/715OMU9BKaL._SL1294_.jpg', 1, 0),
(19, 'Cronache del dopobomba', 2, 8, '9788804767909', 6, 1963, 'Berkeley, 1981. La popolazione attende la partenza del primo uomo che colonizzerà Marte, Walt Dangerfield, e si riunisce davanti alle vetrine della Modern TV, dove lavora il focomelico Hoppy Harrington, per assistere al lancio. Nell\'edificio di fronte il dottor Stockstill, psichiatra, incontra un nuovo paziente, l\'uomo più odiato del pianeta: Bruno Bluthgeld, il fisico che nel 1972 sbagliò i calcoli di un esperimento nucleare causando la Catastrofe. Una giornata quasi ordinaria, ma mentre Dangerfield esce dall\'atmosfera, sulla Bay Area iniziano a cadere le bombe. Sette anni dopo nella Marin County si è formata una piccola comunità di superstiti: la gente qui è ancora abbastanza normale, se si eccettua la ragazzina con il fratello gemello che le cresce dentro e le parla; un\'economia di sussistenza permette a tutti di sopravvivere; e Hoppy riesce ad aggiustare quasi tutto. In più, dal suo satellite in orbita Dangerfield trasmette musica e legge libri via radio. Una nuova stirpe agli albori si sta innestando sulle ceneri di una civiltà decadente ormai estinta, tra animali mutanti, geni folli e nuovi dèi. Saprà ridare speranza all\'umanità?', 'https://m.media-amazon.com/images/I/71-uzzQQDqL._SL1500_.jpg', 1, 0),
(20, 'Labirinto di morte', 2, 8, '9788834741252', 6, 1970, 'Quattordici persone, nevrotiche e alienate nel loro rapporto con il lavoro e con il mondo esterno, decidono di lasciare una Terra disumana e oppressiva e di partire per il pianeta Delmak-0. Per Ben Tallchief, dopo una vita fallimentare, sembra aprirsi un futuro di euforica comunione con gli altri; e così è anche per Seth Morley, insoddisfatto del suo lavoro. Ma all\'improvviso il satellite delle comunicazioni viene distrutto e i quattordici umani si ritrovano da soli sul pianeta, in un crescendo di misteri, terrore e morte. La realtà oggettiva vacilla, e l\'intero paesaggio sembra solo un inganno dei sensi, un fondale di cartapesta dove gli uomini si agitano come marionette mosse a caso da una divinità folle e imperscrutabile. Scritto nel 1968, \"Labirinto di morte\" affronta uno dei temi più cari a Philip K. Dick: cosa è reale e cosa non lo è. Postfazione di Umberto Rossi.', 'https://www.libraccio.it/images/9788834741252_0_500_0_75.jpg', 1, 0),
(21, 'I pilastri della terra', 3, 2, '9788804729235', 5, 1989, 'Un mystery, una storia d\'amore, una grande rievocazione storica: nella sua opera più ambiziosa e acclamata, Ken Follett tocca una dimensione epica, trasportandoci nell\'Inghilterra medievale al tempo della costruzione di una cattedrale gotica. Intreccio, azione e passioni si sviluppano così sullo sfondo di un\'era ricca di intrighi e cospirazioni, pericoli e minacce, guerre civili, carestie, conflitti religiosi e lotte per la successione al trono. Con la stessa suspense che caratterizza tutti i suoi thriller, Follett ricrea un\'epoca scomparsa e affascinante. Foreste, castelli e monasteri sono l\'avvolgente paesaggio, mosso dai ritmi della vita quotidiana e dalla pressione di eventi storici e naturali entro il quale per circa quarant\'anni si confrontano e si scontrano le segrete aspirazioni e i sentimenti dei protagonisti - monaci, mercanti, artigiani, nobili, fanciulle misteriose -, vittime o pedine di avvenimenti che ne segnano i destini e rimettono continuamente in discussione la costruzione della cattedrale.', 'https://www.mondadori.it/content/uploads/2016/05/978880466692HIG.JPG', 1, 0),
(22, 'Mondo senza fine', 3, 2, '9788804572497', 5, 2007, 'È il 1327. Il giorno dopo Halloween quattro bambini si allontanano da casa a Kingsbridge. Il gruppo, composto da un ladruncolo, un bulletto, un piccolo genio e una ragazzina dalle grandi ambizioni, assiste nella foresta all\'omicidio di due uomini. Una volta adulti, le vite di questi ragazzi saranno legate tra loro da amore, avidità, ambizione e vendetta. Vivranno momenti di prosperità e carestia, malattia e guerra. Dovranno fronteggiare la più terribile epidemia di tutti i tempi: la peste. Ma su ciascuno di loro resterà l\'ombra di quell\'inspiegabile omicidio cui avevano assistito in quel fatidico giorno della loro infanzia. Seguito ideale de \"I pilastri della terra\" Follett ritorna al Medioevo ambientando \"Mondo senza fine\" due secoli dopo la costruzione della cattedrale gotica di Kingsbridge, sullo sfondo di un lento ma inesorabile mutamento - che rivoluzionerà le arti quanto le scienze in cui ci si lascia alle spalle il buio e si cominciano a intravedere i primi bagliori di una nuova epoca.', 'https://www.ibs.it/images/9788804666967_0_536_0_75.jpg', 1, 0),
(23, 'La colonna di fuoco', 3, 2, '9788804703242', 5, 2017, 'Gennaio 1558, Kingsbridge. Quando il giovane Ned Willard fa ritorno a casa si rende conto che il suo mondo sta per cambiare radicalmente. Solo la vecchia cattedrale sopravvive immutata, testimone di una città lacerata dal conflitto religioso. Figlio di un ricco mercante protestante, Ned vorrebbe sposare Margery Fitzgerald, figlia del sindaco cattolico della città, ma il loro amore non basta a superare le barriere degli opposti schieramenti religiosi. Costretto a lasciare Kingsbridge, Ned viene ingaggiato da sir William Cecil, il consigliere di Elisabetta Tudor, futura regina di Inghilterra, e diventerà, al seguito della regina vergine, uno degli uomini chiave del primo servizio segreto britannico. Per quasi mezzo secolo il suo amore per Margery sembra condannato, mentre gli estremisti religiosi seminano violenza ovunque...', 'https://www.ibs.it/images/9788804676270_0_536_0_75.jpg', 1, 0),
(24, 'Harry Potter and the prisoner of Azkaban', 5, 4, '9781408855676', 7, 2017, 'When the Knight Bus crashes through the darkness and screeches to a halt in front of him, it\'s the start of another far from ordinary year at Hogwarts for Harry Potter. Sirius Black, escaped mass-murderer and follower of Lord Voldemort, is on the run - and they say he is coming after Harry. In his first ever Divination class, Professor Trelawney sees an omen of death in Harry\'s tea leaves . But perhaps most terrifying of all are the Dementors patrolling the school grounds, with their soul-sucking Kiss .\r\nJ.K. Rowling\'s internationally bestselling Harry Potter books continue to captivate new generations of readers. Harry\'s third adventure alongside his friends, Ron and Hermione, invites you to explore even more of the wizarding world; from the secret passages of Hogwarts castle to the snowy lanes of Hogsmeade. This gorgeous paperback edition features a spectacular cover by award-winning artist Jonny Duddle, plus refreshed bonus material, allowing readers to learn about famous witches and wizards and find out more about the Patronus Charm. Perfect for anyone who\'s ready to lose themselves in the biggest children\'s books of all time.', 'https://th.bing.com/th/id/OIP.5asq3H4vYZ2ezKQ72L7j8wHaLH?rs=1&pid=ImgDetMain', 2, 0),
(25, 'Harry Potter e il calice di fuoco', 5, 4, '9788831003414', 8, 2020, '«Le sfide saranno tre, distribuite nell\'arco dell\'anno scolastico, e metteranno alla prova i campioni in molti modi diversi ... La loro perizia magica, la loro audacia, i loro poteri deduttivi e, naturalmente, la loro capacità di affrontare il pericolo». Questo che avete tra le mani è il volume centrale delle avventure di Harry Potter. Ormai Harry è un mago adolescente, vuole andarsene dalla casa dei Dursley, vuole sognare la Cercatrice di Corvonero per cui ha una cotta tremenda... E poi vuole scoprire di più sulla grande competizione che si terrà a Hogwarts e non si svolge da cento anni. Harry vuole davvero essere un normale mago di quattordici anni. Ma sfortunatamente non è normale, nemmeno come mago. E stavolta la differenza può essere fatale. Edizione speciale con contenuti inediti: la mappa di Hogwarts, il glossario, curiosità sui fondatori di Hogwarts. Età di lettura: da 12 anni.', 'https://www.libraccio.it/images/9788831003414_0_500_0_75.jpg', 1, 1),
(26, 'Animali fantastici e dove trovarli', 5, 4, '9788831013475', 8, 2022, '1926, New York: un tempo e un luogo in cui le vicende di un manipolo di persone - e creature - determineranno il destino di molti. Tra loro: Newt Scamander, il primo (e forse unico) Magizoologo, la cui lotta per la protezione delle creature magiche del mondo prende una piega preoccupante quando alcuni dei suoi animali fuggono dalla valigia; Tina Goldstein, giovane (ex) Auror, impiegata al Magico Congresso degli Stati Uniti d\'America; Queenie Goldstein, bella e impertinente sorella di Tina, capace di leggere nel pensiero; e Jacob Kowalski, un No-Mag che voleva solo aprire una pasticceria... Questo libro è la sceneggiatura integrale del film “Animali fantastici e dove trovarli”, con il premio Oscar Eddie Redmayne nei panni di Newt Scamander. Ambientata cinquant\'anni prima che la saga di Harry Potter abbia inizio, questa incredibile storia di amicizia e magia è avventura epica allo stato puro. Età di lettura: da 10 anni.', 'https://img.ibs.it/images/9788869189845_0_0_1512_80.jpg', 1, 0),
(27, 'Mai dimenticare - Nevernight', 7, 4, '9788804717959', 5, 2019, 'Destinata a distruggere imperi, Mia Corvere ha solo dieci anni quando riceve la sua prima lezione sulla morte. Sei anni dopo, la bambina cresciuta tra le ombre si avvia a mantenere la promessa che ha fatto il giorno in cui ha perso tutto. Ma le possibilità di sconfiggere nemici così potenti sono davvero esili, e Mia è costretta a trasformarsi in un\'arma implacabile. Deve mettersi alla prova tra i nemici - e gli amici - più letali, e sopravvivere alla protezione di assassini, mentitori e demoni, nel cuore stesso di una setta dedita all\'omicidio. La Chiesa Rossa non è una scuola come le altre, ma neanche Mia è una studentessa come le altre. Le ombre la amano. Si nutrono della sua paura.', 'https://www.oscarmondadori.it/content/uploads/2023/04/978880477543HIG.JPG', 1, 0),
(28, 'Alba oscura - Nevernight', 7, 4, '9788804717973', 5, 2019, 'Mia Corvere, gladiatii, schiava fuggiasca e infame assassina, sta scappando. Dopo i grandi giochi di Godsgrave, finiti con il più audace omicidio nella storia della Repubblica itreyana, Mia si ritrova braccata. Potrebbe non uscire viva dalla Città di Ponti e Ossa. Il suo mentore Mercurio è ora nelle mani dei suoi nemici. La sua stessa famiglia la vuole morta. Ma sotto la città, un oscuro segreto è in attesa. La notte sta per scendere sulla Repubblica, forse per l\'ultima volta.', 'https://www.oscarmondadori.it/content/uploads/2023/04/978880477541HIG.JPG', 1, 0),
(29, 'I grandi giochi - Nevernight', 7, 4, '9788804775423', 5, 2019, 'Mia Corvere ha trovato il suo posto tra le Lame di Nostra Signora del benedetto omicidio, ma la sua posizione è fragile e non si sta affatto avvicinando alla vendetta cui agogna. Al termine dei grandi giochi di Godsgrave, Mia si vende come schiava per avere la possibilità di mantenere la promessa che ha fatto il giorno in cui ha perso tutto. Sulle sabbie dell\'arena troverà nuovi alleati, feroci rivali e domande ancora più incalzanti sulla sua affinità con le ombre.', 'https://www.oscarmondadori.it/content/uploads/2023/04/978880477542HIG.JPG', 1, 0),
(30, 'IT', 6, 3, '9781473666948', 14, 1974, '27 years later, the Losers Club have grown up and moved away, until a devastating phone call brings them back...\r\nDerry, Maine was just an ordinary town: familiar, well-ordered for the most part, a good place to live.\r\nIt was a group of children who saw- and felt- what made Derry so horribly different. In the storm drains, in the sewers, IT lurked, taking on the shape of every nightmare, each one\'s deepest dread. Sometimes IT appeared as an evil clown named Pennywise and sometimes IT reached up, seizing, tearing, killing . . .\r\nTime passed and the children grew up, moved away and forgot. THEN they are called back, once more to confront IT as IT stirs and coils in the sullen depths of their memories, emerging again to make their past nightmares a terrible present reality...\r\n\'They\'ll float...and when you\'re down here with me, you\'ll float too\'', 'https://d28hgpri8am2if.cloudfront.net/book_images/onix/cvr9781501141232/it-9781501141232_hr.jpg', 2, 0),
(31, 'L\'ombra dello scorpione', 6, 3, '9788830103924', 9, 1978, 'Un classico pubblicato per la prima volta nel 1978 e ambientato in un futuro prossimo (ormai presente) nel quale l\'umanità è martoriata da una epidemia globale senza precedenti. La visione apocalittica di Stephen King ci restituisce un mondo completamente trasformato dal virus, con città vuote e spettrali percorse da poche persone allo sbando. \"L\'ombra dello scorpione\" è ancor più affascinante e spaventoso oggi di quando è stato pubblicato per la prima volta. È il morbo sfuggito a un segretissimo laboratorio a seminare morte in tutto il mondo: il novantanove per cento della popolazione della terra non sopravvive all\'apocalittica epidemia. I pochi sopravvissuti si trovano intrappolati in uno scontro più grande di loro, quella lotta eterna tra forze della natura nella quale si può solo decidere di perseguire il Bene e appoggiarsi alle fragili spalle di Mother Abagail, la veggente ultracentenaria, o seguire le orme dello spaventoso Randall Flagg, il Senza Volto, il Signore delle Tenebre. L\'umanità di fronte alla pandemia sbanda tra paura e voglia di sopravvivere a qualsiasi costo: emergono i lati più oscuri dell\'animo umano ma anche il coraggio di affrontare le tenebre.', 'https://th.bing.com/th/id/OIP.86YUEgyeBehvgy1H7s4NJAHaLU?rs=1&pid=ImgDetMain', 1, 0),
(32, 'Cujo', 6, 3, '9788878242357', 10, 1981, 'In the summer of 1980, the Trenton family moves to Castle Rock, Maine, facing tension due to an affair. Vic\'s advertising agency is failing, forcing him to travel. The blue-collar Cambers also experience turmoil. Charity wins a lottery, planning to take her son on a trip while her husband, Joe, has other plans. Cujo, their Saint Bernard, gets rabies, leading to tragic events. Donna and Tad Trenton encounter Cujo while their car breaks down, facing a life-threatening situation. The story unfolds with suspense, tragedy, and the aftermath of Cujo\'s rampage, impacting both families.', 'https://www.ibs.it/images/9788868362041_0_424_0_75.jpg', 2, 0),
(33, 'L\'assassinio del commendatore', 8, 2, '9788806237615', 1, 2017, 'Un pittore di ritratti su commissione, in crisi sentimentale e lavorativa, decide di lasciare tutto e vagabondare nell\'Hokkaidō. Accetta l\'offerta di vivere nella casa isolata del padre di un amico, Amada Tomohiko, famoso pittore giapponese. La scoperta di un quadro misterioso e il suono di una campanella nel bosco cambiano radicalmente la sua vita. \"L\'assassinio del Commendatore\" di Murakami Haruki esplora le forze dell\'arte, la violenza e la sopravvivenza ai traumi personali e collettivi, offrendo un ritorno alle atmosfere fantastiche di \"1Q84\".', 'https://www.einaudi.it/content/uploads/2019/11/978880624314HIG.JPG', 1, 0),
(34, 'L\'incolore Tazaki Tsukuru e i suoi anni di pellegrinaggio', 8, 2, '9788806233037', 1, 2013, 'A Nagoya abitano cinque ragazzi, tre maschi e due femmine, che tra i sedici e i vent\'anni vivono la più perfetta e pura delle amicizie. Almeno fino al secondo anno di università, quando uno di loro, Tazaki Tsukuru, riceve una telefonata dagli altri: non deve più cercarli. Da quel giorno, senza nessuna spiegazione, non li vedrà mai più: non ci saranno mai più ore e ore passate a parlare di tutto e a confidarsi ogni cosa, mai più pomeriggi ad ascoltare la splendida Shiro suonare Liszt, mai più Tsukuru avrà qualcuno di cui potersi fidare. Il dolore è cosi lacerante che nel cuore del ragazzo si spalanca un abisso che solo il desiderio di morire è in grado di colmare. Dopo sei mesi trascorsi praticamente senza mangiare né uscire di casa, nelle tenebre di un\'infelicità senza desideri, Tzukuru torna faticosamente alla vita ma scopre di essere cambiato. Non solo nel fisico - più magro, dai lineamenti più duri e taglienti - ma anche, soprattutto, nell\'animo. Ancora oggi, quando ormai ha trentasei anni, continua a vivere con l\'ombra di quel rifiuto che lo accompagna sempre, come una musica che resta sospesa nell\'aria anche quando non c\'è più nessuno a suonarla. L\'incontro con Sara, che intuisce l\'inquietudine nascosta dietro l\'apparente ordinarietà di Tsukuru, sarà l\'occasione per rispondere a quelle domande che per sedici anni l\'hanno ossessionato ma che non ha mai avuto il coraggio di affrontare.', 'https://img.libraccio.it/images/9788806233037_0_500_0_75.jpg', 1, 0),
(35, '1Q84', 8, 2, '9788806226220', 1, 2009, '1984, Tokyo. Aomame è bloccata in un taxi nel traffico. L\'autista le suggerisce, come unica soluzione per non mancare all\'appuntamento che l\'aspetta, di uscire dalla tangenziale utilizzando una scala di emergenza, nascosta e poco frequentata. Ma, sibillino, aggiunge di fare attenzione: \"Non si lasci ingannare dalle apparenze. La realtà è sempre una sola\". Negli stessi giorni Tengo, un giovane aspirante scrittore dotato di buona tecnica ma povero d\'ispirazione, riceve uno strano incarico: un editor senza scrupoli gli chiede di riscrivere il romanzo di un\'enigmatica diciassettenne così da candidarlo a un premio letterario. Ma \"La crisalide d\'aria\" è un romanzo fantastico tanto ricco di immaginazione quanto sottilmente inquietante: la descrizione della realtà parallela alla nostra e di piccole creature che si nascondono nel corpo umano come parassiti turbano profondamente Tengo. L\'incontro con l\'autrice non farà che aumentare la sua vertigine: chi è veramente Fukada Eriko? Intanto Aomame (che pure non è certo una ragazza qualsiasi: nella borsetta ha un affilatissimo rompighiaccio con cui deve uccidere un uomo) osserva perplessa il mondo che la circonda: sembra quello di sempre, eppure piccoli, sinistri particolari divergono da quello a cui era abituata. Finché un giorno non vede comparire in cielo una seconda luna e sospetta di essere l\'unica persona in grado di attraversare la sottile barriera che divide il 1984 dal 1Q84. Ma capisce anche un\'altra cosa: che quella barriera sta per infrangersi.', 'https://www.ibs.it/images/9788806226220_0_536_0_75.jpg', 1, 0),
(36, 'Leader di te stesso', 13, 6, '9788804670377', 5, 2016, 'In un mondo che cambia sempre più velocemente e che ci chiede sempre di più, spesso siamo noi stessi a renderci le cose ancora più difficili, complicandole con pensieri limitanti e con scarse capacità di gestire le nostre emozioni, e lasciandoci sopraffare dallo stress, dalla paura e dalla frustrazione. Abbiamo tutte le possibilità per ottenere grandi risultati, ma non sappiamo come utilizzare al meglio il nostro incredibile potenziale, che rimane così sopito. \"Leader di te stesso\" è un \"manuale di allenamento\", in cui l\'autore adopera le sue doti di comunicatore per insegnarci a comprendere i reali obiettivi, utilizzare tutte le potenzialità e oltrepassare i limiti. Presentazione di Marcello Foa.', 'https://www.mondadori.it/content/uploads/2016/07/978880467037HIG.JPG', 1, 0),
(37, 'Le pagine della nostra vita', 10, 7, '9788868360399', 11, 2008, 'North Carolina, 1946: il giovane Noah, tornato nel paese natale dopo la guerra, realizza il sogno - coltivato da tempo - di abitare nella grande casa vicino al fiume, da lui riportata all\'antico splendore. Alla perfezione del quadro manca però Allie, una seducente ragazza incontrata anni prima, amata disperatamente nel breve spazio di un\'estate e mai più ritrovata. Invece, un giorno lei ricompare, per vederlo un\'ultima volta prima di sposarsi... Ma il destino ha deciso altrimenti, scrivendo per loro una storia diversa...', 'https://www.ibs.it/images/9788868360399_0_424_0_75.jpg', 1, 0),
(38, 'La risposta è nelle stelle', 10, 7, '9788868363161', 11, 2016, 'Una strada coperta di neve, un\'auto che perde il controllo e va a sbattere. Alla guida il vecchio Ira, che ora è incastrato, ferito, intirizzito dal gelo, e così solo. Il dolore lo immobilizza e rimanere cosciente è uno sforzo indicibile, almeno fino a quando davanti ai suoi occhi prende forma una figura, prima indistinta, poi dolcemente nitida: è l\'immagine dell\'amatissima moglie Ruth. Che lo incalza, gli impone di resistere, lo tiene vivo raccontandogli le storie che li hanno uniti per più di cinquant\'anni: i momenti belli e quelli tristi, le passioni e i rimpianti, e sempre l\'amore infinito. Lui sa che Ruth non può essere lì, ma si aggrappa ai ricordi, alle emozioni, alle parole di loro due insieme. Poco distante da quella strada, la vita di Sophia sta per cambiare per sempre. L\'università, l\'ex fidanzato traditore e violento, le feste e le amiche scompaiono nella notte di stelle in cui incontra Luke. Innamorarsi di lui è inevitabile, immaginare un futuro diverso diventa un sogno possibile. Un sogno che solo Luke può rendere reale. Purché il segreto che nasconde non lo distrugga. Ira e Ruth. Sophia e Luke. Due coppie che apparentemente non hanno nulla in comune, divise dagli anni e dalle esperienze, ma che il destino farà incontrare, nel più inaspettato ed emozionante dei modi. Ricordandoci che anche le decisioni più difficili possono essere l\'inizio di un viaggio straordinario, perché i sentimenti e i segreti degli uomini percorrono strade impossibili.', 'https://www.ibs.it/images/9788868363161_0_424_0_75.jpg', 1, 0),
(39, 'Ogni respiro', 10, 7, '9788855440448', 11, 2020, 'Tru Walls non è mai stato in North Carolina. Lui è nato e cresciuto in Africa, dove fa la guida nei safari. Si ritrova a Sunset Beach dopo aver ricevuto una lettera da un uomo che sostiene di essere suo padre, e spera finalmente di sciogliere il mistero che ha sempre circondato la sua vita. E quella della madre, perduta insieme ai suoi ricordi nell\'incendio che l\'ha portata via tanti anni fa. Hope Anderson è a un punto cruciale della vita: ha sempre immaginato un futuro diverso, ma è fidanzata da sei anni con un eterno bambino e non si aspetta più una proposta di matrimonio. Dopo l\'ennesima pausa di riflessione, Hope decide di visitare per l\'ultima volta il cottage di famiglia a Sunset Beach, dove ha passato le meravigliose estati della sua infanzia. Quando Hope e Tru s\'incontrano, tra loro nasce un\'intesa immediata, qualcosa di forte e disarmante, come se si fossero riconosciuti oltre il tempo e lo spazio. Ma la realtà presenta presto il conto e ognuno deve fare una scelta: tra amore e dovere, tra passato e presente, tra rimpianti e felicità. Ogni respiro è un romanzo profondo sulle diverse facce dell\'amore, sui rimpianti che spezzano il cuore e sulle speranze che non muoiono mai, sugli effetti del tempo e sulla durata di un sogno. Che può diventare infinito. Questa edizione contiene in esclusiva un saggio inedito di Nicholas Sparks sull\'arte perduta di scrivere lettere.', 'https://www.ibs.it/images/9788855440448_0_424_0_75.jpg', 1, 0),
(40, 'Il signore degli anelli', 11, 4, '9788830119000', 9, 1954, 'In un unico volume La compagnia dell\'anello, Le due torri, Il ritorno del re. Il Signore degli Anelli è un romanzo d’eccezione, al di fuori del tempo: chiarissimo ed enigmatico, semplice e sublime. Dona alla felicità del lettore ciò che la narrativa del nostro secolo sembrava incapace di offrire: avventure in luoghi remoti e terribili, episodi d’inesauribile allegria, segreti paurosi che si svelano a poco a poco, draghi crudeli e alberi che camminano, città d’argento e di diamante poco lontane da necropoli tenebrose in cui dimorano esseri che spaventano solo al nominarli, urti giganteschi di eserciti luminosi e oscuri. E tutto questo in un mondo immaginario ma ricostruito con cura meticolosa, e in effetti assolutamente verosimile, perché dietro i suoi simboli si nasconde una realtà che dura oltre e malgrado la storia: la lotta, senza tregua, fra il bene e il male. Leggenda e fiaba, tragedia e poema cavalleresco, il romanzo di Tolkien è in realtà un’allegoria della condizione umana che ripropone in chiave moderna i miti antichi.', 'https://m.media-amazon.com/images/I/71gjt76M3xL._AC_UF1000,1000_QL80_.jpg', 1, 0),
(41, 'Lo hobbit', 11, 4, '9788845268342', 9, 1937, 'Pubblicato per la prima volta nel 1937, Lo Hobbit è per i lettori di tutto il mondo il primo capitolo del Signore degli Anelli, uno dei massimi cicli narrativi del XX secolo. Protagonisti della vicenda sono, per l\'appunto, gli hobbit, piccoli esseri \"dolci come il miele e resistenti come le radici di alberi secolari\", che vivono con semplicità e saggezza in un idillico scenario di campagna: la Contea. La placida esistenza degli hobbit viene turbata quando il mago Gandalf e tredici nani si presentano alla porta dell\'ignaro Bilbo Baggins e lo trascinano in una pericolosa avventura. Lo scopo è la riconquista di un leggendario tesoro, custodito da Smaug, un grande e temibile drago. Bilbo, riluttante, si imbarca nell\'impresa, inconsapevole che lungo il cammino s\'imbatterà in una strana creatura di nome Gollum. Questa edizione vede la nuova traduzione della Società Tolkieniana Italiana, e le splendide illustrazioni di Alan Lee.', 'https://www.lafeltrinelli.it/images/9788845268342_0_0_464_0_75.jpg', 1, 0),
(42, 'Il silmarillion', 11, 4, '9788845272400', 9, 1977, '\"Il Silmarillion\", iniziato nel 1917 e la cui elaborazione è stata proseguita da Tolkien fino alla morte, rappresenta il tronco da cui si sono diramate tutte le sue successive opere narrative. \"Opera prima\", dunque, essa costituisce il repertorio mitico di Tolkien, quello da cui è derivata la filiazione delle sue favole: \"Lo Hobbit\", \"Il Signore degli Anelli\", \"Il cacciatore di Draghi\". \"Il Silmarillion\", che comprende cinque racconti legati come i capitoli di un\'unica storia sacra, narra la parabola di una caduta: dalla \"musica degli inizi\", il momento cosmogonico, alla guerra di Elfi e Uomini contro l\'Avversario. L\'ultimo dei racconti costituisce l\'antecedente immediato del \"Signore degli Anelli\".', 'https://www.lafeltrinelli.it/images/9788845272400_0_0_464_0_75.jpg', 1, 1),
(43, 'Racconti incompiuti', 11, 4, '9788845274039', 9, 1980, 'I racconti contenuti in questa raccolta rappresentano un vasto corpus di opere che integrano e sviluppano il fantastico mondo creato dall\'autore de \"Il Signore degli Anelli\". Impegnato nella costruzione del corpus principale della sua architettura, Tolkien non si preoccupò di dare alle stampe questi racconti che di quel mondo sviluppano percorsi e personaggi. Ora, con degli apparati di note, appendici e indici curati dal figlio Christopher, queste storie vedono la luce, offrendo agli appassionati dei mondi fantastici di Tolkien un nuovo universo di avventure.', 'https://www.lafeltrinelli.it/images/9788845274039_0_464_0_75.jpg', 1, 0),
(44, 'Beren e Luthien', 11, 4, '9788830101982', 9, 2017, 'Un amore contrastato, quello tra Beren e Lúthien: lui umano della Terra di Mezzo, lei elfa immortale di stirpe regale. Per coronare il suo sogno d\'amore Beren dovrà consegnare al padre di lei uno dei Silmaril della Corona di Morgoth, e avere così la sua benedizione. Una missione che, a dispetto della difficoltà, avrà un lieto fine: Beren, ferito a morte, sarà salvato, e Lúthien rinuncerà all\'immortalità per lui. Il racconto ha subìto cambiamenti e si è evoluto man mano che l\'orizzonte della Terra di Mezzo si è allargato. Per mostrare la vitalità del nucleo narrativo Christopher Tolkien ha scelto le parole di suo padre arricchite da passaggi di prosa e di poesia appartenenti a testi posteriori che restituiscono tutta l\'immediatezza e la freschezza del testo.', 'https://www.lafeltrinelli.it/images/9788830101982_0_464_0_75.jpg', 1, 0),
(45, 'Lettere da Babbo Natale', 11, 4, '9788845293894', 9, 1976, 'Ogni dicembre ai figli di J.R.R. Tolkien arrivava una busta affrancata dal Polo Nord. All\'interno, una lettera dalla calligrafia filiforme e uno splendido disegno colorato. Erano le lettere scritte da Babbo Natale, che narravano straordinari racconti della vita al Polo Nord: le renne che si sono liberate sparpagliando i regali dappertutto; l\'Orso Bianco combinaguai che si è arrampicato sul palo del Polo Nord ed è caduto dal tetto direttamente nella sala da pranzo di Babbo Natale; la Luna rottasi in quattro pezzi e l\'Uomo che ci abitava caduto nel retro del giardino; le guerre con le moleste orde di goblin che vivono nei sotterranei della casa! Dalla prima lettera scritta al figlio maggiore di Tolkien nel 1920 all\'ultima, toccante, del 1943, per la figlia, questo libro raccoglie tutte quelle lettere e tutti quei disegni bellissimi in una unica edizione.', 'https://www.lafeltrinelli.it/images/9788845293894_0_464_0_75.jpg', 1, 0),
(46, 'Beowulf con racconto meraviglioso', 11, 4, '9788830102392', 9, 2015, 'La traduzione in prosa di \"Beowulf\", poema epico tra i più noti della tradizione anglosassone, è stata una delle prime fatiche di Tolkien e una delle fonti della sua produzione letteraria. Egli ci presenta un giovane eroe dalla forza sovraumana che affronta mostri spaventosi, un drago che custodisce un antico tesoro e intrighi di potere degni di Shakespeare. \"Beowulf\", rimasto a lungo inedito e presentato ai lettori da Christopher, il figlio dell\'autore, è corredato di un ricco apparato di note e accompagnato dal \"Racconto meraviglioso\", in cui le vicende dell\'eroe seguono lo stile di un racconto folclorico. In questa edizione troviamo anche i commenti dello stesso Tolkien estrapolati dalle sue conferenze sul tema a Oxford. \"Beowulf\" non è soltanto una “storia di draghi” o il racconto di una caccia al tesoro: è la porta che immette in un tempo antico, un\'età dove elementi mitici, favolistici, leggende eroiche e fatti storici documentabili e datati si intersecano.', 'https://www.lafeltrinelli.it/images/9788830102392_0_464_0_75.jpg', 1, 0);
INSERT INTO `libri` (`id`, `titolo`, `autore_id`, `genere_id`, `ISBN`, `casa_editrice_id`, `anno_edizione`, `trama`, `copertina`, `lingua_id`, `stato`) VALUES
(47, 'La caduta di Gondolin', 11, 4, '9788830102361', 9, 2018, 'Gondolin è una città meravigliosa, con strade lastricate di pietra, rigogliosi giardini e alte torri di marmo bianco. La sua bellezza però è nascosta, in pochi sanno dove si trova perché la sua esistenza è minacciata da Morgoth, Demone dell\'Ombra. A proteggere gli Elfi di Valinor che abitano la città c\'è Ulmo, Signore delle Acque, che invia Tuor, eroe suo malgrado, da re Turgon per metterlo in guardia. Purtroppo però le forze del Male sono in agguato e sottoporranno la città elfica a un epico assedio: Morgoth scatena un immane esercito di orchi, draghi e Balrog che non lascia scampo. Tolkien stesso ha definito La caduta di Gondolin “il primo vero racconto di questo mondo immaginario”, che insieme a \"Beren e Lúthien\" e a \"I figli di Húrin\" è considerato uno dei tre Grandi Racconti dei Tempi Remoti.', 'https://www.lafeltrinelli.it/images/9788830102361_0_464_0_75.jpg', 1, 0),
(48, 'Racconti perduti', 11, 4, '9788830118423', 9, 1983, 'John Ronald Reuel Tolkien, conosciuto per Lo Hobbit e Il Signore degli anelli, ha scritto nel corso della vita molti racconti e versi che arricchiscono la mitologia e le storie della Terra di Mezzo. Dopo la sua scomparsa il figlio Christopher per volontà del padre ha seguito con cura la pubblicazione di questo tesoro, portando alla luce nuovi personaggi, episodi epici e luoghi incantati. Universo fantastico di immagini e di mitologia, Il libro dei racconti perduti – prima parte segna l’inizio della creazione di J.R.R. Tolkien. Vi si trovano, in forma germinale e perciò allusiva, i grandi temi narrativi della cosmologia tolkieniana: gli Ainur, i grandi dèi che si innamorano del mondo da loro creato e vi si rifugiano, edificando dimore leggendarie; la lotta mai conclusa contro Melko, il dio enigmatico e maligno; l’avvento nel mondo degli Elfi, creature di Ilúvatar. Nella magica Casetta del Gioco Perduto proprio gli Elfi inscenano dinanzi agli occhi di Eriol, il marinaio assetato di avventura e di antiche conoscenze, queste storie del mondo che precedono il risveglio del genere umano. Iniziati quando J.R.R. Tolkien aveva attorno ai venticinque anni, i Racconti sono accompagnati, come il resto dei volumi che compongono La storia della Terra di Mezzo, dal commento e dalle note di Christopher, che offrono chiavi di lettura e l’ideale raccordo con gli altri libri del ciclo tolkieniano.', 'https://m.media-amazon.com/images/I/61HUgrsgz3L._AC_UF1000,1000_QL80_.jpg', 1, 0),
(49, 'Le avventure di Tom Bombadil', 11, 4, '9788845299681', 9, 1962, 'Sedici racconti in versi ci accompagnano in un mondo fiabesco, il Medioevo fantastico di J.R.R. Tolkien popolato di gnomi, streghe, troll, giganti, draghi, uccelli, uomini, alberi e acque. Ritornano luoghi e personaggi resi famosi dal romanzo Il Signore degli Anelli: Tom Bombadil, il picaresco abitatore dei boschi, la fanciulla acquatica Baccadoro, lo Spettro dei Tumuli, il fattore Piedimelma, la principessa Me, il Troll pasticciere, Fastitocalone il preistorico e lo sfortunato Uomo della Luna. Filastrocche scioglilingua si alternano a vere e proprie ballate romantiche, in un’edizione che, evitando la trascrizione letterale dei testi, si sforza invece di rispettarne la struttura, di riprodurne la musicalità, e di ricostruirne la ricchezza di significati allegorici e rituali.', 'https://www.lafeltrinelli.it/images/9788845299681_0_464_0_75.jpg', 1, 0),
(52, 'Il pianeta dei bruchi', 3, 8, '9788804670322 ', 5, 1976, ' I gemelli Fritz ed Helen Price, con il cugino Barile, si stanno godendo la pace delle vacanze nella pensione di famiglia, quando nella loro vita irrompe lo zio Grigorlan, un individuo gioviale che si conquista subito la simpatia dei nipoti. Solo i suoi strani pollici suscitano qualche perplessità... In effetti i tre ragazzi scopriranno che Grigorian è un alieno in missione segreta, deciso a portarli sul Pianeta dei Bruchi, dove li attende un compito di straordinaria importanza...( ', 'https://m.media-amazon.com/images/I/81jY6GgiMWL._AC_UF1000,1000_QL80_.jpg', 1, 1),
(53, 'Pet Sematary', 6, 3, '9788868361259', 11, 2013, 'In una limpida giornata di fine estate, la famiglia Creed si trasferisce in un tranquillo sobborgo residenziale di una cittadina del Maine. Non lontano dalla loro casa, al centro di una radura, sorge Pet Sematary, il cimitero dei cuccioli, un luogo dove i ragazzi del circondariato, secondo un\'antica consuetudine, usano seppellire i propri animaletti. Ma ben presto la serena esistenza dei Creed viene sconvolta da una serie di episodi inquietanti e dall\'improvviso ridestarsi di forze oscure e malefiche.', 'https://img.ibs.it/images/9788868361259_0_0_780_80.jpg', 1, 0),
(54, 'A sud del confine, a ovest del sole', 8, 2, '9788806230302', 1, 1992, 'Hajime, figlio unico, si sente un\'eccezione nelle famiglie del Giappone del secondo dopoguerra. Fino a che incontra la piccola compagna di scuola, Shimamoto. Un salto tre decenni dopo: Hajime ha due jazz bar nel quartiere di Aoyama, Tokyo, ed una famiglia felice in una vita che non sente sua.', 'https://m.media-amazon.com/images/W/MEDIAX_792452-T1/images/I/61QUjVp3BfL._SL1500_.jpg', 1, 0),
(55, 'Le porte di Damasco', 1, 5, '9788804763239', 5, 1973, 'Tommy e Tuppence Beresford, un tempo titolari dell\'Associazione giovani investigatori, sono ora un\'affiatata coppia di mezza età. Ritiratisi dal lavoro, vivono in campagna. Ma l\'antica passione per l\'avventura non si è spenta. Frugando in una pila di libri per ragazzi trovata nella casa che hanno appena acquistato, infatti, i due detective si imbattono in una serie di lettere sottolineate, apparentemente da decenni, con inchiostro rosso. Mettendole assieme appare una frase dal significato sinistro: «Marie Jordan non è morta di morte naturale. L\'ha uccisa uno di noi. Io so chi è stato». E quello che sembra essere solo un vecchio mistero può ancora interessare molte persone e mettere in pericolo delle vite.', 'https://www.ibs.it/images/9788804763239_0_424_0_75.jpg', 1, 0),
(56, 'Klara e il sole', 4, 8, '9788806253561', 1, 2021, 'Dalla vetrina del suo negozio, Klara osserva trepidante il fuori e le meraviglie che contiene: il disegno del Sole sulle cose e l\'alto Palazzo RPO dietro cui ogni sera lo vede sparire, i passanti tutti diversi, Mendicante e il suo cane, i bambini che la guardano dal vetro, con le loro allegrie e le loro tristezze. Ogni cosa la affascina, tutto la sorprende. La sua voce, cosí ingenua ed empatica, schiva e curiosa quanto quella di un animale da compagnia, appartiene in realtà a un robot umanoide di generazione B2 ad alimentazione solare: Klara è un modello piuttosto sofisticato di Amico Artificiale, in attesa, come la sua amica Rosa e il suo amico Rex, e tutti gli altri AA del negozio, del piccolo umano che la sceglierà.', 'https://www.einaudi.it/content/uploads/2021/05/978880624875HIG.JPG', 1, 0),
(57, 'L\'impero del vampiro', 7, 3, '9788804728177', 5, 2021, 'Sono passati ventisette lunghi anni dall\'ultima alba. Per quasi tre decenni, i vampiri hanno mosso guerra all\'umanità; hanno costruito il loro impero eterno, a costo di demolire il nostro. Ormai, solo poche minuscole scintille di luce resistono in un mare di oscurità. Gabriel de León, metà uomo, metà mostro e ultimo dei Santi d\'argento – confratello nonché una delle migliori spade del sacro Ordine d\'argento, dedito a difendere il regno dalle creature della notte –, è tutto ciò che si frappone tra il mondo e la sua fine. Imprigionato dagli stessi mostri che ha giurato di distruggere, è costretto a raccontare la sua storia. Una storia di battaglie leggendarie e amore proibito, di fede perduta e amicizie trovate, della guerra del Re Sempiterno e della ricerca dell\'ultima speranza rimasta all\'umanità. Il Sacro Graal.', 'https://m.media-amazon.com/images/I/91DlUQXMwaL._SL1500_.jpg', 1, 0),
(58, 'Harry Potter and the chamber of secrets', 5, 4, '9781408855669', 7, 2014, 'Harry Potter\'s summer included the worst birthday ever, the ominous warnings of a house-elf named Dobby, and the rescue from the Dursleys by his friend Ron Weasley in a magical flying car! Back at Hogwarts School of Witchcraft and Wizardry for his second year, Harry hears strange whispers echoing through empty corridors - and then the attacks begin. Students are found as if turned to stone. Dobby\'s sinister predictions seem to be coming true. These new editions of the award-winning, worldwide bestselling series feature striking new jackets by Jonny Duddle, with tremendous appeal for children, to bring Harry Potter to the next generation of readers. It\'s time to PASS THE MAGIC on.', 'https://i.pinimg.com/originals/e7/6e/d0/e76ed082d852c4fa97cbcf6018cd384c.jpg', 2, 0),
(59, 'The Notebook', 10, 7, '9780751540475', 7, 2007, 'Once again, just as I do every day, I begin to read the notebook aloud...\r\nNoah Calhoun has returned from war and, in an attempt to escape the ghosts of battle, he sets his mind and his body to restoring an old plantation home to its former beauty.\r\nBut he is haunted by memories of the beautiful girl he met there years before. A girl who stole his heart at the funfair, whose parents didn\'t approve, a girl he wrote to every day for a year.\r\nWhen Allie Hamilton shows up on his doorstep, exactly as he has held her in his memory for all these years, Noah has one last chance to win her back. Only this time, it\'s not just her parents in the way - Allie is engaged and she\'s not a woman to go back on her promises.\r\nThe Notebook is the love story to end all love stories - it will break your heart, heal it back up and break it all over again.', 'https://www.adazing.com/wp-content/uploads/2020/05/nicholas-1-scaled.jpg', 2, 0),
(60, 'Il dolce domani', 9, 1, '9788807896354', 3, 2022, 'Sayoko e Yoichi hanno avuto un incidente, lei è rimasta gravemente ferita, lui invece non c\'è più. La loro era una storia bellissima, in cui la scarsa volontà di impegnarsi era compensata da un amore profondo e libero, e senza di lui Sayoko si sente vuota, o forse, come le dice l\'amico okinawano Shingaki, deve solo andarsi a riprendere il suo mabui. È proprio la ricerca del mabui, qualcosa che somiglia molto all\'anima e che Sayoko non sa nemmeno se lo rivuole per davvero, il tema centrale di un romanzo che, con profondità e delicatezza, racconta il dolore e la rinascita di chi è sopravvissuto alla morte di qualcuno che amava. Ambientato fra i templi e gli onsen di Kyoto, \"Il dolce domani\", scritto all\'indomani del terremoto e dello tsunami di Fukushima, è il messaggio di speranza che Banana Yoshimoto ha voluto dedicare alle popolazioni colpite.', 'https://www.feltrinellieditore.it/media/copertina/quarta/54/9788807896354_quarta.jpg', 1, 0),
(61, 'L\'ombra del vento', 14, 2, '9788804561309 ', 5, 2006, 'Una mattina del 1945 il proprietario di un modesto negozio di libri usati conduce il figlio undicenne, Daniel, nel cuore della città vecchia di Barcellona al Cimitero dei Libri Dimenticati, un luogo in cui migliaia di libri di cui il tempo ha cancellato il ricordo, vengono sottratti all\'oblio. Qui Daniel entra in possesso del libro \"maledetto\" che cambierà il corso della sua vita, introducendolo in un labirinto di intrighi legati alla figura del suo autore e da tempo sepolti nell\'anima oscura della città. Un romanzo in cui i bagliori di un passato inquietante si riverberano sul presente del giovane protagonista, in una Barcellona dalla duplice identità: quella ricca ed elegante degli ultimi splendori del Modernismo e quella cupa del dopoguerra.', 'https://www.oscarmondadori.it/content/uploads/2022/04/978880475048HIG.JPG', 1, 0),
(63, 'Il prigioniero del cielo', 14, 2, '9788804620303', 5, 2011, 'Nel dicembre del 1957 un lungo inverno di cenere e ombra avvolge Barcellona e i suoi vicoli oscuri. La città sta ancora cercando di uscire dalla miseria del dopoguerra, e solo per i bambini, e per coloro che hanno imparato a dimenticare, il Natale conserva intatta la sua atmosfera magica, carica di speranza. Daniel Sempere - il memorabile protagonista di \"L\'ombra del vento\" è ormai un uomo sposato e dirige la libreria di famiglia assieme al padre e al fedele Fermín con cui ha stretto una solida amicizia. Una mattina, entra in libreria uno sconosciuto, un uomo torvo, zoppo e privo di una mano, che compra un\'edizione di pregio di \"Il conte di Montecristo\" pagandola il triplo del suo valore, ma restituendola immediatamente a Daniel perché la consegni, con una dedica inquietante, a Fermín. Si aprono così le porte del passato e antichi fantasmi tornano a sconvolgere il presente attraverso i ricordi di Fermín. Per conoscere una dolorosa verità che finora gli è stata tenuta nascosta, Daniel deve addentrarsi in un\'epoca maledetta, nelle viscere delle prigioni del Montjuic, e scoprire quale patto subdolo legava David Martín - il narratore di \"Il gioco dell\'angelo\" - al suo carceriere, Mauricio Valls, un uomo infido che incarna il peggio del regime franchista...', 'https://www.ibs.it/images/9788804750499_0_536_0_75.jpg', 1, 0),
(64, 'Il labirinto degli spiriti', 14, 2, '9788804682325 ', 5, 2016, 'Barcellona, fine anni \'50. Daniel Sempere non è più il ragazzino che abbiamo conosciuto tra i cunicoli del Cimitero dei Libri Dimenticati, alla scoperta del volume che gli avrebbe cambiato la vita. Il mistero della morte di sua madre Isabella ha aperto una voragine nella sua anima, un abisso dal quale la moglie Bea e il fedele amico Fermín stanno cercando di salvarlo. Proprio quando Daniel crede di essere arrivato a un passo dalla soluzione dell\'enigma, un complotto ancora più oscuro e misterioso di quello che avrebbe potuto immaginare si estende fino a lui dalle viscere del Regime. E in quel momento che fa la sua comparsa Alicia Gris, un\'anima emersa dalle ombre della guerra, per condurre Daniel al cuore delle tenebre e aiutarlo a svelare la storia segreta della sua famiglia, anche se il prezzo da pagare sarà altissimo. Dodici anni dopo L\'ombra del vento, Carlos Ruiz Zafón torna con un\'opera monumentale per portare a compimento la serie del Cimitero dei Libri Dimenticati. Il labirinto degli Spiriti è un romanzo fatto di passioni, intrighi e avventure. Attraverso queste pagine ci troveremo di nuovo a camminare per stradine lugubri avvolte nel mistero, tra la Barcellona reale e il suo rovescio, un riflesso maledetto della città. E arriveremo finalmente a scoprire il gran finale della saga, che qui raggiunge l\'apice della sua intensità e al tempo stesso celebra, maestosamente, il mondo dei libri, l\'arte di, raccontare storie e il legame magico che si stabilisce tra la letteratura e la vita.', 'https://m.media-amazon.com/images/I/81TZ-Fv+4dL._AC_UF1000,1000_QL80_.jpg', 1, 0),
(67, 'Alice nel paese delle meraviglie & Al di là dello specchio', 17, 9, '9788867224555', 15, 2019, 'MinaLima Design è stato fondato da Miraphora Mina e Eduardo Lima, noti per la loro decennale partecipazione ai film della saga di Harry Potter, di cui hanno plasmato l’identità grafica. Dal loro studio londinese hanno continuato a raccontare storie attraverso progetti grafici dedicati all’editoria o a film come Sweeney Todd, The Imitation Game e Animali fantastici. Da poco, i due hanno ideato una collana di grande pregio, volta a rivisitare i classici della letteratura per ragazzi con l’inserzione di elementi interattivi strabilianti. Pubblicati nel 1865, gli splendidi Alice nel paese delle meraviglie e Attraverso lo specchio di Lewis Carroll sono diventati dei classici adorati da una generazione dopo l’altra. La storia di Alice, una ragazzina curiosa che attraverso la tana del coniglio arriva in un mondo bizzarro, ha conquistato i cuori dei lettori di tutte le età. Tra le tante feature interattive, il giovane lettore scoprirà un’Alice con braccia e gambe allungabili, la casa del coniglio che si apre per rivelare un’Alice gigante, lo Stregatto con una linguetta per togliere il gatto e lasciare solo il suo ghigno, una mazza da croquet a forma di fenicottero che si muove per colpire il riccio, nonché una mappa del mondo oltre lo specchio...', 'https://www.ippocampoedizioni.it/spool/i__id1019_mw1280_mh720_t1600595314.jpg', 1, 0),
(68, 'La bella e la bestia', 18, 9, '9788867226467', 15, 2020, 'Lasciatevi trasportare dalla favola de La bella e la bestia!\r\n\r\nCon inediti elementi interattivi in 3D, fra cui un quadrante da girare per scoprire il guardaroba della Bella, un pieghevole che svela l\'interno del palazzo, finestre pop-up che si aprono sulle scene a cui assiste ammirata l\'eroina, e tanto altro ancora!\r\nDalla sua prima pubblicazione nel 1740 ad opera di Gabrielle-Suzanne Barbot de Villeneuve, questa favola senza tempo che vede una bellissima fanciulla innamorarsi di una bestia feroce ha affascinato generazioni di lettori. Con delicate illustrazioni ed elementi interattivi firmati dal premiato studio MinaLima, il libro vi invita a esplorare il palazzo incantato della Bestia insieme alla Bella e a un corteo di magiche creature.', 'https://www.ippocampoedizioni.it/spool/i__id1193_mw1280_mh720_t1600595330.jpg', 1, 0),
(69, 'Le avventure di Pinocchio', 19, 9, '9788867224937', 15, 2020, 'Seguite il burattino più birichino di tutti nel suo rocambolesco viaggio per ritrovare Babbo Geppetto e diventare un \"bambino vero\". State alla larga del terribile Mangiafoco, da quei furboni del Gatto e della Volpe e da altre strane creature...\r\n\r\nDopo Il giardino segreto, Alice e Il Libro della Giungla, ecco il quarto volume della collana MinaLima Classics: troverete una marionetta di Pinocchio con il naso che si allunga, il teatro dei burattini, la casa della fata Turchina e tanto altro ancora!\r\nMinaLima Design è stato fondato da Miraphora Mina e Eduardo Lima, noti per la loro decennale partecipazione ai film della saga di Harry Potter, di cui hanno plasmato l\'identità grafica. Dal loro stile londinese hanno continuato a raccontare storie attraverso progetti grafici dedicati all’editoria o a film come Sweeney Todd, The Imitation Game e Animali fantastici. Da poco, i due hanno ideato questa collana di grande pregio, volta a rivisitare i classici della letteratura per ragazzi con l\'inserzione di elementi interattivi strabilianti.', 'https://www.ippocampoedizioni.it/spool/i__id1098_mw1280_mh720_t1600595323.jpg', 1, 0),
(70, 'Il libro della giungla', 20, 9, '9788867226450', 15, 2019, 'Il terzo volume della nuova serie di classici per ragazzi rivisitati in versione deluxe da MinaLima Design è questa splendida edizione integrale del capolavoro di Rudyard Kipling. Ci trasporta nel cuore della giungla indiana, con illustrazioni dai colori incantevoli e nove elementi interattivi che delizieranno i giovani lettori, compresa una pianta della città perduta dove le scimmie conducono Mowgli, un pieghevole che spiega nel dettaglio le Leggi della giungla, una freccia rotante con la danza degli elefanti, un quadrante con i movimenti ipnotici del serpente Kaa e una mappa del percorso di Kotick per trovare una nuova strada...', 'https://www.ippocampoedizioni.it/spool/i__id975_mw1280_mh720_t1600595308.jpg', 1, 0),
(71, 'Esplora il tuo corpo', 21, 9, '9788867224241', 15, 2019, 'In questo album dai colori sgargianti il giovane lettore potrà esplorare il corpo umano attraverso illustrazioni dai toni surrealisti. Le matrioske russe lo aiuteranno a capire come funziona il sistema digestivo, i palloni come funziona la vista, e sarà un cosmonauta a fargli scoprire cosa c’è sotto la pelle. Un autentico viaggio all’interno di noi stessi per capire tutto quello che succede nel nostro corpo. Forza, che l’esplorazione abbia inizio!', 'https://www.ippocampoedizioni.it/spool/i__id895_mw1280_mh720_t1600595301.jpg', 1, 0);

-- --------------------------------------------------------

--
-- Struttura della tabella `lingue`
--

CREATE TABLE `lingue` (
  `id` int(11) NOT NULL,
  `idioma` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `lingue`
--

INSERT INTO `lingue` (`id`, `idioma`) VALUES
(1, 'Italiano'),
(2, 'Inglese');

-- --------------------------------------------------------

--
-- Struttura della tabella `prenotazioni`
--

CREATE TABLE `prenotazioni` (
  `id` int(11) NOT NULL,
  `data_prenotazione` date NOT NULL,
  `data_restituzione` date DEFAULT NULL,
  `utente_id` int(11) NOT NULL,
  `libro_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `prenotazioni`
--

INSERT INTO `prenotazioni` (`id`, `data_prenotazione`, `data_restituzione`, `utente_id`, `libro_id`) VALUES
(11, '2023-01-01', '2023-01-10', 11, 10),
(12, '2023-02-05', '2023-02-15', 12, 12),
(13, '2023-03-12', '2023-03-22', 3, 3),
(14, '2023-04-18', '2023-04-28', 4, 4),
(15, '2023-05-24', '2023-06-03', 5, 5),
(16, '2023-06-30', '2023-07-10', 6, 6),
(17, '2023-07-15', '2023-07-25', 7, 7),
(18, '2023-08-22', '2023-09-01', 8, 8),
(19, '2023-09-28', '2023-10-08', 9, 9),
(20, '2023-10-31', '2023-11-10', 10, 11),
(21, '2024-01-11', '2024-01-11', 14, 43),
(22, '2024-01-11', '2024-01-11', 14, 41),
(23, '2024-01-11', '2024-01-11', 15, 13),
(24, '2024-01-15', '2024-01-15', 16, 5);

-- --------------------------------------------------------

--
-- Struttura della tabella `profili`
--

CREATE TABLE `profili` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `profili`
--

INSERT INTO `profili` (`id`, `username`, `password`) VALUES
(0, 'Alice123', 'PwdAlice123'),
(2, 'NuovoUsername2', 'NuovaPassword2'),
(3, 'Charlie789', 'StrongCharlie456'),
(4, 'David_1', 'PwdDavid1'),
(5, 'Eva@user', 'EvaPwd!'),
(6, 'Frankie', 'FrankiePass123'),
(7, 'Grace2', 'GracePwd456'),
(8, 'Henry3', 'HenrySecured'),
(9, 'Isabel', 'PwdIsabel789'),
(10, 'Jack!son', 'JacksonPwd!23'),
(11, 'utente10', 'password10'),
(12, 'AnninaMann', 'AnnMann123!'),
(13, 'enia', 'enia'),
(14, 'Himea94', '1234'),
(15, 'Claretta', 'ClarBern');

-- --------------------------------------------------------

--
-- Struttura della tabella `recensioni`
--

CREATE TABLE `recensioni` (
  `id` int(11) NOT NULL,
  `ranked` int(1) NOT NULL,
  `commento` varchar(250) NOT NULL,
  `libro_id` int(11) DEFAULT NULL,
  `utente_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `recensioni`
--

INSERT INTO `recensioni` (`id`, `ranked`, `commento`, `libro_id`, `utente_id`) VALUES
(1, 5, 'WOW gran bel libro, me lo sono goduto a dovere!', 8, 15),
(2, 1, 'Non mi è piaciuto per niente, davvero antipatica Styles Court!', 9, 10),
(4, 3, 'WOW grande storia e che colpo di scena! ', 52, 8),
(5, 5, 'Avevo visto il film, ma leggere il libro è stato magnifico! Consigliatissimo!', 25, 5),
(6, 3, 'Mi è piaciuto abbastanza ma non è il mio genere !', 15, 12),
(7, 5, 'Che signor Libro! Con la L maiuscola! Consigliatissimo!', 20, 11),
(8, 1, 'Non sono mai stata un amante dei vampiri, purtroppo questo libro lo ha solo confermato!', 57, 14),
(9, 3, 'Tolkien è come sempre bravissimo, ma non c\'è confronto con la saga Il Signore degli Anelli!', 44, 7),
(10, 5, 'Gran bel libro, consigliatissimo!', 55, 9),
(11, 5, 'CAPOLAVORO! Lunghissimo ma ne vale la pena, da leggere una volta nella vita!', 40, 7),
(12, 4, 'Mi ha ricordato molto Orwell 1964, ma ha un sacco di aforismi che mi porterò sempre nella vita.', 11, 4),
(13, 1, 'Non è per niente il mio genere', 24, 9),
(14, 5, 'Stupendo e profondo', 5, 16);

-- --------------------------------------------------------

--
-- Struttura della tabella `the`
--

CREATE TABLE `the` (
  `id` int(11) NOT NULL,
  `nome_the` varchar(100) NOT NULL,
  `immagine` varchar(255) NOT NULL,
  `aroma` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `the`
--

INSERT INTO `the` (`id`, `nome_the`, `immagine`, `aroma`) VALUES
(1, 'Thè bianco', 'https://www.macrolibrarsi.it/data/speciali/big/proprieta-e-usi-del-te-bianco.jpg', 'Thè bianco cinese dai germogli e foglie di Camellia Sinensis, noto per proprietà antiossidanti, antinfiammatorie, riduce colesterolo ed è energizzante.'),
(2, 'Thè verde', 'https://www.unicooptirreno.it/sites/default/files/contenuti_pagine/1_4.jpg', 'Thè verde cinese, non ossidato, benefico per salute, riduce rischi cardiovascolari e tumori, stimola il metabolismo, attenzione all\'eccessiva perdita di peso.'),
(3, 'Thè nero', 'https://www.clickcafeshop.it/img/cms/te-nero-benefici.jpeg', 'Thè nero ottenuto da lavorazione foglie Camellia Sinensis, ricco di caffeina, antiossidante, stimolante mentale.'),
(4, 'Thè giallo', 'https://www.asiantea.it/wp-content/uploads/2018/06/the-giallo.jpg', 'Thè giallo, variante tè verde con parziale ossidazione, bassa caffeina. Stimolante, benefico per mente, colesterolo, prevenzione cardiovascolare.'),
(5, 'Thè Oolong', 'https://www.lauraferrero.it/wp-content/uploads/2018/06/t-oolong-foto.jpg', 'Thè oolong, misto tra tè verde e nero. Foglie variano colore. Chiamato tè blu, qing. Benefici: antiossidante, stimolante, rinforza immunità.'),
(6, 'Thè Pu\'er o post-fermentato', 'https://www.clickcafeshop.it/img/cms/te%CC%80-pu-erh.jpeg', 'Thè Pu\'er post-fermentato. Stimola il sistema nervoso, brucia grassi, regola il colesterolo, contribuisce al benessere.'),
(7, 'Thè Matcha', 'https://www.nutridoc.it/api/articles/00000000430/the%CC%80%20matcha.jpg', 'Thè matcha, polvere verde brillante ottenuta da foglie di Gyokuro. Ricco di antiossidanti, vitamine e energia. Aiuta la concentrazione.'),
(8, 'Thè Chai', 'https://www.macrolibrarsi.it/data/speciali/big/hai-mai-provato-il-te-chai.jpg', 'Thè chai, miscela speziata di tè nero originaria dell\'India. Contiene spezie con benefici antiossidanti e caffeina. Contribuisce al benessere.'),
(9, 'Thè rosso Rooibos', 'https://wisesociety.it/wp-content/uploads/2022/06/rooibos-tisana-680x453.jpg', 'Thè rosso Rooibos, senza caffeina, con sapore fruttato e antiossidanti. Versatile, si beve caldo o freddo, e si usa in ricette dolci.'),
(10, 'Thè Karkadè', 'https://blog.prolon.it/wp-content/uploads/2022/09/karkade.jpg', 'Thè Karkade, con fiori di ibisco, sapore fruttato e ricco di antiossidanti e vitamina C. Si gusta caldo o freddo, anche in cocktail e dolci.');

-- --------------------------------------------------------

--
-- Struttura della tabella `utenti`
--

CREATE TABLE `utenti` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `cognome` varchar(50) NOT NULL,
  `profilo_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `utenti`
--

INSERT INTO `utenti` (`id`, `nome`, `cognome`, `profilo_id`, `email`) VALUES
(0, 'admin', 'admin', 0, 'admin@admin.it'),
(3, 'Mario', 'Rossi', 11, 'mario.rossi@gmail.com'),
(4, 'Anna', 'Bianchi', 2, 'anna.bianchi@gmail.com'),
(5, 'Luca', 'Verdi', 3, 'luca.verdi@gmail.com'),
(6, 'Laura', 'Neri', 4, 'laura.neri@gmail.com'),
(7, 'Giovanni', 'Gialli', 5, 'giovanni.gialli@gmail.com'),
(8, 'Elena', 'Marroni', 6, 'elena.marroni@gmail.com'),
(9, 'Davide', 'Viola', 7, 'davide.viola@gmail.com'),
(10, 'Francesca', 'Azzurri', 8, 'francesca.azzurri@gmail.com'),
(11, 'Paolo', 'Rosa', 9, 'paolo.rosa@gmail.com'),
(12, 'Roberta', 'Arancioni', 10, 'roberta.arancioni@gmail.com'),
(13, 'Anna', 'Manna', 12, 'Anna.Manna@gmail.com'),
(14, 'Malia', 'Enia', 13, 'enia@malia.com'),
(15, 'Elisa', 'Colombi', 14, 'himea94@gmail.com'),
(16, 'Clara', 'Bernesi', 15, 'clara.b@gmail.com');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `autori`
--
ALTER TABLE `autori`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `case_editrici`
--
ALTER TABLE `case_editrici`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `generi`
--
ALTER TABLE `generi`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `libri`
--
ALTER TABLE `libri`
  ADD PRIMARY KEY (`id`),
  ADD KEY `autore` (`autore_id`),
  ADD KEY `genere` (`genere_id`),
  ADD KEY `casa_editrice` (`casa_editrice_id`),
  ADD KEY `lingua` (`lingua_id`);

--
-- Indici per le tabelle `lingue`
--
ALTER TABLE `lingue`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `prenotazioni`
--
ALTER TABLE `prenotazioni`
  ADD PRIMARY KEY (`id`),
  ADD KEY `libroPrenotato` (`libro_id`),
  ADD KEY `utentePrenotazione` (`utente_id`);

--
-- Indici per le tabelle `profili`
--
ALTER TABLE `profili`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `recensioni`
--
ALTER TABLE `recensioni`
  ADD PRIMARY KEY (`id`),
  ADD KEY `libro_id` (`libro_id`),
  ADD KEY `utente` (`utente_id`);

--
-- Indici per le tabelle `the`
--
ALTER TABLE `the`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `utenti`
--
ALTER TABLE `utenti`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profilo` (`profilo_id`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `autori`
--
ALTER TABLE `autori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT per la tabella `case_editrici`
--
ALTER TABLE `case_editrici`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT per la tabella `generi`
--
ALTER TABLE `generi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT per la tabella `libri`
--
ALTER TABLE `libri`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT per la tabella `lingue`
--
ALTER TABLE `lingue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT per la tabella `prenotazioni`
--
ALTER TABLE `prenotazioni`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT per la tabella `profili`
--
ALTER TABLE `profili`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT per la tabella `recensioni`
--
ALTER TABLE `recensioni`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT per la tabella `the`
--
ALTER TABLE `the`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT per la tabella `utenti`
--
ALTER TABLE `utenti`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `libri`
--
ALTER TABLE `libri`
  ADD CONSTRAINT `autore` FOREIGN KEY (`autore_id`) REFERENCES `autori` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `casa_editrice` FOREIGN KEY (`casa_editrice_id`) REFERENCES `case_editrici` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `genere` FOREIGN KEY (`genere_id`) REFERENCES `generi` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `lingua` FOREIGN KEY (`lingua_id`) REFERENCES `lingue` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `prenotazioni`
--
ALTER TABLE `prenotazioni`
  ADD CONSTRAINT `libroPrenotato` FOREIGN KEY (`libro_id`) REFERENCES `libri` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `utentePrenotazione` FOREIGN KEY (`utente_id`) REFERENCES `utenti` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `recensioni`
--
ALTER TABLE `recensioni`
  ADD CONSTRAINT `libro` FOREIGN KEY (`libro_id`) REFERENCES `libri` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `utente` FOREIGN KEY (`utente_id`) REFERENCES `utenti` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `utenti`
--
ALTER TABLE `utenti`
  ADD CONSTRAINT `profilo` FOREIGN KEY (`profilo_id`) REFERENCES `profili` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
