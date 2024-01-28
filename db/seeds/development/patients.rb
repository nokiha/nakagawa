fnumbers = ["090", "03", "080", "070"]
gnumbers = ["12122323", "34344545", "56566767", "89891010", "11112222"]
fnames = ["Sato", "Suzuki", "Takahashi", "Tanaka","Sasaki"]
gnames = ["Taro", "Jiro", "Hanako","Shu"]
0.upto(19) do |idx|
    Patient.create(
    username: "#{fnames[idx % 5]} #{gnames[idx % 4]}",
    email: "#{fnames[idx % 5]}#{gnames[idx % 4]}@gmail.com",
    birthday: "1981-12-01",
    sex: [1, 1, 2][idx % 3],
    password: "12345678",
    password_confirmation: "12345678",
    number: "#{fnumbers[idx % 4]}#{gnumbers[idx % 5]}"
    )
end