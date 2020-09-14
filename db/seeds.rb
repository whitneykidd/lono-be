# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.create({start_date: '01/10/2020' , avg_period: 5 , avg_cycle: 30, day_of_ovulation: 14, name: "billie"})
days = Day.create([{ temperature: 97.3921407225235,
date: '01/10/2020',
high_risk: False},
{ temperature: 97.45472336125859,
date: '02/10/2020',
high_risk: False},
{ temperature: 97.37539305082102,
date: '03/10/2020',
high_risk: False},
{ temperature: 97.39594321187163,
date: '04/10/2020',
high_risk: False},
{ temperature: 97.22967507338001,
date: '05/10/2020',
high_risk: False},
{ temperature: 97.15550167462081,
date: '06/10/2020',
high_risk: False},
{ temperature: 97.37489920782173,
date: '07/10/2020',
high_risk: False},
{ temperature: 97.32587582389289,
date: '08/10/2020',
high_risk: False},
{ temperature: 97.2532495702544,
date: '09/10/2020',
high_risk: False},
{ temperature: 97.47893633165044,
date: '10/10/2020',
high_risk: False},
{ temperature: 97.12109556511471,
date: '11/10/2020',
high_risk: False},
{ temperature: 97.39352202710452,
date: '12/10/2020',
high_risk: False},
{ temperature: 97.39706814872008,
date: '13/10/2020',
high_risk: False},
{ temperature: 97.20555830876744,
date: '14/10/2020',
high_risk: False},
{ temperature: 97.49626383244673,
date: '15/10/2020',
high_risk: False},
{ temperature: 97.24120211190903,
date: '16/10/2020',
high_risk: False},
{ temperature: 97.32789902753188,
date: '17/10/2020',
high_risk: True},
{ temperature: 97.33750832723287,
date: '18/10/2020',
high_risk: True},
{ temperature: 97.49237121174019,
date: '19/10/2020',
high_risk: True},
{ temperature: 97.10673653294982,
date: '20/10/2020',
high_risk: True},
{ temperature: 97.45035457538701,
date: '21/10/2020',
high_risk: True},
{ temperature: 97.39618222527686,
date: '22/10/2020',
high_risk: True},
{ temperature: 97.18218490258948,
date: '23/10/2020',
high_risk: True},
{ temperature: 98.31225964314442,
date: '24/10/2020',
high_risk: True},
{ temperature: 97.70977277629115,
date: '25/10/2020',
high_risk: True},
{ temperature: 98.5559779071062,
date: '26/10/2020',
high_risk: True},
{ temperature: 98.29823570276363,
date: '27/10/2020',
high_risk: True},
{ temperature: 98.34677713289109,
  date: '28/10/2020',
  high_risk: False},
{ temperature: 97.70349779060184,
  date: '29/10/2020',
  high_risk: False},
{ temperature: 98.5701435459597,
  date: '30/10/2020',
  high_risk: False}])
