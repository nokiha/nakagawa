fnumbers = ["090", "03", "080", "070"]
gnumbers = ["-1234-2323", "-3456-4545", "-5678-6767", "-8901-1010", "-2345-2222"]
fnames = ["Asada", "Wada", "Ida", "Ota"]
gnames = ["Nokiha", "Masato", "Kota"]
name = ["耳鼻科","内科","皮膚科"]
0.upto(8) do |idx|
    department = Department.find_by(name: name[idx % 3])
    Doctor.create(
      department: department,
      username: "#{fnames[idx % 4]} #{gnames[idx % 3]}",
      email: "#{fnames[idx % 5]} #{gnames[idx % 4]}@example.com",
      sex: [1, 1, 2][idx % 3],
      password: "123",
      password_confirmation: "123",
      number: "#{fnumbers[idx % 4]} #{gnumbers[idx % 5]}"
      )
end
