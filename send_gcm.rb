require 'httparty'
HTTParty.post("http://localhost:3000/registers", body: {registers: {registration_id: 'userexamplecom', phone_number: 'secret'}}).body

