# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


sears = Coupon.create(coupon_code: 'srx8000', store: 'sears & roebuck')
target = Coupon.create(coupon_code: 'qbulls20', store: 'target')
barnes = Coupon.create(coupon_code: 'bnn450', store: 'barnes and noble')

