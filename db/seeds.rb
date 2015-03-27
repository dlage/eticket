AdminUser.create!([
  {email: "admin@example.com", encrypted_password: "$2a$10$wrqICmC.bFlYgZGAumCL1.wfURuL4gu7be.oDQr8pvzGQZJ0tmX/O", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: "2015-03-26 23:10:02", sign_in_count: 1, current_sign_in_at: "2015-03-26 23:10:03", last_sign_in_at: "2015-03-26 23:10:03", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1"}
])
Allotment.create!([
  {name: "Bilhetes Normais", description: "", division_id: 1},
  {name: "Bilhetes VIP", description: "", division_id: 1},
  {name: "Passes 3 dias", description: "", division_id: 1},
  {name: "Passes 2 dias", description: "", division_id: 1}
])
Division.create!([
  {name: "Corporate", description: "", event_id: 1},
  {name: "Mass Business", description: "", event_id: 1},
  {name: "Leads", description: "", event_id: 1}
])
Event.create!([
  {title: "Alive 2015", description: ""}
])
AllotmentTicketType.create!([
  {ticket_type_id: 1, allotment_id: 1, quantity: 50, quantity_commited: nil},
  {ticket_type_id: 5, allotment_id: 2, quantity: 20, quantity_commited: 0},
  {ticket_type_id: 4, allotment_id: 2, quantity: 50, quantity_commited: 0}
])
TicketType.create!([
  {event_id: 1, name: "Dia 12", description: ""},
  {event_id: 1, name: "Dia 13", description: ""},
  {event_id: 1, name: "Dia 14", description: ""},
  {event_id: 1, name: "Passe 3 dias VIP", description: ""},
  {event_id: 1, name: "Dia 12 VIP", description: ""}
])
ScopedDivision.create!([
  {name: "Corporate", description: "", event_id: 1},
  {name: "Mass Business", description: "", event_id: 1},
  {name: "Leads", description: "", event_id: 1}
])
