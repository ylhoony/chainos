# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

countries = Country.create([
  { name: "Australia", alpha_2_code: "AU", alpha_3_code: "AUS", numeric_code: "036", status: 1 },
  { name: "Canada", alpha_2_code: "CA", alpha_3_code: "CAN", numeric_code: "124", status: 1 },
  { name: "China", alpha_2_code: "CN", alpha_3_code: "CHN", numeric_code: "156", status: 1 },
  { name: "France", alpha_2_code: "FR", alpha_3_code: "FRA", numeric_code: "250", status: 1 },
  { name: "Germany", alpha_2_code: "DE", alpha_3_code: "DEU", numeric_code: "276", status: 1 },
  { name: "Japan", alpha_2_code: "JP", alpha_3_code: "JPN", numeric_code: "392", status: 1 },
  { name: "Korea (South)", alpha_2_code: "KR", alpha_3_code: "KOR", numeric_code: "410", status: 1 },
  { name: "Switzerland", alpha_2_code: "CH", alpha_3_code: "CHE", numeric_code: "756", status: 1 },
  { name: "United Kingdom", alpha_2_code: "GB", alpha_3_code: "GBR", numeric_code: "826", status: 1 },
  { name: "United States of America", alpha_2_code: "US", alpha_3_code: "USA", numeric_code: "840", status: 1 }
])


currencies = Currency.create([
  { name: "Australian dollar", alpha_3_code: "AUD", numeric_code: "036", status: 1 },
  { name: "Canadian dollar", alpha_3_code: "CAD", numeric_code: "124", status: 1 },
  { name: "Swiss franc", alpha_3_code: "CHF", numeric_code: "756", status: 1 },
  { name: "Renminbi (Chinese) yuan[8]", alpha_3_code: "CNY", numeric_code: "156", status: 1 },
  { name: "Euro", alpha_3_code: "EUR", numeric_code: "978", status: 1 },
  { name: "Japanese yen", alpha_3_code: "JPY", numeric_code: "392", status: 1 },
  { name: "Kenyan shilling", alpha_3_code: "KES", numeric_code: "404", status: 1 },
  { name: "South Korean won", alpha_3_code: "KRW", numeric_code: "410", status: 1 },
  { name: "United States dollar", alpha_3_code: "USD", numeric_code: "840", status: 1 }
])

paymentOptions = PaymentOption.create([
  { name: "day(s) after invoice date", status: true },
  { name: "of the month following invoice date", status: true },
  { name: "end of month", status: true },
  { name: "of the current month", status: true },
  { name: "day(s) after the end of the invoice month", status: true }
])
