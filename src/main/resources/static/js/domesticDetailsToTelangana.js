function changeMandal(district,mandal){
    var district = document.getElementById(district);
    var mandal = document.getElementById(mandal);
    mandal.innerHTML="";
    if(district.value==="Adilabad"){
        var mandalArray = ["Select|Select","Adilabad|Adilabad","Asifabad|Asifabad","Bazarhathnoor|Bazarhathnoor",
        "Bejjur|Bejjur","Bela|Bela","Bellampalle|Bellampalle","Bhainsa|Bhainsa","Bheemini|Bheemini","Boath|Boath",
        "Chennur|Chennur","Dahegaon|Dahegaon","Dandepalle|Dandepalle","Dilawarpur|Dilawarpur",
        "Gudihathnur|Gudihathnur","Ichoda|Ichoda","Inderavelly|Inderavelly","Jainad|Jainad","Jainoor|Jainoor",
        "Jaipur|Jaipur","Jannaram|Jannaram","Kaddam Peddur|Kaddam Peddur","Kagaz Nagar|Kagaz Nagar",
        "Kasipet|Kasipet","Kerameri|Kerameri","Khanapur|Khanapur","Kotapalle|Kotapalle","Kouthala|Kouthala",
        "Kubeer|Kubeer","Kuntala|Kuntala","Laxmanchanda|Laxmanchanda","Lohesra|Lohesra","Luxettipet|Luxettipet",
        "Mamda|Mamda","Mancherial|Mancherial","Mandamarri|Mandamarri","Mudhole|Mudhole","Narnoor|Narnoor",
        "Nennal|Nennal","Neradigonda|Neradigonda","Nirmal|Nirmal","Rebbana|Rebbana","Sarangapur|Sarangapur",
        "Sirpur (T)|Sirpur (T)","Sirpur (U)|Sirpur (U)","Talamadugu|Talamadugu","Tamsi|Tamsi","Tandur|Tandur",
        "Tanur|Tanur","Tiryani|Tiryani","Utnur|Utnur","Vemanpalle|Vemanpalle","Wankdi|Wankdi"];
    }
    else if(district.value==="Bhadradri Kothagudem"){
        var mandalArray = ["Select|Select",
        "Allapalli|Allapalli",
        "Annapureddypalli|Annapureddypalli",
        "Aswaraopeta|Aswaraopeta"	,
        "Aswapuram	|Aswapuram",
        "Bhadrachalam|Bhadrachalam",
        "Burgampahad|Burgampahad",
        "Cherla|Cherla",
        "Chandrugonda|Chandrugonda",
        "Chunchupalli|Chunchupalli",
        "Dammapeta|Dammapeta",
        "Dummugudem|Dummugudem",
        "Gundala|Gundala",
        "Julurpad|Julurpad",
        "Karakagudem|Karakagudem"	 ,
        "Kothagudem|Kothagudem",
        "Laxmidevipalli|Laxmidevipalli",
        "Manuguru|Manuguru",
        "Mulakalapally|Mulakalapally"	,
        "Pinapaka|Pinapaka",
        "Palvancha|Palvancha",
        "Sujatanagar|Sujatanagar",
        "Tekulapally|Tekulapally",
        "Yellandu|Yellandu"];
    }
    else if(district.value ==="Hyderabad"){
        var mandalArray=
        ["Select|Select","Ameerpet|Ameerpet","Amberpet|Amberpet","Asifnagar|Asifnagar","Bahadurpura|Bahadurpura","Bandlaguda|Bandlaguda",
        "Charminar|Charminar","Golconda|Golconda","Himayathnagar|Himayathnagar","Khairtabad|Khairtabad","Marredpally|Marredpally","Musheerabad|Musheerabad","Nampally|Nampally",
        "Shaikpet|Shaikpet","Saidabad|Saidabad","Secunderabad|Secunderabad","Trimulgherry|Trimulgherry"];
    }
    else if(district.value === "Jagitial"){
        var mandalArray=
        ["Select|Select",
        "Beerpur|Beerpur","Buggaram|Buggaram","Dharmapuri|Dharmapuri","Gollapalli|Gollapalli","Jagitial Urban|Jagitial Urban","Jagitial Rural|Jagitial Rural","Kodimial|Kodimial","Mallial|Mallial","Pegadapalli|Pegadapalli","Raikal|Raikal",
        "Sarangapur|Sarangapur","Velgatoor|Velgatoor","Metpally|Metpally","Ibrahimpatnam|Ibrahimpatnam","Mallapur|Mallapur",
        "Kathalapur|Kathalapur","Korutla|Korutla","Medipalli|Medipalli"];

    }
    else if(district.value === "Jangaon"){
        var mandalArray=
        ["Select|Select","Jangoan|Jangoan","Lingala_Ghanpur|Lingala Ghanpur","Bachannapet|Bachannapet",
        "Devaruppula|Devaruppula","Narmetta|Narmetta","Tharigoppula|Tharigoppula","Ragunathpally|Ragunathpally",
        "Ghanpur(Stn)|Ghanpur (Stn)","Chilpur|Chilpur","Zaffergadh|Zaffergadh","Palakurthy|Palakurthy",
        "Kodakandla|Kodakandla"];
    }
    else if(district.value === "Jayashankar_Bhupalpally"){
        var mandalArray=
        ["Select|Select","Bhupalpally|Bhupalpally","Ghanpur_Mulug|Ghanpur Mulug","Regonda|Regonda",
        "Mogullapally|Mogullapally","Chityal|Chityal","Tekumatla|Tekumatla","Malharrao|Malharrao",
        "Kataram|Kataram","Mahadevpur|Mahadevpur","Palimela|Palimela","Mutharam|Mutharam"];

    }
    else if(district.value==="Jogulamba_Gadwal"){
        var mandalArray=
        ["Select|Select","Kaloor_Timmanadoddi|Kaloor Timmanadoddi","Dharur|Dharur","Gadwal|Gadwal","Itikyal|Itikyal"
        ,"Maldakal|Maldakal","Ghattu|Ghattu","Aiza|Aiza","Rajoli|Rajoli","Waddepalle|Waddepalle",
        "Manopad|Manopad","Undavelli|Undavelli","Alampur|Alampur"];
    }
    else if(district.value==="Kamareddy"){
        var mandalArray=
        ["Select|Select","Banswada|Banswada","Birkoor|Birkoor","Bichkunda|Bichkunda","Jukkal|Jukkal","Madnoor|Madnoor"
        ,"Nizamsagar|Nizamsagar","Pitlam|Pitlam","Nasrullabad|Nasrullabad","Pedda Kodapgal|Pedda Kodapgal",
        "Kamareddy|Kamareddy","Bhiknoor|Bhiknoor","Rajampet|Rajampet","Domakonda|Domakonda","Machareddy|Machareddy",
        "Ramareddy|Ramareddy","Bibipet|Bibipet","Tadwai|Tadwai","Sadasivanagar|Sadasivanagar","Yellareddy",
        "Gandhari|Gandhari","Lingampet|Lingampet","Nagareddipet|Nagareddipet"];
    }
    else if(district.value==="Karimnagar"){
        var mandalArray=
        ["Select|Select","Karimnagar|Karimnagar","Kothapally|Kothapally","karimnagar_Rural|Karimnagar Rural",
        "Manakondur|Manakondur","Thimmapur|Thimmapur","Ganneruvaram|Ganneruvaram","Gangadhara|Gangadhara",
        "Ramadugu|Ramadugu","Choppadandi|Choppadandi","Chigurumamidi|Chigurumamidi","Huzurabad|Huzurabad",
        "Veenavanka|Veenavanka","Saidapur|Saidapur","Jammikunta|Jammikunta","Ellandakunta|Ellandakunta",
        "Shankarapatnam|Shankarapatnam"];
    }
    for(var man in mandalArray){
        var pair = mandalArray[man].split("|");
		var newOption = document.createElement("option");
		newOption.value = pair[0];
		newOption.innerHTML = pair[1];
		mandal.options.add(newOption);

    }
}

