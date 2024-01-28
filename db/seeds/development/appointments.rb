Appointment.create([
    {patient: Patient.find(1), slot: Slot.find(1), time: DateTime.new(2024,01,25,9,0,0,"+00:00")},
    {patient: Patient.find(2), slot: Slot.find(8), time: DateTime.new(2024,01,25,9,0,0,"+00:00")},
    {patient: Patient.find(3), slot: Slot.find(2), time: DateTime.new(2024,01,25,9,0,0,"+00:00")},
    {patient: Patient.find(4), slot: Slot.find(9), time: DateTime.new(2024,01,25,9,0,0,"+00:00")},
    {patient: Patient.find(5), slot: Slot.find(3), time: DateTime.new(2024,01,25,9,0,0,"+00:00")},
    {patient: Patient.find(6), slot: Slot.find(10), time: DateTime.new(2024,01,25,9,0,0,"+00:00")},
    {patient: Patient.find(1), slot: Slot.find(351), time: DateTime.new(2024,01,28,9,0,0,"+00:00")},
    {patient: Patient.find(2), slot: Slot.find(358), time: DateTime.new(2024,01,28,9,0,0,"+00:00")},
    {patient: Patient.find(3), slot: Slot.find(352), time: DateTime.new(2024,01,28,9,0,0,"+00:00")},
    {patient: Patient.find(4), slot: Slot.find(359), time: DateTime.new(2024,01,28,9,0,0,"+00:00")},
    {patient: Patient.find(5), slot: Slot.find(353), time: DateTime.new(2024,01,28,9,0,0,"+00:00")},
    {patient: Patient.find(6), slot: Slot.find(360), time: DateTime.new(2024,01,28,9,0,0,"+00:00")}
])