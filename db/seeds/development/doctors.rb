fnumbers = ["090", "03", "080", "070"]
gnumbers = ["12342323", "34564545", "56786767", "89011010", "23452222"]
fnames = ["Asada", "Wada", "Ida", "Ota"]
gnames = ["Nokiha", "Masato", "Kota"]
name = ["耳鼻科","内科","皮膚科"]
0.upto(8) do |idx|
    department = Department.find_by(name: name[idx % 3])
    Doctor.create(
      department: department,
      username: "#{fnames[idx % 4]} #{gnames[idx % 3]}",
      email: "#{fnames[idx % 5]}#{gnames[idx % 4]}@gmail.com",
      sex: [1, 1, 2][idx % 3],
      password: "12345678",
      password_confirmation: "12345678",
      number: "#{fnumbers[idx % 4]}#{gnumbers[idx % 5]}"
      )
end
