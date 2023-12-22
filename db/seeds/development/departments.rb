names = ["耳鼻科","内科","皮膚科"]
0.upto(2) do |idx|
    Department.create(
        name: names[idx]
    )
  end
