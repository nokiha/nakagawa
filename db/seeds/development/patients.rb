fnumbers = ["090", "03", "080", "070"]
gnumbers = ["-1212-2323", "-3434-4545", "-5656-6767", "-8989-1010", "-1111-2222"]
fnames = ["Sato", "Suzuki", "Takahashi", "Tanaka","Sasaki"]
gnames = ["Taro", "Jiro", "Hanako","Shu"]
0.upto(19) do |idx|
    Patient.create(
    username: "#{fnames[idx % 5]} #{gnames[idx % 4]}",
    email: "#{fnames[idx % 5]} #{gnames[idx % 4]}@example.com",
    birthday: "1981-12-01",
    sex: [1, 1, 2][idx % 3],
    password: "123",
    password_confirmation: "123",
    number: "#{fnumbers[idx % 4]} #{gnumbers[idx % 5]}"
    )
end