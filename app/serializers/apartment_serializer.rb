class ApartmentSerializer < ActiveModel::Serializer
  attributes :id, :number, :tenants

  def tenants
    self.object.leases.map do |lease|
      {
        name: lease.tenant.name,
        age: lease.tenant.age,
        rent: lease.rent
      }
    end
  end
end
