class AddTextCreationProduct < ActiveRecord::Migration
  def up
    #area = Area.create(name: 'General')
    
    begin
      product = Product.new(name: 'Text Creation', text: 'Dummy', area_ids: [area.id])
      product.user_id = User.where(name: 'Master').first.id
      product.save!
    rescue
    end
  end

  def down
    Area.where(name: 'General').first.destroy
    Product.where(name: 'Text Creation').first.destroy
  end
end