json.array!(@patients) do |patient|
  json.extract! patient, :id, :room, :initials, :estimatedate, :ptnotified, :dcsumm, :medrec, :appt, :amlabs, :ptorder, :homeo2, :tubefeeds, :walker, :otherequip, :homecare, :snfpsych, :transport, :teaching, :finassit, :conciergerx, :completedbymd
  json.url patient_url(patient, format: :json)
end
