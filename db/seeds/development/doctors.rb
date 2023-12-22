fnames = ["Asada", "Wada", "Ida", "Ota"]
gnames = ["Nokiha", "Masato", "Kota"]
name = ["耳鼻科","内科","皮膚科"]
0.upto(8) do |idx|
    department = Department.find_by(name: name[idx % 3])
    Doctor.create(
      department: department,
      username: "#{fnames[idx % 4]} #{gnames[idx % 3]}",
      sex: [1, 1, 2][idx % 3],
      password: "123",
      password_confirmation: "123",
      )
end
