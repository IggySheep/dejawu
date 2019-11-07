json.extract! kontakt, :id, :name, :vorname, :abteilung, :position, :telno, :faxno, :emai, :created_at, :updated_at
json.url kontakt_url(kontakt, format: :json)
