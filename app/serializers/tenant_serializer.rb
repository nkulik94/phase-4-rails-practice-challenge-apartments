class TenantSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :leased_apartments

  def leased_apartments
    self.object.leases.map do |lease|
      {
        rent: lease.rent,
        apartment_number: lease.apartment.number
      }
    end
  end
end
