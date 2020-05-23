20.times do |n|
    Category.all.each do |category|
      MessageBoard.create!(
        name:"サンプル#{n}",
        detail:"サンプルの#{n}番目ですよ",
        category_id: category.id,
        user_id: 1
      )
    end
end
