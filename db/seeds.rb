# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

countries = Country.create([
  { name: "Afghanistan", alpha_2_code: "AF", alpha_3_code: "AFG", numeric_code: "004", status: 1 },
  { name: "Aland Islands", alpha_2_code: "AX", alpha_3_code: "ALA", numeric_code: "248", status: 1 },
  { name: "Albania", alpha_2_code: "AL", alpha_3_code: "ALB", numeric_code: "008", status: 1 },
  { name: "Algeria", alpha_2_code: "DZ", alpha_3_code: "DZA", numeric_code: "012", status: 1 },
  { name: "American Samoa", alpha_2_code: "AS", alpha_3_code: "ASM", numeric_code: "016", status: 1 },
  { name: "Andorra", alpha_2_code: "AD", alpha_3_code: "AND", numeric_code: "020", status: 1 },
  { name: "Angola", alpha_2_code: "AO", alpha_3_code: "AGO", numeric_code: "024", status: 1 },
  { name: "Anguilla", alpha_2_code: "AI", alpha_3_code: "AIA", numeric_code: "660", status: 1 },
  { name: "Antarctica", alpha_2_code: "AQ", alpha_3_code: "ATA", numeric_code: "010", status: 1 },
  { name: "Antigua and Barbuda", alpha_2_code: "AG", alpha_3_code: "ATG", numeric_code: "028", status: 1 },
  { name: "Argentina", alpha_2_code: "AR", alpha_3_code: "ARG", numeric_code: "032", status: 1 },
  { name: "Armenia", alpha_2_code: "AM", alpha_3_code: "ARM", numeric_code: "051", status: 1 },
  { name: "Aruba", alpha_2_code: "AW", alpha_3_code: "ABW", numeric_code: "533", status: 1 },
  { name: "Australia", alpha_2_code: "AU", alpha_3_code: "AUS", numeric_code: "036", status: 1 },
  { name: "Austria", alpha_2_code: "AT", alpha_3_code: "AUT", numeric_code: "040", status: 1 },
  { name: "Azerbaijan", alpha_2_code: "AZ", alpha_3_code: "AZE", numeric_code: "031", status: 1 },
  { name: "Bahamas", alpha_2_code: "BS", alpha_3_code: "BHS", numeric_code: "044", status: 1 },
  { name: "Bahrain", alpha_2_code: "BH", alpha_3_code: "BHR", numeric_code: "048", status: 1 },
  { name: "Bangladesh", alpha_2_code: "BD", alpha_3_code: "BGD", numeric_code: "050", status: 1 },
  { name: "Barbados", alpha_2_code: "BB", alpha_3_code: "BRB", numeric_code: "052", status: 1 },
  { name: "Belarus", alpha_2_code: "BY", alpha_3_code: "BLR", numeric_code: "112", status: 1 },
  { name: "Belgium", alpha_2_code: "BE", alpha_3_code: "BEL", numeric_code: "056", status: 1 },
  { name: "Belize", alpha_2_code: "BZ", alpha_3_code: "BLZ", numeric_code: "084", status: 1 },
  { name: "Benin", alpha_2_code: "BJ", alpha_3_code: "BEN", numeric_code: "204", status: 1 },
  { name: "Bermuda", alpha_2_code: "BM", alpha_3_code: "BMU", numeric_code: "060", status: 1 },
  { name: "Bhutan", alpha_2_code: "BT", alpha_3_code: "BTN", numeric_code: "064", status: 1 },
  { name: "Bolivia", alpha_2_code: "BO", alpha_3_code: "BOL", numeric_code: "068", status: 1 },
  { name: "Bosnia and Herzegovina", alpha_2_code: "BA", alpha_3_code: "BIH", numeric_code: "070", status: 1 },
  { name: "Botswana", alpha_2_code: "BW", alpha_3_code: "BWA", numeric_code: "072", status: 1 },
  { name: "Bouvet Island", alpha_2_code: "BV", alpha_3_code: "BVT", numeric_code: "074", status: 1 },
  { name: "Brazil", alpha_2_code: "BR", alpha_3_code: "BRA", numeric_code: "076", status: 1 },
  { name: "British Virgin Islands", alpha_2_code: "VG", alpha_3_code: "VGB", numeric_code: "092", status: 1 },
  { name: "British Indian Ocean Territory", alpha_2_code: "IO", alpha_3_code: "IOT", numeric_code: "086", status: 1 },
  { name: "Brunei Darussalam", alpha_2_code: "BN", alpha_3_code: "BRN", numeric_code: "096", status: 1 },
  { name: "Bulgaria", alpha_2_code: "BG", alpha_3_code: "BGR", numeric_code: "100", status: 1 },
  { name: "Burkina Faso", alpha_2_code: "BF", alpha_3_code: "BFA", numeric_code: "854", status: 1 },
  { name: "Burundi", alpha_2_code: "BI", alpha_3_code: "BDI", numeric_code: "108", status: 1 },
  { name: "Cambodia", alpha_2_code: "KH", alpha_3_code: "KHM", numeric_code: "116", status: 1 },
  { name: "Cameroon", alpha_2_code: "CM", alpha_3_code: "CMR", numeric_code: "120", status: 1 },
  { name: "Canada", alpha_2_code: "CA", alpha_3_code: "CAN", numeric_code: "124", status: 1 },
  { name: "Cape Verde", alpha_2_code: "CV", alpha_3_code: "CPV", numeric_code: "132", status: 1 },
  { name: "Cayman Islands", alpha_2_code: "KY", alpha_3_code: "CYM", numeric_code: "136", status: 1 },
  { name: "Central African Republic", alpha_2_code: "CF", alpha_3_code: "CAF", numeric_code: "140", status: 1 },
  { name: "Chad", alpha_2_code: "TD", alpha_3_code: "TCD", numeric_code: "148", status: 1 },
  { name: "Chile", alpha_2_code: "CL", alpha_3_code: "CHL", numeric_code: "152", status: 1 },
  { name: "China", alpha_2_code: "CN", alpha_3_code: "CHN", numeric_code: "156", status: 1 },
  { name: "Hong Kong, SAR China", alpha_2_code: "HK", alpha_3_code: "HKG", numeric_code: "344", status: 1 },
  { name: "Macao, SAR China", alpha_2_code: "MO", alpha_3_code: "MAC", numeric_code: "446", status: 1 },
  { name: "Christmas Island", alpha_2_code: "CX", alpha_3_code: "CXR", numeric_code: "162", status: 1 },
  { name: "Cocos (Keeling) Islands", alpha_2_code: "CC", alpha_3_code: "CCK", numeric_code: "166", status: 1 },
  { name: "Colombia", alpha_2_code: "CO", alpha_3_code: "COL", numeric_code: "170", status: 1 },
  { name: "Comoros", alpha_2_code: "KM", alpha_3_code: "COM", numeric_code: "174", status: 1 },
  { name: "Congo (Brazzaville)", alpha_2_code: "CG", alpha_3_code: "COG", numeric_code: "178", status: 1 },
  { name: "Congo, (Kinshasa)", alpha_2_code: "CD", alpha_3_code: "COD", numeric_code: "180", status: 1 },
  { name: "Cook Islands", alpha_2_code: "CK", alpha_3_code: "COK", numeric_code: "184", status: 1 },
  { name: "Costa Rica", alpha_2_code: "CR", alpha_3_code: "CRI", numeric_code: "188", status: 1 },
  { name: "Côte d'Ivoire", alpha_2_code: "CI", alpha_3_code: "CIV", numeric_code: "384", status: 1 },
  { name: "Croatia", alpha_2_code: "HR", alpha_3_code: "HRV", numeric_code: "191", status: 1 },
  { name: "Cuba", alpha_2_code: "CU", alpha_3_code: "CUB", numeric_code: "192", status: 1 },
  { name: "Cyprus", alpha_2_code: "CY", alpha_3_code: "CYP", numeric_code: "196", status: 1 },
  { name: "Czech Republic", alpha_2_code: "CZ", alpha_3_code: "CZE", numeric_code: "203", status: 1 },
  { name: "Denmark", alpha_2_code: "DK", alpha_3_code: "DNK", numeric_code: "208", status: 1 },
  { name: "Djibouti", alpha_2_code: "DJ", alpha_3_code: "DJI", numeric_code: "262", status: 1 },
  { name: "Dominica", alpha_2_code: "DM", alpha_3_code: "DMA", numeric_code: "212", status: 1 },
  { name: "Dominican Republic", alpha_2_code: "DO", alpha_3_code: "DOM", numeric_code: "214", status: 1 },
  { name: "Ecuador", alpha_2_code: "EC", alpha_3_code: "ECU", numeric_code: "218", status: 1 },
  { name: "Egypt", alpha_2_code: "EG", alpha_3_code: "EGY", numeric_code: "818", status: 1 },
  { name: "El Salvador", alpha_2_code: "SV", alpha_3_code: "SLV", numeric_code: "222", status: 1 },
  { name: "Equatorial Guinea", alpha_2_code: "GQ", alpha_3_code: "GNQ", numeric_code: "226", status: 1 },
  { name: "Eritrea", alpha_2_code: "ER", alpha_3_code: "ERI", numeric_code: "232", status: 1 },
  { name: "Estonia", alpha_2_code: "EE", alpha_3_code: "EST", numeric_code: "233", status: 1 },
  { name: "Ethiopia", alpha_2_code: "ET", alpha_3_code: "ETH", numeric_code: "231", status: 1 },
  { name: "Falkland Islands (Malvinas)", alpha_2_code: "FK", alpha_3_code: "FLK", numeric_code: "238", status: 1 },
  { name: "Faroe Islands", alpha_2_code: "FO", alpha_3_code: "FRO", numeric_code: "234", status: 1 },
  { name: "Fiji", alpha_2_code: "FJ", alpha_3_code: "FJI", numeric_code: "242", status: 1 },
  { name: "Finland", alpha_2_code: "FI", alpha_3_code: "FIN", numeric_code: "246", status: 1 },
  { name: "France", alpha_2_code: "FR", alpha_3_code: "FRA", numeric_code: "250", status: 1 },
  { name: "French Guiana", alpha_2_code: "GF", alpha_3_code: "GUF", numeric_code: "254", status: 1 },
  { name: "French Polynesia", alpha_2_code: "PF", alpha_3_code: "PYF", numeric_code: "258", status: 1 },
  { name: "French Southern Territories", alpha_2_code: "TF", alpha_3_code: "ATF", numeric_code: "260", status: 1 },
  { name: "Gabon", alpha_2_code: "GA", alpha_3_code: "GAB", numeric_code: "266", status: 1 },
  { name: "Gambia", alpha_2_code: "GM", alpha_3_code: "GMB", numeric_code: "270", status: 1 },
  { name: "Georgia", alpha_2_code: "GE", alpha_3_code: "GEO", numeric_code: "268", status: 1 },
  { name: "Germany", alpha_2_code: "DE", alpha_3_code: "DEU", numeric_code: "276", status: 1 },
  { name: "Ghana", alpha_2_code: "GH", alpha_3_code: "GHA", numeric_code: "288", status: 1 },
  { name: "Gibraltar", alpha_2_code: "GI", alpha_3_code: "GIB", numeric_code: "292", status: 1 },
  { name: "Greece", alpha_2_code: "GR", alpha_3_code: "GRC", numeric_code: "300", status: 1 },
  { name: "Greenland", alpha_2_code: "GL", alpha_3_code: "GRL", numeric_code: "304", status: 1 },
  { name: "Grenada", alpha_2_code: "GD", alpha_3_code: "GRD", numeric_code: "308", status: 1 },
  { name: "Guadeloupe", alpha_2_code: "GP", alpha_3_code: "GLP", numeric_code: "312", status: 1 },
  { name: "Guam", alpha_2_code: "GU", alpha_3_code: "GUM", numeric_code: "316", status: 1 },
  { name: "Guatemala", alpha_2_code: "GT", alpha_3_code: "GTM", numeric_code: "320", status: 1 },
  { name: "Guernsey", alpha_2_code: "GG", alpha_3_code: "GGY", numeric_code: "831", status: 1 },
  { name: "Guinea", alpha_2_code: "GN", alpha_3_code: "GIN", numeric_code: "324", status: 1 },
  { name: "Guinea-Bissau", alpha_2_code: "GW", alpha_3_code: "GNB", numeric_code: "624", status: 1 },
  { name: "Guyana", alpha_2_code: "GY", alpha_3_code: "GUY", numeric_code: "328", status: 1 },
  { name: "Haiti", alpha_2_code: "HT", alpha_3_code: "HTI", numeric_code: "332", status: 1 },
  { name: "Heard and Mcdonald Islands", alpha_2_code: "HM", alpha_3_code: "HMD", numeric_code: "334", status: 1 },
  { name: "Holy See (Vatican City State)", alpha_2_code: "VA", alpha_3_code: "VAT", numeric_code: "336", status: 1 },
  { name: "Honduras", alpha_2_code: "HN", alpha_3_code: "HND", numeric_code: "340", status: 1 },
  { name: "Hungary", alpha_2_code: "HU", alpha_3_code: "HUN", numeric_code: "348", status: 1 },
  { name: "Iceland", alpha_2_code: "IS", alpha_3_code: "ISL", numeric_code: "352", status: 1 },
  { name: "India", alpha_2_code: "IN", alpha_3_code: "IND", numeric_code: "356", status: 1 },
  { name: "Indonesia", alpha_2_code: "ID", alpha_3_code: "IDN", numeric_code: "360", status: 1 },
  { name: "Iran, Islamic Republic of", alpha_2_code: "IR", alpha_3_code: "IRN", numeric_code: "364", status: 1 },
  { name: "Iraq", alpha_2_code: "IQ", alpha_3_code: "IRQ", numeric_code: "368", status: 1 },
  { name: "Ireland", alpha_2_code: "IE", alpha_3_code: "IRL", numeric_code: "372", status: 1 },
  { name: "Isle of Man", alpha_2_code: "IM", alpha_3_code: "IMN", numeric_code: "833", status: 1 },
  { name: "Israel", alpha_2_code: "IL", alpha_3_code: "ISR", numeric_code: "376", status: 1 },
  { name: "Italy", alpha_2_code: "IT", alpha_3_code: "ITA", numeric_code: "380", status: 1 },
  { name: "Jamaica", alpha_2_code: "JM", alpha_3_code: "JAM", numeric_code: "388", status: 1 },
  { name: "Japan", alpha_2_code: "JP", alpha_3_code: "JPN", numeric_code: "392", status: 1 },
  { name: "Jersey", alpha_2_code: "JE", alpha_3_code: "JEY", numeric_code: "832", status: 1 },
  { name: "Jordan", alpha_2_code: "JO", alpha_3_code: "JOR", numeric_code: "400", status: 1 },
  { name: "Kazakhstan", alpha_2_code: "KZ", alpha_3_code: "KAZ", numeric_code: "398", status: 1 },
  { name: "Kenya", alpha_2_code: "KE", alpha_3_code: "KEN", numeric_code: "404", status: 1 },
  { name: "Kiribati", alpha_2_code: "KI", alpha_3_code: "KIR", numeric_code: "296", status: 1 },
  { name: "Korea (North)", alpha_2_code: "KP", alpha_3_code: "PRK", numeric_code: "408", status: 1 },
  { name: "Korea (South)", alpha_2_code: "KR", alpha_3_code: "KOR", numeric_code: "410", status: 1 },
  { name: "Kuwait", alpha_2_code: "KW", alpha_3_code: "KWT", numeric_code: "414", status: 1 },
  { name: "Kyrgyzstan", alpha_2_code: "KG", alpha_3_code: "KGZ", numeric_code: "417", status: 1 },
  { name: "Lao PDR", alpha_2_code: "LA", alpha_3_code: "LAO", numeric_code: "418", status: 1 },
  { name: "Latvia", alpha_2_code: "LV", alpha_3_code: "LVA", numeric_code: "428", status: 1 },
  { name: "Lebanon", alpha_2_code: "LB", alpha_3_code: "LBN", numeric_code: "422", status: 1 },
  { name: "Lesotho", alpha_2_code: "LS", alpha_3_code: "LSO", numeric_code: "426", status: 1 },
  { name: "Liberia", alpha_2_code: "LR", alpha_3_code: "LBR", numeric_code: "430", status: 1 },
  { name: "Libya", alpha_2_code: "LY", alpha_3_code: "LBY", numeric_code: "434", status: 1 },
  { name: "Liechtenstein", alpha_2_code: "LI", alpha_3_code: "LIE", numeric_code: "438", status: 1 },
  { name: "Lithuania", alpha_2_code: "LT", alpha_3_code: "LTU", numeric_code: "440", status: 1 },
  { name: "Luxembourg", alpha_2_code: "LU", alpha_3_code: "LUX", numeric_code: "442", status: 1 },
  { name: "Macedonia, Republic of", alpha_2_code: "MK", alpha_3_code: "MKD", numeric_code: "807", status: 1 },
  { name: "Madagascar", alpha_2_code: "MG", alpha_3_code: "MDG", numeric_code: "450", status: 1 },
  { name: "Malawi", alpha_2_code: "MW", alpha_3_code: "MWI", numeric_code: "454", status: 1 },
  { name: "Malaysia", alpha_2_code: "MY", alpha_3_code: "MYS", numeric_code: "458", status: 1 },
  { name: "Maldives", alpha_2_code: "MV", alpha_3_code: "MDV", numeric_code: "462", status: 1 },
  { name: "Mali", alpha_2_code: "ML", alpha_3_code: "MLI", numeric_code: "466", status: 1 },
  { name: "Malta", alpha_2_code: "MT", alpha_3_code: "MLT", numeric_code: "470", status: 1 },
  { name: "Marshall Islands", alpha_2_code: "MH", alpha_3_code: "MHL", numeric_code: "584", status: 1 },
  { name: "Martinique", alpha_2_code: "MQ", alpha_3_code: "MTQ", numeric_code: "474", status: 1 },
  { name: "Mauritania", alpha_2_code: "MR", alpha_3_code: "MRT", numeric_code: "478", status: 1 },
  { name: "Mauritius", alpha_2_code: "MU", alpha_3_code: "MUS", numeric_code: "480", status: 1 },
  { name: "Mayotte", alpha_2_code: "YT", alpha_3_code: "MYT", numeric_code: "175", status: 1 },
  { name: "Mexico", alpha_2_code: "MX", alpha_3_code: "MEX", numeric_code: "484", status: 1 },
  { name: "Micronesia, Federated States of", alpha_2_code: "FM", alpha_3_code: "FSM", numeric_code: "583", status: 1 },
  { name: "Moldova", alpha_2_code: "MD", alpha_3_code: "MDA", numeric_code: "498", status: 1 },
  { name: "Monaco", alpha_2_code: "MC", alpha_3_code: "MCO", numeric_code: "492", status: 1 },
  { name: "Mongolia", alpha_2_code: "MN", alpha_3_code: "MNG", numeric_code: "496", status: 1 },
  { name: "Montenegro", alpha_2_code: "ME", alpha_3_code: "MNE", numeric_code: "499", status: 1 },
  { name: "Montserrat", alpha_2_code: "MS", alpha_3_code: "MSR", numeric_code: "500", status: 1 },
  { name: "Morocco", alpha_2_code: "MA", alpha_3_code: "MAR", numeric_code: "504", status: 1 },
  { name: "Mozambique", alpha_2_code: "MZ", alpha_3_code: "MOZ", numeric_code: "508", status: 1 },
  { name: "Myanmar", alpha_2_code: "MM", alpha_3_code: "MMR", numeric_code: "104", status: 1 },
  { name: "Namibia", alpha_2_code: "NA", alpha_3_code: "NAM", numeric_code: "516", status: 1 },
  { name: "Nauru", alpha_2_code: "NR", alpha_3_code: "NRU", numeric_code: "520", status: 1 },
  { name: "Nepal", alpha_2_code: "NP", alpha_3_code: "NPL", numeric_code: "524", status: 1 },
  { name: "Netherlands", alpha_2_code: "NL", alpha_3_code: "NLD", numeric_code: "528", status: 1 },
  { name: "Netherlands Antilles", alpha_2_code: "AN", alpha_3_code: "ANT", numeric_code: "530", status: 1 },
  { name: "New Caledonia", alpha_2_code: "NC", alpha_3_code: "NCL", numeric_code: "540", status: 1 },
  { name: "New Zealand", alpha_2_code: "NZ", alpha_3_code: "NZL", numeric_code: "554", status: 1 },
  { name: "Nicaragua", alpha_2_code: "NI", alpha_3_code: "NIC", numeric_code: "558", status: 1 },
  { name: "Niger", alpha_2_code: "NE", alpha_3_code: "NER", numeric_code: "562", status: 1 },
  { name: "Nigeria", alpha_2_code: "NG", alpha_3_code: "NGA", numeric_code: "566", status: 1 },
  { name: "Niue", alpha_2_code: "NU", alpha_3_code: "NIU", numeric_code: "570", status: 1 },
  { name: "Norfolk Island", alpha_2_code: "NF", alpha_3_code: "NFK", numeric_code: "574", status: 1 },
  { name: "Northern Mariana Islands", alpha_2_code: "MP", alpha_3_code: "MNP", numeric_code: "580", status: 1 },
  { name: "Norway", alpha_2_code: "NO", alpha_3_code: "NOR", numeric_code: "578", status: 1 },
  { name: "Oman", alpha_2_code: "OM", alpha_3_code: "OMN", numeric_code: "512", status: 1 },
  { name: "Pakistan", alpha_2_code: "PK", alpha_3_code: "PAK", numeric_code: "586", status: 1 },
  { name: "Palau", alpha_2_code: "PW", alpha_3_code: "PLW", numeric_code: "585", status: 1 },
  { name: "Palestinian Territory", alpha_2_code: "PS", alpha_3_code: "PSE", numeric_code: "275", status: 1 },
  { name: "Panama", alpha_2_code: "PA", alpha_3_code: "PAN", numeric_code: "591", status: 1 },
  { name: "Papua New Guinea", alpha_2_code: "PG", alpha_3_code: "PNG", numeric_code: "598", status: 1 },
  { name: "Paraguay", alpha_2_code: "PY", alpha_3_code: "PRY", numeric_code: "600", status: 1 },
  { name: "Peru", alpha_2_code: "PE", alpha_3_code: "PER", numeric_code: "604", status: 1 },
  { name: "Philippines", alpha_2_code: "PH", alpha_3_code: "PHL", numeric_code: "608", status: 1 },
  { name: "Pitcairn", alpha_2_code: "PN", alpha_3_code: "PCN", numeric_code: "612", status: 1 },
  { name: "Poland", alpha_2_code: "PL", alpha_3_code: "POL", numeric_code: "616", status: 1 },
  { name: "Portugal", alpha_2_code: "PT", alpha_3_code: "PRT", numeric_code: "620", status: 1 },
  { name: "Puerto Rico", alpha_2_code: "PR", alpha_3_code: "PRI", numeric_code: "630", status: 1 },
  { name: "Qatar", alpha_2_code: "QA", alpha_3_code: "QAT", numeric_code: "634", status: 1 },
  { name: "Réunion", alpha_2_code: "RE", alpha_3_code: "REU", numeric_code: "638", status: 1 },
  { name: "Romania", alpha_2_code: "RO", alpha_3_code: "ROU", numeric_code: "642", status: 1 },
  { name: "Russian Federation", alpha_2_code: "RU", alpha_3_code: "RUS", numeric_code: "643", status: 1 },
  { name: "Rwanda", alpha_2_code: "RW", alpha_3_code: "RWA", numeric_code: "646", status: 1 },
  { name: "Saint-Barthélemy", alpha_2_code: "BL", alpha_3_code: "BLM", numeric_code: "652", status: 1 },
  { name: "Saint Helena", alpha_2_code: "SH", alpha_3_code: "SHN", numeric_code: "654", status: 1 },
  { name: "Saint Kitts and Nevis", alpha_2_code: "KN", alpha_3_code: "KNA", numeric_code: "659", status: 1 },
  { name: "Saint Lucia", alpha_2_code: "LC", alpha_3_code: "LCA", numeric_code: "662", status: 1 },
  { name: "Saint-Martin (French part)", alpha_2_code: "MF", alpha_3_code: "MAF", numeric_code: "663", status: 1 },
  { name: "Saint Pierre and Miquelon", alpha_2_code: "PM", alpha_3_code: "SPM", numeric_code: "666", status: 1 },
  { name: "Saint Vincent and Grenadines", alpha_2_code: "VC", alpha_3_code: "VCT", numeric_code: "670", status: 1 },
  { name: "Samoa", alpha_2_code: "WS", alpha_3_code: "WSM", numeric_code: "882", status: 1 },
  { name: "San Marino", alpha_2_code: "SM", alpha_3_code: "SMR", numeric_code: "674", status: 1 },
  { name: "Sao Tome and Principe", alpha_2_code: "ST", alpha_3_code: "STP", numeric_code: "678", status: 1 },
  { name: "Saudi Arabia", alpha_2_code: "SA", alpha_3_code: "SAU", numeric_code: "682", status: 1 },
  { name: "Senegal", alpha_2_code: "SN", alpha_3_code: "SEN", numeric_code: "686", status: 1 },
  { name: "Serbia", alpha_2_code: "RS", alpha_3_code: "SRB", numeric_code: "688", status: 1 },
  { name: "Seychelles", alpha_2_code: "SC", alpha_3_code: "SYC", numeric_code: "690", status: 1 },
  { name: "Sierra Leone", alpha_2_code: "SL", alpha_3_code: "SLE", numeric_code: "694", status: 1 },
  { name: "Singapore", alpha_2_code: "SG", alpha_3_code: "SGP", numeric_code: "702", status: 1 },
  { name: "Slovakia", alpha_2_code: "SK", alpha_3_code: "SVK", numeric_code: "703", status: 1 },
  { name: "Slovenia", alpha_2_code: "SI", alpha_3_code: "SVN", numeric_code: "705", status: 1 },
  { name: "Solomon Islands", alpha_2_code: "SB", alpha_3_code: "SLB", numeric_code: "090", status: 1 },
  { name: "Somalia", alpha_2_code: "SO", alpha_3_code: "SOM", numeric_code: "706", status: 1 },
  { name: "South Africa", alpha_2_code: "ZA", alpha_3_code: "ZAF", numeric_code: "710", status: 1 },
  { name: "South Georgia and the South Sandwich Islands", alpha_2_code: "GS", alpha_3_code: "SGS", numeric_code: "239", status: 1 },
  { name: "South Sudan", alpha_2_code: "SS", alpha_3_code: "SSD", numeric_code: "728", status: 1 },
  { name: "Spain", alpha_2_code: "ES", alpha_3_code: "ESP", numeric_code: "724", status: 1 },
  { name: "Sri Lanka", alpha_2_code: "LK", alpha_3_code: "LKA", numeric_code: "144", status: 1 },
  { name: "Sudan", alpha_2_code: "SD", alpha_3_code: "SDN", numeric_code: "736", status: 1 },
  { name: "Suriname", alpha_2_code: "SR", alpha_3_code: "SUR", numeric_code: "740", status: 1 },
  { name: "Svalbard and Jan Mayen Islands", alpha_2_code: "SJ", alpha_3_code: "SJM", numeric_code: "744", status: 1 },
  { name: "Swaziland", alpha_2_code: "SZ", alpha_3_code: "SWZ", numeric_code: "748", status: 1 },
  { name: "Sweden", alpha_2_code: "SE", alpha_3_code: "SWE", numeric_code: "752", status: 1 },
  { name: "Switzerland", alpha_2_code: "CH", alpha_3_code: "CHE", numeric_code: "756", status: 1 },
  { name: "Syrian Arab Republic (Syria)", alpha_2_code: "SY", alpha_3_code: "SYR", numeric_code: "760", status: 1 },
  { name: "Taiwan, Republic of China", alpha_2_code: "TW", alpha_3_code: "TWN", numeric_code: "158", status: 1 },
  { name: "Tajikistan", alpha_2_code: "TJ", alpha_3_code: "TJK", numeric_code: "762", status: 1 },
  { name: "Tanzania, United Republic of", alpha_2_code: "TZ", alpha_3_code: "TZA", numeric_code: "834", status: 1 },
  { name: "Thailand", alpha_2_code: "TH", alpha_3_code: "THA", numeric_code: "764", status: 1 },
  { name: "Timor-Leste", alpha_2_code: "TL", alpha_3_code: "TLS", numeric_code: "626", status: 1 },
  { name: "Togo", alpha_2_code: "TG", alpha_3_code: "TGO", numeric_code: "768", status: 1 },
  { name: "Tokelau", alpha_2_code: "TK", alpha_3_code: "TKL", numeric_code: "772", status: 1 },
  { name: "Tonga", alpha_2_code: "TO", alpha_3_code: "TON", numeric_code: "776", status: 1 },
  { name: "Trinidad and Tobago", alpha_2_code: "TT", alpha_3_code: "TTO", numeric_code: "780", status: 1 },
  { name: "Tunisia", alpha_2_code: "TN", alpha_3_code: "TUN", numeric_code: "788", status: 1 },
  { name: "Turkey", alpha_2_code: "TR", alpha_3_code: "TUR", numeric_code: "792", status: 1 },
  { name: "Turkmenistan", alpha_2_code: "TM", alpha_3_code: "TKM", numeric_code: "795", status: 1 },
  { name: "Turks and Caicos Islands", alpha_2_code: "TC", alpha_3_code: "TCA", numeric_code: "796", status: 1 },
  { name: "Tuvalu", alpha_2_code: "TV", alpha_3_code: "TUV", numeric_code: "798", status: 1 },
  { name: "Uganda", alpha_2_code: "UG", alpha_3_code: "UGA", numeric_code: "800", status: 1 },
  { name: "Ukraine", alpha_2_code: "UA", alpha_3_code: "UKR", numeric_code: "804", status: 1 },
  { name: "United Arab Emirates", alpha_2_code: "AE", alpha_3_code: "ARE", numeric_code: "784", status: 1 },
  { name: "United Kingdom", alpha_2_code: "GB", alpha_3_code: "GBR", numeric_code: "826", status: 1 },
  { name: "United States of America", alpha_2_code: "US", alpha_3_code: "USA", numeric_code: "840", status: 1 },
  { name: "US Minor Outlying Islands", alpha_2_code: "UM", alpha_3_code: "UMI", numeric_code: "581", status: 1 },
  { name: "Uruguay", alpha_2_code: "UY", alpha_3_code: "URY", numeric_code: "858", status: 1 },
  { name: "Uzbekistan", alpha_2_code: "UZ", alpha_3_code: "UZB", numeric_code: "860", status: 1 },
  { name: "Vanuatu", alpha_2_code: "VU", alpha_3_code: "VUT", numeric_code: "548", status: 1 },
  { name: "Venezuela (Bolivarian Republic)", alpha_2_code: "VE", alpha_3_code: "VEN", numeric_code: "862", status: 1 },
  { name: "Viet Nam", alpha_2_code: "VN", alpha_3_code: "VNM", numeric_code: "704", status: 1 },
  { name: "Virgin Islands, US", alpha_2_code: "VI", alpha_3_code: "VIR", numeric_code: "850", status: 1 },
  { name: "Wallis and Futuna Islands", alpha_2_code: "WF", alpha_3_code: "WLF", numeric_code: "876", status: 1 },
  { name: "Western Sahara", alpha_2_code: "EH", alpha_3_code: "ESH", numeric_code: "732", status: 1 },
  { name: "Yemen", alpha_2_code: "YE", alpha_3_code: "YEM", numeric_code: "887", status: 1 },
  { name: "Zambia", alpha_2_code: "ZM", alpha_3_code: "ZMB", numeric_code: "894", status: 1 },
  { name: "Zimbabwe", alpha_2_code: "ZW", alpha_3_code: "ZWE", numeric_code: "716", status: 1 },
])


currencies = Currency.create([
  { name: "United Arab Emirates dirham", alpha_3_code: "AED", numeric_code: "784", status: 1 }
  { name: "Afghan afghani", alpha_3_code: "AFN", numeric_code: "971", status: 1 }
  { name: "Albanian lek", alpha_3_code: "ALL", numeric_code: "008", status: 1 }
  { name: "Armenian dram", alpha_3_code: "AMD", numeric_code: "051", status: 1 }
  { name: "Netherlands Antillean guilder", alpha_3_code: "ANG", numeric_code: "532", status: 1 }
  { name: "Angolan kwanza", alpha_3_code: "AOA", numeric_code: "973", status: 1 }
  { name: "Argentine peso", alpha_3_code: "ARS", numeric_code: "032", status: 1 }
  { name: "Australian dollar", alpha_3_code: "AUD", numeric_code: "036", status: 1 }
  { name: "Aruban florin", alpha_3_code: "AWG", numeric_code: "533", status: 1 }
  { name: "Azerbaijani manat", alpha_3_code: "AZN", numeric_code: "944", status: 1 }
  { name: "Bosnia and Herzegovina convertible mark", alpha_3_code: "BAM", numeric_code: "977", status: 1 }
  { name: "Barbados dollar", alpha_3_code: "BBD", numeric_code: "052", status: 1 }
  { name: "Bangladeshi taka", alpha_3_code: "BDT", numeric_code: "050", status: 1 }
  { name: "Bulgarian lev", alpha_3_code: "BGN", numeric_code: "975", status: 1 }
  { name: "Bahraini dinar", alpha_3_code: "BHD", numeric_code: "048", status: 1 }
  { name: "Burundian franc", alpha_3_code: "BIF", numeric_code: "108", status: 1 }
  { name: "Bermudian dollar", alpha_3_code: "BMD", numeric_code: "060", status: 1 }
  { name: "Brunei dollar", alpha_3_code: "BND", numeric_code: "096", status: 1 }
  { name: "Boliviano", alpha_3_code: "BOB", numeric_code: "068", status: 1 }
  { name: "Bolivian Mvdol (funds code)", alpha_3_code: "BOV", numeric_code: "984", status: 1 }
  { name: "Brazilian real", alpha_3_code: "BRL", numeric_code: "986", status: 1 }
  { name: "Bahamian dollar", alpha_3_code: "BSD", numeric_code: "044", status: 1 }
  { name: "Bhutanese ngultrum", alpha_3_code: "BTN", numeric_code: "064", status: 1 }
  { name: "Botswana pula", alpha_3_code: "BWP", numeric_code: "072", status: 1 }
  { name: "Belarusian ruble", alpha_3_code: "BYN", numeric_code: "933", status: 1 }
  { name: "Belize dollar", alpha_3_code: "BZD", numeric_code: "084", status: 1 }
  { name: "Canadian dollar", alpha_3_code: "CAD", numeric_code: "124", status: 1 }
  { name: "Congolese franc", alpha_3_code: "CDF", numeric_code: "976", status: 1 }
  { name: "WIR Euro (complementary currency)", alpha_3_code: "CHE", numeric_code: "947", status: 1 }
  { name: "Swiss franc", alpha_3_code: "CHF", numeric_code: "756", status: 1 }
  { name: "WIR Franc (complementary currency)", alpha_3_code: "CHW", numeric_code: "948", status: 1 }
  { name: "Unidad de Fomento (funds code)", alpha_3_code: "CLF", numeric_code: "990", status: 1 }
  { name: "Chilean peso", alpha_3_code: "CLP", numeric_code: "152", status: 1 }
  { name: "Renminbi (Chinese) yuan[8]", alpha_3_code: "CNY", numeric_code: "156", status: 1 }
  { name: "Colombian peso", alpha_3_code: "COP", numeric_code: "170", status: 1 }
  { name: "Unidad de Valor Real (UVR) (funds code)[9]", alpha_3_code: "COU", numeric_code: "970", status: 1 }
  { name: "Costa Rican colon", alpha_3_code: "CRC", numeric_code: "188", status: 1 }
  { name: "Cuban convertible peso", alpha_3_code: "CUC", numeric_code: "931", status: 1 }
  { name: "Cuban peso", alpha_3_code: "CUP", numeric_code: "192", status: 1 }
  { name: "Cape Verde escudo", alpha_3_code: "CVE", numeric_code: "132", status: 1 }
  { name: "Czech koruna", alpha_3_code: "CZK", numeric_code: "203", status: 1 }
  { name: "Djiboutian franc", alpha_3_code: "DJF", numeric_code: "262", status: 1 }
  { name: "Danish krone", alpha_3_code: "DKK", numeric_code: "208", status: 1 }
  { name: "Dominican peso", alpha_3_code: "DOP", numeric_code: "214", status: 1 }
  { name: "Algerian dinar", alpha_3_code: "DZD", numeric_code: "012", status: 1 }
  { name: "Egyptian pound", alpha_3_code: "EGP", numeric_code: "818", status: 1 }
  { name: "Eritrean nakfa", alpha_3_code: "ERN", numeric_code: "232", status: 1 }
  { name: "Ethiopian birr", alpha_3_code: "ETB", numeric_code: "230", status: 1 }
  { name: "Euro", alpha_3_code: "EUR", numeric_code: "978", status: 1 }
  { name: "Fiji dollar", alpha_3_code: "FJD", numeric_code: "242", status: 1 }
  { name: "Falkland Islands pound", alpha_3_code: "FKP", numeric_code: "238", status: 1 }
  { name: "Pound sterling", alpha_3_code: "GBP", numeric_code: "826", status: 1 }
  { name: "Georgian lari", alpha_3_code: "GEL", numeric_code: "981", status: 1 }
  { name: "Ghanaian cedi", alpha_3_code: "GHS", numeric_code: "936", status: 1 }
  { name: "Gibraltar pound", alpha_3_code: "GIP", numeric_code: "292", status: 1 }
  { name: "Gambian dalasi", alpha_3_code: "GMD", numeric_code: "270", status: 1 }
  { name: "Guinean franc", alpha_3_code: "GNF", numeric_code: "324", status: 1 }
  { name: "Guatemalan quetzal", alpha_3_code: "GTQ", numeric_code: "320", status: 1 }
  { name: "Guyanese dollar", alpha_3_code: "GYD", numeric_code: "328", status: 1 }
  { name: "Hong Kong dollar", alpha_3_code: "HKD", numeric_code: "344", status: 1 }
  { name: "Honduran lempira", alpha_3_code: "HNL", numeric_code: "340", status: 1 }
  { name: "Croatian kuna", alpha_3_code: "HRK", numeric_code: "191", status: 1 }
  { name: "Haitian gourde", alpha_3_code: "HTG", numeric_code: "332", status: 1 }
  { name: "Hungarian forint", alpha_3_code: "HUF", numeric_code: "348", status: 1 }
  { name: "Indonesian rupiah", alpha_3_code: "IDR", numeric_code: "360", status: 1 }
  { name: "Israeli new shekel", alpha_3_code: "ILS", numeric_code: "376", status: 1 }
  { name: "Indian rupee", alpha_3_code: "INR", numeric_code: "356", status: 1 }
  { name: "Iraqi dinar", alpha_3_code: "IQD", numeric_code: "368", status: 1 }
  { name: "Iranian rial", alpha_3_code: "IRR", numeric_code: "364", status: 1 }
  { name: "Icelandic króna", alpha_3_code: "ISK", numeric_code: "352", status: 1 }
  { name: "Jamaican dollar", alpha_3_code: "JMD", numeric_code: "388", status: 1 }
  { name: "Jordanian dinar", alpha_3_code: "JOD", numeric_code: "400", status: 1 }
  { name: "Japanese yen", alpha_3_code: "JPY", numeric_code: "392", status: 1 }
  { name: "Kenyan shilling", alpha_3_code: "KES", numeric_code: "404", status: 1 }
  { name: "Kyrgyzstani som", alpha_3_code: "KGS", numeric_code: "417", status: 1 }
  { name: "Cambodian riel", alpha_3_code: "KHR", numeric_code: "116", status: 1 }
  { name: "Comoro franc", alpha_3_code: "KMF", numeric_code: "174", status: 1 }
  { name: "North Korean won", alpha_3_code: "KPW", numeric_code: "408", status: 1 }
  { name: "South Korean won", alpha_3_code: "KRW", numeric_code: "410", status: 1 }
  { name: "Kuwaiti dinar", alpha_3_code: "KWD", numeric_code: "414", status: 1 }
  { name: "Cayman Islands dollar", alpha_3_code: "KYD", numeric_code: "136", status: 1 }
  { name: "Kazakhstani tenge", alpha_3_code: "KZT", numeric_code: "398", status: 1 }
  { name: "Lao kip", alpha_3_code: "LAK", numeric_code: "418", status: 1 }
  { name: "Lebanese pound", alpha_3_code: "LBP", numeric_code: "422", status: 1 }
  { name: "Sri Lankan rupee", alpha_3_code: "LKR", numeric_code: "144", status: 1 }
  { name: "Liberian dollar", alpha_3_code: "LRD", numeric_code: "430", status: 1 }
  { name: "Lesotho loti", alpha_3_code: "LSL", numeric_code: "426", status: 1 }
  { name: "Libyan dinar", alpha_3_code: "LYD", numeric_code: "434", status: 1 }
  { name: "Moroccan dirham", alpha_3_code: "MAD", numeric_code: "504", status: 1 }
  { name: "Moldovan leu", alpha_3_code: "MDL", numeric_code: "498", status: 1 }
  { name: "Malagasy ariary", alpha_3_code: "MGA", numeric_code: "969", status: 1 }
  { name: "Macedonian denar", alpha_3_code: "MKD", numeric_code: "807", status: 1 }
  { name: "Myanmar kyat", alpha_3_code: "MMK", numeric_code: "104", status: 1 }
  { name: "Mongolian tögrög", alpha_3_code: "MNT", numeric_code: "496", status: 1 }
  { name: "Macanese pataca", alpha_3_code: "MOP", numeric_code: "446", status: 1 }
  { name: "Mauritanian ouguiya", alpha_3_code: "MRU[12]", numeric_code: "929", status: 1 }
  { name: "Mauritian rupee", alpha_3_code: "MUR", numeric_code: "480", status: 1 }
  { name: "Maldivian rufiyaa", alpha_3_code: "MVR", numeric_code: "462", status: 1 }
  { name: "Malawian kwacha", alpha_3_code: "MWK", numeric_code: "454", status: 1 }
  { name: "Mexican peso", alpha_3_code: "MXN", numeric_code: "484", status: 1 }
  { name: "Mexican Unidad de Inversion (UDI) (funds code)", alpha_3_code: "MXV", numeric_code: "979", status: 1 }
  { name: "Malaysian ringgit", alpha_3_code: "MYR", numeric_code: "458", status: 1 }
  { name: "Mozambican metical", alpha_3_code: "MZN", numeric_code: "943", status: 1 }
  { name: "Namibian dollar", alpha_3_code: "NAD", numeric_code: "516", status: 1 }
  { name: "Nigerian naira", alpha_3_code: "NGN", numeric_code: "566", status: 1 }
  { name: "Nicaraguan córdoba", alpha_3_code: "NIO", numeric_code: "558", status: 1 }
  { name: "Norwegian krone", alpha_3_code: "NOK", numeric_code: "578", status: 1 }
  { name: "Nepalese rupee", alpha_3_code: "NPR", numeric_code: "524", status: 1 }
  { name: "New Zealand dollar", alpha_3_code: "NZD", numeric_code: "554", status: 1 }
  { name: "Omani rial", alpha_3_code: "OMR", numeric_code: "512", status: 1 }
  { name: "Panamanian balboa", alpha_3_code: "PAB", numeric_code: "590", status: 1 }
  { name: "Peruvian Sol", alpha_3_code: "PEN", numeric_code: "604", status: 1 }
  { name: "Papua New Guinean kina", alpha_3_code: "PGK", numeric_code: "598", status: 1 }
  { name: "Philippine piso[13]", alpha_3_code: "PHP", numeric_code: "608", status: 1 }
  { name: "Pakistani rupee", alpha_3_code: "PKR", numeric_code: "586", status: 1 }
  { name: "Polish złoty", alpha_3_code: "PLN", numeric_code: "985", status: 1 }
  { name: "Paraguayan guaraní", alpha_3_code: "PYG", numeric_code: "600", status: 1 }
  { name: "Qatari riyal", alpha_3_code: "QAR", numeric_code: "634", status: 1 }
  { name: "Romanian leu", alpha_3_code: "RON", numeric_code: "946", status: 1 }
  { name: "Serbian dinar", alpha_3_code: "RSD", numeric_code: "941", status: 1 }
  { name: "Russian ruble", alpha_3_code: "RUB", numeric_code: "643", status: 1 }
  { name: "Rwandan franc", alpha_3_code: "RWF", numeric_code: "646", status: 1 }
  { name: "Saudi riyal", alpha_3_code: "SAR", numeric_code: "682", status: 1 }
  { name: "Solomon Islands dollar", alpha_3_code: "SBD", numeric_code: "090", status: 1 }
  { name: "Seychelles rupee", alpha_3_code: "SCR", numeric_code: "690", status: 1 }
  { name: "Sudanese pound", alpha_3_code: "SDG", numeric_code: "938", status: 1 }
  { name: "Swedish krona/kronor", alpha_3_code: "SEK", numeric_code: "752", status: 1 }
  { name: "Singapore dollar", alpha_3_code: "SGD", numeric_code: "702", status: 1 }
  { name: "Saint Helena pound", alpha_3_code: "SHP", numeric_code: "654", status: 1 }
  { name: "Sierra Leonean leone", alpha_3_code: "SLL", numeric_code: "694", status: 1 }
  { name: "Somali shilling", alpha_3_code: "SOS", numeric_code: "706", status: 1 }
  { name: "Surinamese dollar", alpha_3_code: "SRD", numeric_code: "968", status: 1 }
  { name: "South Sudanese pound", alpha_3_code: "SSP", numeric_code: "728", status: 1 }
  { name: "São Tomé and Príncipe dobra", alpha_3_code: "STN[14]", numeric_code: "930", status: 1 }
  { name: "Salvadoran colón", alpha_3_code: "SVC", numeric_code: "222", status: 1 }
  { name: "Syrian pound", alpha_3_code: "SYP", numeric_code: "760", status: 1 }
  { name: "Swazi lilangeni", alpha_3_code: "SZL", numeric_code: "748", status: 1 }
  { name: "Thai baht", alpha_3_code: "THB", numeric_code: "764", status: 1 }
  { name: "Tajikistani somoni", alpha_3_code: "TJS", numeric_code: "972", status: 1 }
  { name: "Turkmenistan manat", alpha_3_code: "TMT", numeric_code: "934", status: 1 }
  { name: "Tunisian dinar", alpha_3_code: "TND", numeric_code: "788", status: 1 }
  { name: "Tongan paʻanga", alpha_3_code: "TOP", numeric_code: "776", status: 1 }
  { name: "Turkish lira", alpha_3_code: "TRY", numeric_code: "949", status: 1 }
  { name: "Trinidad and Tobago dollar", alpha_3_code: "TTD", numeric_code: "780", status: 1 }
  { name: "New Taiwan dollar", alpha_3_code: "TWD", numeric_code: "901", status: 1 }
  { name: "Tanzanian shilling", alpha_3_code: "TZS", numeric_code: "834", status: 1 }
  { name: "Ukrainian hryvnia", alpha_3_code: "UAH", numeric_code: "980", status: 1 }
  { name: "Ugandan shilling", alpha_3_code: "UGX", numeric_code: "800", status: 1 }
  { name: "United States dollar", alpha_3_code: "USD", numeric_code: "840", status: 1 }
  { name: "United States dollar (next day) (funds code)", alpha_3_code: "USN", numeric_code: "997", status: 1 }
  { name: "Uruguay Peso en Unidades Indexadas (URUIURUI) (funds code)", alpha_3_code: "UYI", numeric_code: "940", status: 1 }
  { name: "Uruguayan peso", alpha_3_code: "UYU", numeric_code: "858", status: 1 }
  { name: "Uzbekistan som", alpha_3_code: "UZS", numeric_code: "860", status: 1 }
  { name: "Venezuelan bolívar", alpha_3_code: "VEF", numeric_code: "937", status: 1 }
  { name: "Vietnamese đồng", alpha_3_code: "VND", numeric_code: "704", status: 1 }
  { name: "Vanuatu vatu", alpha_3_code: "VUV", numeric_code: "548", status: 1 }
  { name: "Samoan tala", alpha_3_code: "WST", numeric_code: "882", status: 1 }
  { name: "CFA franc BEAC", alpha_3_code: "XAF", numeric_code: "950", status: 1 }
  { name: "Silver (one troy ounce)", alpha_3_code: "XAG", numeric_code: "961", status: 1 }
  { name: "Gold (one troy ounce)", alpha_3_code: "XAU", numeric_code: "959", status: 1 }
  { name: "European Composite Unit (EURCO) (bond market unit)", alpha_3_code: "XBA", numeric_code: "955", status: 1 }
  { name: "European Monetary Unit (E.M.U.-6) (bond market unit)", alpha_3_code: "XBB", numeric_code: "956", status: 1 }
  { name: "European Unit of Account 9 (E.U.A.-9) (bond market unit)", alpha_3_code: "XBC", numeric_code: "957", status: 1 }
  { name: "European Unit of Account 17 (E.U.A.-17) (bond market unit)", alpha_3_code: "XBD", numeric_code: "958", status: 1 }
  { name: "East Caribbean dollar", alpha_3_code: "XCD", numeric_code: "951", status: 1 }
  { name: "Special drawing rights", alpha_3_code: "XDR", numeric_code: "960", status: 1 }
  { name: "CFA franc BCEAO", alpha_3_code: "XOF", numeric_code: "952", status: 1 }
  { name: "Palladium (one troy ounce)", alpha_3_code: "XPD", numeric_code: "964", status: 1 }
  { name: "CFP franc (franc Pacifique)", alpha_3_code: "XPF", numeric_code: "953", status: 1 }
  { name: "Platinum (one troy ounce)", alpha_3_code: "XPT", numeric_code: "962", status: 1 }
  { name: "SUCRE", alpha_3_code: "XSU", numeric_code: "994", status: 1 }
  { name: "Code reserved for testing purposes", alpha_3_code: "XTS", numeric_code: "963", status: 1 }
  { name: "ADB Unit of Account", alpha_3_code: "XUA", numeric_code: "965", status: 1 }
  { name: "No currency", alpha_3_code: "XXX", numeric_code: "999", status: 1 }
  { name: "Yemeni rial", alpha_3_code: "YER", numeric_code: "886", status: 1 }
  { name: "South African rand", alpha_3_code: "ZAR", numeric_code: "710", status: 1 }
  { name: "Zambian kwacha", alpha_3_code: "ZMW", numeric_code: "967", status: 1 }
  { name: "Zimbabwean dollar A/10", alpha_3_code: "ZWL", numeric_code: "932", status: 1 }
])
