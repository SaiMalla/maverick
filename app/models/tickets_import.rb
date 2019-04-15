class TicketsImport
  include ActiveModel::Model
  require 'roo'

  attr_accessor :file

  def initialize(attributes={})
    attributes.each { |name, value| send("#{name}=", value) }
  end

  def persisted?
    false
  end

  def open_spreadsheet
    case File.extname(file.original_filename)
    when ".csv" then Csv.new(file.path, nil, :ignore)
    when ".xls" then Roo::Excel.new(file.path, nil, :ignore)
    when ".xlsx" then Roo::Excelx.new(file.path)
    else raise "Unknown file type: #{file.original_filename}"
    end
  end

  def load_imported_tickets
    spreadsheet = open_spreadsheet
    header = spreadsheet.row(5)
    (6..spreadsheet.last_row).map do |i|
      row = Hash[[header, spreadsheet.row(i)].transpose]
      ticket = Ticket.find_by_id(row["id"]) || Ticket.new
      ticket.attributes = row.to_hash
      ticket
    end
  end

  def imported_tickets
    @imported_tickets ||= load_imported_tickets
  end

  def save
    if imported_tickets.map(&:valid?).all?
      imported_tickets.each(&:save!)
      true
    else
      imported_tickets.each_with_index do |ticket, index|
        ticket.errors.full_messages.each do |msg|
          errors.add :base, "Row #{index + 6}: #{msg}"
        end
      end
      false
    end
  end

end