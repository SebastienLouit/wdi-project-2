class Order < ActiveRecord::Base
  belongs_to :user
  belongs_to :serving
  

  has_many :orders_as_sender, foreign_key: "sender_id", class_name: "Order"
  has_many :orders_as_receiver, foreign_key: "receiver_id", class_name: "Order"

  before_validation :add_default_status

  def accept!
      self.status = "accepted"
      self.save
  end

  def reject!
      self.status = "rejected"
      self.save
  end

  def cancel!
      self.destroy
  end


  private
      def add_default_status
          self.status = "pending" if self.status.nil?
      end

end
