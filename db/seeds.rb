# Companies
Company.create(name: "Bank Of America")
Company.create(name: "Banco Santander")
Company.create(name: "CityBank")
p "Companies created"
#Users
User.create(provider: "email", uid: "simpson@gmail.com", identification: nil, first_name: "Homer", last_name: "Simpson", email: "simpson@gmail.com", password:"12345678")
p "User created"
#Categories
Category.create(name: "VIPs", codeletter: "V", company: Company.first)
p "Categories created"