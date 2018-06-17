# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Template.create(name: "Print Default",
                template: File.read(Rails.root.join('db', 'fixtures', 'print_default.html.erb')).strip(),
                print_default: true)

Template.create(name: "Email Default",
                template: File.read(Rails.root.join('db', 'fixtures', 'email_default.html.erb')).strip(),
                subject: "Payment Confirmation: <%= invoice %>",
                email_default: true)
