Appointment.create([
    {patient: Patient.find(1), slot: Slot.find(246), time: DateTime.new(2024,01,25,9,0,0,"+00:00")},
    {patient: Patient.find(2), slot: Slot.find(491), time: DateTime.new(2024,01,25,9,0,0,"+00:00")},
    {patient: Patient.find(3), slot: Slot.find(247), time: DateTime.new(2024,01,25,9,0,0,"+00:00")},
    {patient: Patient.find(4), slot: Slot.find(492), time: DateTime.new(2024,01,25,9,0,0,"+00:00")},
    {patient: Patient.find(5), slot: Slot.find(248), time: DateTime.new(2024,01,25,9,0,0,"+00:00")},
    {patient: Patient.find(6), slot: Slot.find(493), time: DateTime.new(2024,01,25,9,0,0,"+00:00")},
    {patient: Patient.find(1), slot: Slot.find(176), time: DateTime.new(2024,01,30,9,0,0,"+00:00")},
    {patient: Patient.find(2), slot: Slot.find(177), time: DateTime.new(2024,01,30,9,0,0,"+00:00")},
    {patient: Patient.find(3), slot: Slot.find(178), time: DateTime.new(2024,01,30,9,0,0,"+00:00")},
    {patient: Patient.find(4), slot: Slot.find(179), time: DateTime.new(2024,01,30,9,0,0,"+00:00")},
    {patient: Patient.find(5), slot: Slot.find(180), time: DateTime.new(2024,01,30,9,0,0,"+00:00")},
    {patient: Patient.find(6), slot: Slot.find(181), time: DateTime.new(2024,01,30,9,0,0,"+00:00")}
])