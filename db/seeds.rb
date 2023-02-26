# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


fedral = Province.find_or_create_by(title: "Fedral")

districts = ['Islamabad']

districts.each do |district|
	District.create(province_id: fedral.id, title: district)
end

districts = fedral.districts

							"=========== District Attock ==========="

islamabad = districts.find_by_title('Islamabad')

local_g_structure = LocalGovernmentStructure.find_or_create_by(district_id: islamabad.id, area: 'metropolitan_corporation', title: 'Islamabad Metropolitan Corporation')		





islamabad_ucs = ['UC-1 Saidpur, Talhar, Gokina and Sector E-7 (Faisal Mosque)',
'UC-2 Sector F-7, Sector F-8',
'UC-3 Sector F-6 (Blue Area)',
'UC-4 Sector F-5 (Parliament, Prime Minster House, Pak Secretariat), Muslim Colony',
'UC-5 Noor Pur Shahaan',
'UC-6 Maira Malpur, Shahdra, Mandla',
'UC-7 Kot Hathial, Bhara Kau',
'UC-8 Kot Hathial Shumali, Bhara Kau',
'UC-9 Kot Hathial, Bhara Kau',
'UC-10 Kot Hathial, Bhara Kau',
'UC-11 Kot Hathial, Bhara Kau',
'UC-12 Kot Hathial, Mohra Noor',
'UC-13 Mohra Noor (Bani Gala)',
'UC-14 Phulgran, Shahpur',
'UC-15 Phulgran, Bobrai',
'UC-16 Athal, Maira Begwal, Pind Begwal, Jandala',
'UC-17 Jandala, Sihali',
'UC-18 Jagiot, Kuri, Malot, Darkala Khord, Tumair, Simbli Dam, CDA Colony, Kijnah',
'UC-19 Nilore, Herno Thanda Pani, Farash Town',
'UC-20 Chirah, Della',
'UC-21 Jhang Syedan, Jirpa',
'UC-22 Bhimber Tara, Gohra Mast, Pind Malkan, Pindori Syedan, Peija, Darwala',
'UC-23 Herdogher, Nara Syedan, PTCSihala, Hoon Dhamial',
'UC-24 Rawat, Banni Saran',
'UC-25 Bahria Town Phase 7, Humak, Bhangril Khurd',
'UC-26 Sihala, DHA Phase 5',
'UC-27 DHA Phase 2, Model Town',
'UC-28 Humak, Model Town',
'UC-29 Bahria Town Phase 5, Bahria Town Phase 6, Bahria Town Phase 7, Mohra Nagial, Sawan Camp',
'UC-30 Bahria Town Phase 1, Bahria Town Phase 2, Bahria Town Phase 3, Bahria Town Phase 4',
'UC-31 Media Town, Police Foundation Housing Scheme, Rakh Lohi Bhair, CBR Town',
'UC-32 Sowan Garden, River Garden',
'UC-33 PWD Colony, Awan Town',
'UC-34 Pakistan Town, Lohi Bger, Jinnah Garden, Korang Town',
'UC-35 Bhokar, Boora Bangial, Gagri, Gangota Syedan',
'UC-36 Koral, Gulberg Green',
'UC-37 Ghauri Town, Koral',
'UC-38 Khana Daak',
'UC-39 Tarlai Khurd, Ghauri Town, Dhoke Laal',
'UC-40 Tarlai Khord, Sodhran, Sharif Abad, Madina Town',
'UC-41 Tarlai Kalan, Junejo Town',
'UC-42 Khadrappar, Tarlai Kalan, Irfan Abad',
'UC-43 Mujohan, Alipur',
'UC-44 Panjgran, Partal',
'UC-45 Farash Town, Alipur',
'UC-46 Mohrian, Jabbi, Tamman',
'UC-47 Chatha Bakhtawar, Chappar Mir',
'UC-48 Chak Shahzad, Tarlai Kalan, Mohra Noor',
'UC-49 Khana Daak, Madia Town, Bilal Town',
'UC-50 Khana Daak, Tauheed Colony, Khokhar Town',
'UC-51 Khana Daak, Bilal Town, Garden Town',
'UC-52 Shakrial Sharqi, New Shakrial',
'UC-53 Jaba Taili, Ashraf Town Pindorian',

'UC-54 New Sohan, New Iqbal Town, Pindorian',
'UC-55 Sohan Dehati',
'UC-56 Sohan',
'UC-57 Margallah Town, Rawal Town',
'UC-58 Sector G-6/2, Sector G-6/3, Sector G-6/4',
'UC-59 Sector G-6/1',
'UC-60 Sector G-7/3',
'UC-61 Sector G-7/1, Sector G-7/4',
'UC-62 Sector G-7/2',
'UC-63 Sector G-8/2, Sector G-8/3, Sector G-8/4',
'UC-64 Sector G-8/1, Sector G-8/2',
'UC-65 Sector G-9/3, Sector G-9/4',
'UC-66 Sector G-9/2',
'UC-67 Sector G-9/1, Sector G-9/2',
'UC-68 Sector H-9, Sector H-9, Sector I-8/2',
'UC-69 Sector I-8/1, Sector I-8/3, Sector I-8/4',
'UC-70 Sector I-9/1, Sector I-9/2, Sector I-9/4',
'UC-71 Sector I-10/4',
'UC-72 Sector I-10/1',
'UC-73 Sector I-10/2',
'UC-74 Sector H-10, Sector I-11',
'UC-75 Sector G-10/1, Sector G-10/4',
'UC-76 Sector G-10/2, Sector G-10/3',
'UC-77 Sector G-11/2, Sector G-11/3',
'UC-78 Sector G-11/1, Sector G-11/4',
'UC-79 Badia Rustam Khan, Badia Qadir Bakhsh, Sector G-12',
'UC-80 Sector H-12, Sector H-13, Sector H/14, Dhoke Sulman',
'UC-81 Sector G-13, Sector G-14/4',
'UC-82 Sector F-12, Sector G-12, Maira Akku',
'UC-83 Sector G-14, Sector G-15, Pind Paracha',
'UC-84 Sector G-15, Jhangi Syedan',
'UC-85 Sector H-15',
'UC-86 Shaikh Pur, Sector I-14',
'UC-87 Sector G-16, Naugazi, Bhadaba Kalan, Noon',
'UC-88 Pind Parian, Doora',
'UC-89 Sarai Kharbooza, Tarnol, Pind Parian',
'UC-90 Sang Jani, Multi Garden Housing Society, Sarai Mado',
'UC-91 Sarai Kharbooza, Sector D-15',
'UC-92 Sarai Kharbooza, Sector D-15, Sector E-14',
'UC-93 Shah Allah Ditta, Pind Sangrial, Sari Saral',
'UC-94 Sector F-11/3, Sector E-11/4, Sector F-12, Golra Sharif',
'UC-95 Dharak Mohri, Sector F-12',
'UC-96 Sector G-12, Mera Sumbal Jaffar',
'UC-97 Sector F-11',
'UC-98 Sector E-11',
'UC-99 Sector E-9, Sector F-10',
'UC-100 Sector E-8, Sector E-9',
'UC-101 Sector D-11, Mera Beri, Sector E-9/2, Sector E-8/2, Naval Colony']
islamabad_ucs.each do |uc|
	Unit.find_or_create_by(unit_name: Unit.unit_names[:union_council], title: uc, local_government_structure_id: local_g_structure.id)
end
