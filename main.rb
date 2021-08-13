require './methods'

plans = [
  { place: '沖縄', price: 10_000 },
  { place: '北海道', price: 20_000 },
  { place: '九州', price: 15_000 }
]

disp_plan(plans)
chosen_plan = choose_plan(plans)
person_number = person_plan(chosen_plan)
TotalPrice_plan(chosen_plan, person_number)
