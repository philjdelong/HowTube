class Search < ApplicationRecord
	validates_presence_of :title
	validates_presence_of :hits
end