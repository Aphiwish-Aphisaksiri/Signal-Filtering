% Load the ECG signal from the .mat file
load('noisyecg/noisyecg.mat');

% Compute the power spectral density using pwelch
fs = 500; % Sampling frequency (Hz)
window = hamming(1024); % Window function
noverlap = 512; % Number of samples to overlap
nfft = 1024; % Number of FFT points
[Pxx_original, f] = pwelch(ecg1, window, noverlap, nfft, fs);

b = [2.79654133886055e-05,2.61955984645504e-06,4.32321065616744e-07,-2.46855818233358e-06,-4.91320151336554e-06,-5.84174686369897e-06,-4.73460306429583e-06,-1.89791074495953e-06,1.62518787635416e-06,4.41171643314800e-06,5.25363173513711e-06,3.65565708635043e-06,1.21735881467707e-07,-4.01209887823417e-06,-7.05210456641570e-06,-7.65947559676019e-06,-5.40467543522591e-06,-1.03680808364866e-06,3.78302404541503e-06,7.07990731410721e-06,7.39974012339265e-06,4.40858907231749e-06,-8.54325192456340e-07,-6.35968142991628e-06,-9.81804712919520e-06,-9.67061056657269e-06,-5.73422228148243e-06,5.66001695442367e-07,6.78160604105095e-06,1.03227410055363e-05,9.64940669540986e-06,4.65988671623423e-06,-2.73641541528123e-06,-9.63090404048429e-06,-1.31723796511672e-05,-1.16653396852208e-05,-5.46729797808458e-06,3.14684449132573e-06,1.07430784717350e-05,1.41430546834109e-05,1.17055741061896e-05,4.12846603006742e-06,-5.74563098956524e-06,-1.39587368097378e-05,-1.70371942742274e-05,-1.34304108948556e-05,-4.27336962621311e-06,6.95625895113800e-06,1.57372964710375e-05,1.83304965309782e-05,1.33526183516992e-05,2.47392776867247e-06,-1.01238950048953e-05,-1.93410994768460e-05,-2.12146658020454e-05,-1.46050827303616e-05,-1.80707744005966e-06,1.22158037719146e-05,2.17565558709915e-05,2.26772063779547e-05,1.42058064089432e-05,-6.45027875409246e-07,-1.60642772361256e-05,-2.57284010071163e-05,-2.54193365045490e-05,-1.47758528523188e-05,2.29619410420854e-06,1.90962608107973e-05,2.87076610316437e-05,2.68670356405260e-05,1.38071533523501e-05,-5.60918786807274e-06,-2.37026899932446e-05,-3.29850174847947e-05,-2.92623341536838e-05,-1.34835192514244e-05,8.40656768295868e-06,2.77043400299117e-05,3.63838182433602e-05,3.04336180079052e-05,1.16641442826433e-05,-1.27732842615317e-05,-3.31054197390322e-05,-4.08255449532463e-05,-3.22447607772786e-05,-1.01934618836096e-05,1.68575786544543e-05,3.80399913308831e-05,4.44356846990540e-05,3.28250607086474e-05,7.23347052284223e-06,-2.24323021973114e-05,-4.41976986212628e-05,-4.88240201771392e-05,-3.37496043172301e-05,-4.34526146289757e-06,2.79179450784201e-05,4.99626719701276e-05,5.23691977294627e-05,3.33932570712905e-05,-3.73757899542835e-08,-3.48069211749676e-05,-5.67531751750646e-05,-5.64090479597808e-05,-3.30684654046882e-05,4.60394596644577e-06,4.17508281148663e-05,6.31766159338522e-05,5.95372005281926e-05,3.13892078532941e-05,-1.06789015474070e-05,-4.99924826552013e-05,-7.03925480927931e-05,-6.28508918435896e-05,-2.94317180469088e-05,1.71604035785733e-05,5.83761378710125e-05,7.71973727145443e-05,6.51337894454263e-05,2.60113715503994e-05,-2.51615570614958e-05,-6.79229163916603e-05,-8.45290568041051e-05,-6.72734329940838e-05,-2.20227214246603e-05,3.37426045486332e-05,7.76308853551573e-05,9.13292862528094e-05,6.82099572701607e-05,1.64436975984985e-05,-4.38339487543859e-05,-8.83262424926590e-05,-9.83545022922686e-05,-6.86634229046514e-05,-1.00254173593151e-05,5.46223918687356e-05,9.91217582955337e-05,0.000104664008466676,6.76993835396109e-05,1.89578762819089e-06,-6.68750535723466e-05,-0.000110679594907850,-0.000110852469364196,-6.59024418293221e-05,7.31291341603958e-06,7.98757083297271e-05,0.000122199927905055,0.000116077076134471,6.24525606438258e-05,-1.83371425347854e-05,-9.42450676533404e-05,-0.000134197407354356,-0.000120795872651113,-5.78187184085526e-05,3.06313978420448e-05,0.000109334279168756,0.000145940765202643,0.000124244839985272,5.12841040894318e-05,-4.48120917503322e-05,-0.000125631874488484,-0.000157809855201141,-0.000126770478907242,-4.32310510274609e-05,6.03930448870205e-05,0.000142535423421209,0.000169123095104538,0.000127677296315600,3.30351374600646e-05,-7.78728807124938e-05,-0.000160404689517439,-0.000180144067150560,-0.000127214583454945,-2.10155005448472e-05,9.68084975188429e-05,0.000178671398390864,0.000190231578910393,0.000124754566557426,6.64486154584381e-06,-0.000117577142287640,-0.000197570731016095,-0.000199541046505559,-0.000120466177477273,9.80862775053796e-06,0.000139763689772740,0.000216556264937482,0.000207471397103005,0.000113790616829102,-2.87704460640862e-05,-0.000163626670561220,-0.000235748274835931,-0.000214080666884595,-0.000104836916158122,5.00003641281615e-05,0.000188758927542943,0.000254610411135299,0.000218801676918199,9.31132099007072e-05,-7.38277943284207e-05,-0.000215308250495296,-0.000273158395260397,-0.000221620181068221,-7.86923822649909e-05,0.000100012608716222,0.000242854967549900,0.000290855486039957,0.000221995181005675,6.11475415676593e-05,-0.000128790221108527,-0.000271441640716334,-0.000307628250099509,-0.000219860829580609,-4.05414651611662e-05,0.000159901401776558,0.000300622398249844,0.000322930794530869,0.000214705230225659,1.65169025680044e-05,-0.000193483144013938,-0.000330339046942946,-0.000336615856131928,-0.000206427421057781,1.08536949135308e-05,0.000229239950478298,0.000360109911016688,0.000348128436893129,0.000194552162282100,-4.18491655484865e-05,-0.000267208209739428,-0.000389782990583914,-0.000357258427491406,-0.000178964825700208,7.63689945888619e-05,0.000307041040892521,0.000418834332421986,0.000363448292248804,0.000159234621982425,-0.000114605279917208,-0.000348672250448237,-0.000447023405551637,-0.000366440023524739,-0.000135252146127639,0.000156410680569917,0.000391695001859640,0.000473786638377583,0.000365681038556749,0.000106645190693227,-0.000201879210101380,-0.000435934868208402,-0.000498799601553071,-0.000360881463421359,-7.33250255346982e-05,0.000250805068803340,0.000480921425162729,0.000521465852370741,0.000351507683337803,3.49957789185613e-05,-0.000303170599973856,-0.000526368892773611,-0.000541386505198116,-0.000337251613064358,8.39285941077829e-06,0.000358700357603558,0.000571741274275028,0.000557938324548054,0.000317615594855541,-5.70464873522174e-05,-0.000417257609320013,-0.000616645532805999,-0.000570661624235581,-0.000292293398625396,0.000110956789233558,0.000478482508456342,0.000660477107370928,0.000578915847139431,0.000260834762855108,-0.000170228413794566,-0.000542117241389148,-0.000702743564774028,-0.000582197271914788,-0.000222959740704363,0.000234774258894449,0.000607707035560682,0.000742772250660001,0.000579858539937985,0.000178278667528627,-0.000304586959231581,-0.000674870315680547,-0.000779980187510073,-0.000571371282049298,-0.000126557997124797,0.000379484211998109,0.000743051321228325,0.000813632813833084,0.000556093138577483,6.74865543934221e-05,-0.000459335265203578,-0.000811744052772491,-0.000843067897351645,-0.000533490039455857,-8.96179414604144e-07,0.000543849048127115,0.000880287651821713,0.000867495624688149,0.000502941097887269,-7.34311453415480e-05,-0.000632763355519353,-0.000948055317220118,-0.000886188490464722,-0.000463925168741791,0.000155577862440578,0.000725665682763597,0.00101428023000900,0.000898310341251635,0.000415857791429437,-0.000245656632794223,-0.000822157383227206,-0.00107821932514595,-0.000903082090155593,-0.000358249906970388,0.000343648151212396,0.000921696673779228,0.00113900215766384,0.000899633329199345,0.000290565939474909,-0.000449547267828665,-0.00102374339378111,-0.00119577410371123,-0.000887145477759642,-0.000212364260520102,0.000563222289611873,0.00112762294563422,0.00124756513364793,0.000864722848193785,0.000123171106335540,-0.000684541296296695,-0.00123265130811623,-0.00129341437439976,-0.000831518068281732,-2.26023413617301e-05,0.000813251322696542,0.00133801702648168,0.00133225423956945,0.000786615452814947,-8.97474745395770e-05,-0.000949090453706346,-0.00144289328520567,-0.00136302129442843,-0.000729144397660188,0.000214198465563736,0.00109167892893552,0.00154632843025578,0.00138454833587769,0.000658169415171244,-0.000351089896216688,-0.00124062540965232,-0.00164735106424529,-0.00139566629772298,-0.000572791778914300,0.000500681146837816,0.00139542543423779,0.00174486724877638,0.00139510115666970,0.000472044757529330,-0.000663253933733716,-0.00155556057850534,-0.00183775393013773,-0.00138156180108371,-0.000354980851721884,0.000839026872225511,0.00172041048316262,0.00192476763521943,0.00135364594927208,0.000220573407187767,-0.00102824736752503,-0.00188933692269746,-0.00200461912722619,-0.00130990466101575,-6.77807999862880e-05,0.00123113038717886,0.00206161574892859,0.00207589478638283,0.00124875809987553,-0.000104542986289533,-0.00144793788493791,-0.00223650391560105,-0.00213710808627416,-0.00116853107114223,0.000297617004591049,0.00167894421443659,0.00241318926827793,0.00218663072812814,0.00106737153617732,-0.000512819688652007,-0.00192451119165202,-0.00259084291815313,-0.00222271627396751,-0.000943249392031763,0.000751695467360361,0.00218508303875210,0.00276858558749011,0.00224343256799888,0.000793864738600720,-0.00101605580115761,-0.00246126637033989,-0.00294552541278194,-0.00224665069466323,-0.000616596148042109,0.00130803717535336,0.00275386495219514,0.00312073936234716,0.00222996033818134,0.000408370067321419,-0.00163024527901935,-0.00306398431292762,-0.00329330148274660,-0.00219061075451586,-0.000165532093998836,0.00198589716868419,0.00339312411179999,0.00346226925615705,0.00212537240713120,-0.000116381989084595,-0.00237907024482226,-0.00374335441045670,-0.00362671302338136,-0.00203039450721304,0.000442921305276424,0.00281500263536244,0.00411751156364537,0.00378569884517290,0.00190093760650308,-0.000821172812923943,-0.00330058752668020,-0.00451954181374100,-0.00393832244754585,-0.00173104405449677,0.00126037104478160,0.00384503843334551,0.00495494306715072,0.00408368970928011,0.00151296531784664,-0.00177289127735098,-0.00446097733834043,-0.00543151215320769,-0.00422095066309778,-0.00123634288075907,0.00237573596918896,0.00516607415355458,0.00596045660493616,0.00434928117199070,0.000886809597527066,-0.00309302125843987,-0.00598580181194677,-0.00655829461875518,-0.00446791334276433,-0.000443705273377265,0.00396013236581881,0.00695809038648306,0.00725007637704443,0.00457612122286475,-0.000124034985936868,-0.00503121862283879,-0.00814181099131881,-0.00807534289949553,-0.00467324470844666,0.000865562852296711,0.00639344909416667,0.00963315288937511,0.00909978858573233,0.00475868155550453,-0.00186380214573061,-0.00819658468804127,-0.0116002398996596,-0.0104404210841332,-0.00483190211478978,0.00327069857275477,0.0107210807037064,0.0143648998691749,0.0123266129885792,0.00489244856786873,-0.00539816357327839,-0.0145597166611613,-0.0186287512114554,-0.0152756377092367,-0.00493994037910032,0.00900387464358392,0.0212183436642668,0.0262644710508488,0.0207469068370080,0.00497407949846402,-0.0165297534105544,-0.0359694149135656,-0.0444981762220901,-0.0350673557677952,-0.00499464914892416,0.0426290207328057,0.0992408002091565,0.152827454045193,0.191118265947089,0.205001520572121,0.191118265947089,0.152827454045193,0.0992408002091565,0.0426290207328057,-0.00499464914892416,-0.0350673557677952,-0.0444981762220901,-0.0359694149135656,-0.0165297534105544,0.00497407949846402,0.0207469068370080,0.0262644710508488,0.0212183436642668,0.00900387464358392,-0.00493994037910032,-0.0152756377092367,-0.0186287512114554,-0.0145597166611613,-0.00539816357327839,0.00489244856786873,0.0123266129885792,0.0143648998691749,0.0107210807037064,0.00327069857275477,-0.00483190211478978,-0.0104404210841332,-0.0116002398996596,-0.00819658468804127,-0.00186380214573061,0.00475868155550453,0.00909978858573233,0.00963315288937511,0.00639344909416667,0.000865562852296711,-0.00467324470844666,-0.00807534289949553,-0.00814181099131881,-0.00503121862283879,-0.000124034985936868,0.00457612122286475,0.00725007637704443,0.00695809038648306,0.00396013236581881,-0.000443705273377265,-0.00446791334276433,-0.00655829461875518,-0.00598580181194677,-0.00309302125843987,0.000886809597527066,0.00434928117199070,0.00596045660493616,0.00516607415355458,0.00237573596918896,-0.00123634288075907,-0.00422095066309778,-0.00543151215320769,-0.00446097733834043,-0.00177289127735098,0.00151296531784664,0.00408368970928011,0.00495494306715072,0.00384503843334551,0.00126037104478160,-0.00173104405449677,-0.00393832244754585,-0.00451954181374100,-0.00330058752668020,-0.000821172812923943,0.00190093760650308,0.00378569884517290,0.00411751156364537,0.00281500263536244,0.000442921305276424,-0.00203039450721304,-0.00362671302338136,-0.00374335441045670,-0.00237907024482226,-0.000116381989084595,0.00212537240713120,0.00346226925615705,0.00339312411179999,0.00198589716868419,-0.000165532093998836,-0.00219061075451586,-0.00329330148274660,-0.00306398431292762,-0.00163024527901935,0.000408370067321419,0.00222996033818134,0.00312073936234716,0.00275386495219514,0.00130803717535336,-0.000616596148042109,-0.00224665069466323,-0.00294552541278194,-0.00246126637033989,-0.00101605580115761,0.000793864738600720,0.00224343256799888,0.00276858558749011,0.00218508303875210,0.000751695467360361,-0.000943249392031763,-0.00222271627396751,-0.00259084291815313,-0.00192451119165202,-0.000512819688652007,0.00106737153617732,0.00218663072812814,0.00241318926827793,0.00167894421443659,0.000297617004591049,-0.00116853107114223,-0.00213710808627416,-0.00223650391560105,-0.00144793788493791,-0.000104542986289533,0.00124875809987553,0.00207589478638283,0.00206161574892859,0.00123113038717886,-6.77807999862880e-05,-0.00130990466101575,-0.00200461912722619,-0.00188933692269746,-0.00102824736752503,0.000220573407187767,0.00135364594927208,0.00192476763521943,0.00172041048316262,0.000839026872225511,-0.000354980851721884,-0.00138156180108371,-0.00183775393013773,-0.00155556057850534,-0.000663253933733716,0.000472044757529330,0.00139510115666970,0.00174486724877638,0.00139542543423779,0.000500681146837816,-0.000572791778914300,-0.00139566629772298,-0.00164735106424529,-0.00124062540965232,-0.000351089896216688,0.000658169415171244,0.00138454833587769,0.00154632843025578,0.00109167892893552,0.000214198465563736,-0.000729144397660188,-0.00136302129442843,-0.00144289328520567,-0.000949090453706346,-8.97474745395770e-05,0.000786615452814947,0.00133225423956945,0.00133801702648168,0.000813251322696542,-2.26023413617301e-05,-0.000831518068281732,-0.00129341437439976,-0.00123265130811623,-0.000684541296296695,0.000123171106335540,0.000864722848193785,0.00124756513364793,0.00112762294563422,0.000563222289611873,-0.000212364260520102,-0.000887145477759642,-0.00119577410371123,-0.00102374339378111,-0.000449547267828665,0.000290565939474909,0.000899633329199345,0.00113900215766384,0.000921696673779228,0.000343648151212396,-0.000358249906970388,-0.000903082090155593,-0.00107821932514595,-0.000822157383227206,-0.000245656632794223,0.000415857791429437,0.000898310341251635,0.00101428023000900,0.000725665682763597,0.000155577862440578,-0.000463925168741791,-0.000886188490464722,-0.000948055317220118,-0.000632763355519353,-7.34311453415480e-05,0.000502941097887269,0.000867495624688149,0.000880287651821713,0.000543849048127115,-8.96179414604144e-07,-0.000533490039455857,-0.000843067897351645,-0.000811744052772491,-0.000459335265203578,6.74865543934221e-05,0.000556093138577483,0.000813632813833084,0.000743051321228325,0.000379484211998109,-0.000126557997124797,-0.000571371282049298,-0.000779980187510073,-0.000674870315680547,-0.000304586959231581,0.000178278667528627,0.000579858539937985,0.000742772250660001,0.000607707035560682,0.000234774258894449,-0.000222959740704363,-0.000582197271914788,-0.000702743564774028,-0.000542117241389148,-0.000170228413794566,0.000260834762855108,0.000578915847139431,0.000660477107370928,0.000478482508456342,0.000110956789233558,-0.000292293398625396,-0.000570661624235581,-0.000616645532805999,-0.000417257609320013,-5.70464873522174e-05,0.000317615594855541,0.000557938324548054,0.000571741274275028,0.000358700357603558,8.39285941077829e-06,-0.000337251613064358,-0.000541386505198116,-0.000526368892773611,-0.000303170599973856,3.49957789185613e-05,0.000351507683337803,0.000521465852370741,0.000480921425162729,0.000250805068803340,-7.33250255346982e-05,-0.000360881463421359,-0.000498799601553071,-0.000435934868208402,-0.000201879210101380,0.000106645190693227,0.000365681038556749,0.000473786638377583,0.000391695001859640,0.000156410680569917,-0.000135252146127639,-0.000366440023524739,-0.000447023405551637,-0.000348672250448237,-0.000114605279917208,0.000159234621982425,0.000363448292248804,0.000418834332421986,0.000307041040892521,7.63689945888619e-05,-0.000178964825700208,-0.000357258427491406,-0.000389782990583914,-0.000267208209739428,-4.18491655484865e-05,0.000194552162282100,0.000348128436893129,0.000360109911016688,0.000229239950478298,1.08536949135308e-05,-0.000206427421057781,-0.000336615856131928,-0.000330339046942946,-0.000193483144013938,1.65169025680044e-05,0.000214705230225659,0.000322930794530869,0.000300622398249844,0.000159901401776558,-4.05414651611662e-05,-0.000219860829580609,-0.000307628250099509,-0.000271441640716334,-0.000128790221108527,6.11475415676593e-05,0.000221995181005675,0.000290855486039957,0.000242854967549900,0.000100012608716222,-7.86923822649909e-05,-0.000221620181068221,-0.000273158395260397,-0.000215308250495296,-7.38277943284207e-05,9.31132099007072e-05,0.000218801676918199,0.000254610411135299,0.000188758927542943,5.00003641281615e-05,-0.000104836916158122,-0.000214080666884595,-0.000235748274835931,-0.000163626670561220,-2.87704460640862e-05,0.000113790616829102,0.000207471397103005,0.000216556264937482,0.000139763689772740,9.80862775053796e-06,-0.000120466177477273,-0.000199541046505559,-0.000197570731016095,-0.000117577142287640,6.64486154584381e-06,0.000124754566557426,0.000190231578910393,0.000178671398390864,9.68084975188429e-05,-2.10155005448472e-05,-0.000127214583454945,-0.000180144067150560,-0.000160404689517439,-7.78728807124938e-05,3.30351374600646e-05,0.000127677296315600,0.000169123095104538,0.000142535423421209,6.03930448870205e-05,-4.32310510274609e-05,-0.000126770478907242,-0.000157809855201141,-0.000125631874488484,-4.48120917503322e-05,5.12841040894318e-05,0.000124244839985272,0.000145940765202643,0.000109334279168756,3.06313978420448e-05,-5.78187184085526e-05,-0.000120795872651113,-0.000134197407354356,-9.42450676533404e-05,-1.83371425347854e-05,6.24525606438258e-05,0.000116077076134471,0.000122199927905055,7.98757083297271e-05,7.31291341603958e-06,-6.59024418293221e-05,-0.000110852469364196,-0.000110679594907850,-6.68750535723466e-05,1.89578762819089e-06,6.76993835396109e-05,0.000104664008466676,9.91217582955337e-05,5.46223918687356e-05,-1.00254173593151e-05,-6.86634229046514e-05,-9.83545022922686e-05,-8.83262424926590e-05,-4.38339487543859e-05,1.64436975984985e-05,6.82099572701607e-05,9.13292862528094e-05,7.76308853551573e-05,3.37426045486332e-05,-2.20227214246603e-05,-6.72734329940838e-05,-8.45290568041051e-05,-6.79229163916603e-05,-2.51615570614958e-05,2.60113715503994e-05,6.51337894454263e-05,7.71973727145443e-05,5.83761378710125e-05,1.71604035785733e-05,-2.94317180469088e-05,-6.28508918435896e-05,-7.03925480927931e-05,-4.99924826552013e-05,-1.06789015474070e-05,3.13892078532941e-05,5.95372005281926e-05,6.31766159338522e-05,4.17508281148663e-05,4.60394596644577e-06,-3.30684654046882e-05,-5.64090479597808e-05,-5.67531751750646e-05,-3.48069211749676e-05,-3.73757899542835e-08,3.33932570712905e-05,5.23691977294627e-05,4.99626719701276e-05,2.79179450784201e-05,-4.34526146289757e-06,-3.37496043172301e-05,-4.88240201771392e-05,-4.41976986212628e-05,-2.24323021973114e-05,7.23347052284223e-06,3.28250607086474e-05,4.44356846990540e-05,3.80399913308831e-05,1.68575786544543e-05,-1.01934618836096e-05,-3.22447607772786e-05,-4.08255449532463e-05,-3.31054197390322e-05,-1.27732842615317e-05,1.16641442826433e-05,3.04336180079052e-05,3.63838182433602e-05,2.77043400299117e-05,8.40656768295868e-06,-1.34835192514244e-05,-2.92623341536838e-05,-3.29850174847947e-05,-2.37026899932446e-05,-5.60918786807274e-06,1.38071533523501e-05,2.68670356405260e-05,2.87076610316437e-05,1.90962608107973e-05,2.29619410420854e-06,-1.47758528523188e-05,-2.54193365045490e-05,-2.57284010071163e-05,-1.60642772361256e-05,-6.45027875409246e-07,1.42058064089432e-05,2.26772063779547e-05,2.17565558709915e-05,1.22158037719146e-05,-1.80707744005966e-06,-1.46050827303616e-05,-2.12146658020454e-05,-1.93410994768460e-05,-1.01238950048953e-05,2.47392776867247e-06,1.33526183516992e-05,1.83304965309782e-05,1.57372964710375e-05,6.95625895113800e-06,-4.27336962621311e-06,-1.34304108948556e-05,-1.70371942742274e-05,-1.39587368097378e-05,-5.74563098956524e-06,4.12846603006742e-06,1.17055741061896e-05,1.41430546834109e-05,1.07430784717350e-05,3.14684449132573e-06,-5.46729797808458e-06,-1.16653396852208e-05,-1.31723796511672e-05,-9.63090404048429e-06,-2.73641541528123e-06,4.65988671623423e-06,9.64940669540986e-06,1.03227410055363e-05,6.78160604105095e-06,5.66001695442367e-07,-5.73422228148243e-06,-9.67061056657269e-06,-9.81804712919520e-06,-6.35968142991628e-06,-8.54325192456340e-07,4.40858907231749e-06,7.39974012339265e-06,7.07990731410721e-06,3.78302404541503e-06,-1.03680808364866e-06,-5.40467543522591e-06,-7.65947559676019e-06,-7.05210456641570e-06,-4.01209887823417e-06,1.21735881467707e-07,3.65565708635043e-06,5.25363173513711e-06,4.41171643314800e-06,1.62518787635416e-06,-1.89791074495953e-06,-4.73460306429583e-06,-5.84174686369897e-06,-4.91320151336554e-06,-2.46855818233358e-06,4.32321065616744e-07,2.61955984645504e-06,2.79654133886055e-05];

% Normalize the filter coefficients
b = b / sum(b);

% Filter the signal with b
filtered_signal = filter(b, 1, ecg1);

% Compute the power spectral density of the filtered signal
[Pxx_filtered, f_filtered] = pwelch(filtered_signal, window, noverlap, nfft, fs);

% Plot the power spectral density of both signals
hold on;
plot(f, 10*log10(Pxx_original), 'b', 'LineWidth', 1.5);
plot(f_filtered, 10*log10(Pxx_filtered), 'r', 'LineWidth', 1.5);
hold off;

xlabel('Frequency (Hz)');
ylabel('Power Spectral Density (dB/Hz)');
title('Comparison of Power Spectral Density');
legend('Original Signal', 'Filtered Signal');
grid on;

% Plot the time domain comparison of the original and filtered signal
figure;

% Plot the original signal
subplot(2, 1, 1);
t = (0:length(ecg1)-1) / fs; % Time vector
plot(t, ecg1, 'b', 'LineWidth', 1.5);
xlabel('Time (s)');
ylabel('Amplitude');
title('Original Signal');
grid on;

% Plot the filtered signal
subplot(2, 1, 2);
plot(t, filtered_signal, 'r', 'LineWidth', 1.5);
xlabel('Time (s)');
ylabel('Amplitude');
title('Filtered Signal');
grid on;
