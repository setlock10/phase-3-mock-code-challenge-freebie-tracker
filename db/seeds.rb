Company.destroy_all
Dev.destroy_all
Freebie.destroy_all

puts "Creating companies..."
Company.create(name: "Google", founding_year: 1998)
Company.create(name: "Facebook", founding_year: 2004)
Company.create(name: "Dunder Mifflin", founding_year: 2002)
Company.create(name: "Enron", founding_year: 1995)

puts "Creating devs..."
Dev.create(name: "Rick")
Dev.create(name: "Morty")
Dev.create(name: "Mr. Meseeks")
Dev.create(name: "Gazorpazop")

puts "Creating freebies..."

# ***************************************************************
# * TODO: create freebies! Remember, a freebie belongs to a dev *
# * and a freebie belongs to a company.                         *
# ***************************************************************
# Create freebies Here
Freebie.create(item_name: "doodad1", value:5, company_id:1, dev_id:1)
Freebie.create(item_name: "coozie1", value:10, company_id:1, dev_id:1)
Freebie.create(item_name: "cable1", value:15, company_id:1, dev_id:1)

Freebie.create(item_name: "doodad2", value:5, company_id:2, dev_id:2)
Freebie.create(item_name: "coozie2", value:10, company_id:2, dev_id:2)
Freebie.create(item_name: "cable2", value:15, company_id:2, dev_id:2)

Freebie.create(item_name: "doodad3", value:5, company_id:3, dev_id:3)
Freebie.create(item_name: "coozie3", value:10, company_id:3, dev_id:3)
Freebie.create(item_name: "cable3", value:15, company_id:3, dev_id:3)


puts "Seeding done!"
