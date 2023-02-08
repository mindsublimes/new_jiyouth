# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


punjab = Province.create(title: "Punjab")

districts = ['Attock','Bahawalnagar', 'Bahawalpur', 'Bhakkar', 'Chakwal', 'Chiniot', 'Dera Ghazi Khan', 'Faisalabad', 'Gujranwala', 'Gujrat', 'Hafizabad', 'Jhang', 'Jhelum
', 'Kasur', 'Khanewal', 'Khushab', 'Lahore', 'Layyah', 'Lodhran', 'Mandi Bahauddin', 'Mianwali', 'Multan', 'Muzaffargarh', 'Narowal', 'Nankana Sahib',
'Okara', 'Pakpattan', 'Rahim Yar Khan', 'Rajanpur', 'Rawalpindi', 'Sahiwal', 'Sargodha', 'Sheikhupura', 'Sialkot', 'Toba Tek Singh', 'Vehari']

districts.each do |district|
	District.create(province_id: punjab.id, title: district)
end

districts = punjab.districts

							"=========== District Attock ==========="

attock = districts.find_by_title('Attock')

attock_areas = [PunjabLocalGovernment.areas[:tehsil_council] => ['Attock','Hazro', 'Hassanabdal', 'Fatehjang', 'Pindi Gheb', 'Jand' ],
 PunjabLocalGovernment.areas[:municipal_committee] => ['Attock','Hazro', 'Hassanabdal', 'Fatehjang', 'Pindi Gheb', 'Jand'],
 PunjabLocalGovernment.areas[:town_committee] => ['Mirza']]

attock_areas[0].each do |area_hash|
	area = area_hash[0]
	names = area_hash[1]
	names.each do |title|
		PunjabLocalGovernment.create(district_id: attock.id, area: area, title: title)		
	end
end

attock_tehsil_councils = attock.punjab_local_governments.tehsil_council

tehsil_attock = attock_tehsil_councils.find_by_title("Attock")
tehsil_attock_uc = ['UC 01 Haji Shah', 'UC 02 Kamra','UC 03 Golra',
	'UC 05 Bolianwal','UC 06 Akhori','UC 07 Sheen Bagh' ,
	'UC 08 Sarwala', 'UC 09 Surg Salar','UC 10 Dakhnair'
]

tehsil_attock_uc.each do |unit_title|
	tehsil_attock.units.create(unit_name: Unit.unit_names['union_council'], title: unit_title)
end

tehsil_hazro = attock_tehsil_councils.find_by_title("Hazro")
tehsil_hazro_uc = ['UC 11 Haroon', 'UC 12 Shinka', 'UC 13 Jalalia', 'UC 14 Ghourghushti', 'UC 15 Malik Mala', 
 'UC 16 Nartopa', 'UC 17 Khagwani', 'UC 18 Musa Kudlathi', 'UC 19 Bahadur Khan', 'UC 20 Shamsabad', 
 'UC 21 Hameed', 'UC 22 Kamal pur Musa', 'UC 23 Tajak', 'UC 24 Formali', 'UC 25 Mullan Mansoor']

tehsil_hazro_uc.each do |hazro_unit_title|
	tehsil_hazro.units.create(unit_name: Unit.unit_names['union_council'], title: hazro_unit_title)
end

tehsil_hassanabdal = attock_tehsil_councils.find_by_title("Hassanabdal")
tehsil_hassanabdal_uc = ['UC 26 Jallo', 'UC 27 Sultan pur', 'UC 28 Bhallar Jogi', 'UC 29 Pind Mehri', 
	'UC 30 Pour Miana', 'UC 31 Kot Sundki', 'UC 32 Burhan']

tehsil_hassanabdal_uc.each do |hassanabdal_unit_title|
	tehsil_hassanabdal.units.create(unit_name: Unit.unit_names['union_council'], title: hassanabdal_unit_title)
end

tehsil_fatehjang = attock_tehsil_councils.find_by_title("Fatehjang")
tehsil_fatehjang_uc = ['UC 33 Jabbi', 'UC 34 Dhreak', 'UC 35 Bahtar', 'UC 36 Jhang', 'UC 37 Qutbal', 'UC 38 Jungle', 
	'UC 38 Dhumal', 'UC 40 Malai', 'UC 41 Gali Jageer', 'UC 42 Shahra-e-SadulIah', 'UC 44 Gulial', 'UC 45 Kot Fateh Khan']

tehsil_fatehjang_uc.each do |fatehjang_unit_title|
	tehsil_fatehjang.units.create(unit_name: Unit.unit_names['union_council'], title: fatehjang_unit_title)
end

tehsil_pindi_gheb = attock_tehsil_councils.find_by_title("Pindi Gheb")
tehsil_pindi_gheb_uc = ['UC 46 Mianwala', 'UC 47 Dandi', 'UC 48 Ikhlas', 'UC 49 Ahmedal', 'UC 50 Kamrial',
 'UC 51 Khaur', 'UC 52 Gharibwal', 'UC 53 Chakki', 'UC 54 Maira Sharif', 'UC 55 Malhowali', 'UC 56 Kharapa']

tehsil_pindi_gheb_uc.each do |pindi_gheb_unit_title|
	tehsil_pindi_gheb.units.create(unit_name: Unit.unit_names['union_council'], title: pindi_gheb_unit_title)
end

tehsil_jand = attock_tehsil_councils.find_by_title("Jand")
tehsil_jand_uc = ['UC 57 Jalwal', 'UC 58 Nara', 'UC 59 Saghri', 'UC 60 Thatta', 'UC 61 Basal', 'UC 62 Khunda', 
	'UC 63 Mithial', 'UC 64 Pind Sultani', 'UC 65 Langar', 'UC 66 Chappri', 'UC 67 Jaba', 'UC 68 Chabb', 
	'UC 69 Tarap', 'UC 70 Mukhad', 'UC 71 Dakhnair']

tehsil_jand_uc.each do |jand_unit_title|
	tehsil_jand.units.create(unit_name: Unit.unit_names['union_council'], title: jand_unit_title)
end

							"=========== District Bahawalnagar ==========="

bahawalnagar = districts.find_by_title('Bahawalnagar')

bahawalnagar_areas = [PunjabLocalGovernment.areas[:tehsil_council] => ['Minchnabad','Bahawalnagar', 'Chishtian', 'Haroon Abad', 'Faqirwali'],
 PunjabLocalGovernment.areas[:municipal_committee] => ['Bahawalnagar','Chishtian', 'Fortabbas', 'Haroonabad', 'Minchnabad', 'Donga Bonga'],
 PunjabLocalGovernment.areas[:town_committee] => ['Donga Bonga','Faqirwali', 'Kichiwala', 'Mandi Sadiq Ganj', 'Ahmedpur Meclodgunj', 'Maroot', 'Dahranwala']]

bahawalnagar_areas[0].each do |area_hash|
	area = area_hash[0]
	names = area_hash[1]
	names.each do |title|
		PunjabLocalGovernment.create(district_id: bahawalnagar.id, area: area, title: title)		
	end
end

bahawalnagar_tehsil_councils = bahawalnagar.punjab_local_governments.tehsil_council

tehsil_minchnabad = bahawalnagar_tehsil_councils.find_by_title("Minchnabad")
tehsil_minchnabad_uc = ['UC 01 Daulat Pur', 'UC 02 Laleka', 'UC 03 Bachian Wali', 'UC 04 Fidai Shah', 'UC 05 Said Ali', 
	'UC 06 Shehbaz Pur', 'UC 07 Bonga Akbar Man Nehal', 'UC 08 Behram Ka', 'UC 09 Khola Mirze Ka', 'UC 10 Peer Ghar', 
	'UC 11 onmaa our Mecnioo', 'UC 12 Hasan Wala', 'UC 13 Lala Amar Singh', 'UC 14 Hasil Saro', 'UC 15 Matt Wala', 
	'UC 16 Bholay Wala', 'UC 17 Mandi Sadiq Gunj', 'UC 18 Qaim Pur', 'UC 19 Giria Abad', 'UC 20 Bair Wala', 
	'UC 21 Behkan wala', 'UC 22 Rohana', 'UC 23 M. Pur Sansaran', 'UC 24 Toba Balouchan', 'UC 25 Kabotari']

tehsil_minchnabad_uc.each do |minchnabad_unit_title|
	tehsil_minchnabad.units.create(unit_name: Unit.unit_names['union_council'], title: minchnabad_unit_title)
end

tehsil_bahawalnagar = bahawalnagar_tehsil_councils.find_by_title("Bahawalnagar")
tehsil_bahawalnagar_uc = ['UC 26 Kalia Stiah', 'UC 27 Qasim Ka', 'UC 28 Sanatteka', 'UC 29 Momin Abad', 'UC 30 Mari Mian Sahib', 
	'UC 31 Mosa Bhota', 'UC 32 Rojhan Wali', 'UC 33 Jhulan Arain', 'UC 34 Toba Qalandar Shah', 'UC 35 Muhammad Pur', 
	'UC 56 dot raten', 'UC 37 lslam Pura', 'UC 38 Malik Pura', 'UC 39 Sawai Wala', 'UC 40 Korian Wali', 'UC 41 Denan Wala', 
	'UC 42 Sonda', 'UC 43 Gulab Ali', 'UC 44 Tekoram Pura', 'UC 45 Bara Sajwar Khan', 'UC 46 Khatan', 'UC 47 Khetran Wala', 
	'UC 48 Natho Dhaka', 'UC 49 Jand Wala', 'UC 50 Kishan Garh', 'UC 51 Noor Sar', 'UC 52 Nathey Wala', 'UC 53 Mahar Wali', 
	'UC 54 Ganga Singh', 'UC 55 Rabnawaz Pura', 'UC 56 Kapuran', 'UC 57 Takht Mehal', 'UC 58 Chak Sadiq Nagar']

tehsil_bahawalnagar_uc.each do |bahawalnagar_unit_title|
	tehsil_bahawalnagar.units.create(unit_name: Unit.unit_names['union_council'], title: bahawalnagar_unit_title)
end

tehsil_chishtian = bahawalnagar_tehsil_councils.find_by_title("Chishtian")
tehsil_chishtian_uc = ['UC 59 Shalli Gharbi', 'UC 60 Dullah Bhadera', 'UC 61 Sheher Farid', 'UC 62 Sodha', 'UC 63 Mahar Sharif', 
	'UC 64 Jheduan', 'UC 65 Mahta Jhedu', 'UC 66 Qabool Fatani', 'UC 67 Mari Shauq Shah', 'UC 68 Chak No.4/G', 
	'UC 69 Chak No.3/FW', 'UC 70 Chak No.28/G', 'UC 71 Chak No.35/F', 'UC 72 Chak No.23/G', 'UC 73 Chak No.42/F', 
	'UC 74 Chak No.40/F', 'UC 75 Chak No.112/M', 'UC 76 Chak No.118/M', 'UC 77 Chak No.128/M', 'UC 78 Chak No.98/F', 
	'UC 79 Chak No.174/M', 'UC 80 Chak No.201/M', 'UC 81 Chak No.177/M', 'UC 82 Chak No.167/M', 'UC 83 Chak No.169/M', 
	'UC 84 Chak No.134/M', 'UC 85 Chak No.95/F', 'UC 86 Chak No.45/F', 'UC 87 Chak No.54/F', 'UC 88 Chak No.5/FW', 
	'UC 89 Chak No.9/FW', 'UC 90 Chak No.10/FW']

tehsil_chishtian_uc.each do |chishtian_unit_title|
	tehsil_chishtian.units.create(unit_name: Unit.unit_names['union_council'], title: chishtian_unit_title)
end

tehsil_haroon_abad = bahawalnagar_tehsil_councils.find_by_title("Haroon Abad")
tehsil_haroon_abad_uc = ['UC 91 Chak No.33/3R', 'UC 92 Chak No.42/3R', 'UC 93 Chak No.30/3R', 'UC 94 Chak No.23/3R', 
	'UC 95 Chak No.15/1.R', 'UC 96 Chak No.20/3R', 'UC 97 Chak No.58/4R', 'UC 98 Chak No. 62/4R', 'UC 99 Chak No.71/4R', 
	'UC 100 Chak No.86/5R', 'UC 101 Chak No.150/2L', 'UC 102 Chak No.152/2L', 'UC 103 Chak No.164/7R', 'UC 104 Chak No.98/6R', 
	'UC 105 Chak No.94/6R', 'UC 106 Chak No.101/6R', 'UC 107 Chak No.142/6R', 'UC 108 Faqir Wali-I', 'UC 109 Faqir Wali-II', 
	'UC 110 Chak No.133/6R', 'UC 111 Chak No.118/6R', 'UC 112 Chak No.109/sR', 'UC 113 Chak No.432/6R', 'UC 114 Chak No.29l6R', 
	'UC 115 Chak No.438/6R']

tehsil_haroon_abad_uc.each do |haroon_abad_unit_title|
	tehsil_haroon_abad.units.create(unit_name: Unit.unit_names['union_council'], title: haroon_abad_unit_title)
end

tehsil_faqirwali = bahawalnagar_tehsil_councils.find_by_title("Faqirwali")
tehsil_faqirwali_uc = ['UC 116 Chak No.330/HR', 'UC 117 Chak No.327/HR', 'UC 118 Chak No.318/HR', 'UC 119 Chak No.311/HR', 
	'UC 120 Chak No.304/HR', 'UC 121 Chak No.296/HR', 'UC 122 Chak No.281/HR', 'UC 123 Chak No.213/9R', 'UC 124 Chak No.226/9R', 
	'UC 125 Chak No.176/7R', 'UC 126 Chak No.185/7R', 'UC 127 Chak No.167/7R', 'UC 128 Chak No.187/7R', 'UC 129 Chak No.204/9R', 
	'UC 130 Chak No.199/8R', 'UC 131 Chak No.238/9R', 'UC 132 Chak No.209/9R', 'UC 133 Chak No.260/HR', 'UC 134 Chak No.264/HR', 
	'UC 135 Chak No.289/HR']

tehsil_faqirwali_uc.each do |faqirwali_unit_title|
	tehsil_faqirwali.units.create(unit_name: Unit.unit_names['union_council'], title: faqirwali_unit_title)
end

							"=========== District Bahawalpur ==========="

bahawalpur = districts.find_by_title('Bahawalpur')

bahawalpur_areas = [PunjabLocalGovernment.areas[:metropolitan_corporation] => ['UC 1 BWP City', 'UC 2 BWP City', 'UC 3 BWP City', 
	'UC 4 BWP City', 'UC 5 BWP City', 'UC 6 Mari Qasim Shah', 'UC 7 BWP City', 'UC 8 BWP City', 'UC 9 BWP City', 'UC 10 BWP City', 
	'UC 11 BWP City', 'UC 12 BWP City', 'UC 13 BWP City', 'UC 14 BWP City', 'UC 15 BWP City', 'UC 16 BWP City', 'UC 17 BWP City', 
	'UC 18 tBWP City', 'UC 19 BWP City', 'UC 20 Khanowali', 'UC 21 Raman'],
 PunjabLocalGovernment.areas[:tehsil_council] => ['Bahawalpur Saddar','Hasilpur', 'Khairpur Tamewali', 'Ahmadpur East', 'Yazman'],
 PunjabLocalGovernment.areas[:municipal_committee] => ['Hasilpur','Khairpur Tamewali', 'Yazman', 'Uch Sharif', 'Ahmedpur East'],
 PunjabLocalGovernment.areas[:town_committee] => ['Tibba Miani','Khanqa Sharif', 'Mubarikpur', 'Chanigoth', 'Qaimpur']]

bahawalpur_areas[0].each do |area_hash|
	area = area_hash[0]
	names = area_hash[1]
	names.each do |title|
		PunjabLocalGovernment.create(district_id: bahawalpur.id, area: area, title: title)		
	end
end

bahawalpur_tehsil_councils = bahawalpur.punjab_local_governments.tehsil_council

tehsil_bahawalpur_saddar = bahawalpur_tehsil_councils.find_by_title("Bahawalpur Saddar")
tehsil_bahawalpur_saddar_uc = ['UC 01 Sanjar', 'UC 02 Abbas Nagar', 'UC 03 Chak No. 38/BC', 'UC 04 Chak No. 4/BC', 'UC 05 Chak No. 12/BC', 
	'UC 06 Chak No. 24/BC', 'UC 07 Mari Sheikh Shajra', 'UC 10 Rukrani', 'UC 11 Jalalabad', 'UC 12 Miani', 'UC 13 Jamrani Kohna', 
	'UC 14 Jamal Channar', 'UC 15 Jindo Mission', 'UC 16 Goth Mehrab', 'UC 17 Wahi Hussain']

tehsil_bahawalpur_saddar_uc.each do |bahawalpur_saddar_unit_title|
	tehsil_bahawalpur_saddar.units.create(unit_name: Unit.unit_names['union_council'], title: bahawalpur_saddar_unit_title)
end

tehsil_hasilpur = bahawalpur_tehsil_councils.find_by_title("Hasilpur")
tehsil_hasilpur_uc = ['UC 18 Jamal pur', 'UC 19 Shahpur', 'UC 20 Qaimpur', 'UC 21 Khairo Ghazi Khanana', 'UC 22 Pallah', 'UC 23 Hasilpur Old', 
	'UC 24 Chak No.71/Fateh', 'UC 25 Chak No.79/Fateh', 'UC 26 Chak No.58/Fateh', 'UC 27 Chak No.89/Fateh', 'UC 28 Chak No.188/Murad', 
	'UC 29 Chak No.163/Murad', 'UC 30 Chak No.192/Murad']

tehsil_hasilpur_uc.each do |hasilpur_unit_title|
	tehsil_hasilpur.units.create(unit_name: Unit.unit_names['union_council'], title: hasilpur_unit_title)
end

tehsil_khairpur_tamewali = bahawalpur_tehsil_councils.find_by_title("Khairpur Tamewali")
tehsil_khairpur_tamewali_uc = ['UC 31 Guddan', 'UC 32 israni', 'UC 33 Behli', 'UC 34 Kotla Qaim Khans', 'UC 35 Syed Imam Shah', 'UC 36 Sheikh Wahin', 
	'UC 37 Karampur', 'UC 38 Inaity']

tehsil_khairpur_tamewali_uc.each do |khairpur_tamewali_unit_title|
	tehsil_khairpur_tamewali.units.create(unit_name: Unit.unit_names['union_council'], title: khairpur_tamewali_unit_title)
end

tehsil_ahmadpur_east = bahawalpur_tehsil_councils.find_by_title("Ahmadpur East")
tehsil_ahmadpur_east_uc = ['UC 39 Noshera Jadid', 'UC 40 Janowala', 'UC 41 Mubarak Pur', 'UC 42 Ali Kharak', 'UC 43 Mud Peer Wah', 'UC 44 Tibbi Izzatg', 
	'UC 45 Mehrab Wala', 'UC 46 Sukhai', 'UC 47 Sheikh Roshin', 'UC 46 Khuda Bakhsh Maher', 'UC 49 Mandhal', 'UC 50 Bahawalpur Gahlwan', 'UC 51 Hatheji', 
	'UC 52 Khairpur Daha', 'UC 53 Dhoor Kot', 'UC 54 Wahi Bahawal Shah', 'UC 55 Nonari', 'UC 56 Kotla Mousa Khan', 'UC 57 Ghaus Pur', 'UC 58 Uch Bukhar', 
	'UC 59 Uch Gillani', 'UC 60 Khuram Pur', 'UC 61 Kulab', 'UC 62 Channi Goth', 'UC 63 Rajar Hoo', 'UC 64 Mart', 'UC 65 Kot Khalifa', 'UC 66 Bun Wala', 
	'UC 67 Sadiq Abad', 'UC 68 Bukhtiari', 'UC 69 Chanab Rasoolpur']

tehsil_ahmadpur_east_uc.each do |ahmadpur_east_unit_title|
	tehsil_ahmadpur_east.units.create(unit_name: Unit.unit_names['union_council'], title: ahmadpur_east_unit_title)
end

tehsil_yazman = bahawalpur_tehsil_councils.find_by_title("Yazman")
tehsil_yazman_uc = ['UC 70 Chak No. 68/DB', 'UC 71 Chak No. 44/DB', 'UC 72 Chak No. 50/DB', 'UC 73 Chak No. 88/DB', 'UC 74 Chak No. 106/DB', 'UC 75 Chak No. 108/DB', 
	'UC 76 Chak No. 117/DB', 'UC 77 Chak No. 67/DB', 'UC 78 Chak No. 6/DNB', 'UC 79 Chak No. 17/DNB', 'UC 80 Chak No. 35/DNB', 'UC 81 Chak No. 36/DNB', 
	'UC 82 Chak No. 22/DNB', 'UC 83 Chak No. 44/DNB', 'UC 84 Chak No. 98/DNB', 'UC 85 Channan Peer', 'UC 86 Derawar', 'UC 87 Merana', 'UC 88 Chak No. 75/DB']

tehsil_yazman_uc.each do |yazman_unit_title|
	tehsil_yazman.units.create(unit_name: Unit.unit_names['union_council'], title: yazman_unit_title)
end

							"=========== District Bhakkar ==========="

bhakkar = districts.find_by_title('Bhakkar')

bhakkar_areas = [PunjabLocalGovernment.areas[:tehsil_council] => ['Bhakkar','Mankera', 'Kallur Kot', 'Darya Khan'],
 PunjabLocalGovernment.areas[:municipal_committee] => ['Bhakkar','Mankera', 'Kallur Kot', 'Darya Khan'],
 PunjabLocalGovernment.areas[:town_committee] => ['Dullewala','Jandanwala', 'Haiderabad', 'Kotla Jam']]

bhakkar_areas[0].each do |area_hash|
	area = area_hash[0]
	names = area_hash[1]
	names.each do |title|
		PunjabLocalGovernment.create(district_id: bhakkar.id, area: area, title: title)		
	end
end

bhakkar_tehsil_councils = bhakkar.punjab_local_governments.tehsil_council

tehsil_bhakkar = bhakkar_tehsil_councils.find_by_title("Bhakkar")
tehsil_bhakkar_uc = ['UC 1 Notak', 'UC 2 Khansar', 'UC 3 Pir Ashab', 'UC 4 Karari Kot', 'UC 5 183,184/TDA', 'UC 6 Daggar Rehtas', 
	'UC 7 Daggar Aulak', 'UC 8 Kotla Jam', 'UC 9 Gadola Daggar', 'UC 10 Dolat Wala', 'UC 11 Kachi Shahani', 'UC 12 Chak,60-61/TDA', 
	'UC 13 Chak,205/TDA', 'UC 14 Daggar Shada', 'UC 15 Dhandla', 'UC 16 Bait Boga', 'UC 17 Hammu Wala', 'UC 18 Chak,45/TDA', 
	'UC 19 Shahani', 'UC 20 Badiani', 'UC 21 Chak,57/TDA', 'UC 22 Mulan wali', 'UC 23 Sial', 'UC 24 Chak,78/ML', 'UC 25 Yousaf Shah', 
	'UC 26 Behal']

tehsil_bhakkar_uc.each do |bhakkar_unit_title|
	tehsil_bhakkar.units.create(unit_name: Unit.unit_names['union_council'], title: bhakkar_unit_title)
end

tehsil_mankera = bhakkar_tehsil_councils.find_by_title("Mankera")
tehsil_mankera_uc = ['UC 27 Karlu Wala', 'UC 28 Mahani', 'UC 29 Path Bulanda', 'UC 30 Mankera Rural', 'UC 31 Littan', 'UC 32 Darbulla', 
	'UC 33 Daggar Kotli', 'UC 34 Chak,67/ML', 'UC 35 Haider Abad', 'UC 36 Dhingana', 'UC 37 Gohar Wala']

tehsil_mankera_uc.each do |mankera_unit_title|
	tehsil_mankera.units.create(unit_name: Unit.unit_names['union_council'], title: mankera_unit_title)
end

tehsil_kallur_kot = bhakkar_tehsil_councils.find_by_title("Kallur Kot")
tehsil_kallur_kot_uc = ['UC 38 Noon Daggar', 'UC 39 Mabal Daggar', 'UC 40 Kalwal Daggar', 'UC 41 Kanjan Daggar', 'UC 42 Oailynmadar', 
	'UC 43 Noora Sharif', 'UC 44 Ali Khail', 'UC 45 Chak,63/DB', 'UC 46 Chak,40/ML', 'UC 47 Fazal', 'UC 48 Hattu', 'UC 49 Ghulaman-I', 
	'UC 50 Ghulaman-II']

tehsil_kallur_kot_uc.each do |kallur_kot_unit_title|
	tehsil_kallur_kot.units.create(unit_name: Unit.unit_names['union_council'], title: kallur_kot_unit_title)
end

tehsil_darya_khan = bhakkar_tehsil_councils.find_by_title("Darya Khan")
tehsil_darya_khan_uc = ['UC 51 Kohawar Klan Daggar', 'UC 52 Majoka', 'UC 53 Lak KaJJan', 'UC 54 Angara Daggar', 'UC 55 Punj Garain Daggar', 
	'UC 56 Punj Garain Nashaib', 'UC 57 Chak 6/TDA', 'UC 58 Daggar Qureshi', 'UC 59 Barkat Wala', 'UC 60 Gadai', 'UC 61 Branga', 
	'UC 62 Jhamat Shumali', 'UC 63 Daggar Wahgoran', 'UC 64 Dullewala Rural']

tehsil_darya_khan_uc.each do |darya_khan_unit_title|
	tehsil_darya_khan.units.create(unit_name: Unit.unit_names['union_council'], title: darya_khan_unit_title)
end

							"=========== District Chakwal ==========="

chakwal = districts.find_by_title('Chakwal')

chakwal_areas = [PunjabLocalGovernment.areas[:tehsil_council] => ['Chakwal','Choa Saidan Shah', 'Kallar Kahar', 'Talagang', 'Lawa'],
 PunjabLocalGovernment.areas[:municipal_committee] => ['Chakwal','Choa Saidan Shah', 'Kallar Kahar', 'Talagang', 'Lawa'],
 PunjabLocalGovernment.areas[:town_committee] => ['Bhoun','Dhudhiyal']]

chakwal_areas[0].each do |area_hash|
	area = area_hash[0]
	names = area_hash[1]
	names.each do |title|
		PunjabLocalGovernment.create(district_id: chakwal.id, area: area, title: title)		
	end
end

chakwal_tehsil_councils = chakwal.punjab_local_governments.tehsil_council

tehsil_chakwal = chakwal_tehsil_councils.find_by_title("Chakwal")
tehsil_chakwal_uc = ['UC 1 Thanil Kamal', 'UC 2 Mangwal', 'UC 03 Siral', 'UC 05 Padshan', 'UC 06 Jand', 'UC 07 Mogla', 'UC 08 Mulhal Mughlan', 
	'UC 09 Jand Khan Zada', 'UC 10 Dhuman', 'UC 11 Choa Ganj Ali Shah', 'UC 12 Khothian', 'UC 13 Jaswal', 'UC 14 Karyala', 'UC 15 Khai', 'UC 16 Dab', 
	'UC 17 Chak Malook', 'UC 18 Bheen', 'UC 19 Chak Umra', 'UC 20 Har Char Dhab', 'UC 21 Jabir Pur', 'UC 22 Odherwal', 'UC 23 Mureed', 'UC 24 Balokassar', 
	'UC 25 Maingan', 'UC 26 Balkassar', 'UC 27 Bekhari Kalan', 'UC 28 Karsal', 'UC 29 Kot Choudrian', 'UC 30 Begal', 'UC 31 Warwal', 'UC 32 Dhullah']

tehsil_chakwal_uc.each do |chakwal_unit_title|
	tehsil_chakwal.units.create(unit_name: Unit.unit_names['union_council'], title: chakwal_unit_title)
end

tehsil_choa_saidan_shah = chakwal_tehsil_councils.find_by_title("Choa Saidan Shah")
tehsil_choa_saidan_shah_uc = ['UC 34 Basharat', 'UC 35 Ara', 'UC 36 Saloi', 'UC 37 Dandot', 'UC 38 Dalwal', 'UC 39 Dulmial']

tehsil_choa_saidan_shah_uc.each do |choa_saidan_shah_unit_title|
	tehsil_choa_saidan_shah.units.create(unit_name: Unit.unit_names['union_council'], title: choa_saidan_shah_unit_title)
end

tehsil_kallar_kahar = chakwal_tehsil_councils.find_by_title("Kallar Kahar")
tehsil_kallar_kahar_uc = ['UC 40 Khairpur', 'UC 41 Buchal Khurd', 'UC 42 Miani', 'UC 43 Buchal Kalan', 'UC 44 Noorpur', 'UC 45 Munara', 'UC 46 Bharpur']

tehsil_kallar_kahar_uc.each do |kallar_kahar_unit_title|
	tehsil_kallar_kahar.units.create(unit_name: Unit.unit_names['union_council'], title: kallar_kahar_unit_title)
end

tehsil_talagang = chakwal_tehsil_councils.find_by_title("Talagang")
tehsil_talagang_uc = ['UC 47 Dhoular', 'UC 48 Kot Sarang', 'UC 49 Naraghee', 'UC 50 Jasial', 'UC 51 Tehi', 'UC 52 Nakkah Kahoot', 'UC 53 Malikwal', 
	'UC 54 Pira Fathial', 'UC 55 Jhatla', 'UC 56 Bhilomar', 'UC 57 Thoa Mahrm Khan', 'UC 58 Thoa Mahrm Khan II', 'UC 59 Saghar', 'UC 60 Bidher', 
	'UC 61 Dhairmond', 'UC 62 Tamman', 'UC 63 Multan Khurd', 'UC 64 Jabbi Shah Dilawar', 'UC 65 Budhial']

tehsil_talagang_uc.each do |talagang_unit_title|
	tehsil_talagang.units.create(unit_name: Unit.unit_names['union_council'], title: talagang_unit_title)
end

tehsil_lawa = chakwal_tehsil_councils.find_by_title("Lawa")
tehsil_lawa_uc = ['UC 66 Leti', 'UC 67 Dhurnal', 'UC 68 Kot Qazi', 'UC 69 Lawa Rural', 'UC 70 Pichnand', 'UC 71 Kot Gollah']

tehsil_lawa_uc.each do |lawa_unit_title|
	tehsil_lawa.units.create(unit_name: Unit.unit_names['union_council'], title: lawa_unit_title)
end

							"=========== District Chiniot ==========="

chiniot = districts.find_by_title('Chiniot')

chiniot_areas = [PunjabLocalGovernment.areas[:municipal_corporation] => ['chiniot'],
 PunjabLocalGovernment.areas[:tehsil_council] => ['Lalian','Chiniot', 'Bhowana'],
 PunjabLocalGovernment.areas[:municipal_committee] => ['Lalian','Bhowana', 'Chenab Nagar']]

chiniot_areas[0].each do |area_hash|
	area = area_hash[0]
	names = area_hash[1]
	names.each do |title|
		PunjabLocalGovernment.create(district_id: chiniot.id, area: area, title: title)		
	end
end

chiniot_tehsil_councils = chiniot.punjab_local_governments.tehsil_council

tehsil_lalian = chiniot_tehsil_councils.find_by_title("Lalian")
tehsil_lalian_uc = ['UC 1 Kandiwal', 'UC 2 Langar Makhdoom', 'UC 3 Bahiwal', 'UC 4 Hast Khewa', 'UC 5 Kanween Wala', 
	'UC 6 Ahmad Nagar', 'UC 7 Jabana', 'UC 8 Dawar', 'UC 9 Wallah', 'UC 10 Pir Panja', 'UC 11 Barana', 'UC 12 Kalri', 'UC 13 Kot Ameer']

tehsil_lalian_uc.each do |lalian_unit_title|
	tehsil_lalian.units.create(unit_name: Unit.unit_names['union_council'], title: lalian_unit_title)
end

tehsil_chiniot = chiniot_tehsil_councils.find_by_title("Chiniot")
tehsil_chiniot_uc = ['UC 14 Harsa Sheikh', 'UC 15 Chak No. 13/3B', 'UC 16 Jhanb', 'UC 17 Salaray', 'UC 18 Ahmad Abad', 
	'UC 19 Chak No.125/3B', 'UC 20 Mathroma', 'UC 21 Rajoya', 'UC 22 Chak No.128/JB', 'UC 23 Chak No.146/3B', 
	'UC 24 Chak No.140/3B', 'UC 25 Chak No. 153/3B']

tehsil_chiniot_uc.each do |chiniot_unit_title|
	tehsil_chiniot.units.create(unit_name: Unit.unit_names['union_council'], title: chiniot_unit_title)
end

tehsil_bhowana = chiniot_tehsil_councils.find_by_title("Bhowana")
tehsil_bhowana_uc = ['UC 26 Adlana', 'UC 27 Kurk Muhammadi', 'UC 28 Samandar', 'UC 29 Chak No. 158/3B', 'UC 30 Chak No.184/3B', 
	'UC 31 Chak No.200/JB', 'UC 32 Chak No. 208/3B', 'UC 33 Chak No.203/3B', 'UC 34 Chak No. 210/3B', 'UC 35 Chak No.241/3B', 
	'UC 36 Chak No.190/3B', 'UC 37 Chak No. 195/3B', 'UC 38 Mangini', 'UC 39 Thatha Muhammad Shah']

tehsil_bhowana_uc.each do |bhowana_unit_title|
	tehsil_bhowana.units.create(unit_name: Unit.unit_names['union_council'], title: bhowana_unit_title)
end

							"=========== District Dera Ghazi Khan ==========="

dg_khan = districts.find_by_title('Dera Ghazi Khan')

dg_khan_areas = [PunjabLocalGovernment.areas[:metropolitan_corporation] => ['UC 1 Nizam Abad', 'UC 2 Churratta Sindh Shumali', 
	'UC 3 Churratta Sindh Janubi', 'UC 4 Peer Oataf', 'UC 5 Pathar Bazar}', 'UC 6 Mehboob Abad', 'UC 7 Ghazi Park', 'UC 8 Gol Bagh Ghanta Ghar', 
	'UC 9 Old Ghala Mandi', 'UC 10 Fareed Abad', 'UC 11 Muslim Town / Shakìr Town', 'UC 12 Khayaban-e-sarwar', 'UC 13 Gadai Shumali', 
	'UC 14 Rukan Abad / shakoor Abad', 'UC 15 Gadai Gharbi', 'UC 16 Model Town', 'UC 17 Churratta Pachade Janubi'],
 PunjabLocalGovernment.areas[:tehsil_council] => ['Taunsa Sharif','DG Khan', 'Kot Chutta', 'Koh-e-Suleman', 'Yazman'],
 PunjabLocalGovernment.areas[:municipal_committee] => ['Taunsa Sharif','Kot Chutta'],
 PunjabLocalGovernment.areas[:town_committee] => ['Shadan Lund Pendings','Choti Zareen', 'Sakhi Sarwar', 'Vehova']]

dg_khan_areas[0].each do |area_hash|
	area = area_hash[0]
	names = area_hash[1]
	names.each do |title|
		PunjabLocalGovernment.create(district_id: dg_khan.id, area: area, title: title)		
	end
end

dg_khan_tehsil_councils = dg_khan.punjab_local_governments.tehsil_council

tehsil_taunsa_sharif = dg_khan_tehsil_councils.find_by_title("Taunsa Sharif")
tehsil_taunsa_sharif_uc = ['UC 1 Kotani', 'UC 2 Lakhani', 'UC 3 Jalu Wali', 'UC 4 Kalu wala', 'UC 5 Nuthani', 'UC 6 Panjgrain', 
	'UC 7 Babbi', 'UC 8 Morejhangi', 'UC 9 Tibbi Qaisrani', 'UC 10 Nari Janubi]', 'UC 11 Dana', 'UC 12 Bindi', 'UC 13 Makwal Kalan', 
	'UC 14 Chulani', 'UC 15 Pirdan Sharqi', 'UC 16 Bohar', 'UC 17 Sokar', 'UC 18 Basti Buzdar', 'UC 19 Mangrotha', 'UC 20 Kot Qaisrani', 
	'UC 21 Jhoke Bodo', 'UC 22 Litra', 'UC 23 Vehoa Chak Janubi', 'UC 24 Vehova Chak Shumali']

tehsil_taunsa_sharif_uc.each do |taunsa_sharif_unit_title|
	tehsil_taunsa_sharif.units.create(unit_name: Unit.unit_names['union_council'], title: taunsa_sharif_unit_title)
end

tehsil_dg_khan = dg_khan_tehsil_councils.find_by_title("DG Khan")
tehsil_dg_khan_uc = ['UC 25 Ahmdani', 'UC 26 Shadan Lound', 'UC 27 Basti Ranjha', 'UC 28 Mala', 'UC 29 Chak Ramin', 'UC 30 Shero Dasti', 
	'UC 31 S.S.Din', 'UC 32 Marhatta', 'UC 33 Pakki', 'UC 34 Peer Adil', 'UC 35 Bahadur Garh', 'UC 36 Safai', 'UC 37 Kof Mubarak', 'UC 38 Dhao', 
	'UC 38 Yaroo', 'UC 40 Chabri Zerien', 'UC 41 Ladan', 'UC 42 Chak Nao Abad', 'UC 43 Chabn Bala', 'UC 44 Wadoor-44', 'UC 45 Baila', 
	'UC 46 Gadai Gharbi', 'UC 47 Oagar Chit', 'UC 48 Basti Khosa', 'UC 48 Tibbi Kharak', 'UC 50 Kot Haibat', 'UC 54 Drahma', 'UC 52 Haji Ghazi', 
	'UC 53 Samina', 'UC 54 Sadra nachan', 'UC 55 Khakhi', 'UC 56 Gadai Sharqi', 'UC 57 Paigah Chak No.3', 'UC 58 Paigah Chak No.2', 'UC 59 Mamoori']

tehsil_dg_khan_uc.each do |dg_khan_unit_title|
	tehsil_dg_khan.units.create(unit_name: Unit.unit_names['union_council'], title: dg_khan_unit_title)
end

tehsil_kot_chutta = dg_khan_tehsil_councils.find_by_title("Kot Chutta")
tehsil_kot_chutta_uc = ['UC 60 Aali Wa]a', 'UC 61 Haider Qureshi', 'UC 62 Ghousa Abad-62', 'UC 63 Hazara-63', 'UC 64 Jhoke Utra', 'UC 65 KotlaAhmad Khan', 
'UC 66 Haji Kamand', 'UC 67 Bate bait Wala', 'UC 68 Jhakar Imam Shah', 'UC 69 Basli Malana', 'UC 70 Basti jam', 'UC 71 Jalbani', 'UC 72 Notak Mehmeed', 
'UC 73 Aara Jafer', 'UC 74 Mana Ahmedani', 'UC 75 Basti Fauja-75', 'UC 76 Khanpur Janoubi', 'UC 77 Mutafariq Chohan', 'UC 78 Thatha Gobalan', 'UC 79 Chati Zerin', 
'UC 80 Nawan Janubi', 'UC 81 Darkhast Jamal Than Janubi', 'UC 82 Darkhast Jamal Khan Dermiani', 'UC 83 Darkhast Jamal Khan Gharbi', 'UC 84 Bakhar Wah', 
'UC 85 Choti Bala-85', 'UC 86 Chak Dodara', 'UC 87 Nawan Shumali', 'UC 88 Sakhi Sarwar Sharqi', 'UC 88 Sakhi Sarwar Gharbi']

tehsil_kot_chutta_uc.each do |kot_chutta_unit_title|
	tehsil_kot_chutta.units.create(unit_name: Unit.unit_names['union_council'], title: kot_chutta_unit_title)
end

tehsil_koh_e_suleman = dg_khan_tehsil_councils.find_by_title("Koh-e-Suleman")
tehsil_koh_e_suleman_uc = ['UC 90 Mithwan', 'UC 91 Bairoot Mundwani', 'UC 92 Fazla Katch', 'UC 93 Barthi', 'UC 94 Theekar', 'UC 95 Mubarki', 
	'UC 86 Tuman Khosa', 'UC 97 Tuman Leghari Zareen', 'UC 98 Tuman Leghari Bala']

tehsil_koh_e_suleman_uc.each do |koh_e_suleman_unit_title|
	tehsil_koh_e_suleman.units.create(unit_name: Unit.unit_names['union_council'], title: koh_e_suleman_unit_title)
end