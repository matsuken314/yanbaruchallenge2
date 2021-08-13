def disp_plan(plans)
  puts '旅行プランを選択して下さい。'
  plans.each.with_index(1) do |plan, i|
    puts "#{i}. #{plan[:place]}(#{plan[:price]})"
  end
end

def choose_plan(plans)
  while true
    print 'プランの番号を選択 > '
    select_plan_num = gets.to_i
    break if 0 < select_plan_num && select_plan_num < 4

    puts '1〜3の番号を入力して下さい。'
  end
  plans[select_plan_num - 1]
end

def person_plan(chosen_plan)
  puts "#{chosen_plan[:place]}ですね"
  puts '何名で予約されますか？'
  while true
    print '人数を入力 > '
    reservation_person = gets.to_i
    break if reservation_person >= 1

    puts '1以上を入力してください。'
  end
  puts "#{reservation_person}名ですね"
  reservation_person
end

def TotalPrice_plan(chosen_plan, person_number)
  total_price = chosen_plan[:price] * person_number
  if person_number >= 5
    puts '5名以上ですので10%割引となります'
    total_price *= 0.9
  end
  puts "合計料金は#{total_price.floor}円になります。"
end
