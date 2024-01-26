Appointment.create([
    {patient: Patient.find(1), slot: Slot.find(1), time: DateTime.new(2024,01,15,9,0,0,"+00:00")},
    {patient: Patient.find(2), slot: Slot.find(8), time: DateTime.new(2024,01,15,9,0,0,"+00:00")},
    {patient: Patient.find(3), slot: Slot.find(2), time: DateTime.new(2024,01,15,9,0,0,"+00:00")},
    {patient: Patient.find(4), slot: Slot.find(9), time: DateTime.new(2024,01,15,9,0,0,"+00:00")},
    {patient: Patient.find(5), slot: Slot.find(3), time: DateTime.new(2024,01,15,9,0,0,"+00:00")},
    {patient: Patient.find(6), slot: Slot.find(10), time: DateTime.new(2024,01,15,9,0,0,"+00:00")},
    {patient: Patient.find(1), slot: Slot.find(281), time: DateTime.new(2024,01,16,9,0,0,"+00:00")},
    {patient: Patient.find(2), slot: Slot.find(288), time: DateTime.new(2024,01,16,9,0,0,"+00:00")},
    {patient: Patient.find(3), slot: Slot.find(282), time: DateTime.new(2024,01,16,9,0,0,"+00:00")},
    {patient: Patient.find(4), slot: Slot.find(289), time: DateTime.new(2024,01,16,9,0,0,"+00:00")},
    {patient: Patient.find(5), slot: Slot.find(283), time: DateTime.new(2024,01,16,9,0,0,"+00:00")},
    {patient: Patient.find(6), slot: Slot.find(290), time: DateTime.new(2024,01,16,9,0,0,"+00:00")}
])