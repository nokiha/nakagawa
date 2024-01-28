0.upto(8) do |doc|
    0.upto(6) do |day|
        0.upto(4) do |hour|
            time = DateTime.new(2024,01,day+25,hour*2+9,0,0,"+00:00")
            doctor = Doctor.find_by(id: doc+1)
            0.upto(6) do |id|
                Slot.create!(
                doctor: doctor,
                time: time
                )
            end
        end
    end
  end