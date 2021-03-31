# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

User.delete_all

User.create(first_name: 'Billy', last_name: 'Bob', address_line1: '10 Wacky Lane', city: 'Victorville', state: 'CA', zip: '92392')
User.create(first_name: 'Justin', last_name: 'Wheeler', address_line1: '123 Main Street', city: 'Brandon', state: 'FL', zip: '33511')
User.create(first_name: 'John', last_name: 'Doe', address_line1: '1 Wizard Way', city: 'Tampa', state: 'FL', zip: '33677')

