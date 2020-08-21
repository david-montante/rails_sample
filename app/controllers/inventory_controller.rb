# frozen_string_literal: true

class InventoryController < ApplicationController
  def index
    render json: {
      results: [
        { vin: 111, make: "NISSAN", model: "ALTIMA", price: 100_000 },
        { vin: 222, make: "NISSAN", model: "KICKS", price: 150_000 },
        { vin: 333, make: "NISSAN", model: "ALTIMA", price: 200_000 },
        { vin: 444, make: "NISSAN", model: "KICKS", price: 250_000 },
      ],
    }
  end
end
