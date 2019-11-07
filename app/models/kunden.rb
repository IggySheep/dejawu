class Kunden < ApplicationRecord
	has_many :projects
	has_many :kontakts
end
