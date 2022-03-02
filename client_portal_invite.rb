Project.find(367316)
client_account = Client::Account.find(1455)
client_contact = Client::Contact.create!(
  name: ARGV[0],
  account: client_account,
  emails: [ARGV[1]]
)
contact_project = ClientContactsProject.new(main: true, role: "", project: project, client_contact: client_contact)
contact_project.save